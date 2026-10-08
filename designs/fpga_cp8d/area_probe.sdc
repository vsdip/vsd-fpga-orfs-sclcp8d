create_clock -name user_clk -period 1000 [get_ports {clk[0]}]
create_clock -name prog_clk -period 1000 [get_ports {prog_clk[0]}]
