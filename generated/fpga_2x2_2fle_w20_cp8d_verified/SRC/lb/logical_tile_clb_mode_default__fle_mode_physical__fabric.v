//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fabric
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
// ----- BEGIN Physical programmable logic block Verilog module: fabric -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric(prog_clk,
                                                                Test_en,
                                                                reset_n,
                                                                clk,
                                                                fabric_in,
                                                                fabric_regin,
                                                                fabric_scin,
                                                                fabric_clk,
                                                                ccff_head,
                                                                fabric_out,
                                                                fabric_regout,
                                                                fabric_scout,
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
input [0:3] fabric_in;
//----- INPUT PORTS -----
input [0:0] fabric_regin;
//----- INPUT PORTS -----
input [0:0] fabric_scin;
//----- INPUT PORTS -----
input [0:0] fabric_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] fabric_out;
//----- OUTPUT PORTS -----
output [0:0] fabric_regout;
//----- OUTPUT PORTS -----
output [0:0] fabric_scout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:3] fabric_in;
wire [0:0] fabric_regin;
wire [0:0] fabric_scin;
wire [0:0] fabric_clk;
wire [0:1] fabric_out;
wire [0:0] fabric_regout;
wire [0:0] fabric_scout;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q;
wire [0:0] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail;
wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out;
wire [0:0] vsd_direct_interc_10_out;
wire [0:0] vsd_direct_interc_2_out;
wire [0:0] vsd_direct_interc_3_out;
wire [0:0] vsd_direct_interc_4_out;
wire [0:0] vsd_direct_interc_5_out;
wire [0:0] vsd_direct_interc_6_out;
wire [0:0] vsd_direct_interc_7_out;
wire [0:0] vsd_direct_interc_8_out;
wire [0:0] vsd_direct_interc_9_out;
wire [0:1] vsd_mux_tree_size2_0_sram;
wire [0:1] vsd_mux_tree_size2_0_sram_inv;
wire [0:1] vsd_mux_tree_size2_1_sram;
wire [0:1] vsd_mux_tree_size2_1_sram_inv;
wire [0:0] vsd_mux_tree_size2_2_out;
wire [0:1] vsd_mux_tree_size2_2_sram;
wire [0:1] vsd_mux_tree_size2_2_sram_inv;
wire [0:0] vsd_mux_tree_size2_mem_0_ccff_tail;
wire [0:0] vsd_mux_tree_size2_mem_1_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0 (
		.prog_clk(prog_clk),
		.frac_logic_in({vsd_direct_interc_2_out, vsd_direct_interc_3_out, vsd_direct_interc_4_out, vsd_direct_interc_5_out}),
		.ccff_head(ccff_head),
		.frac_logic_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0 (
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.ff_D(vsd_mux_tree_size2_2_out),
		.ff_DI(vsd_direct_interc_6_out),
		.ff_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q),
		.ff_clk(vsd_direct_interc_7_out));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1 (
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.ff_D(vsd_direct_interc_8_out),
		.ff_DI(vsd_direct_interc_9_out),
		.ff_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q),
		.ff_clk(vsd_direct_interc_10_out));

	vsd_mux_tree_size2 mux_fabric_out_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0]}),
		.sram(vsd_mux_tree_size2_0_sram[0:1]),
		.sram_inv(vsd_mux_tree_size2_0_sram_inv[0:1]),
		.out(fabric_out[0]));

	vsd_mux_tree_size2 mux_fabric_out_1 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1]}),
		.sram(vsd_mux_tree_size2_1_sram[0:1]),
		.sram_inv(vsd_mux_tree_size2_1_sram_inv[0:1]),
		.out(fabric_out[1]));

	vsd_mux_tree_size2 mux_ff_0_D_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0], fabric_regin}),
		.sram(vsd_mux_tree_size2_2_sram[0:1]),
		.sram_inv(vsd_mux_tree_size2_2_sram_inv[0:1]),
		.out(vsd_mux_tree_size2_2_out));

	vsd_mux_tree_size2_mem mem_fabric_out_0 (
		.prog_clk(prog_clk),
		.ccff_head(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_size2_mem_0_ccff_tail),
		.mem_out(vsd_mux_tree_size2_0_sram[0:1]),
		.mem_outb(vsd_mux_tree_size2_0_sram_inv[0:1]));

	vsd_mux_tree_size2_mem mem_fabric_out_1 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(vsd_mux_tree_size2_mem_1_ccff_tail),
		.mem_out(vsd_mux_tree_size2_1_sram[0:1]),
		.mem_outb(vsd_mux_tree_size2_1_sram_inv[0:1]));

	vsd_mux_tree_size2_mem mem_ff_0_D_0 (
		.prog_clk(prog_clk),
		.ccff_head(vsd_mux_tree_size2_mem_1_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(vsd_mux_tree_size2_2_sram[0:1]),
		.mem_outb(vsd_mux_tree_size2_2_sram_inv[0:1]));

	vsd_direct_interc vsd_direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q),
		.out(fabric_regout));

	vsd_direct_interc vsd_direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1_ff_Q),
		.out(fabric_scout));

	vsd_direct_interc vsd_direct_interc_2_ (
		.in(fabric_in[0]),
		.out(vsd_direct_interc_2_out));

	vsd_direct_interc vsd_direct_interc_3_ (
		.in(fabric_in[1]),
		.out(vsd_direct_interc_3_out));

	vsd_direct_interc vsd_direct_interc_4_ (
		.in(fabric_in[2]),
		.out(vsd_direct_interc_4_out));

	vsd_direct_interc vsd_direct_interc_5_ (
		.in(fabric_in[3]),
		.out(vsd_direct_interc_5_out));

	vsd_direct_interc vsd_direct_interc_6_ (
		.in(fabric_scin),
		.out(vsd_direct_interc_6_out));

	vsd_direct_interc vsd_direct_interc_7_ (
		.in(fabric_clk),
		.out(vsd_direct_interc_7_out));

	vsd_direct_interc vsd_direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1]),
		.out(vsd_direct_interc_8_out));

	vsd_direct_interc vsd_direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0_ff_Q),
		.out(vsd_direct_interc_9_out));

	vsd_direct_interc vsd_direct_interc_10_ (
		.in(fabric_clk),
		.out(vsd_direct_interc_10_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric -----

//----- Default net type -----
`default_nettype wire



// ----- END Physical programmable logic block Verilog module: fabric -----
