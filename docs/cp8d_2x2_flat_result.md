# CP8D 2×2 flat FPGA milestone

- Architecture: 2 FLE per CLB, channel width 20, output Fc 0.15.
- Fabric configuration: 637 bits.
- CP8D synthesis check: zero reported problems.
- Detailed route: zero reported violations; `5_route_drc.rpt` is empty.
- Final GDS: `6_final.gds` generated with no invalid-via warnings.
- The KLayout template is prepared locally with
  `scripts/prepare_cp8d_klayout.py`; supply its output as
  `KLAYOUT_TECH_FILE` when running ORFS finish.
- Independent GDS DRC/LVS and calibrated extraction remain to be done.
