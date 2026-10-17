# CP8D W20 generator qualification

The existing 637-bit fabric and production RTL were preserved.

## Failure and correction

The original AND image reproduced the frozen image but implemented y=a.
The original XOR image implemented y=1. Both failures reproduced in RTL
and gate simulation while 637 scan bits read back correctly.

The architecture declared both four-pin CLB input groups fully equivalent
at tile and logical-block levels despite direct connections to the FLEs.
Original AND/XOR routing placed a on I1[2] and b on I1[3].
With equivalence disabled, routing uses I1[0] and I1[2] and both functions pass.

The correction disables those four equivalence declarations, removes the
annotation for a nonexistent CLB crossbar, and explicitly routes constants.
Source defaults are aligned with the frozen W20 fabric: channel width 20
and CLB output Fc 0.15. These source changes do not modify frozen hardware.

## Validation

- AND -> XOR -> AND: 768 functional checks and 1274 scan readback checks
  per simulation level, with zero mismatches.
- 24 combinational cases: 6400 output checks and 14651 scan readback checks
  per simulation level, with zero mismatches.
- Cases include all 16 two-input Boolean functions, constants, LUT3/LUT4,
  dual outputs and cascaded LUTs.
- 26 generated fabrics matched 44 frozen Verilog files after normalizing
  comments/include locations and accounting for eight existing frozen ties.
- 25 images regenerated from the updated tracked sources matched every
  configuration bit and GPIO mapping of the simulated images.
- All 51 protected files retained their original hashes.

## Qualification limits and PNR block

Routing is clamped only during serial loading and released before functional
checks. Live programming without clamps, registered user logic and SDF timing
simulation remain unqualified.

OpenROAD linked all 2561 cells. The existing area-probe SDC defines two
1000 ns clocks but has 11 inputs missing delays, 25 outputs missing delays,
26 unconstrained endpoints and 182 structural combinational loops.
Positive slack from this audit is not timing qualification.

PNR remains blocked pending justified external timing budgets and a qualified
configuration-aware STA methodology. No PNR commands were executed.

The protected wrapper hash records the pre-existing working-tree wrapper.
Unrelated user changes are outside this generator correction.
