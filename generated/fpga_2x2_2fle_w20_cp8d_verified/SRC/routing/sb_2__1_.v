//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[2][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_2__1_ -----
module sb_2__1_(prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_,
                chany_bottom_in,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                chanx_left_in,
                ccff_head,
                chany_top_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:9] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:9] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:9] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:9] chany_top_out;
//----- OUTPUT PORTS -----
output [0:9] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:9] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] vsd_mux_tree_tapbuf_size2_0_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_0_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_1_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_1_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_2_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_2_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_3_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_3_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_4_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_4_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_5_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_5_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_6_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_6_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_7_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_7_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_8_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_8_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size2_9_sram;
wire [0:1] vsd_mux_tree_tapbuf_size2_9_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_5_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_6_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_7_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_8_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size5_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_2_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_3_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_3_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size7_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size7_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size7_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size7_1_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size7_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size7_mem_1_ccff_tail;
wire [0:3] vsd_mux_tree_tapbuf_size8_0_sram;
wire [0:3] vsd_mux_tree_tapbuf_size8_0_sram_inv;
wire [0:3] vsd_mux_tree_tapbuf_size8_1_sram;
wire [0:3] vsd_mux_tree_tapbuf_size8_1_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chany_top_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chany_top_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[3];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[7];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_mux_tree_tapbuf_size8 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[4], chanx_left_in[8], chanx_left_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]),
		.out(chany_top_out[0]));

	vsd_mux_tree_tapbuf_size8 mux_bottom_track_1 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[5], chanx_left_in[9], chanx_left_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]),
		.out(chany_bottom_out[0]));

	vsd_mux_tree_tapbuf_size8_mem mem_top_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size8_mem mem_bottom_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size7 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[3], chanx_left_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size7_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size7_0_sram_inv[0:2]),
		.out(chany_top_out[1]));

	vsd_mux_tree_tapbuf_size7 mux_bottom_track_3 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[2], chanx_left_in[6]}),
		.sram(vsd_mux_tree_tapbuf_size7_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size7_1_sram_inv[0:2]),
		.out(chany_bottom_out[1]));

	vsd_mux_tree_tapbuf_size7_mem mem_top_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size7_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size7_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size7_mem mem_bottom_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size7_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size7_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[2], chanx_left_in[6]}),
		.sram(vsd_mux_tree_tapbuf_size5_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_0_sram_inv[0:2]),
		.out(chany_top_out[2]));

	vsd_mux_tree_tapbuf_size5 mux_top_track_12 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[5], chanx_left_in[9], chanx_left_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size5_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_1_sram_inv[0:2]),
		.out(chany_top_out[6]));

	vsd_mux_tree_tapbuf_size5 mux_bottom_track_5 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, chanx_left_in[3], chanx_left_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size5_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_2_sram_inv[0:2]),
		.out(chany_bottom_out[2]));

	vsd_mux_tree_tapbuf_size5 mux_bottom_track_13 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, chanx_left_in[4], chanx_left_in[8], chanx_left_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size5_3_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_3_sram_inv[0:2]),
		.out(chany_bottom_out[6]));

	vsd_mux_tree_tapbuf_size5_mem mem_top_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_top_track_12 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_bottom_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_bottom_track_13 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_3_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_3_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_1 (
		.in({chany_top_in[2], chany_top_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]),
		.out(chanx_left_out[0]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_3 (
		.in({chany_bottom_in[0], chany_bottom_in[2]}),
		.sram(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]),
		.out(chanx_left_out[1]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_5 (
		.in({chany_bottom_in[1], chany_bottom_in[3]}),
		.sram(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]),
		.out(chanx_left_out[2]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_7 (
		.in(chany_bottom_in[4:5]),
		.sram(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]),
		.out(chanx_left_out[3]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_9 (
		.in({chany_bottom_in[6], chany_bottom_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]),
		.out(chanx_left_out[4]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_11 (
		.in({chany_bottom_in[7], chany_top_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size2_5_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_5_sram_inv[0:1]),
		.out(chanx_left_out[5]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_13 (
		.in({chany_bottom_in[8], chany_top_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size2_6_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_6_sram_inv[0:1]),
		.out(chanx_left_out[6]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_15 (
		.in({chany_top_in[6], chany_top_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size2_7_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_7_sram_inv[0:1]),
		.out(chanx_left_out[7]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_17 (
		.in(chany_top_in[4:5]),
		.sram(vsd_mux_tree_tapbuf_size2_8_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_8_sram_inv[0:1]),
		.out(chanx_left_out[8]));

	vsd_mux_tree_tapbuf_size2 mux_left_track_19 (
		.in({chany_top_in[3], chany_top_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size2_9_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_9_sram_inv[0:1]),
		.out(chanx_left_out[9]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_7 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_9 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_11 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_5_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_5_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_5_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_13 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_5_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_6_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_6_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_6_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_15 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_6_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_7_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_7_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_7_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_17 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_7_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_8_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_8_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_8_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_left_track_19 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_8_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_9_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_9_sram_inv[0:1]));

endmodule
// ----- END Verilog module for sb_2__1_ -----

//----- Default net type -----
`default_nettype wire



