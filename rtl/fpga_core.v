`default_nettype none
module fpga_core (
    input  wire [0:0] prog_clk,
    input  wire [0:0] Test_en,
    input  wire [0:0] reset_n,
    input  wire [0:0] clk,
    input  wire [0:0] ccff_head,
    output wire [0:0] ccff_tail,
    input  wire [0:7] gpio_in,
    output wire [0:7] gpio_out,
    output wire [0:7] gpio_ie,
    output wire [0:7] gpio_oe
);
    fpga_top u_fabric (
        .prog_clk(prog_clk),
        .Test_en(Test_en),
        .reset_n(reset_n),
        .clk(clk),
        .ccff_head(ccff_head),
        .ccff_tail(ccff_tail),
        .gfpga_pad_vsd_scl_gpio_Y(gpio_in),
        .gfpga_pad_vsd_scl_gpio_A(gpio_out),
        .gfpga_pad_vsd_scl_gpio_IE(gpio_ie),
        .gfpga_pad_vsd_scl_gpio_OE(gpio_oe)
    );
endmodule
`default_nettype wire
