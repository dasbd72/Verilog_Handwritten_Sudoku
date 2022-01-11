// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:55:44 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num8_Mem_Gen/Num8_Mem_Gen_sim_netlist.v
// Design      : Num8_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num8_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num8_Mem_Gen
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
  (* C_INIT_FILE = "Num8_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num8_Mem_Gen.mif" *) 
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
  Num8_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
