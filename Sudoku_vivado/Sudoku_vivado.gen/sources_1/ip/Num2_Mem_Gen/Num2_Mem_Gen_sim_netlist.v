// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:52:04 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num2_Mem_Gen/Num2_Mem_Gen_sim_netlist.v
// Design      : Num2_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num2_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num2_Mem_Gen
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
  (* C_INIT_FILE = "Num2_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num2_Mem_Gen.mif" *) 
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
  Num2_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
