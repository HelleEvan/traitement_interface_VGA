// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Nov 10 15:31:52 2025
// Host        : PT-PC-E0215W running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/eh648454/5A/traitement_interface/VGA_source_bd/VGA_source_bd.srcs/sources_1/bd/VGA_source_bd/ip/VGA_source_bd_bit_extraction_0_0/VGA_source_bd_bit_extraction_0_0_sim_netlist.v
// Design      : VGA_source_bd_bit_extraction_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VGA_source_bd_bit_extraction_0_0,bit_extraction,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "bit_extraction,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module VGA_source_bd_bit_extraction_0_0
   (DIN,
    Sel_ActVideo,
    DOUT);
  input [7:0]DIN;
  input Sel_ActVideo;
  output [3:0]DOUT;

  wire [7:0]DIN;
  wire [3:0]DOUT;
  wire Sel_ActVideo;

  VGA_source_bd_bit_extraction_0_0_bit_extraction U0
       (.DIN(DIN[7:4]),
        .DOUT(DOUT),
        .Sel_ActVideo(Sel_ActVideo));
endmodule

(* ORIG_REF_NAME = "bit_extraction" *) 
module VGA_source_bd_bit_extraction_0_0_bit_extraction
   (DOUT,
    Sel_ActVideo,
    DIN);
  output [3:0]DOUT;
  input Sel_ActVideo;
  input [3:0]DIN;

  wire [3:0]DIN;
  wire [3:0]DOUT;
  wire Sel_ActVideo;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT[0]_INST_0 
       (.I0(Sel_ActVideo),
        .I1(DIN[0]),
        .O(DOUT[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT[1]_INST_0 
       (.I0(Sel_ActVideo),
        .I1(DIN[1]),
        .O(DOUT[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT[2]_INST_0 
       (.I0(Sel_ActVideo),
        .I1(DIN[2]),
        .O(DOUT[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT[3]_INST_0 
       (.I0(Sel_ActVideo),
        .I1(DIN[3]),
        .O(DOUT[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
