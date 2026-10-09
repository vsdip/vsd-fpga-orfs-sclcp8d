//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Template for user-defined Verilog modules
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Oct  9 03:43:43 2026
//-------------------------------------------
// ----- Template Verilog module for vsd_scl_inv -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_inv -----
module vsd_scl_inv(a,
                   y);
//----- INPUT PORTS -----
input [0:0] a;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_inv -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_buf -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_buf -----
module vsd_scl_buf(a,
                   y);
//----- INPUT PORTS -----
input [0:0] a;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_buf -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_buf4 -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_buf4 -----
module vsd_scl_buf4(a,
                    y);
//----- INPUT PORTS -----
input [0:0] a;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_buf4 -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_inv2 -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_inv2 -----
module vsd_scl_inv2(a,
                    y);
//----- INPUT PORTS -----
input [0:0] a;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_inv2 -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_or2 -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_or2 -----
module vsd_scl_or2(a,
                   b,
                   y);
//----- INPUT PORTS -----
input [0:0] a;
//----- INPUT PORTS -----
input [0:0] b;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_or2 -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_mux2 -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_mux2 -----
module vsd_scl_mux2(d1,
                    d0,
                    sel,
                    y);
//----- INPUT PORTS -----
input [0:0] d1;
//----- INPUT PORTS -----
input [0:0] d0;
//----- INPUT PORTS -----
input [0:0] sel;
//----- OUTPUT PORTS -----
output [0:0] y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_mux2 -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_user_scan_ff -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_user_scan_ff -----
module vsd_scl_user_scan_ff(scan_enable,
                            user_reset_n,
                            user_clk,
                            functional_d,
                            scan_d,
                            q);
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] user_reset_n;
//----- GLOBAL PORTS -----
input [0:0] user_clk;
//----- INPUT PORTS -----
input [0:0] functional_d;
//----- INPUT PORTS -----
input [0:0] scan_d;
//----- OUTPUT PORTS -----
output [0:0] q;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_user_scan_ff -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_cfg_ff -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_cfg_ff -----
module vsd_scl_cfg_ff(prog_clk,
                      cfg_d,
                      cfg_q,
                      cfg_qb);
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] cfg_d;
//----- OUTPUT PORTS -----
output [0:0] cfg_q;
//----- OUTPUT PORTS -----
output [0:0] cfg_qb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_cfg_ff -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for vsd_scl_gpio -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for vsd_scl_gpio -----
module vsd_scl_gpio(A,
                    IE,
                    OE,
                    Y,
                    in,
                    mem_out,
                    out);
//----- GPOUT PORTS -----
output [0:0] A;
//----- GPOUT PORTS -----
output [0:0] IE;
//----- GPOUT PORTS -----
output [0:0] OE;
//----- GPIO PORTS -----
inout [0:0] Y;
//----- INPUT PORTS -----
input [0:0] in;
//----- INPUT PORTS -----
input [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for vsd_scl_gpio -----

//----- Default net type -----
`default_nettype wire


