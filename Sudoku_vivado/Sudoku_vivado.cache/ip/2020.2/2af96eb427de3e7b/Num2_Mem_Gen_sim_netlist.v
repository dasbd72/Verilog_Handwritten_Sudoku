// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:52:04 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Num2_Mem_Gen_sim_netlist.v
// Design      : Num2_Mem_Gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Num2_Mem_Gen,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "Num2_Mem_Gen.mem" *) 
  (* C_INIT_FILE_NAME = "Num2_Mem_Gen.mif" *) 
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
/fQSJ1fMeuZxg+D5O/58yTHOxIs2g3VYiqcaGbR4MKSWEwNycp+5wHc8bZRUOcxPs8SYh4SqXodP
raj2vhHs1N7tIgCX2ddCOX82m5BGfrTkJ06nz/AEZG0dOTRz6ib32NoQ+Uku2ocSwaO9+imv5kpr
Rxh7RxTNAHhVW9Nbe+xHJADFDjI5v1tYiGNuHQoAiI4UEo3YgutWf6HidXM5phmr6s+3xxCjIXn6
DyhdADvt8EmfxRe6StY6Ruj143ifsKK2+owBHjpKTb1LzT+rMN832z4L9rRay+Mpk0Y/VsgtPxWZ
j6hBaIuOJonpz+EjmxAPrWLi4ktCqz4NU9BtAXEUhOvQgzkr/Bg4uvy25502gFnhLj292YGZCIKK
tlqbj7GHqqkfzd28BshOQJGl8TcyvMDNytTDmU8yjYhWeLGmQ+oTtTiBhUe9X7v+R8YPTuqdD6rQ
O5oovXzCg6hgbuGG6NYyPDijOP5+9kf0quiobiQ/+DEzS8WSzVewZ/lcNBVvGNpRYuXPECHDfZJq
Ahw7IqH6gN3TXdKbnFH//cVLA/gqmGABLiiBW4DnwUFLIZ74PWnNhz9xlOraMYZzam4Cwp2mvaxG
HpjxyVlL4zlQwFlz9mGJ2K7XgGf2OakhqfdjdWg6X1oj3aFFOM3gPc4o+MhEn6LIWuJr8MHmS1uC
88M9GL0ENt3OwCoaxeeeQ2enlH6lJtMYOdGXCpUu+CpoqkOtzTD9Bntovl+DISSGk0Q28gnxS+4L
KK6BoSldel86CEJF9JbQKNmlrzejGRL4tSghrvcjO0PphzUmXQxhspOww2+t9Z4/DgsMQGLph2wj
XKTXeNjj2A6iutwrshu+/WGePCDIjso7oUdH0GAp1AEiyItn2iF8ZKe4RQFPgryht9IyDnUpv//1
Y3J0MZpikM0ffAa5XiViuCLaiWxc4VClXgT4D46AMMchojzvLv8pYC0IHy32/zlOks0rza0e03MS
VX++uAQ56kGpsWz+dbNc3gaLUYRM5BSdWwRHc1gI4tV28/LW0sFb0SNGnFr2ap9fqlF4UfdrsfaZ
4L+zBsoHIei3qyW6maI5Wk1JDndUSNF+JpEFr58CTzvJsQYpNiEIYebO3qYmTxuIJGv29+Z2uiA7
Y38kswpkrWNGqJpdMtbSn/KOpwZO+i5mqQq0QyBxvESWu/ZK/Tf038ukDfKN9WJdmWbx5iiBj0pX
0seROqXmgds8SpnFZh//sxpmkXWB4A4c8NY0kApRN0AJ+8L7Yd/MyR01AsjdtESYF6MtMPdOozC3
59WEte2xVWuC0nHA98lpvOynh9ww8uA4p3oXmp+pEqQTkZiJ7lvhjxmM+DQ7qlVC0fXhdyFdgdB7
tVc4kselXSzzrAQePOQIEnql86Les0eaVQDSJ9P1sRN9EhxXsCxUWT2IS0R5L2YBTh091fENFPzS
bpOrj7e8rMyjTW0AjXleGaR9p1dLcVSdtLaRgiJelGx2yoL4fOSGGt9DwziPeIw3PARLuHgatCto
PCQ9esunqTbk/P5fv5i1NAB31Qv3ftRmLGT7UtPdBEn5aeHq8MRVYWzUNRPQ+dlB5DdD3pn1hJSw
OTkXQXfQYX6cUS4E0cj5Upp7IjzJ/APITXaqQEPlLsToPAwzSTkZ5/GSCKOw5SiWwyPqz16ee7ur
GIyn4O/8sAL//N6KmYovC5rJkn6tHwx5nPiyRwSYy4myGxeLOVlrTYm5die0EZ5y2UM5WagjGeXC
w4lC24b5Z5als7z6/t50fc6lz7iO4bN0nA28M6JhYEi9YWFTzzeHZ8a1EvYeXLZUeqN2ffK3TVAr
0xiVB20jz/OZBriyl7PpL9O7Hg5AgcGGAXaZ0rqiKBNSIaU7zOvEABnKp/WhiUQQUFIjNZKwunDd
zCb0E2W4xLhZE5Xhu6hh6r1SKNH9elKdmnyXEt+hRBrwYh9smXoAY45pQDAAaYWC6bdwzMIheJ/W
ThtcfJOZDJN/AjuDvIUJp2PeeGMiEkrejfOwwDn1IlxdcRGoq2YB7dJcAPdqo1sE3jJPrENvwR/Z
tiLDHjs8+vRWStrN7G6GTJE3EcfM+3qFqf8xzGw90RmInsRkn1mNGaB2UBzCJmW3gb1L57YQHAMd
g/7ig2xL1k1McPAZIzMG0e3TcEKmU8CAo6pA4eHZGAce4n6wyg4+yI+soffQfo4FwWxw/dIAIfvX
CpUunP/0sqNm+Vy0+nemTxDM18W1xQXjJ4yr6rZhbubEDl6bpvZfuBK6Qv7InBtzs8BGiBNeB5Fn
4bDcEuctOFYy5RkT6q8MDCRkTZkAt0XtHQS2QT7mBs9roMVWn083NzlZrlmb+kUAgvaNj5/7ZtE1
zxTZqmbtxukvtCqF2iFTHU1jm9tBT19m2uKlVSU2sWuwV3LDhrKjb0XDIdLbj4cJEnoxrGMKuK8h
5uoCHjW14pvoeY63l3yFxlzW7AcuSmAvdemHnGoAYRAmeRXuJLbPR8qaw2AV90jNOb1Fq/owi82T
5pPIVd0cpN0X5xElGp0pB1Hr1aY+EIy7qWKboQlKD2n2jGFLR4yI5ga5nPvh6DhIm+RLbGEJUc2y
0oA2VpR9nj1Boap/EqMRnpRN4G5gOSwTdwLWK5sTCYzlNiUHvJfPI9IkQwfOHAkUwwP8rk73Xldm
qzClL9VCkNtplgXWXRDeHu4QoSoxajA6A8DgCLJDRVkxnWlR8fFbNY1ughd2lZFTwwU11J3qYVFx
prXjW7uLDXS0Caq8DdoKEkWE1e5MGiE6tDUm8FKwnWZccCJZZs6VEpvwr50391GH1MkBkMq+TnEm
waIcRKkLvX/GAb6S7W6FtdFZBFvUX0tanBz1kJReiaUGqJXDyF1/I7M15H3dJ7wVqWfcxSbs7PZ0
BEo47kga4uMk538l3iFSYJGZ/Lr/5S7QMt2c7e+tfgwMKsURiYCYfijDGri7KaZHY2bPvGt7ZqfO
PvuxavB82O6jdp+GPdq4rWvJLAYh2aEMlUrc4tcdGEXohi/nyDzObdY5+8jcXIW+Uay9PbQto21W
0LSoGa4FEiozEhiWyQ6PdPkdUvAAGkJdekMwWorJoB2HJMPTfXRrD3qdTwNy9bUBFQfH6t+n/g9O
LayTjPEYt/kJThT+GOvX9jkzR5QEISA1mDfsjgY6Oc+89A+J0B2WRGYcJwk0qOug7fRQuzKR03b5
uAAS2Hnon4xHdiFxmxLD44dZMw1QYYnZoEMGQkemm6XxBjpyrcXkPpnJLJQUSvnvu9iLky1wzqYP
4VUOv9Z0q9tKzLsXtkRvXfIFP/5G74F5nacTJZVGxkXXP8oTlcnAXf4o/oT3KqXWPXfgDAEopLxj
ikk3oSh2Nb1BtG2wXTPi/k77fWsxK85mOTzG0jnPr37lKhHl6m05k/4I1TDg3sDREULp5cgIy+i6
pCqx4RRJT9iiTf+DL9BwYDQIUsjfXKuERhFTlNTTGKREDx3UsZkR484cNZwK2by69JgCaaJ9JE6Y
lxbspe51bppIYb9xyyLP+HL6v/qcvB16PMn7KKUj9gNBSA4BZcXj+CANRcpBBPynJUAeG0pkothe
CaXixQQ6IHh/cRmlUwVRIsZTFAVP2m8GjQYQ8j99U2MRjN9gZ1I0R0y9iTLPzg7AMaciuB17qf07
+umsbMN9aeFfGFX0MBYNIoBuXXi4vn1p2jRB4Hta2/892/89wZaUJpzvQyyXcnT4mov017RklTwO
pGaB1gOZxdTEgSDGAlHjqf4j6Ix/xiR7JedZKsdSacEKNPkM65U2lQ/uYPFfrsGSbvWrCfBEyDIy
VLasnJVVtZJiA44dZFRUIw4xNx/rUm4PRbJh4lmZZVojQcTWAjyEfvZsB50EAgXWsNVu98fm9qGv
072+GGzGzc6/F+ao4sKpfhDKG19nXpOjrxWczIBEkBgQbsz+baKcM/v/T2eZ74GUWiFEsVq6B01f
p7FYg+NBRqiMHlKpbShIj7lVjC8whHKQsB/WDWzjSkMi3Wmn4NSfm5oUDCaueml0epExy3CiaGFb
XdLVlbhl6aVAbgHGzZLgni3a4MhAYDzo3ayCG802vIHa7/U3byTw3xw+T1LAFP3yrsHz6gfuC7Bp
VyxCxZkqQb82ZNXH2S8ljbiRC5XQyzeIwkQsvxXCkM1mcwpu2R+y6FxOul14uuuUd3HYOjqhb2yb
NcT1VDPHd4dD64IhlLo5hajwTG9LHVz47X1271s6DaSpVBfnKQuPAAD7sc5/p5AVwF4U2phhBUtL
b23tJGJVDl2ZAEsFwk3B8L1nKr6jyUnYcb5tLQuPmLV4HXFes48rtVbRXT7zSXh/X60ZA2TXMNxH
vsYhTT1qWi3QS7/VUwKWCyEs7AtsN3igUJBMrbFEsm/qJfpT2AxruMDgPmBJrujXoss7qReFw/5s
zuVe795IDDusxvpIAK3Y7zpIO2Dggtz0YsAKTnn+kK/3uf4FbimoaS6ijvPQIW0VVj7s3tHGJy1B
KWycMogXlW+7Ipr7k7aGcYK82DeLn9GIOt053DUR92wB4cAU+JrGL9XyNWbIapoPywDHw/ohvy5g
IcXClvf4UPyLhEZo0EdGw2xBtgc1eZ7MT/X2H12s8lToeRfvPQN6ub4ZUJzbq8kuYNteDLStFlM9
/NM5KhTjqMOsOCanMD1blb30YVKAXUJfIyYDOVBil+KxYpueYfnI9PBIgJ1fVtdfpA+xAUcc/Vle
PX68DcYgfPAmU+AmnWg1OO15rPpzAUT/IDkmJo9CyjO+h4evfOExQ9eiws9/o3qzP1KErLu63EIp
xMex5JSovbwRReW2+2BZ9BCbAvTmnhDtesF19Att6bkQSO+bYbdVWj28rKjVNrmJcbl+6zEZazpz
PppxsLpLed408mRRKk1WeIxZoIo2X7dyR59xv7XwKzm8cyPNP7T1GI27a/WIEnev7wWEpmBHtI+V
Ep6qIrtiqyS9K2P+RB8PSlzWEKm7Peygih7g2J7kZ2vkIOJbrqrrUV/bTYXNUMnUu5KrIDVeAzhb
jRjEswuYEJawvOX4X0UE2YUMWfc6Xz5NnjpsOP5fil6xeMInIDQvkYp9PYF6ex7lbn4sM/kPlkTA
2XhxmMgXesDZhqF8SPnBV879HM3kMRcCec8hzZm2qzedWY9GG5DnxT0Um2WB+XkRZY4krhjGLu7s
8/j0nEmWHbSj9HAYixtul48HcBaj3EIVf9OQtQ0vP5AGEtMwAE72exMQVNIeG67ug8yh4mGtaY6G
mWaBZuR69Jer/AFhUUc0BMvyk9nip1xv+YmvmLmJOvQKSgVSo2ENKr5lkfpj5akAxcJmVJTQgc4p
UGMrH7hYywx2yVyH7CRyV2nji4Ug81jScRHHJj7HDAFJjGpryu/aQohDCDa4rynpYWiIAXyKPvh/
jmHTMYvvDiu1bK8yhQvPUpM2PpkvwvZMgQivXXT3eSwPM3/rbMJWbxr+F20a6T2tPt5XLdeyRn6x
y/WZ280ZALSzQeUhUcxaQHjDWs9wu1JhFP46NYdMjwLVsDmh4Loj3AdEmMZebXgMRHM7zLyMWqZN
bce3593P4oXEE3h/cmLHRye3AqI3OVPRN3ydE8q6ka8pgj8oN2gbpXUihyS6gwSCXfWJIsUBDmAp
faB+0dcoGTedpeJh10cYYjoah2zzae+Iw8JLhBHV337c7CaJJ6NeNBuy2lr9b8LEYhkLYnQoQXRx
yPOkicFdnzRL3/UIpNEH2yKRvelY42eMP8gFlk+sQgI5+9j+Tih78btnL5/SqbjdpZddTdTDW7lh
I6eKzgNb+bNYvy5S0Xp7Ryltj9mPE6Phh+8EGOpqLLl+4N9ho3F9aX1IzFqNXUOUD79AFJtb7sIP
EXKkXMbWNLFrTAI8lVhqZdYocE5mGlRnfxCTe4stSJok8Ms4su29pXBFy2lSm6f3yW7etxLMqFSg
CjXScizipECqfpQTQUa5InkUmU+Edz/Z91mEiNqNbaUHFZza7G2ZnnVIehDHCtZ0IWVerKs9zbhj
068zlGb/6WdARJ6QpqccCIofAl6IeTw0Nkav6RSi/aOgT8INDz7rK4jgS/kiANSlKsnByANoE8O0
1ynhUmCRUDlCcKMOlj4xJDVsluwlc25b0GlSaakABcBu9ynxn1MFVQh0cpRkDjsEqM97gjR6wg4g
uQ1Rv4LPKTxHl7uPKWUbMOiQQ9xlKX4zxiRTkpalqPiOLQUyBZIl0C+OTRrXGnSTj3xVeImh7zEO
zEX6TfSH2Jtrqt5HawNeKr2Kj+PB5obmfCZrbSuQBViPGHy12ZeU4phdmJmOjvk70bSDjKrmSK/h
P9uifQvqGym3Hj3gyGe+JeTS3igP7dlZK7adSmBCzrBWylUhAHmqD321Yr4AOLAZ8xAfp1mxoxw7
6IW7T+IIU6c60SESlx62/xdi+imb0bOsEY/fXFRmEG7YmKeBLqTB/S9pa+3Ex9XxjUe4nc2ukVx3
BmKdNTAkhfKcHngcBe0qjPCme8ieHkdio0+rbdeS4oMpeHVSFpOshPkGzrTBcEvDdh6FkqRreuFU
NBQSa++TZtUrgfgijES60yL3Qp6Leo1GRyk6fs0b/1FGPx8a0n/hc5V/9ae477TStmIdlMKDjmge
ScTYtYt/spnsJJUp6alzLsyrfl/9tcK1N73DP4/cX523/vN8mTjHIqslC5ZBOuCH9sdj17PPttEs
LyeA2WvpNVxFCIkh35+FIL9/OQRBvDQqU6DVzI4EkBO7EqX8OYWDGRCLR6cZQka+HKPsLk4+Rndb
YSR9UzYXFjc8AorWt86/kWP5Ky/xpePsf4Xvy9NH6Npp4fa76ypNbCXpELhxFJS3BYWDj5BIKIJu
adAr7sKOwfh+DP6G2yXmkgYTnSjLyYWK1bt4BLM2L7cQ9eJWqIehJgHpgoAeScG9WY5mEwmIvRcl
lj//cSXEywFhOhbD+zofEndV31+wuO7jV5QSM7bEk+J8gpGZyfWqcIcmHFdbPPfGYt+b/JDQwbNB
lvlgYYDe1zq0S/mul+ftUHgVRATzfjEQStOJWbSfSKJnq9P4nVsexafYdRtMrHWSu4m/VfZULHtK
dKCKjC+6aiTlkWTPulfv0Ce+D4zbwi7GteQby4O8C9FCrATjk820ef9iruMrrkknD0vu/y4uoIvr
CBr2mqle5R3fOvoMkguin7hFzyJOFcVDFsdElVtHToR9R+8NcvEwh76s9fddxFRkfCJvTn05+1NA
C0N3UMFJwXt7I7zcsTVrQwQRzHT7QCqZfbEvy8GqQhpDH94q/vTO8wLAsfxM53qNPL67Mt3u78jR
Z/GlF/F3/w4z9EwUUVkXfQJwavw+X6fVubgs3SdJuBz9bR9dW8P6au6Ag2+e+z1yAIsyk3Wo9ROB
ZcIz6o6ChIuCWUAZ2KUjw7tg9eC3L5yy+o1ghIyaCyUon9XBVX+tbTsuaaHfS9YLwk95G6+fOp0i
VKjV0FnVaxFsIiJhYZhRLCXCSr87/RuQKQp0UWi6nFyZybZ5OjnfsP2iclKyOtm91hve3n0X1/1D
BdmckThHM6j7LOiXqPXCU/fyi56aOkvOOS2mnUNRnnbQ71/sp/issrKiKOzWTWLj593AwM8ZFM3Y
p6q6BhbFXvhu7igeMIcSuBWF7o2ksTuW/8yyCAk44n0i9pl8CR/pNxmZC9fC34tSnUwCtrtodabp
Yqd9iCPGWfvG2X0qibFWmMcEsGF2Np2F+eD+v4Mj1tMXd8xSd3g+qVTqg/9nsGe3wJbm2kXM78Q4
OJqPG7uWJBVJlLjvKF3DTxjcrEpQd8rP1SIm8coWwa3Fj395/3qyhoAkoiqQeOb6k6nRVHFIIhpf
uO7mCmRcpLNzzV2oH4Ntrtl0TsVrK+NE3tgQaR9E3kGKDncf9ozg0Iiltoupikoi+9DpAam7vOxL
7PwU/vtE17L9EgYyGTZ/38Wz3HO646NF06vrfMZiJWUwo/Q1YuOwr1YYQAzbLs8AvujDPWQz+wlM
aw9mK4iVuhwClclexR1anqWMEdYYHGs9X+RIEuo6QQTL8SpSACN94F6SOL1YDrlefwsQAhI+XNYg
GGDb3HefzNYCvxHKNw4zMGs42SjReqHVOeFUyTadjjOHi4Kr9cyM9LsapB0PgngRGRmv4zLW5VGe
Iy2T5vZk4lbIoPwS94NCc1ZFRU3Y45vXWRNqXONyUm+5c032anDA74xwXISF+gQAGoevQ8sE3bX1
ziSiSa4lNnmz8ikqYCIJNSzA6p4TlKfx5w1dgjNeu7uEaQ7YAE5/plEAMy6Xeaqsqzv0wuYZs01N
sMVi+wow46ig1/RLVNQGDGRs7/b3lRRMgPK4udw7DrF9drsBklBMDLmAVA9hsu660QtmeIa4GovJ
pUzMNkbjNcx378l13be6NIA4ZzXl7X9ul/9e9/xCg+KBi2huLkj5ChzXqNfHFt9JkgY5XRPUmBh6
tSB5uq+53qSZtLjAJPjRgRtq/464tlyXdROxKK5SiGmKbdjd+mgdbNOTKSeu5uosxMjnzkQeEbXK
PrVKR5amDJh9CEUCJpvhtk4W/Au0fyCM8iZiAwOolQt0aHvFXDll5u1TeBXZsLkSRFmJB7yZAvTW
vWrMMdckcKV/JuvNCvtKPK1sSJibc9cur1EIJ1/HlJMfi4+rsSei27JtDKtHm0Fm59ArJzTFNWhO
4gqppnX2R66U7jzsNQjBUaDcVIopmeXIUuOerxxjW/2nr16NU40jPNjv5HL0LSUn8xo0M/ASiV6i
eYZgU3P6xh4kIufDwp2XwJE4Kf6cFHNojKhpLfQyMNJHUBbCLfzV8Tq22vOZ9qHnqHNYs4Ps+RG0
r6ObVVr7cTTECb62ALIYg4Z97lr6n0/X346QWyCyzfPhE7ReteGwwREWyaw0+W4aC+OIYB16HfRy
eSoJuS2Sh99FnTjiZomgxaKr2ixz0vBv+PC9w/wAkaZEAWN8c3zPKdgWvVwyOmqd19/PHhkROKlD
MXpbMR9OQ/ATjihx6q8XMZMs07F/cZ7JOcxSeY7E2rbLFyDqdCZ+shCKleV1R0Iv7drGwo5lMdPw
B1nsV3GbQXIWjBloKRJ7hVVZO7GMcs2ZQ2smfqaknorH+j8+wsW4SooapvAyNIx/Ac0EUkk+WTh2
xBFuVZwIaMdBjtKfsx+V3MDi6NXfXlawfkrw31esWklHCEdqoX3/G5cvL9IwB1QAmClLkycBIQdf
296QcoSpzI1SEXFMw7g3VmNtm3/zWIkr+Tw3tvOm2hKYA5S6blgXWJEIb05UEjM4urVaS3GPqcsO
X5SP5nQVBO/SvqumE7GVOAA/J9krLIvZTk5LZStmKZh8Yw9l099iklUYJ2v62XhsRZ1Wc+eruAvl
iHDFFRnS5i5z16N20awA3JkTdPo0BikfXeVSD00cBGjzrY1NTJ9o2gWgz7NukFXmc8M2TUDMDksr
uII7zkWfrESbqJDKMT1NU1zVoNUPIUKb/CoatvmU2+Uk/H6U7ULspq/YlAUSwJ6SQaCgGQv15nHd
hV91mdvbo+mIjK/Bez6unO9fXptkofQJrzKow/61pXaW/O4MELjEECJWRoZ1uDz8vsioc8fMsI1i
zsVYuK7E1YySyNwbdNIops+EhKsBT0pUG7bFCA36L7pdutXoL8uSIRw5+6xukMVeIUKBR98Mj0B5
+5G0QWrhPIsigfIFWR0b2w9WnCcHDk3lz4P/yU3K/X06gFtvNybRmrBKwkr0arW9AYqkvshNrl6v
aEGx6jieuuvPoJ6AsSasXwOLGXISP3dHc2npMevd9BC+QePOv0CNpTD//9/wRw+rL2qFgFf950pB
BmFnqmzF4BYQpLENXjhdlapbWJajjya8ryFfCu5JN+6Goyp2izvUaq9niBuW8ailzwXGCRLeSg1E
XFG16M/YhEuSYI7uJmlKpsjzozaE1koK413bew8nPxtE62FPelq+G7xnid7QnN/E06aTS1iCdK2F
MGlCUaq4cEqpAH9EpDC8+c2zHtUwa57SXHH24sOHfO6sqHbU68gtiMYRktvknDW//RAOBMqAKiEf
GxakjV+oVKuf4Y6utBImOjl3zvgrSxwRYLJIxfRol6RCsboM13NXLK3PY8IcAiERa3eNtEEymo3B
IsNvbe8FN6Q9FgazV9a3W24+1qVZqKZHg+h83aW5JV9I3/b0FgxcmK2ntBbq+J/bPyDeFlbPBJMb
FfHbsjTxO3mpsC/CHhQxfW2m35f43dWF0GU9k5UtABjV6f6jbKJ0SRRDhGD0+XRH8/AhZcCAj05K
YEDmt6rvPK6vUBz5VbHMgqvW4vhWBI7pUoMEz0ohsB8xEmxjScGJMBonCNbMgllLkd/ZX7KbjAF5
Kaf/c9XoJeIm4GuFNx51/drubHOuxBSA7YikfwJX0mZJdIcIFoOv+Dqlqq0Z06h+PTjQ3nOIpxno
ZI7y4bv4IQ+onDKgxdjjY7iKNxACuvtqER1k8MeYQdx3LUjFAqCletKpFt9CuUoOSavIe+Tw3+H8
6IjJ/yOcrTPZ1G/6dY18syOcEUbFX01fGMPVinPCG/EJ8SptgCNCLV0KyawVli7XoASrbHtjqnB+
fCk25ZCH8uYqKM8BpuW9WnaaGMuG3C1n9LUmE/pORWxlOHEGZ4dwc2mAgh7WJ1ckorgYPE9ibUe/
XghqepyLiFdstgqcTMp+UHfTLEeo6elwu0YDLmdKlciAfG5oWFcr7DEO/KUaRao4kPDzgxf/tT/V
YxqQS7pYWVqTbglVaXeJj4Ka3DpIF8+qVRG447mQ880GSZq1GNNifV069qE2qEAwvKsS1BOoVYKF
Vs+uWo20fhfFM594TTVXn2fNBv7S8ZQ1UzjVbATfd551bkTQzjtHcolc6BRLAU9z9o6G8Wp46tbW
957AOYNUQg9e1tJKqI2uwnC6QufOFoTXqPCJ5llyre4dNrH50qkbBlWbBEQYlPXfClJFWWaLfSjT
ng3KRlNxB22NvWAZTnxdyq/lz8eTh75cJToYqYslbv16IyqCuv4bZVc/9nXkuWywAaNrdKp+qp/8
wHblRsHFGJ6ZSzBoDuFPlE2wtkk2FBcH3r1+9HHp0EMNLDw6d8+7/FFUiItq2pusyIO6XLSMupmr
QNs617kKQaCa0NdJomlY39j8ic0e4mNdpFdNciuot2/40O1jfR0CtaGeGhIrmG0t6oo4zzpTtJqD
Lf5UWiJ2qM72uRIX8MzepbNeRQzhTQzmuV/TyWmLSb2cqBHVgpOsqLmgBSZfeTve5Z/s9aZ16P/x
iC4/WlcI3Zpuv3+heLcpMO4nT/bHCxc33oFmRUMtlPVk5MCreg853jjWwmJFLR7OkUYMXShtYGKB
XELw/44iZAE9Oz1rl3j0AtLnSTKXo6L0y26xngBCa63uxXNbLxKn1A2InQBUXYptgGtoWW+KhQQU
7oSbX+TU2JGc3t79wg8epNyi3UhxGoPM8W+sOETvsqpNHh9HpQA4Sh50HwMiK0UTcae3W8JXYgM5
p0AhUW69F4LC8wfQneb9be6O1K8hia9JHEK/2qbClxXDm2PUAqJlYRk83YnNdc/W5qZbCZwOcz/w
uWagpcKFYGz8a1ca8ZSyoqDc27ysgzKJfX6Y2awCYDdUb9UW7Qwk5KsLFW4mvybij2BjdjcLt2Dd
8aBwtLmjqCIvrhRL2TjiQB1UXvPHZz47HJid5zw7mx4zfUfGOvQvHknnkTX9ozqeEzwt1l60HBrR
wp+6kjmw6nH0Ij/hPjbRD8l1XwK4jVNSt+gnH9hEYElgc3RC9VvPgxdC8Re5ik63OInOx3rN5Y2R
Vk/zgMvBFWs2PnAH9Oo3OLAXozIEZqF7swq0cL9ntP9NdcWIblCZqVz+Ubh73eyuqOaVbKMb1JFz
iNS5f8cOgRm7qqmk4CBS80rKcIMNV0hNj9fNWyLmORqIyHUTb4g+uWaHYQ/fDEgCecgEUVcZGeBe
Soe2XNCfySr0LD/0uQYDU34ZrXPtq4QeIhTFVRffftA6OCH3klOmYCjeOPV92gly+39XIyZgh/Qx
6AzqcMltlqFbXZJ1gF36NaWQH8L8sLWyLvw1ztf/O13Dug/mzeeo+S6t+TllnXsa0aa/1DIGTRp9
ZPIOQ59P6CM0VW0M1z2G6Ird6DAazJo1hdWgh8WpvdZqdWXdwY78bH7qtqs+TP9AgJx1W530x52G
4MS/HAVYKJQz/+eTch3/vZu7lbO/VwUGNOL9o4Lqfr2JHyGDpsMzvDcwjP3n5/KHNuaRtKFkiRB1
TSHAo8BHJhOg+OoJ9bosxf0a8EtQeIs/FVORLykzzoO0VhgVQScOZL2OA5zn3L9S7piRhM+mSMsD
gc0DKO2BJlWEP4/kan1PN2rsEEvaK51l9++Bkwt05Yo310s+6DJBc1enzNqf8jB7SwCU3+1k/6QD
8MuTCWgG/5CzR99iiR12Smp+yIQrymz35PgTZ2tl9Uuv1qT6FRVpIDJPIxFGxrrlvSOBV1RtJSQw
RlSHN5wxIPR5wa9fDCXKMBUKEsY7uudzjYNq4tO2kCT2R8Xqce7T0v/NingULLi//4MrUaVjKL2Z
05aAMupi2d9OwQdJILdImxczivtPF/5G0aW7h2deadRu5tzoTXKDXuCyCHeEu13Om7YSIP0EiSbJ
d+Qt1qhOrLqeAEDKFxDPefi0tyGWJWpG2sRuuFJcJwNha7B5YQ/2ZcwPjpghhbVOWEcPCVZLS7m+
d/0mVhDvruhf+0aXuvpg8TKF7W2D3DxsUk9a/87PrytF5IQ1ySnImSBKkduHo0xuctevXHZmaqqc
Ja4b7IxDBhEJdqd2eGQZooM7nmoKgSgGQNDuX4i55EteuVVphjeVLd+ZuW3knlJqxk4mJlDuS8+L
vB3b9ZvIJA4Vb6KV5uEHP0sqqc5iDPe4vYifv+EmyuSrrP4cDNig0XIrLvteM1hg61z0nh/TRcPQ
tDb+wts9xKAKgWhI2Y55+NhBm1z//sTyVB6vXqT+OVsHdgTKkOZTVeRPumAtW5+71/nM/mS1mQTD
jYICzYLUUyUnfQUNuDpnfhmV/4zagM1SOv9c3jzY/bmTfnM1MWgQbZjp3zZldNBqe+fkT5xuiLSd
ovum9dnPluIgrvvshbFpE2UqgivNpWm0hhG/2th5zLV5h9QwStI97QcvepAkSQGVXUkfVAk2nxRl
rwDxaf8HDJDzNH1cyD1X4j4fvNOkP6i4Cr4h6dnVUAPOltQjUA6kaTVaTDtwF7Lyg52VzqufSs6N
my50M7V6qHsjUPLincpojXm6GKNII2qmPkqyLZCcrIOG6vNLgVDDUPPouVIH1BFyZZ9LTAmF/v0D
qlmZKdz2OVvUtAhr40JdoxWzEL/FSrrnSQWSFk6JnFgCNIoC6xmZFpWaTdT4C92LLWjdEp9I+7Zg
0OJjzL8lXjfciCt5KbTNlP5VXiBUHkvPpaGMZ6hngsQjIlcBvAU4iuM+7DvkpqXAgi6+GvQS/PR0
tf507JRkSksln88WlR9KtnYK++Ts1Di5Fjw6fihd6yotKt3+CpaeroGfkSk0JNUFNmuPrc19NSmZ
aGheZfYTTzwBJcVL/0OLAKYzls/gZBzsmcnjJk5MetaT4Td8JNpSjh6M8alrazSpcJqgWQOwTlUl
NWVXBUnrn4ty3mnnCYeoT/8fouaQqYKExQkunkPRAuwz1XrDQsGedtgKU0WyJfYcmbf1qEtAMfEL
5+ZCUbA3Jr+z2+8X6Bxw7CltGM4GYPmD3oZPESBzDtwXHValSPQyyD5/su93jb4Uw0V4gMCqeJ5w
eE++RyYh439EucEfDkMGRbirhkdj/m+G68oajV8A/ZY/7bWMKvxLCSo8zioeT1nVbu5Q/8YHOV2F
MmcYCAcsEQ/1/Othk8Jvrk9Ne5rDXbvsVJzYZxTKDunR5uMOzZ8DGH/ZBIHPHiWAgHAuj/YQx2wg
DKH6nUSSb9YB+Q01lXQmiwvBOaD66Ni6bR4L+f01I6QEFktyWFwsnwWpKdjzc0Q99t04ljzzAo6n
h85albrg8xNj7P4iHBwOu6sAv9vWje5wTW0u9NlC5nWEj2U8co1mXwgWMlJ9T1wbKBx3jkSCHIGa
sUoVm+/7a0BfPaBN84LxRHE7z3U6xyycWB4+Th1vy+MRnQuWD6uRRndK8t/CEYMhqpY7Lv70YkXZ
YKmage+GzrIiF51xTR45pygjB43zJ0qV037A4eWTB9wbnpP7bPskFq01rNjdQl9JzLWx9NfE2BG6
NdJXgeQMEdPKE9709vRVlj5xRu3y0oNPnZd3PXqUbr73HhcsnOUzrl2T9Nz6NVhVmE5tvcCGYMFW
rCmKoi1hc9+evR/EXVDwmWipiuX0VsoLfJLQLQJLeNu6qA7LPtV17/NnKS3TIuYjJ5UIErhHcWyu
0LWd/H2gDO99ES1df/9hTFmYL+lybJ4ekzja8VIL9OItuZ+qM6gw8Ec0WCEzh4XCMRDQi1GgX2j9
f05S31l9i34BraFFtlyR+7FD7KYffDkbiMrUAXOM4L2L+kVF/H85qPEukwJfxAdSJA4RyszHUhkn
livnSk0hw7ajB+ch3ULjCJ0n1/6DVjf7XR1Okivdji9nPJLCoabIzKx0LEWKNYHFg8LK4F9ZNJ6+
JWvP80S6Bmvs2BQ0DfPeQLCMq86I+CZxojES1aqsdjdlzKttfqGFPfuJfWtX4MuXU4S9AzXpiUQy
gxpM2ByTKUZAHcTL1K3mESJJdWrf3x8vExnW5swSXaB9taQ2l/8T6ShVUYe5MZKO+bDYorNVO+he
XT0DtH7p7uZZNyuvMO7LLLm7bqf2MmA0jRiQhliovY6nK+F/oHItZ02rzc9+oAAWXsGZugkY32Rc
J6DvEJ1ULYY0WSnxhuvp5N3h2hiFCghG+5PWkDOYFyH5JbMwBHXE7/bR2PMlnVV7IYtVAk8lMBeW
AsSXZSSCa23PsNTgd6oLY7DaBNigJ6cR7fjUEIW3K6wpeYN6pTAZfLo7qyFOItmZmBfY4Zp/ZLic
3666jpFY9GaWIJufgTDqvH5IJS/cqu+QsiOStUom5pjAQ4gOoxpdSqP4RE4arVk/bZTaSqyB1rYl
IsFjd+IprU09BmVrbbjya+h74WbCsIe5ok0baF3vOf9Drdcos55KUhzZU77tGms5zhIqo7mzrGxG
UvQVurH38Jpoq1fRxnnuuXnpxNf1dwrKXF+N+qTYeJxZIy6F3ij6iKJAV37Xvgu7QaMGjnnrgWoq
PvEKm/t0xvf7XDPGsa03TeGZ92Ys/LX7MseD/xUgiR8NGlO0UgOKLwcaCmW/X9Lt8KVim89y1Up8
rUGHl/PDMrsHTPPfFjJZVItN5OPGEvDe3lX+nqxBbA/tHzpdkduKjm9wd763fYS2h1tU9dNSe10S
dbaXc5O8Ejur1fzf51Ha/aBBV6+qOEtrYWW47oEJZWgWa+Wlim5TXH+MmwZ+GYeT7u0xAv9mtdWq
vo7w5e0Bk3Q+eT0Qvbf8bskfUgS/mUpEis8QLmsRZxyN9yYJCS4NXYakISda02mMVGNOiMb7gPes
f3ddAy10/UQcNg43I/w3lxvjD7K5NOPm9ea7bgdC5YSEw8IqyybYCEU4Vj3cESuODrhB1i0tHLXG
LKauDI93SzmsiHdYvpPvWkCZufkPYlqYiDANgeOxmGVuKXWRH8NjCwGq3vaZNQl/1gpEJvQYuj7o
n1aJVPJ6XjRtzFuysVmfH+tqDQ9GHnrrXNGRBLJ/cTRpz6vnPK+PuBObV8mxvJIi+IbZoOz+jUqT
vvaxMnowX4GfBqzCg4mf+NfRt77nFhbE1VBa/H0yeEigEoTRSBOfrM9S4ZADMxfvox+4oM87V/tB
sCfElKxBGTtuDHy1VuZDXFTOJ3Xsw8vYK+Jx+GE/5IGIfYKGLXXTX79XWsEx4YwnSEgFLhpApYyH
UzvTHocmtlMd9SeCAP5cZmLwzjrISxRlFaBkLWiPO2r++/BbkyLC9MP7pseb8FJq+R+by9TAYcGm
dj3H+1QfuoPOpS0hr7UXAKtQ6SVSQGfcei5HuMknbXlbeb74FQaUI7I2vWhwyY4Al5YG4eDTSGKd
v1k2c9TDYyGG7SwamMHLTnHjz9IRiRahLXqR2g0yAKMo2D8rzC3jK+y9HatsR61tKSC+qn//Ufil
MejWx3pJY2gMGgC2CdHnpuNXp6GE+0Yf67vJ/SsMbL110NRyd68izDsDHumPvsRzsxfDzN+CcHPx
kB3cwVQ1XrRDUKclIhmGZ+YUQ5OSptD2oHFYE8TEs6jdsFnTNjcxl9axi3umIs23LzNu2NkfWDud
rGRlrmD+awB5y7gztUaMwoLSGWAQMt/i0sohUVtfTRsPpJOzuRGQv+O1WmGhbBKWTY5+TRzPpPWU
6pGOxo4JXG42DGN+EHSPknmJbL7BmYjBKzlge/rB4kXgOotDv7p9ENuZ5Xd7LnAe28s7dKSMPzTV
IkOFCxHJfneB3kAf+vjp90k8jRR5YyESX8J0DurCQJlNx0zfAhnWZtsbchunxMuCMWYAwA9Sd1ky
AolJ53NlFPFZ4XbHO+2qpAk+5ToCP21zHFuoY0NwnTxi7m5pdYa+0RyWeYEf9oH6TW9zp5iOrheB
AcU1n+rIS5z7jyqWcTzIYAlEpHJ+shYia7qoeSIhn8O4t7IssN9Rf+0eDo7tVrmF4fbfwZNKxnlj
ILZJ6220l7p22C58C5WYiFPsBg5OyLOIZuaCLDsmPHw5kCGSuJg3nCg0xsg/UZcBX01ac9vxjFUf
DkdLP40qAjrZ/5EybHj+jLMuw9h4nslUtGesrH3qskg6Q2NxqyBn3/pAHXHRraV7ODfgqYvkvSK8
mT4tDc6UVdrLhR0uSjqRytUOn1RhOXmPaJPg9ELFt3n3MxketdIht3GSCq1glvvV+pQ6JOh9O7+d
g6rmBdo0bckYNt2J5aYPjwZ5YW3m2fjcFHCpaF89OHiDwv9pdcABlNf+Ixt5x55pxc4F2A3LBk6i
EPPeqbBtC2z+z3AyaTb9eBbEjz0CQBL5KQS8Xqf/QyHXED/c1Ewuiq8VXTdXYSAxibhDGXmKFnPb
dzMxlfGVLXrySM138GGjDWNNQ92Ly5TEQ1Wth0j8rH/Wwr2szWGx8OXJbZVjQO0fiHyagbMmkoDV
BLr2ZJxMD8wqGtIzdR3kQIq0arefCLeQif+/dWOIt3k/2vZNTKgGeZfDxehoSTWI4Blr03+J4swP
72MPPtGsHWS909j6h48sQyllchRuct4vSLlR05nHmnqKGzKyH9ejFGUbTvQATkX4jjAZeho3jWhd
oaPOzGLgk/QLzT3tbJc7RJgPFqjetQmcNXP2Lp46vWM9iJVvkMfILxBFr++aTLbbN8bxrbj0aqcd
Ky2SQ5SequYMMZgOipmt+OfVwWYz19sk8+jqFX6DawY3vZAoLgNT+2VDIwrIHic7izZ1hMh2eNJj
IaOFUrAYlZF5d2/cGaGyIpmJHbgP4HzyXbrGHUDoXfOJQKejdOszhicdRBzcGe6NBtRzZE0tepKu
fS2PNjzQVTU0MslJW+MX/87/FOgJZX+2M8S4GPGRC9cfhCob7ZljoYubkp6fAyydBqQMXv88ZdGl
NI6EpZmFISVGIDjx6fFIHUL/zia33pjoES8ONIAcokw6Ih6CeN4YN3fqIBP4E3OryeGPDYfENXs0
U8/w885jpsGhV4VPpT3H7UDmV4r8iPtpIl/8AeNSGN1Q091+uBBQ+Rr36Q3SjYKVU1ruspj6KeGf
V4sQ2Mo3WTOZo2ns+FMV/wxNxIOs72gjpQTFG3cjoGbsqYumM3Rm0h73Icv4GXG81XOUBMFywYaq
7WpUYgLwB+OOa8K6D/UwZ6jeFX3TpaSk9SO0Z2VT8gpTtvM8Xf3dIWSqeky/4bUZN3znL08UBCbe
5UcgXarnFVnu+77JM2T2KvGxOetdwaLqrNH7Wkr7gooeD5975T9Ga1wjkNSbwpM7W6HGQxFAgxlb
OPKEVzZiHvgl4K/eh+QF8KoVlaNrDMEY84zOlI5Er5q5NU/SrgpI/SCD+Fn74dQY1OZ3fF0gZ+Ks
jTcoTvSjHpOffps984MncX0noaN0SERPyls4vzsI3fluYNVlKHHvUsyr4uhAtjv7T+gzIg241EC8
25GZjA8R0CAd2iUP+IdYavP9yOqXwpIWK7qMnZbsIovAELU+2mVSpSUZX02Tk6tALJSS9mb01gVd
pUBzqwbyyHwGi8sT+Rfd4GJ5gqkUo8Mgd3kmrSTJvfFQ1RY3WO8o5sgMTUPMLNpNVfVGiQJ7VwXB
r4fMlK1fp/ZK/YO6mpiG1D9Tiqn9hBDyDkc7LeDCnqOV9WuNzgzNTrWQF5ITUiplLlLglRtsBD77
x5YzafmXI4k791lmRl/ZpnYgo3H+m0514/ah8n7dru1gcc1xuGEJMZlXePRuy/4jGNw1blUf1PY3
TN/jVDZG+Cq1Ktr70M6wAPoFgApquHnVHt4qneTM9rerTyZ6WN3VgEItSTF6brKhXzneChaJYqmz
RTV9jformZPVRAN2KEcNq1naMditHnJtbplgfNmlpW1IZQbURx1uQj5JHWWobXXpS2HwJUgBeNxC
0ywM+JTyZW4avww5t60Kl3w7QtdPMYZWOwxEwvztTE/wXoNce3Fw3va8h15DTRZyTP6j90pg01tB
q0A1afZI14U90QvosET/hBp/7zDW8QwqUhRuhnm5D8P5rWc4BkxBdUYwq5/1MBtwfutfKhQUb23n
/qa0rrECCglWWtGKNwCetQRjSGeLdiJ3ByyyveVZ57nJTGy9cffuSxLhwljtcIS3/mfvgNj3/NIw
NZ5t0XDCkLrQ51S5Ib+zP2wN344JoKWYgXru5rk8U1z2icZjJIALEGQkCDOreyG7Ia5diROe3S2d
kJTTgIsZoRGq+HCF6Od+7cYB0j+X1cNCVmv148S+Av6rxg8h3UagCu+tW6Wx6CTpF9QoEbyT+YLe
Sgen8+ZEyOyowVGXOTkIwpj7lPFFifm0sSI8B4nFWs5JYfeiN7ocSJv34hwwBq3R/ddSaNXLSX8p
4pPmuB5m3tTQXrJS7TA4YtpKDL55N5/2jceAJAI7/eimbb2HVwEjP2UpCNHiPWSRDdoyoDamA1Vv
pEVHbLtyQ+K5NRHS0iFG4WupRbPt4biKhP1WjTXCxq09xySMVuQysjJbHnNJuxuzPeapttMczvKb
Dli97/ChoU9ig3L+lWe4c3SfLssQTN9gZclFQsRZjzhvmX5eitoX2CR5A165LHlgq813CObhB8eS
80oIozzyv8fD03lxlpS/BOgFacUWSNJZVA80uhCym22s0EgfLeuzj4vhgSHZFWOlFG+jIWHBhnJC
6LSC6g3Zfe98UxKqG7ijB+kRspC8dFLfLJmceBQyICk+XtzQYdFySKtWrTD1USEMA70wXu0x1Yma
ztIJH/tyKZSiiH7Pv4zwVPMe7HrV3v40ixFoTm4yir/Wq3LpPVx05KgAbV5boRWu06Y7Z6O+pNTp
nWK+hl6CoVFdK7PYjYApCM0Vw49be6sahWuPo/K46UYP6QhZ86VRbRnk4C1S0fm1n7MW+DyKtMQc
esjN+19tQhHd4Y6jPP082Ad5wUI1MWbPmsRrxagzMOyYjfT/iha0KFAVNSwt1wO/p5fLrlRcRuc8
epo+VgZBkJikvhaQ3+WX5m6DXSQTPyYFGWqSfImoH8LI8O+zRnwpVn7mRWFypfimL+nbKu2HitlJ
+XeEBFG6nPUD7LyGoSqy40C3emPoi8VLVZaFZpFXMDZAh+FnYj8n1al0WYGvloeoqrzWUPUHFxCV
9O7+XcKiNHqFxo5AObkDgki1oaetQ/8iLdVvhvULKGjatiqfIcaTzZ8XBpvLOpv6JgD6cUbp8l7o
9FrXM4J8elfhkzjfKYqtbiRYR8KN64fFwT8NUrWBdsb3tIVJ9YYkaNarHTm5HFmtewk724nnoPoo
2XW/ob2bTLfQJZN0rPvrEqqtS3kSYWZDbulvTHHiBe5zoNjLAIpwoDOJ3FNREQzUUL9I56uYQZxR
CSP3V2zGnZ+x1eCbscJAiLw6KXozWecMXjFB5FzU8Gncpi0sxqK9ObC9mLyzyvyX1vDUjHkpzpWs
3+uiOkZMmIShc2wDMpDwcEWt+2a/C8mTHsiwOnzv0w77aGW3rAskX5KDakYCHpOG7HftwD7kaXLR
FW6HnZnzfw3fBachAlEWbc6PcCvsIZHTGyBGJRTIFuQ3rhWD8Vs17obL2fWJM+vtxS0yR3Ry7VOp
2hji51/ZvVOPJgyISfNEH1n4ntUXGmf5yGgq1o1HZeShVDqegoHaFQXv0Yvcncfv/gRfmaYe0zv6
jA7c0w7XWEPlTOrVOLGNG+tbqRmBZ8Eo51WYjKfOW67dsqtzlNDc+t2+6PVIBy+th4n3jrSGIDKt
dRcEW6I3lsyXcKgZtcMKu2sIEpkHZpuXvXOmf1X8hbVrLXfImU97zPDvYJsmIdi0HoYbjtFESVuZ
4xvzvmXYRBpCwZPxszgFnQ8jBzIMb1Zx0MPKV45CHdp/WiwVwzE11y+KiVLVs9qqLSlkaGM5frA5
CiCV5b2kAAVPA5IeQKwmYdOM5NXoEyq/dwUGGYZmSM/TCr9OmbEb3/5L2PnKIOd5j4hFqpT6fpta
NikOTe/swjyZfT2VWiST7A6ZWISLZL/0PTLZDbZ8fhVR6YKNluVwzmbddl5WI/GgewHjUvI0Oyx+
J86tImNnzes2gtko05vlty1HDDbAJGbkUkDzjHihr5foSPZegHbXUIjd6ermKBYPGhZAl9OUv/c7
DN1TTk6PCTGosCYG8DFRe3nQ1IsZ3zqTK22NCsm3+zuQov5lcLFQcQBBnh0CdkOSJuASfYJg4HPg
idpBqY8T8q6g4fI95BSBG7w5vpy7svaEDV5c8v0aTdeRrseG2LK2yH8zSKLqAhuFv1DPNpKAbKbs
MqIi4cH4Z1YtYFNb4EY+2IfhvVh0Ndp2g6DJVaxaCxNuOZkQC7s93Oq2+1XcY9gZFEmVUG574SFZ
TGiT6er3v/P+CBJUDgquWFzeW7m6c3Cnh8aVApTCRueQQpkL8xYy/V8EOJ9tCdaISVRMIQ5VlRFE
nwuf9IKuOcGpZ8HVzD44+kh9bXPYbtzyMPk2HMpQDCcMtkt1des2GrMkNrviIDymz+4ZzYtmBj6a
TjczButvskiz+qxBRAhy7tccugI6j/Bxw7efQtK0dKiUJnbmPPJ+rXX95e6uCyi3tzVlNRYgN7sf
mDMJc0Eo86iq4QRs4cwo/SPAZe+L/VsVXp2PBXMtU82PR8BL+pJ6GO3kNdnKJlud4rYvZqvVCwZs
4cqi1jylisaX+3pXdKmtlIJnxMYnPJ/6X/hWCQ1cZoqMTlSP6lzvZZiNVuMhC+gX7xJN8xXkuqp5
0r0VrkYPMVuRkdpufc43ykWAwgZ+TGSMIW+Oqn67/xCJMAfw2+4dGQGdwugicrjl9eNEKmOsrLE3
ydRHyi6YYDTPCZNz9Hx8Y5PKT+npzgkoLxLrut+Zcw7MVxDzx2Hr616ViSidJhH8rbwWMY6NOkCq
vnLsLkuq/o8hfWnoj6RThcTTxXGUxZ0uhPucsTcNLeKzSDDK2ZMI47QyYl/iBj/uwWXw7RPFfPVI
BfWRGM06M4EfxXuhTv07KxGed5pcC0Rp0j4vjtKxRaVxCZCt7OIh0qNkNhpDbfqFZ0eC/HyrIP23
SnOMPyLak6ChULXcia8x4fKeNzS+3xNz2YYx1ZeoNqEn6tRpWQcbtARrzO9z/3LHDAk60fi7Mwij
bcqTMv5l6hD6q84TBKW74Itt7qqX3SS+FCO3Br5QIsNhGYojviCNI0d/mn2HH7OO1T0HfCiUuLNk
FRTN2ltmrxN0RFOCL/5XECwQ8vBm3KU/WQO+zyhKUBONReosJysaYu3rJk4SN2vI+wJI9TYzmWhD
bbztf17McVD+pmdKMKO5rRfIEsDVYBGP6/g+Y1n1HA8lft2ZJA0X2LgCdt+7i+17dP8lwr9zNnpa
zayfE5PjWL/uLsPTGvCNfRXHwSWdn2X/+qJq1Nj76DtRHyKqetpFcrYBBvZ+Tv30NlmlbpZVOwmY
sR2cKjopnsG2QRKSM60+oH3r6GkaKmvfuWPPqytJ/4B0+o0d8RwVkRuZ13aYL5cuwMkF8M+j+6D8
4bGiOqXRD051zCCjiV/rvOKCpGqjct38CS8sjyKDC+Hhq0ZBue/r8Hcsqs8ue2CA5a/N2Hiy7icZ
f52Xxtrx9zq1ow6+T/6be4yF3cWhf7WMhcIt3m9uPN4tN69+Gm1B7PO78okB4u9Q003dGAWOM1aV
gZlkt0iqvcItBn6kGpEAptvPAzaNF2Ppj9IYn6Nb96yMlnHIJrJq/2WDozl+CcehoP67hW86DfDL
6p4etC7NA+r4FU2D25xxanmpxZKdjZ82qi7zvELLcOWuPURSznYs6VUYKeO9KhgzlVrC/OqCJsHy
p1r2FUd9K1qpQ9qhXHlcn+W4Ns9xpjPkdYMeovy6q6IGqXFJrwo7Ua7LId1DEXeSMfU3cM+k9HBL
A/XdlK3byvrNSf5bX0abkwCsKiArTZBfVL3RO7afcNG4nll/EN9KClAy4ypM5VXdSCp/jWWhtERJ
idgL83rBP9xC63xlOuKp835ZiCKXx4KPdDgHY/+9HLupq3b9tj5JY+qFcayVmmkBBAzVmaxK07vG
JTcla9eT79HxLkPTSrUTDms+8dEj1TSecVKoQmfiGYl6secqriTfpKREjFnLVThAck4URixE8lBT
KOIF/O4EQJ4UsxeZUoYojDHwfHNpu1COI1Fovkj/0F3psX+msv1WdaJWfj2t9nClOz8ZyQwoMCO5
sd7w6acWn5LmRWiByk4ay9amzyZumLzWsTxXwbi+Z5qxNyoVvRiAdE1fT7KoQ+K8rICRC91Uj4is
EoKj0ZZrp0utwzOSHqz1x7Q3mlPXiOQLVEn3gHjem0R23z0rDmIIjXgidX+C/UjumO+eXwDc+Bz5
olQKdTqqYh2pF2WrvkWKTeA4lCm2wNHWGRh/fBYVhB+slL/DJEtmydjXoDo+246y2pIKym893cf9
qQB2pMom+1sHMDTve6UFmTKkuzSBsYd5aELaK8EiQKabZCqCASD7W4/j+pOj2xz5+a276OHy3lMi
KLNfV91KMkXlTwPLk+bn6zlb62kCJ5rz3xPkKH2oInkkp8hsnjyhMKqhPxVu7PB41rb6bBLPIjTI
JRUQLe2FZIEDEFfrGQSkO43CJWbkLelUry7c/j9+yJmy/TFEy+xkgyF5f535gldBbxv1+BzfMN7c
2gCZyiKvSW9uMiWHcIWURuY4RgdMOUmeWW3hPjuM3gnQTz/FKrBh4dhH1QgVsS6qKQzz8SSuU2uq
uMrht2qed2x2D1/2Qx05FSWcLPNifjDhZuTDuE/qtypcZM7IYJYO2Tq0tps3oUdH3T0Xz7YY3Dt1
RPdrChkf380rWcY9QsFcK1gTr8C3KBvYyb779mYpbIzbfssEU/CdpSmRRXWcfmwMgxhRYaOM8v39
I08EkznAVuU7fzKWYLwBijzTE5QvysHvemjcpBXO7Q2IDBrh2ZngKqUqkHpGx4o4jzTXb8+THawe
VtmTmVKkQCNoP71mUHGgFXsV6sdpPpLF1c9edeRj2WNt4yjIaJCfTwVT0Ujq9/+oHwdvFhC7oFXc
J/6w8fmytT3FBFg7u5SKf4OC4UGhzLlH3Q4/qE5lPsJQPcxQIOg+ZEHwSJn0dg2T0IJ/CfGKfTUJ
iLTl+6+VUd0rX7OftJNKe1SZLv3nEmwhUPP5cIAw9hmDVXUGZhEHgk3Y+Guioy2zeIt/aGHpCu+a
E94rB4G1OhwqILvceB/MDHUHxh1QE66YsGWSDe6YGs09j+p0rpf1C5Vt7uWBSnxiFymBJWdptDNN
11qHzMMTNJJhp5vhPNSAvVZvsItEcXPbzU3pRtWR/KZoTLLQ3hppjYeyLwvbfMC9KmaWBr2Wl6If
k5LTKX73MIqFlF5yPFL6WdJigRfONJ4sNPNKG140G+cVnzMBer3UuNn/8nYemHcGCJ2FOrmbWpbI
RC3y98vi7N0nODkSkeccm0cOWA8nXf1wVE0bFScWtey7VTJl2AA+5rHIQIDCx2a7Ee15sXhdhEPA
2SHktw8FUJPnCehTG0b1VM/7Nca+viHDpvocwTt7ST+KyT8zjC5+nTkLJUhx8XxyYZXXMWnwJVl4
U6BoFMcqwKdn0npMgwc58vCF8SJxPl9cwoiU9wRvapC0BVpN7CbCFFnQ2GM0PepHlAhrpdcwy1++
PNfkh3Rlo8uwMOjUG/UfdUBBsJwFD/UZ6cSEMs5cPLKVIwlBoGNMdojM3ybpWmTcJd3vVeoq1/Uv
l48KOGOFLx/5jxiRKxVHA2BY8EK2nMk/l2Z00DX2CyI=
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
