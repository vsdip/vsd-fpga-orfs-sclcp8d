add_global_connection -net VDD -inst_pattern {.*} -pin_pattern {^VDD$} -power
add_global_connection -net VSS -inst_pattern {.*} -pin_pattern {^GROUND$} -ground
global_connect

set_voltage_domain -name CORE -power VDD -ground VSS
define_pdn_grid -name grid -voltage_domains CORE -pins metal2

add_pdn_stripe -grid grid -layer metal1 -width 7.0 -followpins
add_pdn_stripe -grid grid -layer metal2 -width 2.0 -pitch 390.0 -offset 195.0
add_pdn_connect -grid grid -layers {metal1 metal2}
