//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical tile: clb]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
// ----- BEGIN Grid Verilog module: grid_clb -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for grid_clb -----
module grid_clb(prog_clk,
                Test_en,
                reset_n,
                clk,
                top_width_0_height_0_subtile_0__pin_regin_0_,
                top_width_0_height_0_subtile_0__pin_scin_0_,
                right_width_0_height_0_subtile_0__pin_I0_0_,
                right_width_0_height_0_subtile_0__pin_I0_1_,
                right_width_0_height_0_subtile_0__pin_I0_2_,
                right_width_0_height_0_subtile_0__pin_I0_3_,
                right_width_0_height_0_subtile_0__pin_I1_0_,
                right_width_0_height_0_subtile_0__pin_I1_1_,
                right_width_0_height_0_subtile_0__pin_I1_2_,
                right_width_0_height_0_subtile_0__pin_I1_3_,
                left_width_0_height_0_subtile_0__pin_clk_0_,
                ccff_head,
                right_width_0_height_0_subtile_0__pin_O_0_upper,
                right_width_0_height_0_subtile_0__pin_O_0_lower,
                right_width_0_height_0_subtile_0__pin_O_1_upper,
                right_width_0_height_0_subtile_0__pin_O_1_lower,
                right_width_0_height_0_subtile_0__pin_O_2_upper,
                right_width_0_height_0_subtile_0__pin_O_2_lower,
                right_width_0_height_0_subtile_0__pin_O_3_upper,
                right_width_0_height_0_subtile_0__pin_O_3_lower,
                bottom_width_0_height_0_subtile_0__pin_regout_0_,
                bottom_width_0_height_0_subtile_0__pin_scout_0_,
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
input [0:0] top_width_0_height_0_subtile_0__pin_regin_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_scin_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I0_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I0_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I0_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I0_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I1_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I1_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I1_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I1_3_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_0_upper;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_0_lower;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_1_upper;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_1_lower;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_2_upper;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_2_lower;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_3_upper;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_3_lower;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_regout_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_scout_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign right_width_0_height_0_subtile_0__pin_O_0_lower[0] = right_width_0_height_0_subtile_0__pin_O_0_upper[0];
	assign right_width_0_height_0_subtile_0__pin_O_1_lower[0] = right_width_0_height_0_subtile_0__pin_O_1_upper[0];
	assign right_width_0_height_0_subtile_0__pin_O_2_lower[0] = right_width_0_height_0_subtile_0__pin_O_2_upper[0];
	assign right_width_0_height_0_subtile_0__pin_O_3_lower[0] = right_width_0_height_0_subtile_0__pin_O_3_upper[0];
// ----- END Local output short connections -----

	logical_tile_clb_mode_clb_ logical_tile_clb_mode_clb__0 (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.clb_I0({right_width_0_height_0_subtile_0__pin_I0_0_, right_width_0_height_0_subtile_0__pin_I0_1_, right_width_0_height_0_subtile_0__pin_I0_2_, right_width_0_height_0_subtile_0__pin_I0_3_}),
		.clb_I1({right_width_0_height_0_subtile_0__pin_I1_0_, right_width_0_height_0_subtile_0__pin_I1_1_, right_width_0_height_0_subtile_0__pin_I1_2_, right_width_0_height_0_subtile_0__pin_I1_3_}),
		.clb_regin(top_width_0_height_0_subtile_0__pin_regin_0_),
		.clb_scin(top_width_0_height_0_subtile_0__pin_scin_0_),
		.clb_clk(left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(ccff_head),
		.clb_O({right_width_0_height_0_subtile_0__pin_O_0_upper, right_width_0_height_0_subtile_0__pin_O_1_upper, right_width_0_height_0_subtile_0__pin_O_2_upper, right_width_0_height_0_subtile_0__pin_O_3_upper}),
		.clb_regout(bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.clb_scout(bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_clb -----

//----- Default net type -----
`default_nettype wire



// ----- END Grid Verilog module: grid_clb -----

