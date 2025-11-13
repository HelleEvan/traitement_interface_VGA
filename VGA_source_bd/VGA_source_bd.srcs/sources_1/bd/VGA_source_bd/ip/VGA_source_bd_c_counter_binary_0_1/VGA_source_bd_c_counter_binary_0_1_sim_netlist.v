// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Nov 10 15:28:00 2025
// Host        : PT-PC-E0215W running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/eh648454/5A/traitement_interface/VGA_source_bd/VGA_source_bd.srcs/sources_1/bd/VGA_source_bd/ip/VGA_source_bd_c_counter_binary_0_1/VGA_source_bd_c_counter_binary_0_1_sim_netlist.v
// Design      : VGA_source_bd_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VGA_source_bd_c_counter_binary_0_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module VGA_source_bd_c_counter_binary_0_1
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 25265957, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 8}" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  VGA_source_bd_c_counter_binary_0_1_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module VGA_source_bd_c_counter_binary_0_1_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  VGA_source_bd_c_counter_binary_0_1_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koZZCWjh1MIdmzU2iktdkGkdv4MP8omMzt01FqMYglnWf/UQ7TEYSSOJ0Aw1DSOgCSrYStPs1Vv+
CY5mvOJrYQVPuWoSdwfBrkPH0KLxb82gqw1RZf5TctbAVEsqTgBvNwDFnQ4LkBxopihN5pW8dGqn
FPvjWOMvnHoPoMmLGX4Uljy/564suVeG7VSBQp3ThqFKIgThOqFZ5YiDHtGyA/W7aHVZProXq/3/
AlnXmXEHg2FFEtnb1xHq+0aR4kBc94HgP2QfXwgpRwOQvzNrhK7+WJP14Oc9tSUymjtMcyKkeLUo
buJW5Jf92SbsqNhuDpYYOjtI8gb1cJeesBK8Ig==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WbzzIYWtJmuuUm++M5dkgW/Vvf4NP4PGblp3wyt3vUOZl+jpYL1xMrcMnG02TAmuzWok4a/dMAsS
FNzXe6cVc+XZ2A+qBKhiINtvMIg3wGj6bQK8j0wUEQ+8igw8QJnGBNR7H/oQnRRLVXBR6LuLbePN
5ETEjH84v0PEIo91e76srWCVA82EYkzXizCewFI0qB788+69OAn6IMdHSDnkELZrL+Cz5RqA5m98
CkcMgMB8KcxxZu+iLSPn8PuJ4bCqlPPiRM0rAZgpKSKmokbAfyifHaL7RkdGZSukhq0fKYPUF6Xb
su4k/MD1UxsqcBBHpf3g4PfHQMTFjCzoN20q8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7296)
`pragma protect data_block
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
`pragma protect end_protected
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
