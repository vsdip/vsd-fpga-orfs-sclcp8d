//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct  8 16:08:17 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size8 -----
module vsd_mux_tree_tapbuf_size8(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:7] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;
wire [0:0] vsd_scl_mux2_6_y;
wire [0:0] vsd_scl_mux2_7_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_7_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(in[2]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(in[3]),
		.d0(in[4]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l2_in_2_ (
		.d1(in[5]),
		.d0(in[6]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l2_in_3_ (
		.d1(in[7]),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_1_y),
		.d0(vsd_scl_mux2_2_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_5_y));

	vsd_scl_mux2 mux_l3_in_1_ (
		.d1(vsd_scl_mux2_3_y),
		.d0(vsd_scl_mux2_4_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_6_y));

	vsd_scl_mux2 mux_l4_in_0_ (
		.d1(vsd_scl_mux2_5_y),
		.d0(vsd_scl_mux2_6_y),
		.sel(sram[3]),
		.y(vsd_scl_mux2_7_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size8 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size6 -----
module vsd_mux_tree_tapbuf_size6(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_5_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l1_in_2_ (
		.d1(in[4]),
		.d0(in[5]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_3_y),
		.d0(vsd_scl_mux2_4_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_5_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size6 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size2 -----
module vsd_mux_tree_tapbuf_size2(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_1_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_1_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size2 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size4 -----
module vsd_mux_tree_tapbuf_size4(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_3_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(in[2]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(in[3]),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_1_y),
		.d0(vsd_scl_mux2_2_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_3_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size4 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size3 -----
module vsd_mux_tree_tapbuf_size3(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_2_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(const1_0_const1),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_2_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size3 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size5 -----
module vsd_mux_tree_tapbuf_size5(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:4] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_4_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(in[4]),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(vsd_scl_mux2_3_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_4_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size5 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size9 -----
module vsd_mux_tree_tapbuf_size9(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:8] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;
wire [0:0] vsd_scl_mux2_6_y;
wire [0:0] vsd_scl_mux2_7_y;
wire [0:0] vsd_scl_mux2_8_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_8_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(in[4]),
		.d0(in[5]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l2_in_2_ (
		.d1(in[6]),
		.d0(in[7]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l2_in_3_ (
		.d1(in[8]),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_5_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(vsd_scl_mux2_3_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_6_y));

	vsd_scl_mux2 mux_l3_in_1_ (
		.d1(vsd_scl_mux2_4_y),
		.d0(vsd_scl_mux2_5_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_7_y));

	vsd_scl_mux2 mux_l4_in_0_ (
		.d1(vsd_scl_mux2_6_y),
		.d0(vsd_scl_mux2_7_y),
		.sel(sram[3]),
		.y(vsd_scl_mux2_8_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size9 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size7 -----
module vsd_mux_tree_tapbuf_size7(in,
                                 sram,
                                 sram_inv,
                                 out);
//----- INPUT PORTS -----
input [0:6] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;
wire [0:0] vsd_scl_mux2_6_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_6_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l1_in_2_ (
		.d1(in[4]),
		.d0(in[5]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l1_in_3_ (
		.d1(in[6]),
		.d0(const1_0_const1),
		.sel(sram[0]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(vsd_scl_mux2_3_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_5_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_4_y),
		.d0(vsd_scl_mux2_5_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_6_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size7 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size10 -----
module vsd_mux_tree_tapbuf_size10(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:9] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;
wire [0:0] vsd_scl_mux2_6_y;
wire [0:0] vsd_scl_mux2_7_y;
wire [0:0] vsd_scl_mux2_8_y;
wire [0:0] vsd_scl_mux2_9_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_buf4 vsd_scl_buf4_0_ (
		.a(vsd_scl_mux2_9_y),
		.y(out));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l1_in_2_ (
		.d1(in[4]),
		.d0(in[5]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(in[6]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l2_in_2_ (
		.d1(in[7]),
		.d0(in[8]),
		.sel(sram[1]),
		.y(vsd_scl_mux2_5_y));

	vsd_scl_mux2 mux_l2_in_3_ (
		.d1(in[9]),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(vsd_scl_mux2_6_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_mux2_3_y),
		.d0(vsd_scl_mux2_4_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_7_y));

	vsd_scl_mux2 mux_l3_in_1_ (
		.d1(vsd_scl_mux2_5_y),
		.d0(vsd_scl_mux2_6_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_8_y));

	vsd_scl_mux2 mux_l4_in_0_ (
		.d1(vsd_scl_mux2_7_y),
		.d0(vsd_scl_mux2_8_y),
		.sel(sram[3]),
		.y(vsd_scl_mux2_9_y));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size10 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_size2 -----
module vsd_mux_tree_size2(in,
                          sram,
                          sram_inv,
                          out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] const1_0_const1;
wire [0:0] vsd_scl_mux2_0_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	const1 const1_0_ (
		.const1(const1_0_const1));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(const1_0_const1),
		.sel(sram[1]),
		.y(out));

endmodule
// ----- END Verilog module for vsd_mux_tree_size2 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_frac_lut4_mux -----
module vsd_frac_lut4_mux(in,
                         sram,
                         sram_inv,
                         lut3_out,
                         lut4_out);
//----- INPUT PORTS -----
input [0:15] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:1] lut3_out;
//----- OUTPUT PORTS -----
output [0:0] lut4_out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] vsd_scl_buf_3_y;
wire [0:0] vsd_scl_buf_4_y;
wire [0:0] vsd_scl_buf_5_y;
wire [0:0] vsd_scl_buf_6_y;
wire [0:0] vsd_scl_mux2_0_y;
wire [0:0] vsd_scl_mux2_10_y;
wire [0:0] vsd_scl_mux2_11_y;
wire [0:0] vsd_scl_mux2_12_y;
wire [0:0] vsd_scl_mux2_13_y;
wire [0:0] vsd_scl_mux2_14_y;
wire [0:0] vsd_scl_mux2_1_y;
wire [0:0] vsd_scl_mux2_2_y;
wire [0:0] vsd_scl_mux2_3_y;
wire [0:0] vsd_scl_mux2_4_y;
wire [0:0] vsd_scl_mux2_5_y;
wire [0:0] vsd_scl_mux2_6_y;
wire [0:0] vsd_scl_mux2_7_y;
wire [0:0] vsd_scl_mux2_8_y;
wire [0:0] vsd_scl_mux2_9_y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	vsd_scl_buf vsd_scl_buf_0_ (
		.a(vsd_scl_mux2_12_y),
		.y(lut3_out[0]));

	vsd_scl_buf vsd_scl_buf_1_ (
		.a(vsd_scl_mux2_13_y),
		.y(lut3_out[1]));

	vsd_scl_buf vsd_scl_buf_2_ (
		.a(vsd_scl_mux2_14_y),
		.y(lut4_out));

	vsd_scl_buf vsd_scl_buf_3_ (
		.a(vsd_scl_mux2_8_y),
		.y(vsd_scl_buf_3_y));

	vsd_scl_buf vsd_scl_buf_4_ (
		.a(vsd_scl_mux2_9_y),
		.y(vsd_scl_buf_4_y));

	vsd_scl_buf vsd_scl_buf_5_ (
		.a(vsd_scl_mux2_10_y),
		.y(vsd_scl_buf_5_y));

	vsd_scl_buf vsd_scl_buf_6_ (
		.a(vsd_scl_mux2_11_y),
		.y(vsd_scl_buf_6_y));

	vsd_scl_mux2 mux_l1_in_0_ (
		.d1(in[0]),
		.d0(in[1]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_0_y));

	vsd_scl_mux2 mux_l1_in_1_ (
		.d1(in[2]),
		.d0(in[3]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_1_y));

	vsd_scl_mux2 mux_l1_in_2_ (
		.d1(in[4]),
		.d0(in[5]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_2_y));

	vsd_scl_mux2 mux_l1_in_3_ (
		.d1(in[6]),
		.d0(in[7]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_3_y));

	vsd_scl_mux2 mux_l1_in_4_ (
		.d1(in[8]),
		.d0(in[9]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_4_y));

	vsd_scl_mux2 mux_l1_in_5_ (
		.d1(in[10]),
		.d0(in[11]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_5_y));

	vsd_scl_mux2 mux_l1_in_6_ (
		.d1(in[12]),
		.d0(in[13]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_6_y));

	vsd_scl_mux2 mux_l1_in_7_ (
		.d1(in[14]),
		.d0(in[15]),
		.sel(sram[0]),
		.y(vsd_scl_mux2_7_y));

	vsd_scl_mux2 mux_l2_in_0_ (
		.d1(vsd_scl_mux2_0_y),
		.d0(vsd_scl_mux2_1_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_8_y));

	vsd_scl_mux2 mux_l2_in_1_ (
		.d1(vsd_scl_mux2_2_y),
		.d0(vsd_scl_mux2_3_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_9_y));

	vsd_scl_mux2 mux_l2_in_2_ (
		.d1(vsd_scl_mux2_4_y),
		.d0(vsd_scl_mux2_5_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_10_y));

	vsd_scl_mux2 mux_l2_in_3_ (
		.d1(vsd_scl_mux2_6_y),
		.d0(vsd_scl_mux2_7_y),
		.sel(sram[1]),
		.y(vsd_scl_mux2_11_y));

	vsd_scl_mux2 mux_l3_in_0_ (
		.d1(vsd_scl_buf_3_y),
		.d0(vsd_scl_buf_4_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_12_y));

	vsd_scl_mux2 mux_l3_in_1_ (
		.d1(vsd_scl_buf_5_y),
		.d0(vsd_scl_buf_6_y),
		.sel(sram[2]),
		.y(vsd_scl_mux2_13_y));

	vsd_scl_mux2 mux_l4_in_0_ (
		.d1(vsd_scl_mux2_12_y),
		.d0(vsd_scl_mux2_13_y),
		.sel(sram[3]),
		.y(vsd_scl_mux2_14_y));

endmodule
// ----- END Verilog module for vsd_frac_lut4_mux -----

//----- Default net type -----
`default_nettype wire




