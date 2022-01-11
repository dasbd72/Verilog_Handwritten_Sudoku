// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:53:17 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num4_Mem_Gen_sim_netlist.v
// Design      : Num4_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num4_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
