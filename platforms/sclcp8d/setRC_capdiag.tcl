# Diagnostic assumption only; confirm CP8D LEF capacitance units with SCL.
# metal1: (0.027 / 1000) * 1.7 + 2 * 0.0001 = 0.0002459 pF/um
# metal2: (0.011 / 1000) * 2.0 + 2 * 0.0001 = 0.0002220 pF/um
set_layer_rc -layer metal1 -resistance 4.117647e-2 -capacitance 2.459e-4
set_layer_rc -layer metal2 -resistance 2.000000e-2 -capacitance 2.220e-4
set_layer_rc -via via -resistance 3.375000e-1

set_wire_rc -signal -layer metal1
set_wire_rc -clock -layer metal2
