//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: io
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
// ----- BEGIN Physical programmable logic block Verilog module: io -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_io_mode_io_ -----
module logical_tile_io_mode_io_(prog_clk,
                                gfpga_pad_vsd_scl_gpio_A,
                                gfpga_pad_vsd_scl_gpio_IE,
                                gfpga_pad_vsd_scl_gpio_OE,
                                gfpga_pad_vsd_scl_gpio_Y,
                                io_outpad,
                                ccff_head,
                                io_inpad,
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
input [0:0] io_outpad;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] io_inpad;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:0] io_outpad;
wire [0:0] io_inpad;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] logical_tile_io_mode_physical__iopad_0_iopad_inpad;
wire [0:0] vsd_direct_interc_1_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_io_mode_physical__iopad logical_tile_io_mode_physical__iopad_0 (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y),
		.iopad_outpad(vsd_direct_interc_1_out),
		.ccff_head(ccff_head),
		.iopad_inpad(logical_tile_io_mode_physical__iopad_0_iopad_inpad),
		.ccff_tail(ccff_tail));

	vsd_direct_interc vsd_direct_interc_0_ (
		.in(logical_tile_io_mode_physical__iopad_0_iopad_inpad),
		.out(io_inpad));

	vsd_direct_interc vsd_direct_interc_1_ (
		.in(io_outpad),
		.out(vsd_direct_interc_1_out));

endmodule
// ----- END Verilog module for logical_tile_io_mode_io_ -----

//----- Default net type -----
`default_nettype wire



// ----- END Physical programmable logic block Verilog module: io -----
