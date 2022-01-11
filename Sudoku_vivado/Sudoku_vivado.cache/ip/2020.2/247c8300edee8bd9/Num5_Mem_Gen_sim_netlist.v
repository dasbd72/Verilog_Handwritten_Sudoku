// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:53:51 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num5_Mem_Gen_sim_netlist.v
// Design      : Num5_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num5_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
