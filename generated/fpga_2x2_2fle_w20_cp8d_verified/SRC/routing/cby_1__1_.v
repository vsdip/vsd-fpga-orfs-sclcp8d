//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cby_1__1_ -----
module cby_1__1_(prog_clk,
                 chany_bottom_in,
                 chany_top_in,
                 ccff_head,
                 chany_bottom_out,
                 chany_top_out,
                 right_grid_left_width_0_height_0_subtile_0__pin_clk_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I0_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I0_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I0_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I0_3_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I1_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I1_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I1_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_I1_3_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:9] chany_bottom_in;
//----- INPUT PORTS -----
input [0:9] chany_top_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:9] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:9] chany_top_out;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I0_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I0_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I0_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I0_3_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I1_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I1_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I1_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_I1_3_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:2] vsd_mux_tree_tapbuf_size6_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_2_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_3_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_3_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_4_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_4_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_5_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_5_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_6_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_6_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_4_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_5_ccff_tail;
wire [0:3] vsd_mux_tree_tapbuf_size8_0_sram;
wire [0:3] vsd_mux_tree_tapbuf_size8_0_sram_inv;
wire [0:3] vsd_mux_tree_tapbuf_size8_1_sram;
wire [0:3] vsd_mux_tree_tapbuf_size8_1_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[0] = chany_bottom_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[1] = chany_bottom_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[0] = chany_top_in[0];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[1] = chany_top_in[1];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[2] = chany_top_in[2];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[3];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chany_top_in[4];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[5];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chany_top_in[6];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[7];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chany_top_in[8];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[9];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_mux_tree_tapbuf_size6 mux_left_ipin_0 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2]}),
		.sram(vsd_mux_tree_tapbuf_size6_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_0_sram_inv[0:2]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_clk_0_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_1 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[4], chany_top_in[4]}),
		.sram(vsd_mux_tree_tapbuf_size6_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_1_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I0_1_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_2 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[5], chany_top_in[5]}),
		.sram(vsd_mux_tree_tapbuf_size6_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_2_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I0_2_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_3 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[6], chany_top_in[6]}),
		.sram(vsd_mux_tree_tapbuf_size6_3_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_3_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I0_3_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_5 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size6_4_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_4_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I1_1_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_6 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[9], chany_top_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size6_5_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_5_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I1_2_));

	vsd_mux_tree_tapbuf_size6 mux_right_ipin_7 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[2], chany_top_in[2]}),
		.sram(vsd_mux_tree_tapbuf_size6_6_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_6_sram_inv[0:2]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I1_3_));

	vsd_mux_tree_tapbuf_size6_mem mem_left_ipin_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_3_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_3_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_4_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_4_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_6 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_5_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_5_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_ipin_7 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_6_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_6_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size8 mux_right_ipin_0 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[7], chany_top_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I0_0_));

	vsd_mux_tree_tapbuf_size8 mux_right_ipin_4 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[1], chany_top_in[1], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[7], chany_top_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_I1_0_));

	vsd_mux_tree_tapbuf_size8_mem mem_right_ipin_0 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size8_mem mem_right_ipin_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]));

endmodule
// ----- END Verilog module for cby_1__1_ -----

//----- Default net type -----
`default_nettype wire




