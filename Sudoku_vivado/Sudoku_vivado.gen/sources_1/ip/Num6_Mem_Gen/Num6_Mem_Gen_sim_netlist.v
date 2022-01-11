// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:54:22 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num6_Mem_Gen/Num6_Mem_Gen_sim_netlist.v
// Design      : Num6_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num6_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num6_Mem_Gen
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
  (* C_INIT_FILE = "Num6_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num6_Mem_Gen.mif" *) 
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
  Num6_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
