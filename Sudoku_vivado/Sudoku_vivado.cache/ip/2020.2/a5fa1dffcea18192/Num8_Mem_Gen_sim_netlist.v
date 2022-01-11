// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:55:44 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num8_Mem_Gen_sim_netlist.v
// Design      : Num8_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num8_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
