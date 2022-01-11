// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:51:02 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num0_Mem_Gen_sim_netlist.v
// Design      : Num0_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num0_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
