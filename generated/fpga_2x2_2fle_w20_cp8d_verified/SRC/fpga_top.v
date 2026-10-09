//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Top-level Verilog module for FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for fpga_top -----
module fpga_top(prog_clk,
                Test_en,
                reset_n,
                clk,
                gfpga_pad_vsd_scl_gpio_A,
                gfpga_pad_vsd_scl_gpio_IE,
                gfpga_pad_vsd_scl_gpio_OE,
                gfpga_pad_vsd_scl_gpio_Y,
                ccff_head,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GLOBAL PORTS -----
input [0:0] Test_en;
//----- GLOBAL PORTS -----
input [0:0] reset_n;
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- GPOUT PORTS -----
output [0:7] gfpga_pad_vsd_scl_gpio_A;
//----- GPOUT PORTS -----
output [0:7] gfpga_pad_vsd_scl_gpio_IE;
//----- GPOUT PORTS -----
output [0:7] gfpga_pad_vsd_scl_gpio_OE;
//----- GPIO PORTS -----
inout [0:7] gfpga_pad_vsd_scl_gpio_Y;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cbx_1__0__0_ccff_tail;
wire [0:9] cbx_1__0__0_chanx_left_out;
wire [0:9] cbx_1__0__0_chanx_right_out;
wire [0:9] cbx_1__1__0_chanx_left_out;
wire [0:9] cbx_1__1__0_chanx_right_out;
wire [0:9] cbx_1__1__1_chanx_left_out;
wire [0:9] cbx_1__1__1_chanx_right_out;
wire [0:0] cbx_1__2__0_ccff_tail;
wire [0:9] cbx_1__2__0_chanx_left_out;
wire [0:9] cbx_1__2__0_chanx_right_out;
wire [0:0] cbx_1__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cbx_2__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cbx_2__0__0_ccff_tail;
wire [0:9] cbx_2__0__0_chanx_left_out;
wire [0:9] cbx_2__0__0_chanx_right_out;
wire [0:0] cbx_2__2__0_ccff_tail;
wire [0:9] cbx_2__2__0_chanx_left_out;
wire [0:9] cbx_2__2__0_chanx_right_out;
wire [0:0] cbx_2__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cby_0__1__0_ccff_tail;
wire [0:9] cby_0__1__0_chany_bottom_out;
wire [0:9] cby_0__1__0_chany_top_out;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] cby_0__2__0_ccff_tail;
wire [0:9] cby_0__2__0_chany_bottom_out;
wire [0:9] cby_0__2__0_chany_top_out;
wire [0:0] cby_0__2__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cby_0__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] cby_1__1__0_ccff_tail;
wire [0:9] cby_1__1__0_chany_bottom_out;
wire [0:9] cby_1__1__0_chany_top_out;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] cby_1__1__1_ccff_tail;
wire [0:9] cby_1__1__1_chany_bottom_out;
wire [0:9] cby_1__1__1_chany_top_out;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_;
wire [0:0] cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_;
wire [0:0] cby_1__1__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] cby_1__2__0_ccff_tail;
wire [0:9] cby_1__2__0_chany_bottom_out;
wire [0:9] cby_1__2__0_chany_top_out;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_;
wire [0:0] cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_;
wire [0:0] cby_1__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] cby_1__2__1_ccff_tail;
wire [0:9] cby_1__2__1_chany_bottom_out;
wire [0:9] cby_1__2__1_chany_top_out;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_;
wire [0:0] cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_;
wire [0:0] cby_1__2__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_regout_0_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_scout_0_;
wire [0:0] grid_clb_0_ccff_tail;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_lower;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_upper;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_lower;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_upper;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_lower;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_upper;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_lower;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_upper;
wire [0:0] grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_;
assign grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_ = 1'b0;
wire [0:0] grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_;
assign grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_ = 1'b0;
wire [0:0] grid_clb_1__2__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_;
wire [0:0] grid_clb_1__2__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_;
wire [0:0] grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_regin_0_;
assign grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_regin_0_ = 1'b0;
wire [0:0] grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_scin_0_;
assign grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_scin_0_ = 1'b0;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_lower;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_upper;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_lower;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_upper;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_lower;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_upper;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_lower;
wire [0:0] grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_upper;
wire [0:0] grid_clb_2__1__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_;
wire [0:0] grid_clb_2__1__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_;
wire [0:0] grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_;
assign grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_ = 1'b0;
wire [0:0] grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_;
assign grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_ = 1'b0;
wire [0:0] grid_clb_2__2__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_;
wire [0:0] grid_clb_2__2__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_;
wire [0:0] grid_clb_2_ccff_tail;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_lower;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_upper;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_lower;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_upper;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_lower;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_upper;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_lower;
wire [0:0] grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_upper;
wire [0:0] grid_clb_3_ccff_tail;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_lower;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_upper;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_lower;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_upper;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_lower;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_upper;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_lower;
wire [0:0] grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_upper;
wire [0:0] grid_io_bottom_0_ccff_tail;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_bottom_1_ccff_tail;
wire [0:0] grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_left_0_ccff_tail;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_left_1_ccff_tail;
wire [0:0] grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_right_0_ccff_tail;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_right_1_ccff_tail;
wire [0:0] grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_top_0_ccff_tail;
wire [0:0] grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower;
wire [0:0] grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper;
wire [0:0] grid_io_top_1_ccff_tail;
wire [0:0] sb_0__0__0_ccff_tail;
wire [0:9] sb_0__0__0_chanx_right_out;
wire [0:9] sb_0__0__0_chany_top_out;
wire [0:0] sb_0__1__0_ccff_tail;
wire [0:9] sb_0__1__0_chanx_right_out;
wire [0:9] sb_0__1__0_chany_bottom_out;
wire [0:9] sb_0__1__0_chany_top_out;
wire [0:0] sb_0__2__0_ccff_tail;
wire [0:9] sb_0__2__0_chanx_right_out;
wire [0:9] sb_0__2__0_chany_bottom_out;
wire [0:0] sb_1__0__0_ccff_tail;
wire [0:9] sb_1__0__0_chanx_left_out;
wire [0:9] sb_1__0__0_chanx_right_out;
wire [0:9] sb_1__0__0_chany_top_out;
wire [0:0] sb_1__1__0_ccff_tail;
wire [0:9] sb_1__1__0_chanx_left_out;
wire [0:9] sb_1__1__0_chanx_right_out;
wire [0:9] sb_1__1__0_chany_bottom_out;
wire [0:9] sb_1__1__0_chany_top_out;
wire [0:0] sb_1__2__0_ccff_tail;
wire [0:9] sb_1__2__0_chanx_left_out;
wire [0:9] sb_1__2__0_chanx_right_out;
wire [0:9] sb_1__2__0_chany_bottom_out;
wire [0:0] sb_2__0__0_ccff_tail;
wire [0:9] sb_2__0__0_chanx_left_out;
wire [0:9] sb_2__0__0_chany_top_out;
wire [0:0] sb_2__1__0_ccff_tail;
wire [0:9] sb_2__1__0_chanx_left_out;
wire [0:9] sb_2__1__0_chany_bottom_out;
wire [0:9] sb_2__1__0_chany_top_out;
wire [0:0] sb_2__2__0_ccff_tail;
wire [0:9] sb_2__2__0_chanx_left_out;
wire [0:9] sb_2__2__0_chany_bottom_out;
wire [0:0] vsd_direct_interc_0_out;
wire [0:0] vsd_direct_interc_1_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	grid_io_top grid_io_top_1__3_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[0]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[0]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[0]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[0]),
		.bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(grid_io_top_1_ccff_tail),
		.bottom_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.bottom_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_top_0_ccff_tail));

	grid_io_top grid_io_top_2__3_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[1]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[1]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[1]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[1]),
		.bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_2__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(grid_io_right_0_ccff_tail),
		.bottom_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.bottom_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_top_1_ccff_tail));

	grid_io_right grid_io_right_3__2_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[2]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[2]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[2]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[2]),
		.left_width_0_height_0_subtile_0__pin_outpad_0_(cby_1__2__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(grid_io_right_1_ccff_tail),
		.left_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.left_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_right_0_ccff_tail));

	grid_io_right grid_io_right_3__1_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[3]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[3]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[3]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[3]),
		.left_width_0_height_0_subtile_0__pin_outpad_0_(cby_1__1__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(grid_io_bottom_0_ccff_tail),
		.left_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.left_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_right_1_ccff_tail));

	grid_io_bottom grid_io_bottom_2__0_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[4]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[4]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[4]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[4]),
		.top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_2__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(cbx_2__0__0_ccff_tail),
		.top_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.top_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_bottom_0_ccff_tail));

	grid_io_bottom grid_io_bottom_1__0_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[5]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[5]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[5]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[5]),
		.top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(cbx_1__0__0_ccff_tail),
		.top_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.top_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_bottom_1_ccff_tail));

	grid_io_left grid_io_left_0__1_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[6]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[6]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[6]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[6]),
		.right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(cby_0__1__0_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.right_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_left_0_ccff_tail));

	grid_io_left grid_io_left_0__2_ (
		.prog_clk(prog_clk),
		.gfpga_pad_vsd_scl_gpio_A(gfpga_pad_vsd_scl_gpio_A[7]),
		.gfpga_pad_vsd_scl_gpio_IE(gfpga_pad_vsd_scl_gpio_IE[7]),
		.gfpga_pad_vsd_scl_gpio_OE(gfpga_pad_vsd_scl_gpio_OE[7]),
		.gfpga_pad_vsd_scl_gpio_Y(gfpga_pad_vsd_scl_gpio_Y[7]),
		.right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__2__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_head(cby_0__2__0_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_inpad_0_upper(grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.right_width_0_height_0_subtile_0__pin_inpad_0_lower(grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_tail(grid_io_left_1_ccff_tail));

	grid_clb grid_clb_1__1_ (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.top_width_0_height_0_subtile_0__pin_regin_0_(grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_),
		.top_width_0_height_0_subtile_0__pin_scin_0_(grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_),
		.right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.left_width_0_height_0_subtile_0__pin_clk_0_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(cby_1__1__0_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_O_0_upper(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.right_width_0_height_0_subtile_0__pin_O_0_lower(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.right_width_0_height_0_subtile_0__pin_O_1_upper(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.right_width_0_height_0_subtile_0__pin_O_1_lower(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.right_width_0_height_0_subtile_0__pin_O_2_upper(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.right_width_0_height_0_subtile_0__pin_O_2_lower(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.right_width_0_height_0_subtile_0__pin_O_3_upper(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.right_width_0_height_0_subtile_0__pin_O_3_lower(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.bottom_width_0_height_0_subtile_0__pin_regout_0_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.bottom_width_0_height_0_subtile_0__pin_scout_0_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.ccff_tail(grid_clb_0_ccff_tail));

	grid_clb grid_clb_1__2_ (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.top_width_0_height_0_subtile_0__pin_regin_0_(grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_regin_0_),
		.top_width_0_height_0_subtile_0__pin_scin_0_(grid_clb_1__2__undriven_top_width_0_height_0_subtile_0__pin_scin_0_),
		.right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.left_width_0_height_0_subtile_0__pin_clk_0_(cby_0__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(cby_1__2__0_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_O_0_upper(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.right_width_0_height_0_subtile_0__pin_O_0_lower(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.right_width_0_height_0_subtile_0__pin_O_1_upper(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.right_width_0_height_0_subtile_0__pin_O_1_lower(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.right_width_0_height_0_subtile_0__pin_O_2_upper(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.right_width_0_height_0_subtile_0__pin_O_2_lower(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.right_width_0_height_0_subtile_0__pin_O_3_upper(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.right_width_0_height_0_subtile_0__pin_O_3_lower(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.bottom_width_0_height_0_subtile_0__pin_regout_0_(grid_clb_1__2__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.bottom_width_0_height_0_subtile_0__pin_scout_0_(grid_clb_1__2__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.ccff_tail(ccff_tail));

	grid_clb grid_clb_2__1_ (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.top_width_0_height_0_subtile_0__pin_regin_0_(grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_regin_0_),
		.top_width_0_height_0_subtile_0__pin_scin_0_(grid_clb_2__1__undriven_top_width_0_height_0_subtile_0__pin_scin_0_),
		.right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(cby_1__1__1_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_O_0_upper(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.right_width_0_height_0_subtile_0__pin_O_0_lower(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.right_width_0_height_0_subtile_0__pin_O_1_upper(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.right_width_0_height_0_subtile_0__pin_O_1_lower(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.right_width_0_height_0_subtile_0__pin_O_2_upper(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.right_width_0_height_0_subtile_0__pin_O_2_lower(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.right_width_0_height_0_subtile_0__pin_O_3_upper(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.right_width_0_height_0_subtile_0__pin_O_3_lower(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.bottom_width_0_height_0_subtile_0__pin_regout_0_(grid_clb_2__1__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.bottom_width_0_height_0_subtile_0__pin_scout_0_(grid_clb_2__1__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.ccff_tail(grid_clb_2_ccff_tail));

	grid_clb grid_clb_2__2_ (
		.prog_clk(prog_clk),
		.Test_en(Test_en),
		.reset_n(reset_n),
		.clk(clk),
		.top_width_0_height_0_subtile_0__pin_regin_0_(vsd_direct_interc_0_out),
		.top_width_0_height_0_subtile_0__pin_scin_0_(vsd_direct_interc_1_out),
		.right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.ccff_head(cby_1__2__1_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_O_0_upper(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.right_width_0_height_0_subtile_0__pin_O_0_lower(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.right_width_0_height_0_subtile_0__pin_O_1_upper(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.right_width_0_height_0_subtile_0__pin_O_1_lower(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.right_width_0_height_0_subtile_0__pin_O_2_upper(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.right_width_0_height_0_subtile_0__pin_O_2_lower(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.right_width_0_height_0_subtile_0__pin_O_3_upper(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.right_width_0_height_0_subtile_0__pin_O_3_lower(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.bottom_width_0_height_0_subtile_0__pin_regout_0_(grid_clb_2__2__undriven_bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.bottom_width_0_height_0_subtile_0__pin_scout_0_(grid_clb_2__2__undriven_bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.ccff_tail(grid_clb_3_ccff_tail));

	sb_0__0_ sb_0__0_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_0__1__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.chanx_right_in(cbx_1__0__0_chanx_left_out[0:9]),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.ccff_head(ccff_head),
		.chany_top_out(sb_0__0__0_chany_top_out[0:9]),
		.chanx_right_out(sb_0__0__0_chanx_right_out[0:9]),
		.ccff_tail(sb_0__0__0_ccff_tail));

	sb_0__1_ sb_0__1_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_0__2__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.chanx_right_in(cbx_1__1__0_chanx_left_out[0:9]),
		.chany_bottom_in(cby_0__1__0_chany_top_out[0:9]),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.ccff_head(grid_io_left_1_ccff_tail),
		.chany_top_out(sb_0__1__0_chany_top_out[0:9]),
		.chanx_right_out(sb_0__1__0_chanx_right_out[0:9]),
		.chany_bottom_out(sb_0__1__0_chany_bottom_out[0:9]),
		.ccff_tail(sb_0__1__0_ccff_tail));

	sb_0__2_ sb_0__2_ (
		.prog_clk(prog_clk),
		.chanx_right_in(cbx_1__2__0_chanx_left_out[0:9]),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.chany_bottom_in(cby_0__2__0_chany_top_out[0:9]),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_1_right_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.ccff_head(grid_io_top_0_ccff_tail),
		.chanx_right_out(sb_0__2__0_chanx_right_out[0:9]),
		.chany_bottom_out(sb_0__2__0_chany_bottom_out[0:9]),
		.ccff_tail(sb_0__2__0_ccff_tail));

	sb_1__0_ sb_1__0_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_1__1__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.chanx_right_in(cbx_2__0__0_chanx_left_out[0:9]),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.chanx_left_in(cbx_1__0__0_chanx_right_out[0:9]),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_1_top_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_head(sb_0__0__0_ccff_tail),
		.chany_top_out(sb_1__0__0_chany_top_out[0:9]),
		.chanx_right_out(sb_1__0__0_chanx_right_out[0:9]),
		.chanx_left_out(sb_1__0__0_chanx_left_out[0:9]),
		.ccff_tail(sb_1__0__0_ccff_tail));

	sb_1__1_ sb_1__1_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_1__2__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.chanx_right_in(cbx_1__1__1_chanx_left_out[0:9]),
		.chany_bottom_in(cby_1__1__0_chany_top_out[0:9]),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.chanx_left_in(cbx_1__1__0_chanx_right_out[0:9]),
		.ccff_head(grid_io_left_0_ccff_tail),
		.chany_top_out(sb_1__1__0_chany_top_out[0:9]),
		.chanx_right_out(sb_1__1__0_chanx_right_out[0:9]),
		.chany_bottom_out(sb_1__1__0_chany_bottom_out[0:9]),
		.chanx_left_out(sb_1__1__0_chanx_left_out[0:9]),
		.ccff_tail(sb_1__1__0_ccff_tail));

	sb_1__2_ sb_1__2_ (
		.prog_clk(prog_clk),
		.chanx_right_in(cbx_2__2__0_chanx_left_out[0:9]),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.chany_bottom_in(cby_1__2__0_chany_top_out[0:9]),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_1_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.chanx_left_in(cbx_1__2__0_chanx_right_out[0:9]),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_head(grid_clb_3_ccff_tail),
		.chanx_right_out(sb_1__2__0_chanx_right_out[0:9]),
		.chany_bottom_out(sb_1__2__0_chany_bottom_out[0:9]),
		.chanx_left_out(sb_1__2__0_chanx_left_out[0:9]),
		.ccff_tail(sb_1__2__0_ccff_tail));

	sb_2__0_ sb_2__0_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_1__1__1_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.chanx_left_in(cbx_2__0__0_chanx_right_out[0:9]),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_head(grid_io_bottom_1_ccff_tail),
		.chany_top_out(sb_2__0__0_chany_top_out[0:9]),
		.chanx_left_out(sb_2__0__0_chanx_left_out[0:9]),
		.ccff_tail(sb_2__0__0_ccff_tail));

	sb_2__1_ sb_2__1_ (
		.prog_clk(prog_clk),
		.chany_top_in(cby_1__2__1_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_lower),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_lower),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.chany_bottom_in(cby_1__1__1_chany_top_out[0:9]),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_1_left_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_2_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.chanx_left_in(cbx_1__1__1_chanx_right_out[0:9]),
		.ccff_head(grid_clb_0_ccff_tail),
		.chany_top_out(sb_2__1__0_chany_top_out[0:9]),
		.chany_bottom_out(sb_2__1__0_chany_bottom_out[0:9]),
		.chanx_left_out(sb_2__1__0_chanx_left_out[0:9]),
		.ccff_tail(sb_2__1__0_ccff_tail));

	sb_2__2_ sb_2__2_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(cby_1__2__1_chany_top_out[0:9]),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_0_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_0_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_1_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_2_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_2_upper),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_(grid_clb_3_right_width_0_height_0_subtile_0__pin_O_3_upper),
		.chanx_left_in(cbx_2__2__0_chanx_right_out[0:9]),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_1_bottom_width_0_height_0_subtile_0__pin_inpad_0_lower),
		.ccff_head(grid_clb_2_ccff_tail),
		.chany_bottom_out(sb_2__2__0_chany_bottom_out[0:9]),
		.chanx_left_out(sb_2__2__0_chanx_left_out[0:9]),
		.ccff_tail(sb_2__2__0_ccff_tail));

	cbx_1__0_ cbx_1__0_ (
		.prog_clk(prog_clk),
		.chanx_left_in(sb_0__0__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_1__0__0_chanx_left_out[0:9]),
		.ccff_head(sb_1__0__0_ccff_tail),
		.chanx_left_out(cbx_1__0__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__0__0_chanx_right_out[0:9]),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cbx_1__0__0_ccff_tail));

	cbx_1__1_ cbx_1__1_ (
		.chanx_left_in(sb_0__1__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_1__1__0_chanx_left_out[0:9]),
		.chanx_left_out(cbx_1__1__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__1__0_chanx_right_out[0:9]));

	cbx_1__1_ cbx_2__1_ (
		.chanx_left_in(sb_1__1__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_2__1__0_chanx_left_out[0:9]),
		.chanx_left_out(cbx_1__1__1_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__1__1_chanx_right_out[0:9]));

	cbx_1__2_ cbx_1__2_ (
		.prog_clk(prog_clk),
		.chanx_left_in(sb_0__2__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_1__2__0_chanx_left_out[0:9]),
		.ccff_head(sb_1__2__0_ccff_tail),
		.chanx_left_out(cbx_1__2__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__2__0_chanx_right_out[0:9]),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cbx_1__2__0_ccff_tail));

	cbx_2__0_ cbx_2__0_ (
		.prog_clk(prog_clk),
		.chanx_left_in(sb_1__0__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_2__0__0_chanx_left_out[0:9]),
		.ccff_head(sb_2__0__0_ccff_tail),
		.chanx_left_out(cbx_2__0__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_2__0__0_chanx_right_out[0:9]),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_2__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cbx_2__0__0_ccff_tail));

	cbx_2__2_ cbx_2__2_ (
		.prog_clk(prog_clk),
		.chanx_left_in(sb_1__2__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_2__2__0_chanx_left_out[0:9]),
		.ccff_head(sb_2__2__0_ccff_tail),
		.chanx_left_out(cbx_2__2__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_2__2__0_chanx_right_out[0:9]),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_2__2__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cbx_2__2__0_ccff_tail));

	cby_0__1_ cby_0__1_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_0__0__0_chany_top_out[0:9]),
		.chany_top_in(sb_0__1__0_chany_bottom_out[0:9]),
		.ccff_head(sb_0__1__0_ccff_tail),
		.chany_bottom_out(cby_0__1__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_0__1__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cby_0__1__0_ccff_tail));

	cby_0__2_ cby_0__2_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_0__1__0_chany_top_out[0:9]),
		.chany_top_in(sb_0__2__0_chany_bottom_out[0:9]),
		.ccff_head(sb_0__2__0_ccff_tail),
		.chany_bottom_out(cby_0__2__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_0__2__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_0__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__2__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.ccff_tail(cby_0__2__0_ccff_tail));

	cby_1__1_ cby_1__1_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_1__0__0_chany_top_out[0:9]),
		.chany_top_in(sb_1__1__0_chany_bottom_out[0:9]),
		.ccff_head(sb_1__1__0_ccff_tail),
		.chany_bottom_out(cby_1__1__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_1__1__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.ccff_tail(cby_1__1__0_ccff_tail));

	cby_1__1_ cby_2__1_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_2__0__0_chany_top_out[0:9]),
		.chany_top_in(sb_2__1__0_chany_bottom_out[0:9]),
		.ccff_head(sb_2__1__0_ccff_tail),
		.chany_bottom_out(cby_1__1__1_chany_bottom_out[0:9]),
		.chany_top_out(cby_1__1__1_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__1__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__1__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.ccff_tail(cby_1__1__1_ccff_tail));

	cby_1__2_ cby_1__2_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_1__1__0_chany_top_out[0:9]),
		.chany_top_in(sb_1__2__0_chany_bottom_out[0:9]),
		.ccff_head(cbx_1__2__0_ccff_tail),
		.chany_bottom_out(cby_1__2__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_1__2__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__2__0_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__2__0_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.ccff_tail(cby_1__2__0_ccff_tail));

	cby_1__2_ cby_2__2_ (
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_2__1__0_chany_top_out[0:9]),
		.chany_top_in(sb_2__2__0_chany_bottom_out[0:9]),
		.ccff_head(cbx_2__2__0_ccff_tail),
		.chany_bottom_out(cby_1__2__1_chany_bottom_out[0:9]),
		.chany_top_out(cby_1__2__1_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_clk_0_(cby_1__2__1_right_grid_left_width_0_height_0_subtile_0__pin_clk_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_0_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_1_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_2_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I0_3_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I0_3_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_0_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_1_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_2_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_2_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I1_3_(cby_1__2__1_left_grid_right_width_0_height_0_subtile_0__pin_I1_3_),
		.ccff_tail(cby_1__2__1_ccff_tail));

	vsd_direct_interc vsd_direct_interc_0_ (
		.in(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_regout_0_),
		.out(vsd_direct_interc_0_out));

	vsd_direct_interc vsd_direct_interc_1_ (
		.in(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_scout_0_),
		.out(vsd_direct_interc_1_out));

endmodule
// ----- END Verilog module for fpga_top -----

//----- Default net type -----
`default_nettype wire




