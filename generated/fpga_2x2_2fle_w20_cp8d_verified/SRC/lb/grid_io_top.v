//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical tile: io]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
// ----- BEGIN Grid Verilog module: grid_io_top -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for grid_io_top -----
module grid_io_top(prog_clk,
                   gfpga_pad_vsd_scl_gpio_A,
                   gfpga_pad_vsd_scl_gpio_IE,
                   gfpga_pad_vsd_scl_gpio_OE,
                   gfpga_pad_vsd_scl_gpio_Y,
                   bottom_width_0_height_0_subtile_0__pin_outpad_0_,
                   ccff_head,
                   bottom_width_0_height_0_subtile_0__pin_inpad_0_upper,
                   bottom_width_0_height_0_subtile_0__pin_inpad_0_lower,
                   ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_vsd_scl_gpio_A;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_vsd_scl_gpio_IE;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_vsd_scl_gpio_OE;
//----- GPIO PORTS -----
inout [0:0] gfpga_pad_vsd_scl_gpio_Y;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_outpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_inpad_0_upper;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_inpad_0_lower;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign bottom_width_0_height_0_subtile_0__pin_inpad_0_lower[0] = bottom_width_0_height_0_subtile_0__pin_inpad_0_upper[0];
// ----- END Local output short connections -----

	logical_tile_io_mode_io_ logical_tile_io_mode_io__0 (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y),
		.io_outpad(bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(ccff_head),
		.io_inpad(bottom_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_io_top -----

//----- Default net type -----
`default_nettype wire



// ----- END Grid Verilog module: grid_io_top -----

