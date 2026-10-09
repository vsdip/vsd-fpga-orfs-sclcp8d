//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: clb
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
// ----- BEGIN Physical programmable logic block Verilog module: clb -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_clb_mode_clb_ -----
module logical_tile_clb_mode_clb_(prog_clk,
                                  Test_en,
                                  reset_n,
                                  clk,
                                  clb_I0,
                                  clb_I1,
                                  clb_regin,
                                  clb_scin,
                                  clb_clk,
                                  ccff_head,
                                  clb_O,
                                  clb_regout,
                                  clb_scout,
                                  ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GLOBAL PORTS -----
input [0:0] Test_en;
//----- GLOBAL PORTS -----
input [0:0] reset_n;
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- INPUT PORTS -----
input [0:3] clb_I0;
//----- INPUT PORTS -----
input [0:3] clb_I1;
//----- INPUT PORTS -----
input [0:0] clb_regin;
//----- INPUT PORTS -----
input [0:0] clb_scin;
//----- INPUT PORTS -----
input [0:0] clb_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:3] clb_O;
//----- OUTPUT PORTS -----
output [0:0] clb_regout;
//----- OUTPUT PORTS -----
output [0:0] clb_scout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:3] clb_I0;
wire [0:3] clb_I1;
wire [0:0] clb_regin;
wire [0:0] clb_scin;
wire [0:0] clb_clk;
wire [0:3] clb_O;
wire [0:0] clb_regout;
wire [0:0] clb_scout;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] logical_tile_clb_mode_default__fle_0_ccff_tail;
wire [0:1] logical_tile_clb_mode_default__fle_0_fle_out;
wire [0:0] logical_tile_clb_mode_default__fle_0_fle_regout;
wire [0:0] logical_tile_clb_mode_default__fle_0_fle_scout;
wire [0:1] logical_tile_clb_mode_default__fle_1_fle_out;
wire [0:0] logical_tile_clb_mode_default__fle_1_fle_regout;
wire [0:0] logical_tile_clb_mode_default__fle_1_fle_scout;
wire [0:0] vsd_direct_interc_10_out;
wire [0:0] vsd_direct_interc_11_out;
wire [0:0] vsd_direct_interc_12_out;
wire [0:0] vsd_direct_interc_13_out;
wire [0:0] vsd_direct_interc_14_out;
wire [0:0] vsd_direct_interc_15_out;
wire [0:0] vsd_direct_interc_16_out;
wire [0:0] vsd_direct_interc_17_out;
wire [0:0] vsd_direct_interc_18_out;
wire [0:0] vsd_direct_interc_19_out;
wire [0:0] vsd_direct_interc_6_out;
wire [0:0] vsd_direct_interc_7_out;
wire [0:0] vsd_direct_interc_8_out;
wire [0:0] vsd_direct_interc_9_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_0 (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.fle_in({vsd_direct_interc_6_out, vsd_direct_interc_7_out, vsd_direct_interc_8_out, vsd_direct_interc_9_out}),
		.fle_regin(vsd_direct_interc_10_out),
		.fle_scin(vsd_direct_interc_11_out),
		.fle_clk(vsd_direct_interc_12_out),
		.ccff_head(ccff_head),
		.fle_out(logical_tile_clb_mode_default__fle_0_fle_out[0:1]),
		.fle_regout(logical_tile_clb_mode_default__fle_0_fle_regout),
		.fle_scout(logical_tile_clb_mode_default__fle_0_fle_scout),
		.ccff_tail(logical_tile_clb_mode_default__fle_0_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_1 (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.fle_in({vsd_direct_interc_13_out, vsd_direct_interc_14_out, vsd_direct_interc_15_out, vsd_direct_interc_16_out}),
		.fle_regin(vsd_direct_interc_17_out),
		.fle_scin(vsd_direct_interc_18_out),
		.fle_clk(vsd_direct_interc_19_out),
		.ccff_head(logical_tile_clb_mode_default__fle_0_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_1_fle_out[0:1]),
		.fle_regout(logical_tile_clb_mode_default__fle_1_fle_regout),
		.fle_scout(logical_tile_clb_mode_default__fle_1_fle_scout),
		.ccff_tail(ccff_tail));

	vsd_direct_interc vsd_direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_out[1]),
		.out(clb_O[0]));

	vsd_direct_interc vsd_direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_out[0]),
		.out(clb_O[1]));

	vsd_direct_interc vsd_direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_out[1]),
		.out(clb_O[2]));

	vsd_direct_interc vsd_direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_out[0]),
		.out(clb_O[3]));

	vsd_direct_interc vsd_direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_regout),
		.out(clb_regout));

	vsd_direct_interc vsd_direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_scout),
		.out(clb_scout));

	vsd_direct_interc vsd_direct_interc_6_ (
		.in(clb_I0[0]),
		.out(vsd_direct_interc_6_out));

	vsd_direct_interc vsd_direct_interc_7_ (
		.in(clb_I0[1]),
		.out(vsd_direct_interc_7_out));

	vsd_direct_interc vsd_direct_interc_8_ (
		.in(clb_I0[2]),
		.out(vsd_direct_interc_8_out));

	vsd_direct_interc vsd_direct_interc_9_ (
		.in(clb_I0[3]),
		.out(vsd_direct_interc_9_out));

	vsd_direct_interc vsd_direct_interc_10_ (
		.in(clb_regin),
		.out(vsd_direct_interc_10_out));

	vsd_direct_interc vsd_direct_interc_11_ (
		.in(clb_scin),
		.out(vsd_direct_interc_11_out));

	vsd_direct_interc vsd_direct_interc_12_ (
		.in(clb_clk),
		.out(vsd_direct_interc_12_out));

	vsd_direct_interc vsd_direct_interc_13_ (
		.in(clb_I1[0]),
		.out(vsd_direct_interc_13_out));

	vsd_direct_interc vsd_direct_interc_14_ (
		.in(clb_I1[1]),
		.out(vsd_direct_interc_14_out));

	vsd_direct_interc vsd_direct_interc_15_ (
		.in(clb_I1[2]),
		.out(vsd_direct_interc_15_out));

	vsd_direct_interc vsd_direct_interc_16_ (
		.in(clb_I1[3]),
		.out(vsd_direct_interc_16_out));

	vsd_direct_interc vsd_direct_interc_17_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_regout),
		.out(vsd_direct_interc_17_out));

	vsd_direct_interc vsd_direct_interc_18_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_scout),
		.out(vsd_direct_interc_18_out));

	vsd_direct_interc vsd_direct_interc_19_ (
		.in(clb_clk),
		.out(vsd_direct_interc_19_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_clb_ -----

//----- Default net type -----
`default_nettype wire



// ----- END Physical programmable logic block Verilog module: clb -----
