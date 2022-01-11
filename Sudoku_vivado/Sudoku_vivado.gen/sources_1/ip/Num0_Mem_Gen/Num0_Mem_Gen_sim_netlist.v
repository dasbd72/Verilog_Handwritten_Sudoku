// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:51:03 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num0_Mem_Gen/Num0_Mem_Gen_sim_netlist.v
// Design      : Num0_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num0_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num0_Mem_Gen
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
  (* C_INIT_FILE = "Num0_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num0_Mem_Gen.mif" *) 
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
  Num0_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
