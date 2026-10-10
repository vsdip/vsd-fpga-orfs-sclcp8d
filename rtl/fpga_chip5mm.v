`default_nettype none
module fpga_chip5mm (
    input wire PAD2,
    input wire PAD4,
    input wire PAD6,
    input wire PAD8,
    input wire PAD10,
    input wire PAD12,
    input wire PAD14,
    input wire PAD16,
    input wire PAD18,
    input wire PAD20,
    input wire PAD22,
    input wire PAD24,
    input wire PAD26,
    output wire PAD1,
    output wire PAD3,
    output wire PAD5,
    output wire PAD7,
    output wire PAD9,
    output wire PAD11,
    output wire PAD13,
    output wire PAD15,
    output wire PAD17
);
wire [0:0] prog_clk, clk, reset_n, Test_en, ccff_head, ccff_tail;
wire [0:7] gpio_in, gpio_out, gpio_ie, gpio_oe;
(* keep *) SPAD00 u_pad2 (.PADIN(PAD2), .OUT1(prog_clk[0]));
(* keep *) SPAD00 u_pad4 (.PADIN(PAD4), .OUT1(clk[0]));
(* keep *) SPAD00 u_pad6 (.PADIN(PAD6), .OUT1(reset_n[0]));
(* keep *) SPAD00 u_pad8 (.PADIN(PAD8), .OUT1(Test_en[0]));
(* keep *) SPAD00 u_pad10 (.PADIN(PAD10), .OUT1(ccff_head[0]));
(* keep *) SPAD00 u_pad12 (.PADIN(PAD12), .OUT1(gpio_in[0]));
(* keep *) SPAD00 u_pad14 (.PADIN(PAD14), .OUT1(gpio_in[1]));
(* keep *) SPAD00 u_pad16 (.PADIN(PAD16), .OUT1(gpio_in[2]));
(* keep *) SPAD00 u_pad18 (.PADIN(PAD18), .OUT1(gpio_in[3]));
(* keep *) SPAD00 u_pad20 (.PADIN(PAD20), .OUT1(gpio_in[4]));
(* keep *) SPAD00 u_pad22 (.PADIN(PAD22), .OUT1(gpio_in[5]));
(* keep *) SPAD00 u_pad24 (.PADIN(PAD24), .OUT1(gpio_in[6]));
(* keep *) SPAD00 u_pad26 (.PADIN(PAD26), .OUT1(gpio_in[7]));
assign PAD1 = ccff_tail[0];
(* keep *) ASPAD00 u_pad1 (.PADIN(PAD1));
assign PAD3 = gpio_out[0];
(* keep *) ASPAD00 u_pad3 (.PADIN(PAD3));
assign PAD5 = gpio_out[1];
(* keep *) ASPAD00 u_pad5 (.PADIN(PAD5));
assign PAD7 = gpio_out[2];
(* keep *) ASPAD00 u_pad7 (.PADIN(PAD7));
assign PAD9 = gpio_out[3];
(* keep *) ASPAD00 u_pad9 (.PADIN(PAD9));
assign PAD11 = gpio_out[4];
(* keep *) ASPAD00 u_pad11 (.PADIN(PAD11));
assign PAD13 = gpio_out[5];
(* keep *) ASPAD00 u_pad13 (.PADIN(PAD13));
assign PAD15 = gpio_out[6];
(* keep *) ASPAD00 u_pad15 (.PADIN(PAD15));
assign PAD17 = gpio_out[7];
(* keep *) ASPAD00 u_pad17 (.PADIN(PAD17));
fpga_core u_fpga (
    .prog_clk(prog_clk), .Test_en(Test_en),
    .reset_n(reset_n), .clk(clk),
    .ccff_head(ccff_head), .ccff_tail(ccff_tail),
    .gpio_in(gpio_in), .gpio_out(gpio_out),
    .gpio_ie(gpio_ie), .gpio_oe(gpio_oe)
);
endmodule
`default_nettype wire
