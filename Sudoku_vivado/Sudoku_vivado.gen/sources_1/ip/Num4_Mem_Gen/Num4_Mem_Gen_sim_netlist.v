// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:53:17 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num4_Mem_Gen/Num4_Mem_Gen_sim_netlist.v
// Design      : Num4_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num4_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Num4_Mem_Gen
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
  (* C_INIT_FILE = "Num4_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num4_Mem_Gen.mif" *) 
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
  Num4_Mem_Gen_blk_mem_gen_v8_4_4 U0
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
