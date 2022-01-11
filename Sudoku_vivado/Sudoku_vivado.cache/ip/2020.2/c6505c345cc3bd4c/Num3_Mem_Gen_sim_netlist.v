// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:52:37 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num3_Mem_Gen_sim_netlist.v
// Design      : Num3_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num3_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "Num3_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num3_Mem_Gen.mif" *) 
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
6pLm7pxYHrBNP38kWsdMXa19trfYVG7yHHD8blIN8BwdhdOOhkNLSHJG184VUwa89Te9Uvf0G3hN
r0yR/q08RfXnad9N+sLMIZ8YBBc8T0ARtG7fMseHcYQBwM2AgDl2VKKkwB6a26OD/eM03rXw3cYR
ruvF9uE2cOYy34fTpcJr7V7nkO9l6/ZMWZbD6TUFd5k773w6fupWFpNPfAOnWfRtotyoMLEfxeos
ppO67n8LCsCPcaVon3MXGNF/r87LQTvH4LHLJLvNZi3zNqzGhxV4bPo0WJgpkT/xe9mI9DmjXUmd
DdoxiJLKCZ2DuGPobwLuHeMhQHt7pBN4V6vsZ5IAL0hyYBhW0laEb3u4/ztrUarwAZcprUkgcwF+
GHTb65HlHINVQeB8Rmqi/cK0uWQMOzIqvS/xY2w0gRmRfk3kYi+s68T74VLBcOqV+uOKmHjRTDay
uiEdfSKHTRM+T+TnjXC7mZWBvK31R5fd8MJdepAi/yQ98GrfIOKbeXs9nrmuwucwXfbzCJSYYhP5
2aUh0iAMs+FCJG4AeAFsiSz6/1kPxFULCAcwj99rH88DMsqGAVLcmrztC0wVN9XAZL/+7TYaFPh1
JlKYTWyhFk656lYNxSk6Typu9K3b/0w8VzG3BYxaQ+hPr+KQPvEIkXRYNuDMby2BZu3N87rsRoPW
6/T/jiND3lUpGnavXsEzM9KAjy5SnCkWOSXpJF2btPrbGFpQp+kMWYnDVS770AM+Y7jCYEInQf5/
CLL6Vu7H/W+P1lJ+ccsBpS+cUwrAm8RGUAsVxNX4U63iqNzsUDlxmz4qktd+0gvAcijhHezc/oNf
OsBIIW3yf6afws35bGPCzzTtVGpLikSXOs0ubIXFyRLrOffBehDEyqPB/XCuzzVz83iRm0jGTdsy
3Cr57D9wsjNt2U8Iwk9ThiZeGOGfJrA1hLy2Qaym+vS0rJeRxCAPbDqe6nlahY1r+598etjgWBc8
4qpoynFlNZyH1V+dQBjwhSv64B17XZ4GXyGMFdtZ/IkFg0IzjpSf5wP5w1Bj0MJAGGRNC0JV/fLY
gUOHqAIZnpEccnBBLisry/N3smIn+iBflDLyGp8IQVC0Py43kUjn/FqIp8fToIs2arthEJkaTVpq
WQZJFCTpz2TIUYiUcQ2jV+u8z1oC9uWQaqJkdSPQ98i0eey9hllHNFvIlUWtltWq+ASrSoC0my6n
aYveVsTBasLqjSc9KJIbeY1nv9yg6z2cWwIpxGXce47smYTsTthAQKgHmNN/13OaJoT23DVzHH6b
VKFVRfHRgJ7Vz7TzrYhaO9vt4f4utgU+ZdO4t3EyrPwVLjd0Rp5deSUdx/wqj5lf61OYG0hjboNw
JxXJi+WInqJ0/fX4kqW1TSAwfVCoqNZGL4F7l6C4nXhofWUkBzdzfSHFhKW3/oMvFG9NHUCiC1hN
uTpGEDiTjvd+sNrPY/f4Sttab9gCUkwjRyU098G1LdZMCm2/GnwbEg58zSiUNmfWcS1gnU7Px75A
fI1K366jjTDBV9X+3qqyeetIMHC6WChIX6ppvtgF2WXYBo2MUT0ko1Gyrr5H5P4XSQSJ1t8AOFKw
2HTzvyPK2TBeb63cP9duEOA1SGFdK2DRLeptXqpeiAg4AVYw3rAttgH3v1t1ok70THhxYfiWmcsg
+cSKVQsJiDSu7q8XqNmYWgi2aK2a5nTBztdc3WkgYwY+/0sqgR7Qu2LIKTPsLRCz6bZpkzM5pixH
W/vbGnyRm/RpAz+Htyhnq82s5JiUGJwyS6vsPAFT5/jUU75eajSUCc9YcZ3jnmnJyuCAVktOWVup
oIZt8em3x50T7m4SQI42XlaO80yLfHZGAGXlBUGklle9A3PyJri+RL2lsUMpS9XNNYAzLuVW16w8
cOd1WLtD07RUZ/HqrzQIV/w1ICozBnQW4ZIQnZkc9uNebrk/PM3fp0YCRxL+MWlGWyYpb//SzJqz
8LokheVd425h6mtHZDeELlxcbPwKzMvbHQCxfDyctifC82KQ/J3R+UqyK+/RKykq0/yeV5+arsG2
19pmOWSxRS8mMCULd7UlHjtzsOeyH/kmOUn1lRDV5wcR7GT5XUnPwh1Cw/3OcZywIBpBdAKPin6f
C3lypERDOihx7A0GlzPlXZeoAQJj5CuO2qC/yB9tZbfo6N6XKZ5sFf70gFpK4HLidzxcE1qudwPg
nq8wBLkFEe17qIO2SQ9OQTff15/nBcO50110T04l/McqVPH2IJVaYs6Y/mbNqEYwE7iijJx1Q1C8
VOc4Xtd1NibjRQVhaCU0RfqUjo72tJ70jPFDcsgoZWVhVwBd+9S3n8GYvNRKdbw5w91J8lBQLd1n
75oi4RYbO9JJi9kagA1EhhnZnKzSP5FYPKXeKC1j6axNY9D+Ent0i0iPhTgKTz5xqU8A9SU/bKlR
3824jIzWjh34pbvRqWnQDCbidc5e0SaiFKuqYXpCa6S1RVxIY/IVJfOcSUPLSOdQORSnfvuLcit9
zsydl2YqUxaJeXbIypCYhVhn/RVKyPIth11+vwgj02ZFcuPcglXckBW2vZg6kvufohc/MXvH/SEI
jwKpAY0bY7hgIQtPC4eh023VKf3jpyVrZtkOeK+8/M9tT0U6mW9MsGgliz+bTM+QK1E8baQW6S7V
FD3InDvySfA2C3VQvdNNMxXP0RNhFdGEw5lgRkPWKNn1pYYVEVyKo3vNq2YorbUqX1mDKP1F4Obw
bkcGt++KFUH5h+Pl1PyHi0S4Xq5PJeiErVxTwBaKtvHISG86u8UbPw+ozjn7/8pJKuEZ9j0LtAVX
eKVtDYoAOCSztWU3QEStmlXTYU6GzyIQRz1KoRhmV2x8hV1qmqFCgVITeUnJWLoMki6N96BkzUgT
0VhlABFCmEXvG/ckBw1HIa6KQRM5KWugvzAHUDeLc/YCKfzJ6Gegxt9g00XdcZzFfu1kq+GTxSau
OBHwLq493p/R5fhJT2PS5ZSc4EqaxvEELGz1EfTSiVMkS1x5X/q9tTFdpCkpkntdmMBFaPlDopXo
E7+JHQoPaboQKgj5tIvo+KyrtFRll6gCWPXax5YOhoiWJTKUpI3GBaegVtFIj15KkF8ABNjOBJ4J
9kdUVYL0Ao1q4RmvxZWQ4urgaJB4IYw2MB8iJct98IEf/619Nrknacgykl644C4PlxgWulqZSjbm
m4JNfpazFkybr5I1v5Gk+wdk0BcEiVz6jQCoc4tHiPOyzMv3zEbsLUtHkAkKw6uA26xXNvoX9s6i
jtwuZfdyLhW9BJOQxfe5OO8jZi/Tjfn0ccH+afIzPPLd6iFoxBSDOcdEaBvLXuJJXUF25U7+cdO+
BUfvkg1q6bxjbw4WHGZk64vzWZR1QDBTThy9rmxiqDsWNM5EA6fNpf7vfxMj7xRGtaSZCfr1Q9V6
R1/hfj8QdnOr4Q5G9cE4iYxUY8SUQOLTiYZxkMmOum0zEr3IB1n9zaQH+oyKUQesvRApMFD1h3wu
tCj25qO1thHYcniK6JVdxy5C1QuTyPunaC35lfvOcJhPN1d6jyf1evlYz0qJeUwStrMdkERnbJwD
Q8hgvjBOe4Wkp6QkNMwYVlyc1vRa8UmMvX1W7psaZmsyCK/KxBFabNM6+LI+Xq4F1y7rticnRNOg
oMvgRwXOcR/ZpWwAajsu4H2KNJsbGBarxidzOWlDs9kqQzEdKoRrIjVhOmG9TPdBc6FDrR0r/mWX
8sfnWSAbvBR23KOymsDl+lmCQWxXRFMcWw1jzFLCHOI9A1oSxGKcn4EjnB1CMPTN746TokBy4+SQ
KxIx4aW/ClheMyyAWqFkVfnKOJKTalC7p3aPyYUPn7XsLBw+bXsk7Ca3SqtxDxvBTrDlnLDOiBQx
v7w0z9wCT/hrduJyjcqEPx2LstoIdWp8HPGZtPmgxF2/NSQYGHobKYc+DHufxbXrbZdoyTt+/FRj
WEPxmwsRAewwuWQ2S3f/2Xr9VI88FAuhlIaF+Zrx46RGSWaZF8aBxsh7PfCWccYMUiK3cRj18o0x
GrjaLtPjrerAqLz19dmtHEyZNnaVTEj52zekv5xFYm17o0giLkN0IbbWENObr4uOyAdc42ES5hTB
f0xAsvgJOt8AceVaZCY6H+Stw0FHS75eVhNJcaFyU+y3znlnOU6U4NuYYu8vhfLWtsLCKg41Ly8R
CgP+TCopUXjQvR4Sgob1WhW/jS1mf0xF3ukWigI22/XIGdUZIQBSPflii1Md8T3BpamEG1e/t8Mk
twtgpU9S14Tf8OeKFYS9IcvAnmqkGPM4rSKVEIxcYZoQtW4aNmDw/tBCx24aWybSUR+cSijSnvlo
mETe2AxnxVzWQpSvtnkWZawjSqk5Vtz/Yd7FqcinURrbbaw55U8FmdiMnO1wsi8zm5l0qfF/3Viw
bk4JoC6f2ECFRuBIkIV63wXnqPeAqTAhw/pMlQiFdfdwCOILHGOrJQuxnHI6/6vUnuzF4thUvhXc
U21/oMEtmQ0k1nowMPlEYUp0do0N5n2BHe5a5F9KuIfZPf8akG7hdU8Uj6pj0fv8T5VamkYv86aH
PLk/L5ACc+mcaI06wpEhMiCdTyy/LMxpNvOloLF6PysCNlw7cQQ7r7QUiQXZu10zX0URWRG5Kojq
ZqAyrpGiekg8wXAiLOOYcRdDp4bamWMuqBTROEaYFgHgdDdOyEtnhpjg44XKwB5tZxjJW2t0p8cO
LupTrIOKGtnf3U3DlZGRlBPTd3ZgyXUKcwpwcGeEgwHTb2ka7FFBMAZR5gcA6uPEk82mYQIZBjUo
Shai30xRNR80SYy+M0opTRbKH/a4QeAcDRoio2WSWF0VqU93nHwqsXmo1hgtkn4D6CP6o58suoSX
1OdzW9bN1xcW1KaxAqnYW1tJkOlp1TcDkOS3kKAnwFQ9+DOHI/ExO60XU3apRPufbICdj2rQ5mMT
EBzvvbVUZhzffZNafsUvGUkM/A2iR2hPel7T4n9jqLczde0ifv5VZwrwB7fktfw27hu/40duDnfr
qgGMuSj4e37Pu+KVjLvPyl/Vz8brZbljv676+ucWoo9BK9REHYjinxgI+fmrfoYQUoT3ARBh6SKi
fFsM2+fvBQ7zXBAAoP8fcgK+KQd4wfg1SwPmdMZW2CApJ+Y/3LRVckhVskjd22vT0q8wLlRZAn37
Vmz87SHx2SL4c2TwIpIYLErM8EUUC4LxYq6iTXvkYBWDbPxZieGQt8aC4P5T7RgUWXAH4s8qerUU
FmJR0sGyXxfCLZx+uUw+ZPhzmZYJ1+DXliqthYadF0LDa60KipXaGeWXmgGcA2NyvUGL9l+FLelW
Mnwqzy6uT1YuCDOeKz4LRSSGnrS9fXBNg0/Cn+kCCXqbqF4Um9Iku0QiDOCMGMEOwZJ0MbKLA2RE
G5vpoW4sgjSe53X4x3LjPbB+EBBYOR7ECR/qwUWzunUgIaVz1gej2Gl+/WRCZGcqzgladP4EPm8l
IudjTIAt0yJ3sX16Gq8EzC+w5irE57CaRq5BuLEwrFjrJlhfQCjR+zC56kmMAqsY/ILOxtSxwsRi
72iMdthlC/0OUqjFVvTKUjheNAvOo4zaNHRvYxCMrSmUF7/rDKlcJchgKcsnduMQ0va9nEaWAKmo
5mmnL1T+7fl1wihbaa0NFMq5DTrUf8dK1RAc7/jSJpYnBoyJjFj/LbJCGWRlKotm/iNwFyaSOGWM
LBs/XqNSv2vbMt60obW/VjMcV2wC5Gl7xciIUZKcgwAOiivVva5sszsTVLZ2qXDE6H7bz2CzMa4f
vj2keufFJ3xfiTT+n7VK2uzuZ+sx42ZWKlYrQaQnMRlXN3mrNm2No/DGbm/QCf+MDZvVe0JCd4p5
Vwv/90adu5XrzA0UCdA9K20rXPfJNgdbJbQbRrJbdG9fpC6TIAvJXq9iW++RAi9VBHDMJkhCVTxj
EjFfwIRnNgm+YUkNaLR7kbimHwvhfscpxjUNPjVr2sqwWPikOHqXzCoUTMyX5wgEKR3JeZ0ZH/rP
oV6Ucum83xBiJbtdSK61ds5MWIJTaSyayJCcc+YRGxahUENC/5ZBaY9M7Kc5bwE/noFuC4eBNxCe
0r/2bzTp9ed5ZH2Bc/gqCOu4dB4H8vWyr5BSMRt9iVDnt0ldV+b2mOxwh28ADMCASKm88g9IpHQg
+24ECw+vSQFfWUaNftPICKotxud72e7b4W3L8kZRg/HreoIOEJQX4KW3qAB0g/NIuVsGIqluFZ6k
HB8DQArOgf2FtYUV+d74uNVUfuT5W05GwOaj5oLeBFEQvkABtgdpjJTQrur0crcwTyplooJ2y60h
gCWgIO+XDVgAIpTQLUBx7RmK8oydqFszirJJm14PXAWY5Ju/S7ITaKrWmE9zYiad/0m+pdXNUJU9
+khfnZRFoDCWi7XL5zgBzkNU1hP/2NdeLLQmEA9XIQmXJrF8DxX3I9m4iH3ycylthX5VGCniEt+/
67PErNBB6FEclyksPcYEYGZ7MeLa3rG4ClIcoPiHwWDd7vFkRB9XHcYiwnWEA1YKeKH/63AvxtRg
n07EK8K+BNjIfSdnFOMyiFqZCdQ9PvNEvN+jNUFcypMQEh+Ub9usHVNACLMxIJSwO0nzSLY8BgH5
qyvSRF0yyoKwVgBu/tVyR1xt83Wp+O+jD78SJhHDUg8NbKEf+k9ib/mCH6B0OTdt9iY44Zl3BzXe
sEe19JSnD0ADFcLnz4icPTbGdHl/bveVWatEyoalLy0eS/2jNWrlpARSVKNO2SC/tv29FAYsWkPh
yP1oGTKriiAMV3kfGs2OFcTjZZb17Hr9o9gG2CmMVeRojd7zGDv87TOBpUcPbU72Gr8ZB3Ke8pqc
Vyo8BHikGw6WPm1q+r/HSxlV09EAoXvfTRcnEkZqRSUjHbSY6KG1IV0Lfn/r+WDEiuicpnM2sC7L
k+c5IusQOZYlEbbXOsvRezODnj2s5StGLLQLgMHP3WvqbfIRKhERJCMNp14HN3R82or4j/aZxnQj
4ZXP1pgBSluajc9yBK3jxvTArhM7QaEp56fW7u+f/6cdEdleHbIQGdjXdeiD5U+N6NbH0IzJK9qg
gSZG1YxV5Wd0+QUm9Mu+ikxPw6XLrra744TxSctHWeWk/VVDkcDvvmWq0b1ZfcAbAbKCNWENkBKW
domJ513Q0HkBZ1M9Edt/iURzkxZIwrrJZVvhM7BTNBX1sm/fmJlpbpkcFuAau1eSgtFNIjDTFiBD
itD2LPF7FvFRqNbQ1hfrqRVPy3lFBT96jps5mjHZFNNg+ta0uZiHhfiJX1UXWQG+wqMVKipLwWPV
FHEEgf7BERPpq5DrP80oLd8mfd2Ox1cnrPHNzh4AUTQEV25hMjpBwd7nFLO0pPZO8+9UFcKgICdv
x2BTdnScNv6GYDra/wUQPPcL2WvlAV3vZS6MPGwdJv3YsCWzSE+Nby9bpCHq0u4GTl6gsq6sgWaN
0Sa5U8pxKYMSFJFx5tdU0fwIoRNUHNkvb6F1R5SHcHPIo5BoPAz9NIItnZz0wEtS8CH6LxxxD8UO
GGhxNyfQk1X284qTXU6h3G2J+nJ6B+Co5b4JNu/mIdq7gZUK2DcFy7xFqA03m17X6/hfW9J0Hndk
vvbQWj1N/ayj6fBcGTUkBKJPJxAdUisewtY1NZbriEep83oJnBYga8FcOLopCyltCTRZJEwBoQTn
qd32iXcI3s6E2Y1/p4OhfttvscTujReBHfPcWX/jUb6yWH7QnYQUZD/AuMHrj9JGSIDH1rvXqWNX
9zEzAO4xy2/lmPJEt6nNauAE/QHaIWmvjrFgyG/EGNEZuF279vWs9wy8/pm5CeDEfQGDJJAl9cVq
OGJc18CjDkzqps9SsSCFNRuqhf9zeWRVPMicWm7fSl6f0n+6OapQXgllNSSRG/gVjiETzwIcrVMf
YbS0+H0zorgZROTSuM28aSmWfz+WIqLBBpFu05BgyA/yvkOknHM05nnUo0E42EUsDMNb735GL3FL
yloV/p8JNlSaZkyVcGcefw6O3pMtJLkWWmuRTgK4xzGSl6tN0IfonNcA8nrQBTkkQfmC4U9OVctG
Tl/z9o5+Czy4cjs7TAfcrMgsxZdwufxSdy+I+ynPhZsaznwY5Bzfhh5HJvH2bJ3AQTnt53pu+skm
mn5Biyqj6btBl9qUCJgQs527py6n4lx9pYKtkKNfJqCk3S32M8dRxu87ZT487p2KklJBF6ZcUtoT
RWiiREtrYaVP+TD2V1Fqw5AqGgqjXTgbdwqyqVQTyEkUNUPVai3wcaoon6UNyq24p4TUOKzHQgd9
uINGZVk8LKhSeu1jcJPYsgc3pQiy1q82RWl549Yoz3EnuxNmUSH1lq6bnk1ypFrNWAZkos7V3F+W
5T+11kOrWvQRl/83v08xQ7y1mYvIH6yvWVoDJ80S005W7COKO12Ek4TTna7+WD6kvr9BDwcLKJ62
/mzua1ggjHktPmhzxCpRHZG9J0kcBto1SC3lZ8ImsuXTSG0xIeG+hm8AHE7rOuC8Ggs76JcuGcwu
u5o8ZWyit9ZLVvq+2x0iRu12+lS36JuBM+PavWML2SGN2Tll6pS2SsJbxQQqUfuEAH3hyduYcHRx
Axd57vIZeIeAzoD/rVMJTj5fj/PfXIlloo5Wd2nuYHFnRvZsMnjPHw4L0HEfSFwuOmwrcw/Ms4TN
EVXmq61vHEZL3KyXyjqBC/SfjyMcqZeff+Qca3EpPTIcw6ZeP3TsaU5poiKu1j4Eo8FxmYw/3+hV
s/bxJzKVHFTDvC5TUSFp/7ryBlj3HgyvsC7G2gwmEI30xeJ4Tga1vDnryVCJpr55UWFo6kssDtDi
voe5yKVeK7J6/HWEwfpiAB/bCASyJGnYRqhOSdonefcc7uCjF/q1Xi4X0OWPtD7umeu/hFpPonGM
Rhwo6r6b/bLLWOYwJfs39LeQ/yPHptdLEyJA3OKixkHu43RK0HW+MakYoMWGRkoOHCUb+qb/j+kO
XCKrv5zyrrgDeHL1llVXg/m6rvb6yUoa/MKyc5gR3eNGDfjiBZgIU3W1kpCBAM/0INWTgwbsrdAD
dbXm9wsbeAd61iBcxNEIF9TtVShasE35WFZzJAL2sPITKVHBJ+FNN/jWSKsYJqdej/gQiewD0Kgu
Ov9tjz0a2CvQiuT0TD+4Sci8QzeWPtYL/CS4BF119CQ2Cp6Bnz7cjRE9w9TT2/XUxqN3+2/A6PRK
3J6N1kQRkYApZKHVwsVm+zyNB/oUaJu7bVj1dyjGvO8gwbbFT+5A/WtCt7QRGRl7iqD4o+bx2a+U
l4iW3b9sG0jaDqXklvofA35DDvEFeeKe9UxtBgyQD9CeHepk1fz6oQ7yp6HiT6rfRJexN1luUzhn
zGUOEDQuq0c5HXYIeR/7emHcVBqmgsdSSFV0zEMHIXrB55mS6JvFBSHWoofXcUabP+Y2QBaq0mgM
LZ483ypL5edy7yaG3Zqm1mThGq7AHrZt5alf/7lrlEiuFQyyVsjhZD6EcC4Wck777nnYzLNTw4Rs
2i5z3ElZck6SbuRJfr4yanTTcKqqA55pllNQuVAizMIir97PoIlxi19EXMbbTYBM5McgIe6vKmXI
WG42jj7uEhYgptE0da29IG9eSvi9q5WqH4UzQsiDidMy16ybmSdZlgNOXayAONQ7TjlYlNKnvFiD
BrnPuzL+/fa6NvD9/Q4izj7T9DHIRizMcJX1j7llWVnG2Lr5aRtxAnLWUL7vFxwZ61XNmiQrC11e
BjF9CthgLmncUIVdyNsWKCrEvVdMGI5URv/SrFwufy6jRlBw2oHJQpU3hI+uxg1rv2FwvlZGDKCM
TpdqAy0l8scoDX3tV3IZZj/JnoQ7fARn1xraD9ppAQJk4aK5YssbSNLLEHxw8Ro2IndSdPVIiLpg
/tJalkudiyhSZQlWRqJCiKI76m1igxhZ/9V9uLMn648M+ysBpdiz+nx8lpmrOsay1E43epRiklpR
DZUIPhw9tRcEvOmSeEPzd5bQAMGgu0XT/OBgKYaBSbanDPxech1aC7tdSSQIjMOcIgXdMiZM3fOO
9j7sZ42LuHQagIWjNHxuNN5ZCavjjpoKQ+6yogwn0R0XtCPV1VA8o0L/GdFDPJ2QRyoCtrsx+CuX
Jh/pmKdVvY3C8b9j7bOztXnPq3+cwvUHWPRkZu6bYAbR+I5BYkD9QjC3fBIT9d3HMxSK0TWJMo+4
0ptFOKekSEbzxZUjuJumPF2kuMXzbz7pQ0Xxi4XnIybNLdgU6laHx/gRG6ZLeE3U2B5ue8af2aA3
KrGuCR/OobvTelW2Ecexnf2JC/cPuw5nXRZp3XWjDArV2MORluq4+uyeIdoF8MtwVXsWZ+isMKQP
/rVDO7A2VkHmLDTJm7L3jWDltNxBzOvUnN37otvoqra0EKwOI1R0VziLHtUIdQqX+R/aanT8cyCC
07y3bO9NtnJh0Gx/0RUHWOV+XyUtfNG86fjAPYHZbjz8UoW1MLXnsdvFmz5bQpE0pFDm8bJIsVRn
UDm1zbvuQLvqpewHJxLkjNZBkXDadqv541McHtcbM/pGKK3ad2f/qOop6QndB0IJwWDBaQJvgFJi
1qJ5d5+JOUW14HqBlR8kK9T6K3Q0bisEtLfg/ICo8MszwFFd9Dg6UEWsUiy14+ZbaTzm2vmXEBKs
fboHVTXtxy/GuYCdLcWw1Hw7eA7LZIiLn+qNC2UFWE9R01zUt3NMp4eu/erFJ+M/6cMWpBB3pTE+
wg7WNQ9+0rnPkPvZbJphVR+jF4LiVSNU02Gt+ieVo6QNOkRD9Z7dRYTZItGuET1A2CzaE5KgJVbH
iC+qg5D2Mi9vcVdHalImhRESLidzW/yxiuRmdAxXVZ1nSXb19pVs59ye5q05P2HKhQQ0xixlOVoF
AQhugpevWdMXMfwZ9fxNWTwzJ7uvZBf70vtGNQS6tEk5gdrRCK48o1IolnFvJyyNnXsR5qm16uFq
Lf9cdyyQg8+ITaObqvqLcpq1XbvwxrRVkJGlgxBfxb8DU+pZC20hixwGXuCYF20getfmiXXV+5Y4
XRoKkDUFHz+2ctvbQsTpFzY67Z93ly0ElidGVyvA8p5/36SbI1Wkj0lnB3gzpSq1VB919YJAl8RF
qWszKl2Jcb3uaktuzaBbWgRV+Gkt15nPNXyIX2hMDh39zUVMoW9srUpV+CEkOnH4lmUcJmWn/zy4
d8M4xGP2MQFuLWSr6Mn6BO1SHmXqw8qQuKFBDlxAPZSixzJSVYA5RLSDLp/7BnH10HqY56sk3Lye
ACiBpvCl1XwNn/pzRBsScWugl3odonFzSRZ8fqJgF0+zuChIzNe+coY/+LGLElwrEOZOzp/gB0KL
nNrjnX4xlFTUqEmdnXdlIIMa1LsGLu+i9fl2sAOjX9FNM4YMvpk5kqzxgmAIyoMRd/vr4PEji6ti
vQhX/9hyJeJY0Q/AnTgUmcV/FoOwob8oat9lZP7iQncz4HhbFOAEAP1Ww2+bfTZTWkm+ywRSd3+y
LO3VEOBpot4HJY5sNDhKBKgVzxv/7EqDNVw3VPlopGeReKuqybImSH1bfx+f8Qeabhb43DB0TUlI
jBDWl0IHAcIXJPzBpsBxMSHV1KADHd+xaYZZl0s6wpIqN3jQyw9KC1wqtpzlmZ5FCcI8DZBaJyK2
dhJD51fhbCxxZU9kHbyZA3w4VqXmED67idFz+D/RJxYSVYSguE95aeY07PmmWq47xgKtn7YQX/mU
PSw1PrFqAlpcF+NuSweHsHwvKhhz3HcICQbY12eAlZKspqcgB4RdzgtoaiuPgk9hdWKpODKpACSI
0xhZ2/HoWhC5mOVCl/DLdjtcnaWNwZwU0glKCVX0DqP60qthNUrfmFObc0KQFPfka4pvHE46wXrI
asfU8YQEZgjRxXHXukohRokWJXY7qDgGiDK9Co7iWcYQ9SQP4a8KJieoy/qtYKRmrGP2He3z2DCv
22KpNqk8HkmWizxy+kr7U9Xj5pueEhje0d32HUGjnMHj6JFDSsiUzzPI3JTZDzspAK0Fo3HHVs4H
lyDe/mR3+USVNvh4pYMC4qzrqBKkE+VTYpYtJjVxVdIGqNJYpGafZ3FAiwuOzathYbGB6njA+lKT
u1/Mabvd28/QW4N2aPOhXAwAT7MovtNJZq0TAN2JWk8ah3esZ6Yy1FVf7qp4/e9bGbF/UdDS7rv+
j/Umz+ot3TnK2mt90X0tRmvwMRaP1ryC9XnQbJwxedMEGfM0IuD3WTKc7s6poVGv6/9SKh0Vepue
H5LmwEmiU0GE21WhVpfCCY8WOx/IyFgL6sbi9gvzQj/Ap1NBLIF0iQiZnfl3NioZSLyirU5TToeY
nVXfKFeRvo9+8AdRXqiY9CDfEVGst+51YSDtRFWOkfW+k1JSJMZZiSReBNVnwbV91P5uRhVJYV8y
uyCEHFWhKkYhz7AORWzHl/QOm+j63Rx6eEr8IvvgCXRUeDEb3kLDR3jxGEB+aioY7j9kVmxqJOoJ
d8YZd+cqjGnD9xd5954iOLNkRGw4UjOkQyMVSB+RllbxR/aP3HjLYMylAGIgOq5EAIgRFgTA/fYQ
MD2i6yZ86HowF0teNnTx0+VQez88hkaWi5rT5K6bXpNn+W0UKCku1Gn6cI5/YSkmuN1kUj3tkw3X
PpLIdo5aF0oazPyIx3M94g6j2QOZ0IibtALhgbcOqzo1ELNHxjDHQUpVAmHao60+VpsaPBz8BQHO
YSnYP0r0wgODVSV7b6N5Mt7vaLAOHGQwr1jVddaNyDOQMP6GJ8319ZdeNrJg/DH2x9OpnLMXnPTD
lJNUi7yYuJSkBxrlSyjF/8BYpHwDNne53OsKUkYwotCeodS1/JtfcRu2ZH0GyHniXDX9J6EKJ9BW
hK137Dl1YBbmOykyTHuhqqp7OwH/VJsfztjrgs57ZqikeK4EVB7FW+FUKN65dxsDJpd5GG29emrU
kjndlPLrDuLfP+wl8gdCfGaCM6JMNxpZjphweROsl625bB4zhdUXbJ1+ri8ug2F/yXH6oj+nDx/B
4dJNHQU78c8+KbhpZ5sMaYEwTaUuut+LdNi6EFsgeFY3kIVofyITQGbnoQBFXOIJjpqpl/SfbKN5
DvMl9YDvyLZj16UpF8BD10gwsE5piTlqQj89VQMqolNcca8VSkgUUBFkQEGmdXmlz7/1HAN+dV3J
MaLA6anB2sP5DFjIfofc8DmvGwH0uhOdLiuQW30hWgQUUW/AVx3+r+raamqoKEgB3G2B7i8F/Aln
GtTTQ6nWHdUBx7cysTFIQVACfHXpDD9BTKkF1HRtn0vEnEWSt4aRcOUPvczSpmRlQXWJ8n5ojEWP
i9p54o68DGzjN7YCOG9Cfs4IKgk9uYyDk/6OUGDYVwJeABZzpA2oxM+sDMqiEgrH1NqKSpgDlYLj
Eo59NB0sUTN7LpAkNzdDO6tfxvej0C/BUL0SiZ4n7BLjFjogpHhmhaStu2S/bCfW+Qo3sd++xHYC
HivUbR0N/fLucXSB5MvrCzxNqWbPEJk+VhRlHHJ2SZqMbKiy+mwhfZ220VEZ4ZiumcCf1+zulFPi
7/IRkSowYZChN1CrKxB+rZW/Jj4HWe/SCTefgj7jm1tZkTMHw5x40DKQ1wVw6UJK15RDzQcxWmxR
/D+Bm6TYBxhdSHX77m4Xp26DmOgffA5aW7tKUKWlvnArMszfF7DlDbuQM8BFQq9AIkp48HezBDgX
6/vZhxWDGtFlJTeiDMHBIWhwf1R66txaSIBZDkQ7oo0x0NICbD03Q7Ei5T0MHCO7BWd1Jl59MsAl
7gcpjIhQV7qWbgCjbe1VbWXSmAMHSk3My6aeqpviwP+ycbyRg3VxpiH6UHlJ7AtPqYoOAgok8pMr
8ShImTJ0DAZLpUrijgwpBH29YCntwMUPIo4A1T1o3sEXrtDDmIRqcBiNybfgs4COeWklchLC0ZiB
iM5y3ef5+gcTJkg4nur4qOm7JYV6dKdbjiIlG7ey67YUaZ/mU8noQaraZRbzhN/+luddkdotw6uP
PdoiKC6498U04MAPLMMkvnlq4cV738BGV2aMShgT+96WmZdQVxAQ7D/lPQXBddu63aJMauAz9mdN
BEuPCJGy3zipHZ56mJ6RbW43r07j+rmUyhc7Ba1I4dnNQCL6CUrcBo1Uf0iZmFTabBp4BT1FatYT
SgpCIzCdYuo4ddoy1+M3nP89Xia7UB7COX7M4VTbK8Fr2R/72PCocXkldwk3MmmwCZfjJiiAZb8G
a/lSAToZvTMnFlybKCwLODtT86rCotAh/qRn4FHUF7ROO11/vmfYh1/Y2a/z0Xi1Z1hh4u+PJEmB
kadbFY3ei0fupWsPQfTvNJq+EKET6Gf8UP+jAOtBfx5q4ojU/592ABx51ndmBE6JU0i8QVVgyEzd
73PCOdt9DXdL00qp/tRAg01f8rX1+U2t2TWXIXVsxI+h8D/KmhCOHfU9dJV76vvWGIDeuJ4vAHyJ
NKDEpffWAt72dH4AW1UTWn31Ll5uDws43cuC1zLxG9ourfivkkqpscdn7Jyu4E2bNGJO+V1qVk7W
uuUlIXzfgPEJHR4uAD2G7mBrNElTf+9Yv93xf3YJv5yvD2+RxBRMTK8dJUnyF4lLF5Xc9WR5zMfJ
0LO8V9vSqjJUBYZvsaddtMWYBsXBP/U+9xdnWe6cUwRdPncggYVrVqXW2Hjx5ccuVKmHRx/EL6bR
our9fsY9ykWhl7oa9SD3K21feq9TTWWXwGFzC2cAk16gnHZM7tMjTdf/0IfmFAUwjWk4dqkQqM7M
Wvnv+ygvhjupPf0ZxvsGnJpxk2DfRxXbxzqbYbLODQa8Rg40fHaVn/ROB3dc6tJqLtYnwwlyJJWa
Yy1YEyKPG5BKk0I1WClfwvy1rHR8bjhjQuKnEuyRzwiJk6lW49Y2hgDWdWvwJQnb37yh4IQmMIzz
JRVQUeL83z99IptAVBo11gZR7JQiaApW1KW4R1VGj9GIGfsIavLRbH9ZhIfKuL5OvuI4cvmmj63A
DNmzuSAM66zmAjltwllPUbh6ws4bwLG4Ex0DcRHHTzdatLaZyaQBk1auZPpIfGOyEZgvCAEKw2G4
88ipf37uwCJN5nttpFg9jUfIDQhN8QwLw2smbwlzMfbCa3eTgwwJiDZs3UexD62RXXFzRhDl7M5+
c09s0r79cboQiFLxU+MrX2bGJOLeKt4mQHWSr/u+jCXiMSCgVBn65Ei2+zN+6lZwrByRahhAeMT4
fFi4dMi/vU/dv+CYl8FDBN4P9+MEvIEguQqBcBob5jdAm65Hz2yroWCKOHD3a+3MaA9cfbAXl0YQ
k0Kewv3DzqJ99U8fxPOxHoz1hNn3AfH2ktw3Pe1xdhK1MCaRFYmlBl9u3W2onybgRCoKf0VRtXUv
hoRQTeCfq4seU5xmIUh3u+FMJ+7PbS1lrRGG2fiZwqDQhy0gIOrZ65zWkPEJRIROeFfdlW86+uRb
B+jSg49Tb6bXK2ts23XNlutHeImYtpmGAkln4rRZduwx2YQ45DWMCK42vXRSqUFutoWuo12iZH0d
xiugQmWDHjYzZdtYU77l80hkCki0oUxFqJPWDFHG5/t3ujdMoC7HSLfjm8/ky4iyTzH3kgMbJJI3
pXqVsOcKyZQ6moYfN3JF6juZEJd9+OKiQQn5A2YDxUrxsT6s7oKCQ2hkcAknadUkl1nomDBteOaC
jkZ5aOrLLWJrW4Fzw+/g0HSQ6+dVMUSQEMhArVOD6rb2pEH40KAnF0HgZW+cohlLZmq2e5eF5aLc
pIYgG+pSZFPZOacp9HRV9F+teqh4G/75mBvLUtL9MLPO8qQuIZNH7ZNDBoQcNEmP7ZKjiN3z3AZp
T14PTqLfZ2AmoaJ9RNpCsx14H/eckE0+n1EuE5ZTvDCuLK7UTyevvupji5p1kmZdp9gYxjeGT5Sf
oJGQv9/4oFM+WfuHHWJSlYokFU+tsN2E5Nc3YYZDX2GCFVjVO7Kua20NqFVlMqSPPuQskAhY2YdQ
ighUCua61baIhAF+wxdrxj2Ncrj66VcaqA2q4cJK61llTEM9c80hWcq4Y4qP11IKxWeOebLMFepH
AcS7k96XPeFVk7fkY6HL165K7LiDcss1mulImtiyDetpnykoH5+Acu2UKXkQJ1EK/76eC5NPN0Ku
J5sUB2983PHgZHw1NvBkAtFbzfElqtlLgdfamh1RnZn6SOKz3ZsRtro4Rc+ILbthgd7JC3kdPxJy
TwfpJ8q9omjZXGXr4D2zpYgNyIkaKhCcwJwrBpm/dqHHLRfL+NBK2y1XT/7xqwtg9lZSLIPSPkM7
FjcJ9qaeyIQbcepj2G3XT6TX8Y3zi7+bzl4A+MLpYnet64Z9A+vjhoj4jjvwvxV/yXyCjBqVH3uh
Em3yM/yl3oLiprtUvYI+opy4xOyP59FduW/zdm+b9/MEG/GF6I/W6yydVpVHD9eH5z+59BsAllDL
zxL1VoP1x383Ik3ILk4aPCMgsFuY+yIoD+EhIpHksEppxC/5OpZsV1mkpt7JGJpaQNn39t8//ydX
HNeWBWU4eS1xq6PtLpx4AEGKCFEBDYi8gUtdBmN+08cGTTJMLPk9erNNxjflZKtybst5Ug3pzyPp
76A9th0YoJqO2hpoGjZ4xuKIYP7vjbP8pApI8uXg/XuX0i4vailkV1gqry6jmwjf6qjQjsPoqUMp
Lpn0OFB4uCgRzsTNgPiOiCh0tIwRx8UcvwmkrBakvgsD8wi0dNmam/InNSFySGa4EeUn+JEvjgX3
bM+NWhbnTwgr7Uk0RAbyE79pH6x+PqdEVic1fmi6gDyF23KQkpy3Wi9hRcVIF4HmeN9udQk+FnXQ
ivS434souoMpx71JXnlHUAHfdGbmzWzBsNFub9e2IvCe/QplPLM5ty8m8qB+0hDs/mNj2nOlAJ0g
sYJB7D9Xp0mwQURCpSg6naSZNYdny0bLZmwD2sCNaaIhypA76a6KZeCSi+WbsrYPY11lnB1RKXy5
gLkZ70meyBKldVIqX5zh+ZviqCptQVw2QRGz9ymBGh+Gjy1Zl1I8frdw1dNfjonQrbnGIp/BHMWW
0Jf7u1HQ3A3iuabpjiW3ZSjVXips8VwUrvWcNvUvbFTlQbaVgp4MYYT2uFCf9m1Lferqeeu0whvg
BPKealCYd47FRS2DELSJylFCaIQRv+6E/9krnBZCWKmb3squt4GKksV2f5reXt1oPWMJUx9LWyqB
5aHXLi9mOkOFq7FSZO/WQdEhLYqFbpAema+B3YC8kUXQzvyxNpRAegqGz9hkUeZlVI5siHnG5ylC
DDDYgfHjVHE+Ksn59F1OmrlVxFa+i5aS/HsQH3DgC2fsIeEL5LiiNv/0ef1eikDgWoHyvuBMYl+b
DZpud71JeAxVXjlXhOum4QPJQvUX/LFTMGZb8s2Xy+SuRFh186M5enUq/Gn+imbvyGjhiv+FwWeQ
vev6huhxlS+vkgPyz8YnyleVO5+Lmcs2ZG12KnHB2ixWgD32Erbv8RNASbwaZlSdKT+W5SDCN853
1GyiKsCRuQ1jvO3wDB+BurI5QE0cPKKUAGiNve175D1dTO5m0ytin7gFf4cC/XHuDZjcHnMVMB8T
ouDIyiYCYaJET+K62UIg87Hts+a6KpMV1yc3+J7WAUQp917A2pNO9gs7amuXz77ftnPAqR8GORVf
hYj74nyGCOEm+OIOteCGcjizUSYK3EB1KttXRLmnaE56tBIlehe7LgPviZafeZjQBm0qr5kPSDt9
HPxBIS36xS0M+ksW0QE5tYWZXsaWc/ENhZEqMOSNJBISO/Ki1767K/uWJHkEfdZgUFKfQ7K8O/2Z
UZyKUqxblC5a2O7scEq15tPFGglMULz0pOoLDRFfv8B6QFsZoQXlccY4jzSjjcet1dLn4sMKqU8J
A4e+tkI4WJvpsM9qOBgLhMKu+ivPfTO2Iih3hy0zHi38Y8qqrHTT1DgKLaIauAhSemKKImLxzjOx
bflTFicVXHPvLiku2uvZvbYwdrFFlcJBWY0/dd4TipQd8HWV7kx13/jZRGKyu2Qu9dh3cYGdfpSe
FYDmTz5WSSzFbE1y3MSbcyvjwkjxELQcoEdAJHhS5il4SjHmtMUt6+FoyjigN6XkPzPmqa9ukeuv
6N9Ply3IFp3973rSzWYKbT71BXgNfij4ld+0uDw0aaCrQcNFzcht76YXzaE8aBBNXiji+/7e0oZJ
gzPn6Mm0AFY26GJD3X+1N1rd6+hPA4yAKk87w2ZBd9p6u6ixdRtsBgXcQhufuoNiwKMwC6h1iTrb
C+yxMfjJNzbcGGK/hZZba/N9WpjBRAqJ+7crhk3DJ5SUrvfRl4XZT1UNeAlr0jf22I8CZ4raeGlc
cxpdt4DVkrWb7FwZaoqa/k6GdjRvQDECRD/Bp/skuib15f6jADCbaIGbmoZX63BJVOJq/a4RVJEM
OKzHNQvJIHyLMw4bWTHOTvUTr2v/QxrGd+Eq5K32bp9G6mEC/UKj8VBhtpXa3bxM5nk+OVqs0OGy
bV1COYI2dY7rI2q2GVzgFzqCziuuLXEKY0cM3V17CSVP8IC/N99S7hFrsWZVPUH1gpro3a11YXgs
mekGbcWdNvYqG5yWRGHwVjW7A5NXuykcwO2ca2urOyDDMOr1GA6g5aUunEEuqAXhRh1alG4pFG2z
Ub5ZxpKrFevZfj+Z22Rh/S9O65+AOILRQsTT1B4OwDaiuXi0P2J1kQN7n7hwcYHBoQvL+jCutiWk
icMwLp3bh/wenj6Njy4P2Cc5p8EsUQMHnxfSWOj4Mnb3lSywdjiES/tGbk2pddBtUE67ORkRPya1
gH6EwFKBUVzi505O8x0PPJnACClm34MDXOdo8Of9y2NGU82A3OMsbJFWjNDWZgpVeDbaw9txNjwP
2CiiN+jSFoEdZw8PJ6B9YPCdeww1DhBznwuTDdAU7bdabXWjBmEbnWdY1Q2lFFEGItpYfSCILEx2
1UMeFSSgkGe17TyiIYAIy7g5pNr7dmrpcPLgLYcsI7vUzMF+gKjPaQShN9qsLNz7VAoIvOSDYfce
rmNnfjuEY4ihSaFtwHFag/CcA5ceRoxHYyey3Glv0Mkn4Rrwui73VZJf5HRLJRGdEx+GAaWRNOmU
7tU0dEkc+5hgv2AzsMEpeAOf+LXl143y4KXUBuT3bbtW0f5vMx0Z01oOowbyLCLaedwD9kJz3if8
qN0IVCbMviNeSqdgADlEEaLzC6nJ0H6LqROWdtWgkQJ62WNpmi6btMnha+PvSm4Xf7A363PHoyd1
iMqSPmOMvj837UvS1jj6jqXviQmAd7b22/ApJo9Af3d+MWcYStpW3Y9kCbkFcaxidLljtR3JDcsv
4wlWswKLlPZdGl5CnY/Mu60aiqTMPAhTYsZzxxRx/0yWO5Xj9d9wTQb3tXfxB+CDo0VsNyMc2zHD
vdMW7lGOZD3HcLErCQdeV9sC8rrV5kmWiZPrS2c7YBwHMchdToEMlgJI3EfB6U57xy9zsBpUZAt5
SrSuxZoFtCQr9NLx/r9n6ZtE6e6NZxp3KCM3JuPAqg8Yp568mSTwSDMi+TYo7MpVbn7or4dgQC0e
Q09dVosJ/DxS0iBKL1rkxEWHBz3vo+ZolZOZCskRi4njncop0489VmJfAmY42IK7b2HtjYChR2AM
IrwKNIdpoxWXuY3jPpPHhCBFggnU1K4eibOsKqyZjJTjbypLkx1CgDnmuSatJZaY0nN+Eip11G6y
K5L/KFJKFFE0Op/YFDjCoEb809KndaBF7XKErzkE7fH2QnWJ7g6VpU7KSrvpl88QldctAq+irjXu
vmE4c+0OIn2AnUG/XuESTqmGXrhk50185H/vtz5ajMYPWPpQsqER0EWDVlvoEje+egv/38QzVung
Vmi3OT6qq1fsdnmyjk2QWYdTsdyY7Zh4RllZmMao/86ZcGWxPVsbAg2MwsVMMB4UOlKx1cu8BJl9
xAVUjjFkbX7snakSiVZEiM6UHj496lMvcv2VaK3aHMF+X12mX8MIeMaQ5iMsZXXzMA2R7jWn8o5u
VWY7v4Yz+LRQb/+ihjNUqC/hSl7/WA/Zw7fgndp1tx5Qu3c4bx1OdvUIswOITKMovJ91ZSYoriuk
+uSu6+rJ0Jd1nAovBgxo2N0UIo7i5IDb6c3LUvpDtWfNbELwRwvwuTKzIZ0JEbVasTRVP6rIf6v3
bqoTbE7NNx3S7QGUBe4M4iK05utrMVeh+nzlSRNrKRJ7CwJO+cqg5ta3LsUGNFQzimAP/YkP45ZR
CMO0D32sCfkFJrDLlYMeFFar2HlShdCteBYSHS29fyGxzwvSNgw1WFv6CitUyKBAVX33wbDyM4gI
6q3r0L9H69ZP6UIsIDD41OKwzaTK4PV+EbxcwRpGYda9pctsEWQeLtc/jHPX+5yBBl7b2HM3g+XL
0FC2YuvHK0+tL0NcMb6qEQcQrGqK4xKiPB2R1dRGg07w/lmAf2UhXSsnq3eHfU+/Jf7cy0uvNSCQ
9kC1H4vRL6NwZZVYmBVTKL4PbpVYGKHJAORpBnqlsQ2ALLsQp66Mbp0Nj14PwFwD5SaHUeOzu7uS
r1/leIxwzWF99FV2pRC/66IXcLmEy8wCg2qsUc8SvJ+hcOga7Nt35zBafHjzKdK17ao/9sdIxpFN
k6rZGh6NoZNeTz3760bbJumGPRTihQYx5SSMSp2n+AJYHzhpHfaTeUDt/3kmcIug7DxynQYFkTeH
m8GmzM+Ux72kxIwTN68DF4OX+VcwlbuAmMhz5jSrug4wMoJK7yycJPcYiTuslU4wKv83sVXh+5Rx
ZNHcnJql9x5J5YxQ63o7UpCSLrfcuv0CtdWMnLP9sDQqMu9dlpnav2LQD7O36RNymwjBFckquSDv
W8p8eO/Q5KUtvAxUj/3N3cJyCI/H828JERPjYtLFizzjx2bkWZwj9FM2RLwcPWAnHRjpPnjUH49t
AiipbXCIpKrFNw6ErHw7+oZskjAcA83ogniN6Jj34LxjPPvkeeiC6fBG5n4YioNs0s7V/ww4/kGu
3oMczm6yfB127lvaTXFxvori4pAopLWy6Gw1zitD8ZI9ekk3ivYSJWpPnTbgK+b1XOT/VaSHe5v/
RnFLQfa/XP7MxwHAmjDXdiwGSQYXkH+ltuPfGf/x6F2cmEBgshziLh80EwaMZmZkD4Ai22MEnIcd
Gs60YAToNQQrgPVZHhCRsmBR5hPR1SFTJ465jh6w5bmG3Q6BpeCiFEpCsSYmAK3JiGH80ncfC39k
tN0nsMijVCkT5yCGjzucxa8k/f01tZqhrllU/myjLL+tvYmDIoysAlPsiEVECaGFpjRrB0zR/4XV
m9INsGT76EXa0Fnh0cQseG75AXv5zCrkWgLvkycdIdrYkR007OoX3qfP3BD+k/sx7MibvydCV4AO
GKymE3c4kFZIB6aZrpkV+u+PUkvIGFMFj7CrweJnOjOqsHxT/jv6FrkMJVxoNP6Gei4NN7JYnNhq
v+yNB+xT4CtElDefU4uZax+7h7apMb8vAspucF9d7vimykbmBadkbSokbWbf83zhFzgZJ5offY2Z
RwZ7ovzL9rLl2Q2PVv2Pat46CroBMJCdd4A3hxBGT9eM2e2Z6TUQKycwJ+qz4zIzWTjjGNTHhVI6
Wwg1tg45CeflEFNIC3NwbwElWxrTfnMvonzSBGT3NMOsmjYZPU6ILZkb/VhvZWAaFWfeICBhA2Hj
yXKezkd1fyW+DefzQmGPrJIQGd2wVhyUZPQP6t/ExQ0Sr6ieiDSe0VeE4UcJcaPPs6CH4qe2Mwc0
x9h0GDcInpgX9eUsGQHpfeqSx0vFZooikflqh1VMKtLk08x/5WmDHXD4n8LpDKAClt1AUJxAfdmH
gPz9vD3jmL1uwUsdFUrbMlPI1q0Xa0uofaIrir4TuteWbiudSNq3PukYg8L3+8opyHRNn0oX6luu
VTbOWi6kID/+s7nu9eAZ1FgymCrMhizn5UbLtg0Sww/fR3zkvX/keYI/WoJ/gt7uGs/MClee7RQ9
o6wxSSvlCw0hklbCBnrmeZVSrBPdWGgxznBhWTh3iWDYxx4/vSOWv95RCycNw+/WgwszO8ou3RSg
yyOSWIZqT58v0tgNDUHuwX0NkahaPrWFz89/KOqUxHSnOkHAzi7YSQmpo2rhlWTIH7uEo1y5N45+
2HF/WuTnlckmRzqUXOBLSjnQmqWpQR46tY9z39+bl3AqMUJYey326vky8WzSH4p+ruBZzzXbH4A9
+hZk+aSvnzF8NrGTDltz62VNYDVFs0nt7eDEfw9ywxD/gDD0vWkh0ypxddT+/2YXBUkJpx8oSsbn
nV0P56M2DgshBZFrl47zZsyZeLth39sxWQOgTj4jHu9K8GpaoDEC6wzLIpsv1Bs7Bo56hjUwT2Ck
fcsF2gc7VVuu8CiEufoUn+QWQHXos4oGrs48HellkBMwuPaZLosqWceZYtIBeAhl+g53sKlFhS83
UKi7BaoUU6FPZyXVLQ1GNfWwfwHgHWXGvmgGjnU/2dzGHF+9aa1AIkZ1WjfD3Kv8NusU4HfVEA99
SHG9USWyvMRve1lK2DdG/mFtDkyOAPyB0cQ7rR6zK8uNVuScKJ6IzK90aDrxVuGvEHDALCbMHtsm
vfjiwpdlAaXgUKpfwgx+GCbhe419N4RLMPmwrWqqBL4KqEkTNf6XzKJpQM4WUOWpVL9eyDH5/esD
6ga++0NM4QFvlxOH+YhMBMCcbghWWEO80NOO3h67KYc8syzYGVkKY/RjDcC14uTpmyhAZBFtT63e
hqL+e4QFdmWsZJen9CDE04qJB94sxnMNdAqJABdm5BqUpJ4AJEJ+PYeCyKR0oyYgxTo+bI6vIg8g
Gxv9NPEHJJjXPAn9gkgdT5sSC7ZibvBoFoXCXUYlv2qVMli8hjLOk3XUVQdRZwcX876IyYtkaaRU
GwHZBfPhAZKBnJt/h3x98jkw71BMz8i+UnoSZFHaJAFgzxnroMonrRjoGSNwV4TrKotI0c492kkJ
7Y0LV9xQOIva/VpnN3eUZlkWxW8Z6+rf1LPge9dUFDlgWBtyS98Hn3SuNHhTA3VUaJEdUc1Cnprt
7M/9NmmqtyXF6P3NTuf9RubRGqFztyHZ0AXOKDPyalhV+ooU7axnE6CTDBnfDc9jlgGzdlDUW+oe
nbFPhIdS0hrzg63+dBCuC8ngACqYYJVkV4Gg8f3LFO2PFQdaIjvWJ1dRa/UfaOFe8niXely2X7Gp
s9m9Mo14EepHE+SwGqWPZFmLYcEWMWfBK1yUGKdLOtFmKMO4QgkliULzHZxLV7c9GaqhJH7yIKNK
tnnG0C0AcQCtXDghEkOLUBFpUrzsrOuBP4F+8lzs7gJrDpyXIR16k5jCN/N22VKyqzAeHhZGhGjM
U2WTxKoKplsm7Zn/aDYQiweQp8vppi+n+SGUnLUujQkHZcfTNXVtmh9VE6wmHndGNmQKB/ckJQAc
3PbtQ04SGwJLQtpGSxvPIM8DrKAUJDtTRQehnEUyhw+kEGfPmR5dTzWs8QljFrv2JMRRSVSckjLe
nH1PaRlpni/n/tgJQvjXPIjAHBNfAri17HCFbiRbasnDoEhYBM/gBoMyYPEL4hyu0KM8An6R0YQQ
tjQZuI416V2lSAQCpmOJ/yerNTP6xGDdOTeA2gx6umqpje13a19wE/HrqLwolheVWImgdJw1b8qA
GDGqdjvAq4necsbk/aO1JiicTfHe2dyfeAuP4mW5DBCE/oSLH5Xmb5vaB4EcQu8N/aBpqEmiRL5I
V69zBUXfbz8K6TI4lo+pC6bEytyxNJErkA8ywKBwHEDr1sVq+FU1NVgO1Lc473KjE8tZBF1tE84X
d9Cfe+QQWiqGq42qaRlbOlIQ2AW5H6hv/yN6FJOHrIf6ZpLQ7XIQweDCCUzOnZV7C3y0XDgAv5aT
wZqpBtRTZLYl8N/oeM38rPkyYwbXH2DT4VdletBgaP85OzF1T7RtevEbQaXRxfswBY6Jz/bWK/zP
nPuORVW8SbUAXej+orY0/LnCaFA9xEiZmuDttJTzybT2gd+VzRuWTfCR3abIwtYOUciD+v/9Vr1w
1nj+qLK6DAiB3jzNwUStEn1elSZMKXoUksn+RZE86V+Cy04ffIQuKRUaDfB1T90TP1RZs3s+PBIE
lo5f9pa3bAbEumbPwcei8iVxyyBy3GT3xSXCCLwyV+X+QGSmwgBvY+/Q3OIFpjbBzx1uq2kYtUmQ
IQ4qwQaZvrmYPwfzuOelsc0gvIiltpYE93yIKnL924Bm9aUQf5gYz2IibVDdeArqkZshp7gWbNEi
i44PxFY9SvI16qQnhwrErRtJHAo7T2IrfGpwSu199vfnL2A6GdkMzG4G8LFY1u9dhgl9Tosfe1I1
0o77aqNip5teBI6VCIaXKq8jdcb+llym0YI8yNGJhvY=
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
