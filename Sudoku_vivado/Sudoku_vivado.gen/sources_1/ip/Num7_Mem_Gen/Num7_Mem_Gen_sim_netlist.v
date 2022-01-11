// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:54:55 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num7_Mem_Gen/Num7_Mem_Gen_sim_netlist.v
// Design      : Num7_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num7_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num7_Mem_Gen
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
  (* C_INIT_FILE = "Num7_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num7_Mem_Gen.mif" *) 
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
  Num7_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
