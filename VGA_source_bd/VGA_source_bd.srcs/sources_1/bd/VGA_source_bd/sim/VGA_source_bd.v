//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Nov 10 14:51:40 2025
//Host        : PT-PC-E0215W running 64-bit major release  (build 9200)
//Command     : generate_target VGA_source_bd.bd
//Design      : VGA_source_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "VGA_source_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VGA_source_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "VGA_source_bd.hwdef" *) 
module VGA_source_bd
   (B,
    G,
    R,
    clk,
    hsync_out_0,
    reset_n,
    vsync_out_0);
  output [3:0]B;
  output [3:0]G;
  output [3:0]R;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN VGA_source_bd_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output hsync_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n;
  output vsync_out_0;

  wire [7:0]c_counter_binary_0_Q;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_n;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vsync_out;
  wire [3:0]xlslice_0_Dout;

  assign B[3:0] = xlslice_0_Dout;
  assign G[3:0] = xlslice_0_Dout;
  assign R[3:0] = xlslice_0_Dout;
  assign clk_in1_0_1 = clk;
  assign hsync_out_0 = v_tc_0_hsync_out;
  assign vsync_out_0 = v_tc_0_vsync_out;
  VGA_source_bd_c_counter_binary_0_1 c_counter_binary_0
       (.CE(v_tc_0_active_video_out),
        .CLK(clk_wiz_0_clk_out2),
        .Q(c_counter_binary_0_Q),
        .SCLR(v_tc_0_hsync_out));
  VGA_source_bd_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .resetn(reset_n));
  VGA_source_bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_n),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  VGA_source_bd_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_active_video_out),
        .clk(clk_wiz_0_clk_out2),
        .clken(1'b1),
        .gen_clken(1'b1),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .vsync_out(v_tc_0_vsync_out));
  VGA_source_bd_xlslice_0_0 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule
