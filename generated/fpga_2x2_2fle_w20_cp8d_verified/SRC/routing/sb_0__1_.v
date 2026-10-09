//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[0][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_0__1_ -----
module sb_0__1_(prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_,
                chanx_right_in,
                chany_bottom_in,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:9] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:9] chanx_right_in;
//----- INPUT PORTS -----
input [0:9] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:9] chany_top_out;
//----- OUTPUT PORTS -----
output [0:9] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:9] chany_bottom_out;
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
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail;
wire [0:1] vsd_mux_tree_tapbuf_size3_0_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_0_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_1_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_1_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_2_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_2_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_3_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_3_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_4_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_4_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_5_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_5_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_6_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_6_sram_inv;
wire [0:1] vsd_mux_tree_tapbuf_size3_7_sram;
wire [0:1] vsd_mux_tree_tapbuf_size3_7_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_3_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_4_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_5_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_6_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size3_mem_7_ccff_tail;
wire [0:2] vsd_mux_tree_tapbuf_size4_0_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_0_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size4_1_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_1_sram_inv;
wire [0:2] vsd_mux_tree_tapbuf_size4_2_sram;
wire [0:2] vsd_mux_tree_tapbuf_size4_2_sram_inv;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail;

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
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[3];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[7];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_mux_tree_tapbuf_size4 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[1], chanx_right_in[5], chanx_right_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size4_0_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_0_sram_inv[0:2]),
		.out(chany_top_out[0]));

	vsd_mux_tree_tapbuf_size4 mux_bottom_track_3 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[1], chanx_right_in[5], chanx_right_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size4_1_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_1_sram_inv[0:2]),
		.out(chany_bottom_out[1]));

	vsd_mux_tree_tapbuf_size4 mux_bottom_track_5 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[0], chanx_right_in[4], chanx_right_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size4_2_sram[0:2]),
		.sram_inv(vsd_mux_tree_tapbuf_size4_2_sram_inv[0:2]),
		.out(chany_bottom_out[2]));

	vsd_mux_tree_tapbuf_size4_mem mem_top_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_0_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_0_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size4_mem mem_bottom_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_7_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_1_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_1_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size4_mem mem_bottom_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size4_2_sram[0:2]),
		.mem_outb(vsd_mux_tree_tapbuf_size4_2_sram_inv[0:2]));

	vsd_mux_tree_tapbuf_size3 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[2], chanx_right_in[6]}),
		.sram(vsd_mux_tree_tapbuf_size3_0_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_0_sram_inv[0:1]),
		.out(chany_top_out[1]));

	vsd_mux_tree_tapbuf_size3 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[3], chanx_right_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size3_1_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_1_sram_inv[0:1]),
		.out(chany_top_out[2]));

	vsd_mux_tree_tapbuf_size3 mux_top_track_12 (
		.in({chanx_right_in[0], chanx_right_in[4], chanx_right_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size3_2_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_2_sram_inv[0:1]),
		.out(chany_top_out[6]));

	vsd_mux_tree_tapbuf_size3 mux_right_track_6 (
		.in({chany_top_in[4], chany_bottom_in[8], chany_top_in[5]}),
		.sram(vsd_mux_tree_tapbuf_size3_3_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_3_sram_inv[0:1]),
		.out(chanx_right_out[3]));

	vsd_mux_tree_tapbuf_size3 mux_right_track_8 (
		.in({chany_bottom_in[7], chany_top_in[6], chany_top_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size3_4_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_4_sram_inv[0:1]),
		.out(chanx_right_out[4]));

	vsd_mux_tree_tapbuf_size3 mux_right_track_10 (
		.in({chany_bottom_in[6], chany_top_in[7], chany_bottom_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size3_5_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_5_sram_inv[0:1]),
		.out(chanx_right_out[5]));

	vsd_mux_tree_tapbuf_size3 mux_right_track_12 (
		.in({chany_bottom_in[4:5], chany_top_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size3_6_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_6_sram_inv[0:1]),
		.out(chanx_right_out[6]));

	vsd_mux_tree_tapbuf_size3 mux_bottom_track_1 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[2], chanx_right_in[6]}),
		.sram(vsd_mux_tree_tapbuf_size3_7_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size3_7_sram_inv[0:1]),
		.out(chany_bottom_out[0]));

	vsd_mux_tree_tapbuf_size3_mem mem_top_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_0_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_0_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_top_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_1_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_1_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_top_track_12 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_2_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_2_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_right_track_6 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_3_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_3_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_right_track_8 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_4_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_4_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_4_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_right_track_10 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_4_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_5_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_5_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_5_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_right_track_12 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_5_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_6_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_6_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_6_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size3_mem mem_bottom_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size3_mem_7_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size3_7_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size3_7_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_2 (
		.in({chany_top_in[2], chany_top_in[0]}),
		.sram(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]),
		.out(chanx_right_out[1]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_4 (
		.in({chany_top_in[3], chany_top_in[1]}),
		.sram(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]),
		.out(chanx_right_out[2]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_14 (
		.in({chany_bottom_in[1], chany_bottom_in[3]}),
		.sram(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]),
		.out(chanx_right_out[7]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_16 (
		.in({chany_bottom_in[0], chany_bottom_in[2]}),
		.sram(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]),
		.out(chanx_right_out[8]));

	vsd_mux_tree_tapbuf_size2 mux_bottom_track_13 (
		.in({chanx_right_in[3], chanx_right_in[7]}),
		.sram(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]),
		.out(chany_bottom_out[6]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_14 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size3_mem_6_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_16 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_bottom_track_13 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size4_mem_2_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]));

assign chanx_right_out[0] = 1'b0;
assign chanx_right_out[9] = 1'b0;

endmodule
// ----- END Verilog module for sb_0__1_ -----

//----- Default net type -----
`default_nettype wire



