//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[0][2]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_0__2_ -----
module sb_0__2_(prog_clk,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_,
                chany_bottom_in,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_,
                ccff_head,
                chanx_right_out,
                chany_bottom_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:11] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:11] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:11] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:11] chany_bottom_out;
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
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail;
wire [0:0] vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[10] = chanx_right_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chanx_right_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chanx_right_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chanx_right_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chanx_right_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chanx_right_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chanx_right_in[7];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[10] = chany_bottom_in[0];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[9] = chany_bottom_in[1];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[8] = chany_bottom_in[2];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[7] = chany_bottom_in[3];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[6] = chany_bottom_in[4];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[5] = chany_bottom_in[5];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[4] = chany_bottom_in[6];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[3] = chany_bottom_in[7];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[11] = chany_bottom_in[11];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_mux_tree_tapbuf_size2 mux_right_track_0 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, chany_bottom_in[10]}),
		.sram(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]),
		.out(chanx_right_out[0]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_2 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, chany_bottom_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]),
		.out(chanx_right_out[1]));

	vsd_mux_tree_tapbuf_size2 mux_right_track_4 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, chany_bottom_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]),
		.out(chanx_right_out[2]));

	vsd_mux_tree_tapbuf_size2 mux_bottom_track_1 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[10]}),
		.sram(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]),
		.out(chany_bottom_out[0]));

	vsd_mux_tree_tapbuf_size2 mux_bottom_track_3 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[9]}),
		.sram(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]),
		.out(chany_bottom_out[1]));

	vsd_mux_tree_tapbuf_size2 mux_bottom_track_5 (
		.in({bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, chanx_right_in[8]}),
		.sram(vsd_mux_tree_tapbuf_size2_5_sram[0:1]),
		.sram_inv(vsd_mux_tree_tapbuf_size2_5_sram_inv[0:1]),
		.out(chany_bottom_out[2]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_0 (
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_0_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_0_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_2 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_1_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_1_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_right_track_4 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_1_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_2_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_2_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_bottom_track_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_2_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_3_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_3_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_bottom_track_3 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_3_ccff_tail),
		.ccff_tail(vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_4_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_4_sram_inv[0:1]));

	vsd_mux_tree_tapbuf_size2_mem mem_bottom_track_5 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_tapbuf_size2_mem_4_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_tapbuf_size2_5_sram[0:1]),
		.mem_outb(vsd_mux_tree_tapbuf_size2_5_sram_inv[0:1]));

endmodule
// ----- END Verilog module for sb_0__2_ -----

//----- Default net type -----
`default_nettype wire



