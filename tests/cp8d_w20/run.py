#!/usr/bin/env python3
"""Regress the frozen 637-bit CP8D W20 fabric. Never run PNR.

Install as tests/cp8d_w20/run.py in the repository. The fixtures and both
Verilog testbenches created in the live qualification session are required.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[2]
DATA = Path(__file__).resolve().parent
SOURCE = ROOT / "src/fpga"
FROZEN = ROOT / "generated/fpga_2x2_2fle_w20_cp8d_verified"
PRIMITIVE = (FROZEN / "rtl/vsd_scl_primitives.v").resolve()
IMAGE = "ghcr.io/lnis-uofu/openfpga-master:b0e93b123"
IMAGE_ID = "sha256:d83229343a7a54d8a20e94c5f3e23907eaae9f8d0f30f11bea7b709f60d6e281"
RUNNER_VERSION = "2026-10-17.2"

TIES = {
    "fpga_top.v": [
        f"assigngrid_clb_{x}__{y}__undriven_top_width_0_height_0_subtile_0__pin_{port}_0_=1'b0;"
        for x, y in ((1, 1), (1, 2), (2, 1))
        for port in ("regin", "scin")
    ],
    "routing/sb_0__1_.v": [
        "assignchanx_right_out[0]=1'b0;",
        "assignchanx_right_out[9]=1'b0;",
    ],
}


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def protected():
    paths = [ROOT / "rtl/fpga_core.v"]
    paths += sorted(path for path in FROZEN.rglob("*") if path.is_file())
    return {str(path.relative_to(ROOT)): digest(path) for path in paths}


def signature(path, relative, frozen=False):
    text = re.sub(
        r'"(?:\\.|[^"\\])*"|/\*.*?\*/|//[^\n]*',
        lambda match: match[0] if match[0].startswith('"') else "",
        path.read_text(),
        flags=re.S,
    )

    def include(match):
        target = Path(match[1])
        if target.is_absolute() and target.resolve() == PRIMITIVE:
            name = "rtl/vsd_scl_primitives.v"
        else:
            parts = target.parts
            if "SRC" in parts:
                parts = parts[parts.index("SRC") + 1:]
            else:
                require(not target.is_absolute(), f"Unexpected include: {path}: {target}")
            name = "/".join(part for part in parts if part != ".")
        return '`include "' + name + '"'

    text = re.sub(r'`include\s+"([^"]+)"', include, text)
    lines = [
        re.sub(r"\s+", "", line)
        for line in text.splitlines()
        if line.strip()
    ]
    for tie in TIES.get(relative, []):
        expected_count = 1 if frozen else 0
        require(lines.count(tie) == expected_count, f"Unexpected tie-off: {path}: {tie}")
        if frozen:
            lines.remove(tie)
    return hashlib.sha256("\n".join(lines).encode()).hexdigest()


def io_mapping(path):
    return sorted(
        [dict(element.attrib) for element in ET.parse(path).getroot().iter("io")],
        key=lambda item: json.dumps(item, sort_keys=True),
    )


def capture(command, log_file, cwd=None):
    try:
        result = subprocess.run(
            command,
            cwd=cwd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            timeout=180,
        )
    except subprocess.TimeoutExpired as error:
        partial = error.stdout or ""
        if isinstance(partial, bytes):
            partial = partial.decode(errors="replace")
        log_file.write_text(partial)
        raise RuntimeError(f"Timed out; inspect {log_file}") from error
    log_file.write_text(result.stdout)
    require(
        result.returncode == 0,
        f"Command failed; inspect {log_file}\n{result.stdout[-6000:]}",
    )
    return result.stdout


def render_flow(template, case):
    """Resolve repository placeholders before OpenFPGA parses its script."""
    values = {
        "ACTIVITY_FILE": str(case / "input.act"),
        "FABRIC_DEVICE": "2x2",
        "OPENFPGA_ARCH_FILE": str(case / "openfpga_arch.xml"),
        "OPENFPGA_OUTPUT_DIR": str(case),
        "OPENFPGA_SIM_SETTING_FILE": str(
            SOURCE / "openfpga/arch/scl1d_simulation_setting.xml"
        ),
        "VPR_ARCH_FILE": str(SOURCE / "openfpga/arch/vpr_arch_2x2.xml"),
        "VPR_TESTBENCH_BLIF": str(case / "input.blif"),
    }
    rendered = re.sub(
        r"\$::env\((\w+)\)", lambda match: values[match[1]], template
    )
    require("$::env(" not in rendered, "Unresolved OpenFPGA flow placeholder")
    return rendered


CONTAINER_SCRIPT = r'''
set -e
cd /opt/openfpga
export OPENFPGA_PATH=/opt/openfpga
source /opt/openfpga/openfpga.sh
while IFS= read -r library_dir; do
  export LD_LIBRARY_PATH="$library_dir${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
done < <(
  find /opt/openfpga/build -type f -name "lib*.so*" -printf "%h\n" | sort -u
)
for case_dir in "$1"/images/*/; do
  case_dir=${case_dir%/}
  echo "GENERATING: ${case_dir##*/}"
  cd "$case_dir"
  if ! /opt/openfpga/build/openfpga/openfpga \
      -batch -f flow.openfpga >openfpga.log 2>&1; then
    tail -n 80 openfpga.log
    exit 1
  fi
done
'''


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", action="version", version=RUNNER_VERSION)
    parser.add_argument("--out", type=Path, help="A new output directory; must not exist")
    parser.add_argument("--cell-model", type=Path, help="Path to the CP8D cp8d.v model")
    args = parser.parse_args()

    require(
        (DATA / "fixtures.json").is_file() and FROZEN.is_dir(),
        "Install this file as tests/cp8d_w20/run.py in the repository containing "
        "the saved fixtures and frozen fabric.",
    )
    if args.cell_model:
        model = args.cell_model.expanduser().resolve()
    else:
        models = sorted((ROOT / "work/pdks").rglob("cp8d.v"))
        require(len(models) == 1, f"Specify --cell-model; found {models}")
        model = models[0].resolve()
    require(model.is_file(), f"Cell model not found: {model}")

    for tool in ("docker", "iverilog", "vvp"):
        require(shutil.which(tool) is not None, f"Missing executable: {tool}")
    image_id = subprocess.check_output(
        ["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE], text=True
    ).strip()
    require(image_id == IMAGE_ID, f"Unexpected OpenFPGA image: {image_id}")

    original_hashes = protected()
    fixtures = json.loads((DATA / "fixtures.json").read_text())
    require(len(fixtures) == 24, "Expected 24 regression fixtures")
    require(
        sum(256 * len(fixture["outputs"]) for fixture in fixtures) == 6400,
        "Unexpected functional check count",
    )
    for fixture in fixtures:
        for filename in ("input.blif", "input.act", "expected_outputs.mem"):
            path = DATA / "fixtures" / fixture["name"] / filename
            require(path.is_file(), f"Missing fixture: {path}")
    for level in ("rtl", "gate"):
        path = DATA / f"regression_{level}_tb.v"
        require(path.is_file(), f"Missing testbench: {path}")

    reference = {
        str(path.relative_to(FROZEN / "SRC")): signature(
            path, str(path.relative_to(FROZEN / "SRC")), frozen=True
        )
        for path in (FROZEN / "SRC").rglob("*.v")
    }
    require(len(reference) == 44, "Expected 44 frozen fabric Verilog files")

    if args.out:
        out = args.out.expanduser().resolve()
        out.mkdir(parents=True, exist_ok=False)
    else:
        (ROOT / "work").mkdir(exist_ok=True)
        out = Path(tempfile.mkdtemp(prefix="cp8d_w20_regression.", dir=ROOT / "work"))
    print("REGRESSION_OUTPUT =", out, flush=True)

    raw_flow = (SOURCE / "openfpga/scripts/openfpga_fab_scl1d.tcl").read_text()
    require("--route_chan_width 20" in raw_flow, "Source flow must select W20")
    require("--constant_net_method route" in raw_flow, "Constants must be routed")
    required_environment = {
        "ACTIVITY_FILE", "FABRIC_DEVICE", "OPENFPGA_ARCH_FILE",
        "OPENFPGA_OUTPUT_DIR", "OPENFPGA_SIM_SETTING_FILE",
        "VPR_ARCH_FILE", "VPR_TESTBENCH_BLIF",
    }
    require(
        set(re.findall(r"\$::env\((\w+)\)", raw_flow)) == required_environment,
        "Source flow environment changed; review the runner",
    )
    flow, count = re.subn(
        r"(?m)^[ \t]*exit[ \t]*$",
        "write_io_mapping --file "
        "$::env(OPENFPGA_OUTPUT_DIR)/io_mapping.xml\nexit",
        raw_flow,
    )
    require(count == 1, "Expected one exit command in source flow")
    architecture = (
        SOURCE / "openfpga/arch/vsd_openfpga_arch_scl1d.xml"
    ).read_text().replace(
        "${OPENFPGA_PATH}/../../rtl/primitives/vsd_scl_primitives.v", str(PRIMITIVE)
    ).replace("${OPENFPGA_PATH}", "/opt/openfpga")

    for fixture in fixtures:
        case = out / "images" / fixture["name"]
        case.mkdir(parents=True)
        for filename in ("input.blif", "input.act", "expected_outputs.mem"):
            shutil.copy2(DATA / "fixtures" / fixture["name"] / filename, case / filename)
        (case / "openfpga_arch.xml").write_text(architecture)
        (case / "flow.openfpga").write_text(render_flow(flow, case))

    print("RUNNER_VERSION =", RUNNER_VERSION, flush=True)
    print("FLOW_VARIABLES_RESOLVED = True", flush=True)

    subprocess.run([
        "docker", "run", "--rm", "--pull=never",
        "--platform", "linux/amd64", "--user", f"{os.getuid()}:{os.getgid()}",
        "--mount", f"type=bind,source={ROOT},target={ROOT},readonly",
        "--mount", f"type=bind,source={out},target={out}",
        "--entrypoint", "/bin/bash", IMAGE, "-lc", CONTAINER_SCRIPT,
        "_", str(out),
    ], check=True)

    for fixture in fixtures:
        case = out / "images" / fixture["name"]
        log = (case / "openfpga.log").read_text()
        require(
            re.search(r"\bError\s+\d+\s*:|\bError:|\bFATAL\b", log, re.I) is None,
            f"OpenFPGA diagnostics failed: {case / 'openfpga.log'}",
        )
        bits = [
            line.strip()
            for line in (case / "fabric_bitstream.bit").read_text().splitlines()
            if line.strip() in ("0", "1")
        ]
        require(len(bits) == 637, f"Wrong configuration length: {fixture['name']}")
        (case / "image.mem").write_text("\n".join(bits) + "\n")
        require(
            io_mapping(case / "io_mapping.xml") == fixture["io_mapping"],
            f"GPIO mapping changed: {fixture['name']}",
        )
        generated = {
            str(path.relative_to(case / "SRC")): signature(
                path, str(path.relative_to(case / "SRC"))
            )
            for path in (case / "SRC").rglob("*.v")
        }
        require(generated == reference, f"Fabric changed: {fixture['name']}")
    print("24_IMAGES_637_BITS_AND_FROZEN_FABRIC_MATCH = True", flush=True)

    results = []
    for level in ("rtl", "gate"):
        executable = out / f"{level}.vvp"
        command = [
            "iverilog", "-g2012", "-Dfunctional", "-s", "regression_tb",
            "-I", str(FROZEN), "-o", str(executable), str(model),
        ]
        if level == "rtl":
            command += [
                str(FROZEN / "SRC/fabric_netlists.v"), str(ROOT / "rtl/fpga_core.v")
            ]
        else:
            command += [str(FROZEN / "physical/fpga_core_synth.v")]
        command += [str(DATA / f"regression_{level}_tb.v")]
        capture(command, out / f"{level}_compile.log")
        log = capture(
            ["vvp", str(executable)], out / f"{level}_simulation.log", cwd=out
        )
        require("REGRESSION_PASS" in log, f"Regression failed: {level}")
        print(level.upper(), flush=True)
        for line in log.splitlines():
            if "FUNCTIONAL_CHECKS=" in line or "REGRESSION_PASS" in line:
                print(line, flush=True)
        results.append({
            "level": level, "images": 24, "functional_checks": 6400,
            "scan_readback_checks": 14651, "mismatches": 0,
        })

    require(protected() == original_hashes, "Protected production files changed")
    report = {
        "runner_version": RUNNER_VERSION,
        "image": IMAGE, "image_id": image_id, "cell_model_sha256": digest(model),
        "simulation_results": results, "protected_file_hashes": original_hashes,
        "source_hashes": {
            name: digest(SOURCE / name) for name in (
                "openfpga/arch/vpr_arch_2x2.xml",
                "openfpga/arch/vsd_openfpga_arch_scl1d.xml",
                "openfpga/scripts/openfpga_fab_scl1d.tcl",
            )
        },
        "pnr_qualified": False,
        "scope": "Loaded combinational configurations; loading uses routing clamps",
    }
    (out / "results.json").write_text(json.dumps(report, indent=2) + "\n")
    print("PRODUCTION_HASHES_UNCHANGED = True")
    print("PNR_QUALIFIED = False")
    print("RESULTS =", out / "results.json")


if __name__ == "__main__":
    main()
