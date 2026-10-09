//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fle
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
// ----- BEGIN Physical programmable logic block Verilog module: fle -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_clb_mode_default__fle -----
module logical_tile_clb_mode_default__fle(prog_clk,
                                          Test_en,
                                          reset_n,
                                          clk,
                                          fle_in,
                                          fle_regin,
                                          fle_scin,
                                          fle_clk,
                                          ccff_head,
                                          fle_out,
                                          fle_regout,
                                          fle_scout,
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
input [0:3] fle_in;
//----- INPUT PORTS -----
input [0:0] fle_regin;
//----- INPUT PORTS -----
input [0:0] fle_scin;
//----- INPUT PORTS -----
input [0:0] fle_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] fle_out;
//----- OUTPUT PORTS -----
output [0:0] fle_regout;
//----- OUTPUT PORTS -----
output [0:0] fle_scout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:3] fle_in;
wire [0:0] fle_regin;
wire [0:0] fle_scin;
wire [0:0] fle_clk;
wire [0:1] fle_out;
wire [0:0] fle_regout;
wire [0:0] fle_scout;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_regout;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_scout;
wire [0:0] vsd_direct_interc_10_out;
wire [0:0] vsd_direct_interc_4_out;
wire [0:0] vsd_direct_interc_5_out;
wire [0:0] vsd_direct_interc_6_out;
wire [0:0] vsd_direct_interc_7_out;
wire [0:0] vsd_direct_interc_8_out;
wire [0:0] vsd_direct_interc_9_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_mode_physical__fabric logical_tile_clb_mode_default__fle_mode_physical__fabric_0 (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.fabric_in({vsd_direct_interc_4_out, vsd_direct_interc_5_out, vsd_direct_interc_6_out, vsd_direct_interc_7_out}),
		.fabric_regin(vsd_direct_interc_8_out),
		.fabric_scin(vsd_direct_interc_9_out),
		.fabric_clk(vsd_direct_interc_10_out),
		.ccff_head(ccff_head),
		.fabric_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[0:1]),
		.fabric_regout(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_regout),
		.fabric_scout(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_scout),
		.ccff_tail(ccff_tail));

	vsd_direct_interc vsd_direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[0]),
		.out(fle_out[0]));

	vsd_direct_interc vsd_direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[1]),
		.out(fle_out[1]));

	vsd_direct_interc vsd_direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_regout),
		.out(fle_regout));

	vsd_direct_interc vsd_direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_scout),
		.out(fle_scout));

	vsd_direct_interc vsd_direct_interc_4_ (
		.in(fle_in[0]),
		.out(vsd_direct_interc_4_out));

	vsd_direct_interc vsd_direct_interc_5_ (
		.in(fle_in[1]),
		.out(vsd_direct_interc_5_out));

	vsd_direct_interc vsd_direct_interc_6_ (
		.in(fle_in[2]),
		.out(vsd_direct_interc_6_out));

	vsd_direct_interc vsd_direct_interc_7_ (
		.in(fle_in[3]),
		.out(vsd_direct_interc_7_out));

	vsd_direct_interc vsd_direct_interc_8_ (
		.in(fle_regin),
		.out(vsd_direct_interc_8_out));

	vsd_direct_interc vsd_direct_interc_9_ (
		.in(fle_scin),
		.out(vsd_direct_interc_9_out));

	vsd_direct_interc vsd_direct_interc_10_ (
		.in(fle_clk),
		.out(vsd_direct_interc_10_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle -----

//----- Default net type -----
`default_nettype wire



// ----- END Physical programmable logic block Verilog module: fle -----
