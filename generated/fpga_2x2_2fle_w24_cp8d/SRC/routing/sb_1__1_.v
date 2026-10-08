//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_1__1_ -----
module sb_1__1_(prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                chanx_right_in,
                chany_bottom_in,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                chanx_left_in,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:11] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:11] chanx_right_in;
//----- INPUT PORTS -----
input [0:11] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:11] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:11] chany_top_out;
//----- OUTPUT PORTS -----
output [0:11] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:11] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:11] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] vsd_mux_tree_tapbuf_size10_0_sram;
wire [0:3] vsd_mux_tree_tapbuf_size10_0_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size10_mem_0_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size4_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size4_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size4_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_2_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size5_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_2_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_3_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_3_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_4_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_4_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_5_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_5_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size5_6_sram;
wire [0:2] vsd_mux_tree_tapbuf_size5_6_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_4_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size5_mem_5_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size6_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_2_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size6_3_sram;
wire [0:2] vsd_mux_tree_tapbuf_size6_3_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail;
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
wire [0:3] vsd_mux_tree_tapbuf_size9_0_sram;
wire [0:3] vsd_mux_tree_tapbuf_size9_0_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size9_mem_0_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[4] = chany_top_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[8] = chany_top_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[11] = chany_top_in[10];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[4] = chanx_right_in[3];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[8] = chanx_right_in[7];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[3];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[7];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[10];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[4] = chanx_left_in[3];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[8] = chanx_left_in[7];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_mux_tree_tapbuf_size10 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[0], chanx_left_in[2], chanx_right_in[3], chanx_left_in[8], chanx_right_in[10], chanx_right_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size10_0_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size10_0_sram_inv[0:3]),
		.out(chany_top_out[0]));

	vsd_mux_tree_tapbuf_size10_mem mem_top_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(vsd_mux_tree_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size10_0_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size10_0_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size8 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[4], chanx_left_in[7], chanx_left_in[11], chanx_right_in[5]}),
		.sram(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]),
		.out(chany_top_out[1]));

	vsd_mux_tree_tapbuf_size8 mux_bottom_track_3 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[4:5], chanx_right_in[4:5]}),
		.sram(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]),
		.out(chany_bottom_out[1]));

	vsd_mux_tree_tapbuf_size8_mem mem_top_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_0_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_0_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size8_mem mem_bottom_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size8_1_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size8_1_sram_inv[0:3]));

	vsd_mux_tree_tapbuf_size6 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[6], chanx_right_in[6], chanx_left_in[9], chanx_right_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size6_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_0_sram_inv[0:2]),
		.out(chany_top_out[2]));

	vsd_mux_tree_tapbuf_size6 mux_right_track_4 (
		.in({chany_bottom_in[1], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[10], chany_top_in[10], chany_top_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size6_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_1_sram_inv[0:2]),
		.out(chanx_right_out[2]));

	vsd_mux_tree_tapbuf_size6 mux_bottom_track_13 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, chanx_right_in[2], chanx_left_in[7], chanx_right_in[8], chanx_left_in[11], chanx_right_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size6_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_2_sram_inv[0:2]),
		.out(chany_bottom_out[6]));

	vsd_mux_tree_tapbuf_size6 mux_bottom_track_21 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, chanx_left_in[0], chanx_left_in[2], chanx_left_in[8], chanx_right_in[7], chanx_right_in[11]}),
		.sram(vsd_mux_tree_tapbuf_size6_3_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size6_3_sram_inv[0:2]),
		.out(chany_bottom_out[10]));

	vsd_mux_tree_tapbuf_size6_mem mem_top_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_right_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_bottom_track_13 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size6_mem mem_bottom_track_21 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size6_3_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size6_3_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5 mux_top_track_12 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, chanx_left_in[4:5], chanx_right_in[7], chanx_right_in[11]}),
		.sram(vsd_mux_tree_tapbuf_size5_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_0_sram_inv[0:2]),
		.out(chany_top_out[6]));

	vsd_mux_tree_tapbuf_size5 mux_right_track_2 (
		.in({chany_top_in[2], chany_bottom_in[4:5], chany_top_in[8], chany_top_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size5_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_1_sram_inv[0:2]),
		.out(chanx_right_out[1]));

	vsd_mux_tree_tapbuf_size5 mux_right_track_12 (
		.in({chany_bottom_in[0], chany_bottom_in[2], chany_top_in[4], chany_bottom_in[8], chany_top_in[5]}),
		.sram(vsd_mux_tree_tapbuf_size5_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_2_sram_inv[0:2]),
		.out(chanx_right_out[6]));

	vsd_mux_tree_tapbuf_size5 mux_left_track_1 (
		.in({chany_top_in[2], chany_bottom_in[7], chany_top_in[8], chany_bottom_in[11], chany_top_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size5_3_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_3_sram_inv[0:2]),
		.out(chanx_left_out[0]));

	vsd_mux_tree_tapbuf_size5 mux_left_track_3 (
		.in({chany_bottom_in[0], chany_bottom_in[2], chany_bottom_in[8], chany_top_in[7], chany_top_in[11]}),
		.sram(vsd_mux_tree_tapbuf_size5_4_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_4_sram_inv[0:2]),
		.out(chanx_left_out[1]));

	vsd_mux_tree_tapbuf_size5 mux_left_track_5 (
		.in({chany_bottom_in[1], chany_bottom_in[3], chany_top_in[6], chany_bottom_in[10], chany_top_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size5_5_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_5_sram_inv[0:2]),
		.out(chanx_left_out[2]));

	vsd_mux_tree_tapbuf_size5 mux_left_track_21 (
		.in({chany_top_in[3], chany_bottom_in[6], chany_bottom_in[9], chany_top_in[10], chany_top_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size5_6_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size5_6_sram_inv[0:2]),
		.out(chanx_left_out[10]));

	vsd_mux_tree_tapbuf_size5_mem mem_top_track_12 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_right_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_right_track_12 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_left_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_3_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_3_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_left_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_4_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_4_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_4_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_left_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_4_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size5_mem_5_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_5_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_5_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size5_mem mem_left_track_21 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size5_6_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size5_6_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size7 mux_top_track_20 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, chanx_left_in[1], chanx_left_in[3], chanx_right_in[2], chanx_right_in[8], chanx_left_in[10], chanx_right_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size7_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size7_0_sram_inv[0:2]),
		.out(chany_top_out[10]));

	vsd_mux_tree_tapbuf_size7 mux_bottom_track_5 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[3], chanx_left_in[6], chanx_left_in[9], chanx_right_in[10], chanx_right_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size7_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size7_1_sram_inv[0:2]),
		.out(chany_bottom_out[2]));

	vsd_mux_tree_tapbuf_size7_mem mem_top_track_20 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size7_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size7_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size7_mem mem_bottom_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size7_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size7_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size4 mux_right_track_0 (
		.in({chany_bottom_in[6], chany_top_in[7], chany_bottom_in[9], chany_top_in[11]}),
		.sram(vsd_mux_tree_tapbuf_size4_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_0_sram_inv[0:2]),
		.out(chanx_right_out[0]));

	vsd_mux_tree_tapbuf_size4 mux_right_track_20 (
		.in({chany_bottom_in[7], chany_top_in[6], chany_bottom_in[11], chany_top_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size4_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_1_sram_inv[0:2]),
		.out(chanx_right_out[10]));

	vsd_mux_tree_tapbuf_size4 mux_left_track_13 (
		.in({chany_bottom_in[4:5], chany_top_in[4:5]}),
		.sram(vsd_mux_tree_tapbuf_size4_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_2_sram_inv[0:2]),
		.out(chanx_left_out[6]));

	vsd_mux_tree_tapbuf_size4_mem mem_right_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size4_mem mem_right_track_20 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size4_mem mem_left_track_13 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size5_mem_5_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size9 mux_bottom_track_1 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[1], chanx_left_in[3], chanx_right_in[6], chanx_left_in[10], chanx_right_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size9_0_sram[0:3]),
		.sram_inv(vsd_mux_tree_tapbuf_size9_0_sram_inv[0:3]),
		.out(chany_bottom_out[0]));

	vsd_mux_tree_tapbuf_size9_mem mem_bottom_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size9_0_sram[0:3]),
		.mem_outb(vsd_mux_tree_tapbuf_size9_0_sram_inv[0:3]));

endmodule
// ----- END Verilog module for sb_1__1_ -----

//----- Default net type -----
`default_nettype wire



