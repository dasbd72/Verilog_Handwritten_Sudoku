// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:54:22 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num6_Mem_Gen_sim_netlist.v
// Design      : Num6_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num6_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
