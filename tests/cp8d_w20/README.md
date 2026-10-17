# CP8D W20 regression

Run from the repository root:

    python3 tests/cp8d_w20/run.py

Requires the qualified cached amd64 OpenFPGA Docker image, Icarus Verilog,
and the CP8D cell model under work/pdks. Alternatively supply
--cell-model /path/to/cp8d.v. Use --out work/new_directory for a new output path.

The runner generates 24 images from tracked sources, checks 637 bits,
GPIO mappings and 44 fabric Verilog files, and runs RTL and gate simulations.
Each simulation checks 6400 output values and 14651 scan readback bits.

Routing is clamped during loading and released before functional checks.
Live programming, registered logic, SDF and STA remain outside this regression.
PNR remains blocked. See docs/cp8d_w20_generator_mapping/README.md.
