create_clock -name prog_clk -period 1000 [get_ports PAD2]
create_clock -name user_clk -period 1000 [get_ports PAD4]
