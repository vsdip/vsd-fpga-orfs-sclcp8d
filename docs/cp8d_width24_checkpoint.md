# CP8D 2×2 FPGA checkpoint — 8 October 2026

- FPGA source submodule: a512d4fac54746f2636431727d556f20d505281a
- Architecture: 2 FLE/CLB, routing width 24; AND2 example routes in VPR.
- Configuration chain: 694 bits.
- Generated core has separate GPIO inputs and outputs. Eight floating boundary
  inputs were explicitly tied low for this prototype; external scan access
  remains to be designed.
- Synthesis: 2,123,423 µm² cell area; final Yosys check reports 0 problems.
- Trial die: 5×5 mm; trial core: 400,400 to 4600,4600 µm.
- The original provisional wire capacitance caused 709,536 repair buffers.
  setRC_capdiag.tcl is a diagnostic assumption, NOT timing-signoff RC.
  Confirm CP8D LEF capacitance units with SCL.
- With diagnostic RC and density 0.40: CTS completed with timing repair skipped;
  global route failed with 4,761 overflowing tracks.
- With diagnostic RC and density 0.25: repair inserted 2,524 buffers;
  global route failed with 1,485 overflowing tracks.
- The two routing runs had different effective track capacities, so their
  overflow difference is not a density-only comparison.
- Open issues: routing congestion, 189 reported combinational loops, incomplete
  I/O timing constraints, a setup violation, pad integration, and PDN signoff.
- Next experiment: test routing width 20 in OpenFPGA, then repeat the CP8D
  physical trial if VPR routes the example.
