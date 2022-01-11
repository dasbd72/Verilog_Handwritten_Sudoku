// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:51:37 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num1_Mem_Gen/Num1_Mem_Gen_sim_netlist.v
// Design      : Num1_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num1_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num1_Mem_Gen
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1577 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Num1_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num1_Mem_Gen.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2704" *) 
  (* C_READ_DEPTH_B = "2704" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2704" *) 
  (* C_WRITE_DEPTH_B = "2704" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Num1_Mem_Gen_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18240)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
