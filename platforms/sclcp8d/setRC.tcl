# Initial wire RC calculated from CP8D tech_cp8d.lef.
set_layer_rc -layer metal1 -resistance 4.117647e-2 -capacitance 4.6100e-2
set_layer_rc -layer metal2 -resistance 2.000000e-2 -capacitance 2.2200e-2
set_layer_rc -via via -resistance 3.375000e-1

set_wire_rc -signal -layer metal1
set_wire_rc -clock -layer metal2
