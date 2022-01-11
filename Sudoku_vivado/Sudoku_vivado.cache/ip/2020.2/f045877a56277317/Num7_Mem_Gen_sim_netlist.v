// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:54:55 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num7_Mem_Gen_sim_netlist.v
// Design      : Num7_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num7_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
