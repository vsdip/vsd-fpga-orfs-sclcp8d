#!/usr/bin/env python3
"""Sweep output Fc at fixed channel width 20 and package a checked CP8D fabric."""
from datetime import datetime, timezone
from pathlib import Path
import difflib
import os
import re
import shutil
import subprocess
import time
import xml.etree.ElementTree as ET

root = Path.cwd().resolve()
fpga = root / "src/fpga"
flow = root / "src/orfs/flow"
arch = fpga / "openfpga/arch/vpr_arch_2x2.xml"
script = fpga / "openfpga/scripts/openfpga_fab_scl1d.tcl"
source = fpga / "results/2x2"
primitive = root / "rtl/vsd_cp8d_primitives.v"
wrapper = root / "rtl/fpga_core.v"
sdc = root / "designs/fpga_cp8d/area_probe.sdc"
final = root / "generated/fpga_2x2_2fle_w20_cp8d_verified"
final_config = root / "designs/fpga_cp8d_w20/config.mk"
run_id = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S") + f"_{os.getpid()}"
run_dir = root / "work/fc_sweep" / run_id
run_dir.mkdir(parents=True)
(Path("/tmp/orfs")).mkdir(parents=True, exist_ok=True)

assert all(p.exists() for p in (arch, script, primitive, wrapper, sdc, flow))
assert "--route_chan_width 20" in script.read_text()
assert not final.exists(), f"Already exists: {final}"
assert not final_config.exists(), f"Already exists: {final_config}"
original_arch = arch.read_text()
head_arch = subprocess.check_output(
    ["git", "-C", str(fpga), "show", "HEAD:openfpga/arch/vpr_arch_2x2.xml"],
    text=True,
)
assert '<pb_type name="fle" num_pb="2">' in head_arch


def set_clb_fc(text, value):
    start = text.index('<sub_tile name="clb"')
    end = text.index("</sub_tile>", start) + len("</sub_tile>")
    section = text[start:end]
    section, count = re.subn(
        r'(<fc\b[^>]*\bout_val=")[^"]+(?=")',
        lambda match: match.group(1) + value,
        section,
    )
    assert count == 1, f"Expected one CLB output Fc, got {count}"
    modified = text[:start] + section + text[end:]
    ET.fromstring(modified)
    return modified


def run_logged(args, path, **kwargs):
    with path.open("w") as out:
        result = subprocess.run(args, stdout=out, stderr=subprocess.STDOUT, **kwargs)
    return result.returncode


def make_candidate(pkg, fc, bit_count):
    src = source / "SRC"
    shutil.copytree(src, pkg / "SRC")
    (pkg / "rtl").mkdir()
    shutil.copy2(primitive, pkg / "rtl/vsd_scl_primitives.v")
    (pkg / "examples").mkdir()
    shutil.copy2(source / "fabric_bitstream.bit", pkg / "examples/and2.bit")
    (pkg / "architecture").mkdir()
    shutil.copy2(arch, pkg / "architecture/vpr_arch_2x2.xml")
    shutil.copy2(script, pkg / "architecture/openfpga_fab_scl1d.tcl")

    manifest = pkg / "SRC/fabric_netlists.v"
    contents = manifest.read_text()
    old_src = str(src.resolve()) + "/"
    old_primitive = "${OPENFPGA_PATH}/../../rtl/primitives/vsd_scl_primitives.v"
    assert old_src in contents and old_primitive in contents
    contents = contents.replace(old_src, "SRC/").replace(
        old_primitive, "rtl/vsd_scl_primitives.v"
    )
    assert "/workspaces/" not in contents
    manifest.write_text(contents)
    includes = re.findall(r'^\s*`include\s+"([^"]+)"', contents, re.M)
    assert len(includes) >= 40
    assert all((pkg / item).is_file() for item in includes)

    top_file = pkg / "SRC/fpga_top.v"
    top = top_file.read_text()
    entry = re.compile(
        r"(?m)^(wire \[0:0\] "
        r"(grid_clb_(?:1__1|1__2|2__1)__undriven_top_width_0_height_0_subtile_0__pin_"
        r"(?:regin|scin)_0_);)$"
    )
    top, ties = entry.subn(lambda m: m.group(1) + "\nassign " + m.group(2) + " = 1'b0;", top)
    assert ties == 6, f"Expected 6 CLB boundary inputs, got {ties}"
    top_file.write_text(top)

    sb_file = pkg / "SRC/routing/sb_0__1_.v"
    sb = sb_file.read_text()
    bus = re.search(r'(?m)^output \[0:(\d+)\] chanx_right_out;', sb)
    assert bus, "Cannot find boundary switch output bus"
    assert not re.search(r'chanx_right_out\[\d+:\d+\]', sb), "Unexpected switch output slice"
    last = int(bus.group(1))
    driven = {int(n) for n in re.findall(r'\.out\(chanx_right_out\[(\d+)\]\)', sb)}
    driven |= {int(n) for n in re.findall(r'assign\s+chanx_right_out\[(\d+)\]', sb)}
    missing = set(range(last + 1)) - driven
    assert last == 9 and missing == {0, last}, (
        f"Unexpected undriven boundary tracks: {sorted(missing)} of 0:{last}"
    )
    assert sb.count("\nendmodule") == 1
    sb = sb.replace("\nendmodule", "\n" + "\n".join(
        f"assign chanx_right_out[{n}] = 1'b0;" for n in sorted(missing)
    ) + "\n\nendmodule", 1)
    sb_file.write_text(sb)

    (pkg / "BUILD_INFO.txt").write_text(
        "FPGA base: a512d4fac54746f2636431727d556f20d505281a\n"
        "Width-20 patch: experiments/fpga_2x2_2fle_w20.patch\n"
        f"CLB output Fc: {fc}\n"
        f"AND2 bitstream length: {bit_count} bits\n"
        f"Manifest includes: {len(includes)}\n"
        "CP8D wrappers: rtl/vsd_scl_primitives.v\n"
        "Six unused CLB boundary inputs and two switch boundary tracks tied low.\n"
    )
    return len(includes)


