// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:56:13 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num9_Mem_Gen_sim_netlist.v
// Design      : Num9_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num9_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18272)
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
