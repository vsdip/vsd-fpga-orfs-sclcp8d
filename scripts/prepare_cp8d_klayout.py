#!/usr/bin/env python3
"""Prepare the local CP8D KLayout template for ORFS DEF import."""
import argparse
from pathlib import Path
import xml.etree.ElementTree as ET

parser = argparse.ArgumentParser()
parser.add_argument("--pdk-root", type=Path, required=True)
parser.add_argument(
    "--output", type=Path, default=Path("work/klayout_cp8d_orfs.lyt")
)
args = parser.parse_args()

source = args.pdk_root / "libs.tech/klayout/tech/scl_cp8d.lyt"
tree = ET.parse(source)
lefdef = tree.getroot().find(".//lefdef")
if lefdef is None or lefdef.find("lef-files") is not None:
    raise SystemExit("Unexpected CP8D KLayout template structure")

ET.SubElement(lefdef, "lef-files").text = "placeholder.lef"
args.output.parent.mkdir(parents=True, exist_ok=True)
tree.write(args.output, encoding="utf-8", xml_declaration=True)
print(args.output)
