//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_frac_lut4 -----
module vsd_frac_lut4(in,
                     sram,
                     sram_inv,
                     mode,
                     mode_inv,
                     lut3_out,
                     lut4_out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:15] sram;
//----- INPUT PORTS -----
input [0:15] sram_inv;
//----- INPUT PORTS -----
input [0:0] mode;
//----- INPUT PORTS -----
input [0:0] mode_inv;
//----- OUTPUT PORTS -----
output [0:1] lut3_out;
//----- OUTPUT PORTS -----
output [0:0] lut4_out;

//----- BEGIN wire-connection ports -----
wire [0:3] in;
wire [0:1] lut3_out;
wire [0:0] lut4_out;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] vsd_scl_buf_0_y;
wire [0:0] vsd_scl_buf_1_y;
wire [0:0] vsd_scl_buf_2_y;
wire [0:0] vsd_scl_buf_3_y;
wire [0:0] vsd_scl_inv_0_y;
wire [0:0] vsd_scl_inv_1_y;
wire [0:0] vsd_scl_inv_2_y;
wire [0:0] vsd_scl_inv_3_y;
wire [0:0] vsd_scl_or2_0_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_scl_or2 vsd_scl_or2_0_ (
		.a(mode),
		.b(in[3]),
		.y(vsd_scl_or2_0_y));

	vsd_scl_inv vsd_scl_inv_0_ (
		.a(in[0]),
		.y(vsd_scl_inv_0_y));

	vsd_scl_inv vsd_scl_inv_1_ (
		.a(in[1]),
		.y(vsd_scl_inv_1_y));

	vsd_scl_inv vsd_scl_inv_2_ (
		.a(in[2]),
		.y(vsd_scl_inv_2_y));

	vsd_scl_inv vsd_scl_inv_3_ (
		.a(vsd_scl_or2_0_y),
		.y(vsd_scl_inv_3_y));

	vsd_scl_buf vsd_scl_buf_0_ (
		.a(in[0]),
		.y(vsd_scl_buf_0_y));

	vsd_scl_buf vsd_scl_buf_1_ (
		.a(in[1]),
		.y(vsd_scl_buf_1_y));

	vsd_scl_buf vsd_scl_buf_2_ (
		.a(in[2]),
		.y(vsd_scl_buf_2_y));

	vsd_scl_buf vsd_scl_buf_3_ (
		.a(vsd_scl_or2_0_y),
		.y(vsd_scl_buf_3_y));

	vsd_frac_lut4_mux vsd_frac_lut4_mux_0_ (
		.in(sram[0:15]),
		.sram({vsd_scl_buf_0_y, vsd_scl_buf_1_y, vsd_scl_buf_2_y, vsd_scl_buf_3_y}),
		.sram_inv({vsd_scl_inv_0_y, vsd_scl_inv_1_y, vsd_scl_inv_2_y, vsd_scl_inv_3_y}),
		.lut3_out(lut3_out[0:1]),
		.lut4_out(lut4_out));

endmodule
// ----- END Verilog module for vsd_frac_lut4 -----

//----- Default net type -----
`default_nettype wire



