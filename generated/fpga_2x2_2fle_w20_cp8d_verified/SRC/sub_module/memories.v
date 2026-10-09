//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Memories used in FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size6_mem -----
module vsd_mux_tree_tapbuf_size6_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[2];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size6_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size8_mem -----
module vsd_mux_tree_tapbuf_size8_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_3_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[2]),
		.cfg_q(mem_out[3]),
		.cfg_qb(mem_outb[3]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size8_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size2_mem -----
module vsd_mux_tree_tapbuf_size2_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size4_mem -----
module vsd_mux_tree_tapbuf_size4_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[2];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size4_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size3_mem -----
module vsd_mux_tree_tapbuf_size3_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size3_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size5_mem -----
module vsd_mux_tree_tapbuf_size5_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[2];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size5_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size9_mem -----
module vsd_mux_tree_tapbuf_size9_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_3_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[2]),
		.cfg_q(mem_out[3]),
		.cfg_qb(mem_outb[3]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size9_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size7_mem -----
module vsd_mux_tree_tapbuf_size7_mem(prog_clk,
                                     ccff_head,
                                     ccff_tail,
                                     mem_out,
                                     mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[2];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size7_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_tapbuf_size10_mem -----
module vsd_mux_tree_tapbuf_size10_mem(prog_clk,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_3_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[2]),
		.cfg_q(mem_out[3]),
		.cfg_qb(mem_outb[3]));

endmodule
// ----- END Verilog module for vsd_mux_tree_tapbuf_size10_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_mux_tree_size2_mem -----
module vsd_mux_tree_size2_mem(prog_clk,
                              ccff_head,
                              ccff_tail,
                              mem_out,
                              mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

endmodule
// ----- END Verilog module for vsd_mux_tree_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_frac_lut4_vsd_scl_cfg_ff_mem -----
module vsd_frac_lut4_vsd_scl_cfg_ff_mem(prog_clk,
                                        ccff_head,
                                        ccff_tail,
                                        mem_out,
                                        mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:16] mem_out;
//----- OUTPUT PORTS -----
output [0:16] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[16];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out[0]),
		.cfg_qb(mem_outb[0]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_1_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[0]),
		.cfg_q(mem_out[1]),
		.cfg_qb(mem_outb[1]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_2_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[1]),
		.cfg_q(mem_out[2]),
		.cfg_qb(mem_outb[2]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_3_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[2]),
		.cfg_q(mem_out[3]),
		.cfg_qb(mem_outb[3]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_4_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[3]),
		.cfg_q(mem_out[4]),
		.cfg_qb(mem_outb[4]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_5_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[4]),
		.cfg_q(mem_out[5]),
		.cfg_qb(mem_outb[5]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_6_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[5]),
		.cfg_q(mem_out[6]),
		.cfg_qb(mem_outb[6]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_7_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[6]),
		.cfg_q(mem_out[7]),
		.cfg_qb(mem_outb[7]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_8_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[7]),
		.cfg_q(mem_out[8]),
		.cfg_qb(mem_outb[8]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_9_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[8]),
		.cfg_q(mem_out[9]),
		.cfg_qb(mem_outb[9]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_10_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[9]),
		.cfg_q(mem_out[10]),
		.cfg_qb(mem_outb[10]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_11_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[10]),
		.cfg_q(mem_out[11]),
		.cfg_qb(mem_outb[11]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_12_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[11]),
		.cfg_q(mem_out[12]),
		.cfg_qb(mem_outb[12]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_13_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[12]),
		.cfg_q(mem_out[13]),
		.cfg_qb(mem_outb[13]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_14_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[13]),
		.cfg_q(mem_out[14]),
		.cfg_qb(mem_outb[14]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_15_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[14]),
		.cfg_q(mem_out[15]),
		.cfg_qb(mem_outb[15]));

	vsd_scl_cfg_ff vsd_scl_cfg_ff_16_ (
		.prog_clk(prog_clk),
		.cfg_d(mem_out[15]),
		.cfg_q(mem_out[16]),
		.cfg_qb(mem_outb[16]));

endmodule
// ----- END Verilog module for vsd_frac_lut4_vsd_scl_cfg_ff_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_gpio_vsd_scl_cfg_ff_mem -----
module vsd_scl_gpio_vsd_scl_cfg_ff_mem(prog_clk,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[0];
// ----- END Local output short connections -----

	vsd_scl_cfg_ff vsd_scl_cfg_ff_0_ (
		.prog_clk(prog_clk),
		.cfg_d(ccff_head),
		.cfg_q(mem_out),
		.cfg_qb(mem_outb));

endmodule
// ----- END Verilog module for vsd_scl_gpio_vsd_scl_cfg_ff_mem -----

//----- Default net type -----
`default_nettype wire




