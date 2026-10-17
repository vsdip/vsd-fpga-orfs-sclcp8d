
`timescale 1ns/1ps
module regression_tb;
reg prog_clk=0, clk=0, reset_n=0, Test_en=0, ccff_head=0;
reg [0:7] drive=0;
wire [0:7] gpio_in=drive;
wire [0:7] gpio_out, gpio_ie, gpio_oe;
wire ccff_tail;
reg bits[0:636], old_bits[0:636];
reg [0:7] expected_table[0:255];
integer i,v,errors=0,checks=0,readbacks=0;
fpga_core dut(.*);

task load_image;
  input integer image_number;
  begin
    force dut.\u_fabric.cbx_1__0_.mux_top_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cbx_1__2_.mux_bottom_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cbx_2__0_.mux_top_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cbx_2__2_.mux_bottom_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_0__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_0__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__1_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_1__2_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_left_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__1_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_left_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.cby_2__2_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_14.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_16.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_right_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_0__2_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_14.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_16.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_18.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__0_.mux_top_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_17.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_19.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_bottom_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_1__2_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__0_.mux_top_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_17.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_19.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_left_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_bottom_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
force dut.\u_fabric.sb_2__2_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1=0;
    #10;
    for(i=0;i<637;i=i+1) begin
      ccff_head=bits[i];
      #5;
      if(image_number>0) begin
        if(ccff_tail !== old_bits[i])
          $fatal(1,"SCAN_FAILURE image=%0d bit=%0d",image_number,i);
        readbacks=readbacks+1;
      end
      prog_clk=1;
      #5;
      prog_clk=0;
    end
    for(i=0;i<637;i=i+1) old_bits[i]=bits[i];
    release dut.\u_fabric.cbx_1__0_.mux_top_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cbx_1__2_.mux_bottom_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cbx_2__0_.mux_top_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cbx_2__2_.mux_bottom_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_0__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_0__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__1_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_1__2_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_left_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__1_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_left_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.cby_2__2_.mux_right_ipin_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_14.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_16.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_right_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_0__2_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_14.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_16.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_18.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__0_.mux_top_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_17.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_19.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_bottom_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_right_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_right_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_right_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_1__2_.mux_right_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_10.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_6.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__0_.mux_top_track_8.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_17.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_19.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_left_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_top_track_0.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_top_track_12.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_top_track_2.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__1_.mux_top_track_4.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_11.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_13.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_15.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_7.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_bottom_track_9.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_left_track_1.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_left_track_3.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
release dut.\u_fabric.sb_2__2_.mux_left_track_5.vsd_scl_buf4_0_.u_vsd_cell .OUT1;
    #10;
    reset_n=1;
  end
endtask

initial begin

    $readmemb("images/bool_00/image.mem",bits);
    $readmemb("images/bool_00/expected_outputs.mem",expected_table);
    load_image(0);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_00 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_00 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_00 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_00 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_00 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_01/image.mem",bits);
    $readmemb("images/bool_01/expected_outputs.mem",expected_table);
    load_image(1);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_01 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_01 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_01 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_01 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_01 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_02/image.mem",bits);
    $readmemb("images/bool_02/expected_outputs.mem",expected_table);
    load_image(2);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_02 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_02 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_02 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_02 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_02 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_03/image.mem",bits);
    $readmemb("images/bool_03/expected_outputs.mem",expected_table);
    load_image(3);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_03 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_03 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_03 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_03 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_03 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_04/image.mem",bits);
    $readmemb("images/bool_04/expected_outputs.mem",expected_table);
    load_image(4);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_04 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_04 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_04 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_04 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_04 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_05/image.mem",bits);
    $readmemb("images/bool_05/expected_outputs.mem",expected_table);
    load_image(5);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_05 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_05 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_05 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_05 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_05 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_06/image.mem",bits);
    $readmemb("images/bool_06/expected_outputs.mem",expected_table);
    load_image(6);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_06 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_06 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_06 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_06 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_06 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_07/image.mem",bits);
    $readmemb("images/bool_07/expected_outputs.mem",expected_table);
    load_image(7);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_07 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_07 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_07 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_07 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_07 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_08/image.mem",bits);
    $readmemb("images/bool_08/expected_outputs.mem",expected_table);
    load_image(8);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_08 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_08 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_08 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_08 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_08 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_09/image.mem",bits);
    $readmemb("images/bool_09/expected_outputs.mem",expected_table);
    load_image(9);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_09 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_09 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_09 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_09 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_09 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_10/image.mem",bits);
    $readmemb("images/bool_10/expected_outputs.mem",expected_table);
    load_image(10);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_10 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_10 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_10 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_10 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_10 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_11/image.mem",bits);
    $readmemb("images/bool_11/expected_outputs.mem",expected_table);
    load_image(11);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_11 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_11 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_11 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_11 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_11 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_12/image.mem",bits);
    $readmemb("images/bool_12/expected_outputs.mem",expected_table);
    load_image(12);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_12 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_12 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_12 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_12 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_12 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_13/image.mem",bits);
    $readmemb("images/bool_13/expected_outputs.mem",expected_table);
    load_image(13);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_13 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_13 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_13 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_13 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_13 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_14/image.mem",bits);
    $readmemb("images/bool_14/expected_outputs.mem",expected_table);
    load_image(14);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_14 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_14 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_14 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_14 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_14 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/bool_15/image.mem",bits);
    $readmemb("images/bool_15/expected_outputs.mem",expected_table);
    load_image(15);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_15 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_15 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE bool_15 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL bool_15 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=bool_15 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/xor2/image.mem",bits);
    $readmemb("images/xor2/expected_outputs.mem",expected_table);
    load_image(16);
    if(gpio_ie[0] !== 1'b1) $fatal(1,"DIRECTION_FAILURE xor2 a"); if(gpio_ie[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE xor2 b"); if(gpio_oe[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE xor2 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[7] !== expected_table[v][7]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL xor2 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[7],expected_table[v][7]);
      end

    end
    $display("CASE=xor2 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/parity3/image.mem",bits);
    $readmemb("images/parity3/expected_outputs.mem",expected_table);
    load_image(17);
    if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity3 a"); if(gpio_ie[3] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity3 b"); if(gpio_ie[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity3 c"); if(gpio_oe[4] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity3 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[4] !== expected_table[v][4]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL parity3 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[4],expected_table[v][4]);
      end

    end
    $display("CASE=parity3 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/majority3/image.mem",bits);
    $readmemb("images/majority3/expected_outputs.mem",expected_table);
    load_image(18);
    if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE majority3 a"); if(gpio_ie[3] !== 1'b1) $fatal(1,"DIRECTION_FAILURE majority3 b"); if(gpio_ie[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE majority3 c"); if(gpio_oe[4] !== 1'b1) $fatal(1,"DIRECTION_FAILURE majority3 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[4] !== expected_table[v][4]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL majority3 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[4],expected_table[v][4]);
      end

    end
    $display("CASE=majority3 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/mux3/image.mem",bits);
    $readmemb("images/mux3/expected_outputs.mem",expected_table);
    load_image(19);
    if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE mux3 a"); if(gpio_ie[3] !== 1'b1) $fatal(1,"DIRECTION_FAILURE mux3 b"); if(gpio_ie[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE mux3 s"); if(gpio_oe[4] !== 1'b1) $fatal(1,"DIRECTION_FAILURE mux3 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[4] !== expected_table[v][4]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL mux3 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[4],expected_table[v][4]);
      end

    end
    $display("CASE=mux3 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/parity4/image.mem",bits);
    $readmemb("images/parity4/expected_outputs.mem",expected_table);
    load_image(20);
    if(gpio_ie[3] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity4 a"); if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity4 b"); if(gpio_ie[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity4 c"); if(gpio_ie[2] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity4 d"); if(gpio_oe[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE parity4 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[1] !== expected_table[v][1]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL parity4 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[1],expected_table[v][1]);
      end

    end
    $display("CASE=parity4 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/dual3/image.mem",bits);
    $readmemb("images/dual3/expected_outputs.mem",expected_table);
    load_image(21);
    if(gpio_ie[2] !== 1'b1) $fatal(1,"DIRECTION_FAILURE dual3 a"); if(gpio_ie[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE dual3 b"); if(gpio_ie[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE dual3 c"); if(gpio_oe[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE dual3 y0"); if(gpio_oe[6] !== 1'b1) $fatal(1,"DIRECTION_FAILURE dual3 y1");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[5] !== expected_table[v][5]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL dual3 y0 GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[5],expected_table[v][5]);
      end

      checks=checks+1;
      if(gpio_out[6] !== expected_table[v][6]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL dual3 y1 GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[6],expected_table[v][6]);
      end

    end
    $display("CASE=dual3 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/cascade/image.mem",bits);
    $readmemb("images/cascade/expected_outputs.mem",expected_table);
    load_image(22);
    if(gpio_ie[4] !== 1'b1) $fatal(1,"DIRECTION_FAILURE cascade a"); if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE cascade b"); if(gpio_ie[2] !== 1'b1) $fatal(1,"DIRECTION_FAILURE cascade c"); if(gpio_ie[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE cascade d"); if(gpio_oe[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE cascade y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[1] !== expected_table[v][1]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL cascade y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[1],expected_table[v][1]);
      end

    end
    $display("CASE=cascade COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);


    $readmemb("images/asymmetric4/image.mem",bits);
    $readmemb("images/asymmetric4/expected_outputs.mem",expected_table);
    load_image(23);
    if(gpio_ie[3] !== 1'b1) $fatal(1,"DIRECTION_FAILURE asymmetric4 a"); if(gpio_ie[5] !== 1'b1) $fatal(1,"DIRECTION_FAILURE asymmetric4 b"); if(gpio_ie[7] !== 1'b1) $fatal(1,"DIRECTION_FAILURE asymmetric4 c"); if(gpio_ie[2] !== 1'b1) $fatal(1,"DIRECTION_FAILURE asymmetric4 d"); if(gpio_oe[1] !== 1'b1) $fatal(1,"DIRECTION_FAILURE asymmetric4 y");
    for(v=0;v<256;v=v+1) begin
      drive=v;
      #100;

      checks=checks+1;
      if(gpio_out[1] !== expected_table[v][1]) begin
        errors=errors+1;
        if(errors<=8)
          $display("FAIL asymmetric4 y GPIO=%b actual=%b expected=%b",
                   drive,gpio_out[1],expected_table[v][1]);
      end

    end
    $display("CASE=asymmetric4 COMPLETED CUMULATIVE_MISMATCHES=%0d",errors);

  $display("FUNCTIONAL_CHECKS=%0d MISMATCHES=%0d SCAN_READBACK_CHECKS=%0d",
           checks,errors,readbacks);
  if(errors!=0 || checks!=6400 || readbacks!=14651)
    $fatal(1,"REGRESSION_FAILED");
  $display("REGRESSION_PASS");
  $finish;
end
endmodule
