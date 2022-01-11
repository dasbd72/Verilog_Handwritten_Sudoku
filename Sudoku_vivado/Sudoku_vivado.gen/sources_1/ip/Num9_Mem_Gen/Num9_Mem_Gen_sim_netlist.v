// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:56:13 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num9_Mem_Gen/Num9_Mem_Gen_sim_netlist.v
// Design      : Num9_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num9_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num9_Mem_Gen
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
  (* C_INIT_FILE = "Num9_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num9_Mem_Gen.mif" *) 
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
  Num9_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
