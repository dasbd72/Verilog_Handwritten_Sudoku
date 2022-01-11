// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:53:52 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num5_Mem_Gen/Num5_Mem_Gen_sim_netlist.v
// Design      : Num5_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num5_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num5_Mem_Gen
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
  (* C_INIT_FILE = "Num5_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num5_Mem_Gen.mif" *) 
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
  Num5_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
