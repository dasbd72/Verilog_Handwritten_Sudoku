// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:52:38 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num3_Mem_Gen/Num3_Mem_Gen_sim_netlist.v
// Design      : Num3_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num3_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num3_Mem_Gen
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
  (* C_INIT_FILE = "Num3_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num3_Mem_Gen.mif" *) 
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
  Num3_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
