// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:51:37 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num1_Mem_Gen_sim_netlist.v
// Design      : Num1_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num1_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "Num1_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num1_Mem_Gen.mif" *) 
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
