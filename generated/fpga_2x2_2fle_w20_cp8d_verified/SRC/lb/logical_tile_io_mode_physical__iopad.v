//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: iopad
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_io_mode_physical__iopad -----
module logical_tile_io_mode_physical__iopad(prog_clk,
                                            gfpga_pad_vsd_scl_gpio_A,
                                            gfpga_pad_vsd_scl_gpio_IE,
                                            gfpga_pad_vsd_scl_gpio_OE,
                                            gfpga_pad_vsd_scl_gpio_Y,
                                            iopad_outpad,
                                            ccff_head,
                                            iopad_inpad,
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
input [0:0] iopad_outpad;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] iopad_inpad;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:0] iopad_outpad;
wire [0:0] iopad_inpad;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] vsd_scl_gpio_0_en;
wire [0:0] vsd_scl_gpio_vsd_scl_cfg_ff_mem_undriven_mem_outb;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_scl_gpio vsd_scl_gpio_0_ (
		.A(gfpga_pad_vsd_scl_gpio_A),
		.IE(gfpga_pad_vsd_scl_gpio_IE),
		.OE(gfpga_pad_vsd_scl_gpio_OE),
		.Y(gfpga_pad_vsd_scl_gpio_Y),
		.in(iopad_outpad),
		.mem_out(vsd_scl_gpio_0_en),
		.out(iopad_inpad));

	vsd_scl_gpio_vsd_scl_cfg_ff_mem vsd_scl_gpio_vsd_scl_cfg_ff_mem (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_scl_gpio_0_en),
		.mem_outb(vsd_scl_gpio_vsd_scl_cfg_ff_mem_undriven_mem_outb));

endmodule
// ----- END Verilog module for logical_tile_io_mode_physical__iopad -----

//----- Default net type -----
`default_nettype wire



