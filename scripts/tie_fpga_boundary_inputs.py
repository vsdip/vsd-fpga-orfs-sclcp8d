from pathlib import Path
import re

src = Path("generated/fpga_2x2_2fle_w24_cp8d/SRC")
top_path = src / "fpga_top.v"
sb_path = src / "routing/sb_0__1_.v"

top = top_path.read_text()
pattern = re.compile(
    r"(?m)^(wire \[0:0\] "
    r"(grid_clb_(?:1__1|1__2|2__1)__undriven_top_width_0_height_0_subtile_0__pin_"
    r"(?:regin|scin)_0_);)$"
)
matches = pattern.findall(top)
assert len(matches) == 6, f"Expected 6 floating CLB entry pins, found {len(matches)}"
top = pattern.sub(lambda m: m.group(1) + "\nassign " + m.group(2) + " = 1'b0;", top)

sb = sb_path.read_text()
for bit in (0, 11):
    assert not re.search(rf"\bchanx_right_out\[{bit}\]", sb), (
        f"Switch output {bit} already has a driver"
    )
assert sb.count("\nendmodule") == 1
sb = sb.replace(
    "\nendmodule",
    "\nassign chanx_right_out[0] = 1'b0;"
    "\nassign chanx_right_out[11] = 1'b0;\n\nendmodule",
    1,
)

top_path.write_text(top)
sb_path.write_text(sb)
print("PASS: tied 6 CLB entry pins and 2 boundary routing tracks")
