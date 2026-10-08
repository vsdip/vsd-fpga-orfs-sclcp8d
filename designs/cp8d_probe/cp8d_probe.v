module cp8d_probe (
    input wire clk,
    input wire rst_n,
    input wire sel,
    input wire [3:0] a,
    input wire [3:0] b,
    output reg [3:0] q
);
    always @(posedge clk)
        if (!rst_n)
            q <= 4'b0;
        else
            q <= sel ? (a ^ b) : (a & b);
endmodule