def make_config(pkg, nickname):
    return (
        "export DESIGN_NAME = fpga_core\n"
        f"export DESIGN_NICKNAME = {nickname}\n"
        "export PLATFORM = sclcp8d\n"
        f"export VERILOG_FILES = {pkg}/SRC/fabric_netlists.v {wrapper}\n"
        f"export VERILOG_INCLUDE_DIRS = {pkg}\n"
        f"export SDC_FILE = {sdc}\n"
        "export ABC_AREA = 1\n"
        "export ABC_CLOCK_PERIOD_IN_PS = 1000000\n"
    )


values = ("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45", "0.50")
success = False
try:
    for fc in values:
        tag = "fc" + fc.replace(".", "")
        trial = run_dir / tag
        trial.mkdir()
        arch.write_text(set_clb_fc(head_arch, fc))
        started = time.time_ns()
        openfpga_log = trial / "openfpga_console.log"
        print(f"Testing output Fc={fc} at routing width 20", flush=True)
        if run_logged(["make", "-C", str(fpga), "run-2x2"], openfpga_log) != 0:
            print("  OpenFPGA failed; see", openfpga_log, flush=True)
            continue
        flow_log = source / "openfpga.log"
        top_file = source / "SRC/fpga_top.v"
        bit_file = source / "fabric_bitstream.bit"
        assert all(p.stat().st_mtime_ns >= started - 2_000_000_000 for p in (flow_log, top_file, bit_file)), (
            "OpenFPGA output appears stale"
        )
        log = flow_log.read_text(errors="replace")
        if not all(x in log for x in (
            "Circuit successfully routed with a channel width factor of 20.",
            "Finish execution with 0 errors",
        )):
            print("  Routing or fabric generation did not report success", flush=True)
            continue
        top = top_file.read_text()
        floating = re.findall(r'grid_clb_\d+__\d+__undriven_right[^\s;]*pin_O_[0-3]_', top)
        if floating:
            print(f"  Rejected: {len(floating)} disconnected CLB output references", flush=True)
            continue
        bit = re.search(r'(?m)^// Bitstream length: (\d+)$', bit_file.read_text())
        assert bit, "Bitstream length header missing"
        pkg = trial / "package"
        try:
            includes = make_candidate(pkg, fc, int(bit.group(1)))
        except (AssertionError, OSError) as error:
            print(f"  Package/boundary check failed: {error}", flush=True)
            continue
        nickname = f"fpga_2fle_w20_cp8d_{tag}_{run_id.lower()}"
        cfg = trial / "config.mk"
        cfg.write_text(make_config(pkg, nickname))
        synth_log = trial / "synth_console.log"
        if run_logged([
            "make", "-C", str(flow),
            f"PLATFORM_HOME={root / 'platforms'}",
            f"DESIGN_CONFIG={cfg}",
            "synth",
        ], synth_log) != 0:
            print("  ORFS synthesis failed; see", synth_log, flush=True)
            continue
        report = flow / "reports/sclcp8d" / nickname / "base/synth_check.txt"
        yosys_log = flow / "logs/sclcp8d" / nickname / "base/1_2_yosys.log"
        if not report.is_file() or "Found and reported 0 problems." not in report.read_text():
            print("  Yosys final check failed; see", report, flush=True)
            continue
        no_driver = re.findall(r'(?m)^Warning: Wire .*used but has no driver', yosys_log.read_text())
        if no_driver:
            print(f"  Rejected: {len(no_driver)} Yosys no-driver warnings; see {yosys_log}", flush=True)
            continue

        mapped = flow / "results/sclcp8d" / nickname / "base/1_2_yosys.v"
        assert mapped.is_file(), f"Mapped netlist missing: {mapped}"
        shutil.move(str(pkg), str(final))
        (final / "physical").mkdir()
        shutil.copy2(mapped, final / "physical/fpga_core_synth.v")
        final_config.parent.mkdir(parents=True, exist_ok=True)
        final_config.write_text(make_config(final, "fpga_2fle_w20_cp8d_verified"))
        delta = "".join(difflib.unified_diff(
            head_arch.splitlines(keepends=True),
            arch.read_text().splitlines(keepends=True),
            fromfile="a/openfpga/arch/vpr_arch_2x2.xml",
            tofile="b/openfpga/arch/vpr_arch_2x2.xml",
        ))
        fc_patch = root / f"experiments/fpga_2x2_2fle_w20_{tag}.patch"
        fc_patch.parent.mkdir(parents=True, exist_ok=True)
        fc_patch.write_text(delta)
        with (final / "BUILD_INFO.txt").open("a") as info:
            info.write(f"CLB Fc patch: {fc_patch.relative_to(root)}\n")
        print(f"PASS: Fc={fc}, {bit.group(1)} config bits, {includes} includes", flush=True)
        print(f"Final netlist: {final / 'SRC/fabric_netlists.v'}", flush=True)
        print(f"Mapped CP8D netlist: {final / 'physical/fpga_core_synth.v'}", flush=True)
        print(f"Synthesis check: {report}", flush=True)
        print(f"Physical flow config: {final_config}", flush=True)
        print(f"Architecture patch: {fc_patch}", flush=True)
        success = True
        break
finally:
    arch.write_text(original_arch)

if not success:
    raise SystemExit(f"No Fc setting passed; logs: {run_dir}")

