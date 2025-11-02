// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 20:02:35 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road7_sim_netlist.v
// Design      : road7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road7,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2716 mW" *) 
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
  (* C_INIT_FILE = "road7.mem" *) 
  (* C_INIT_FILE_NAME = "road7.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18240)
`pragma protect data_block
HJ0Zx/f1WV3SIlLTiiyev+WX704AO1AqpPOMAYi0C2M7P6rRRoxJwm6BFuDAoTgLJgBQM8J0IaFR
6ErxX8+FuKSwBszNwpZwL0mStyV2C/H/2RWm+ThxI4QsT4NHH9FoIfR7xzYyIfnYeUBYAXGxtCD+
Y8XSacQ2XeZMTzNCoUr1OHHGx2TTIJJIhj6QebvJhx7NbCXcfO7N+Bxh7+h4egzlnjuP+3Jqmac8
NsRmUqe4ix/VjpH44u4Ndq6JqFKVX9RFNQDFW1VFH0lPlOxtnrE0q4uGM9UQ7Jm2paTfT+/uGT6N
y2tCAjJ3GGguX4rkEu5GC1YkktnTW9SzfV8vxYZWjDC1krKetoBg8MCUguxl6dtSop1WCygfBEc6
Ig2Fo829rE+NF7z0ewHkOMi/ysPkoizQ9xrXPYu51P6eAnyItnbo1Eshvmow96Zyg5K9NoMCb7gE
uBzawJ9f5rPeJ5h2f8XqG2l8QtK5Q3WAE3fUbkBbfIpwF8ECg2mmloT6ngT3cee6Tr3o7ZC8V8lr
0iPoTm1M47O4Dx20qwquZetT4z5Tp4RmajPur2rM6+2UzGiCl+/NC0yRfHo0hIm5LgbCZ0ZTG7La
QL3tBl+qhiwQS0gK5TUMpbAXmp3u1Ywf4XNt+0A7xZTwX/8NWXEYGZIDkho7JUGQI0lYzGjdXh6o
4wTcERnsiSj+4j+WSHDTaiKhbRbbCBcUyRuM/2dYPCweNLXpH7rsAn42RU8RkDmdsYn+uufXWk7U
AG9d5ClnxROKIhjpbIpNIG8Bfni6zc3AwynCpTO3gWHPJKjsZd2rfYrKcHEPzZFhwHYfxlbVtMuk
mBhNEp/7t/lOGiwMewGVkv8y4Af2Y/R8UHqxJdYPJP4HBm2GVA9uTbYuKYA1P4UNQ96cFj3wEOBB
lxrg9v8tQbms1njQOazYCNQaGsrPGyUfaaiuOaDPr3LyvBvABzi11JB1mLCH30en+dZD5LLhwk7O
ysQlibvtzLbI+X+xWBS7+SxKVqEWaQo84/7AYHN1izjNbk4YK4cA4jvZG76pJoso6iJayfYW7jHu
WJKYQTqE9XTVkTYTFqwUSNzuMfkL+G1keuKT4NMQTW8UFHsjGHiK8BNZMK6eDsxcc/qNswisWZpK
uALrQ/szYM2F9HvOQZGw8qiAS22UkmWjDyycrXHf+Pfyc0XYcNEJMntloV466azB2LDl9548Svom
W9M7ZxCIZyFnTiSdHCE0FeW+EC8QuU5pTjAvKh+1ls2xpyeEw/f3V95I/vQxLpHzOAX1P1VcIHx0
LwKOVWMZcM+eObQpkMgXTbrG41rmKtVyRaOYXbAxHLwPyYJWHuZnq3w6SWRF+G1YItyZv0Cd0XNb
BDZg/AaWlLir0j3+f2FQOC0xde1+oWuy/RIPoZBtmEoPm87uC5seQh0EbohuaXwsaK3wxR1KqDlr
HY0+WnLtFQUr83BPCzsOsjuq0c4MlEoWpryx/GEWJ1/6ZJ7RbIpZcyjKsc9DKEhZJIJeITUqLbFz
GqbTp+WKjgvNhCS1HtaahcxI6L9ygYDa+4/K02B4PFMRZhk+1TBIcsu92oOuDWK+xBXjgXaD1Maf
T6m5MfxkWBBVoF3VNH3SO5+BwWdBUy9hIfrQ9vswXnRlJ/5nXCH2TJnuDMTdw7fj8aNLb0dPlgw6
pOnBGmylL51z24dIwhqm9lRxWzc12AVFAZ650xBcy0FQSvYqnx8RxlJI1mJzZqENAb+dYqOUVAr2
QlsxtrBVhSHlwxQGNStAWDa98ki6uIg63Mkks2TBz/MOF7hjLOIrVofUIoTJ9KTUnCeQk77qTaEC
Qip96bnpEnq/FkRO2Rpo1VOfaHXzynIjLoXamBXyqAKp8/RxteCpLaxJPqspSWdWzYM9cN/nVCik
PLuRVECCBKAbjAy3XbcsA+bTc1wUaOKN4Th661lgwzPKugnA1/x8NoVJPft0XpyAxK1v+vGUuSsd
B7Z1eOntYgODQqiZYlsmh27LESnv1UEhNHTWMQLMjdXYq26NEQW7Cbf9vZoN18nnrYQw+qKf5BfM
6ZLMenwrzv+ZjExemxyZIKjBsF6LuhpZsUKPUHbUlEVKFb+H7z6Bzx86st8CKVPYB0Eu9dNeZkuk
g8LR2jXG3AQXuH4VlTmWdL93qlaB55zaNYVfzqVfXzfL0rUS9gfCK98fI6vM72Jo5R0QIIurmJIS
kNQTFJ8m75dZFLV12LqRbmruK7NwW+iSuYikxhGVzF4Xv1WzDKmNKOY/74Qlc5xsN6OFgliyTNfs
GRgS9Miui7xqpveblLQgMsOarrnMrinuT0DnuwCDDx/o8NUQcyrz/YwVvehQavXbxWpTMATYA9Tf
PmC79ACC3BQv1J/bQmn/Wu08CS7pwrPriGImPWtW1KBDRR/M6KJOg0n1bpRtKTaMdECm3X+G9bFr
mX+35Wsxee9uj6gr2B9ls5XoQBJ1PsW5vFy3TRSUh6x5TAGiixoPgyxJTRhyRUXEVHA6WhzLw29a
TIe5DEkMdB3C4l5+Ubsl+36+3+WP+wHaFIiq6k5GVKAeieGag0B/qlgtgz+EcZyKG6Ve5xYGcq0V
9NhRm+nEv08rumBYCb5sDL16UasjWwkqoMwNpWdi5fwNZNkqalOaKYNPjnPCjFog1vhZnoshioba
yl335aR5cTv39fypKIJZmVREjNuWTennH7itCDDON/oO/uaXkPPJscUlj+RS+lcsTtxxMof7cQJH
tjUulGFWRQpY9Id5RYi/pL/IdGaSFKyGHzFSez4e/NiTaxLMNo+XEZv4yfxBS66zAvLeQMwu+hqY
J26UvWRA+bp0JThEb2yZGfiXb5lGs5ytfNlKwNNrPEPxe/2gp/o1yMxm+abbM81YlFX0tmHJRVU7
AMdlO50hGAla8wDHhFiplXj5hwkv3JOhWrP72CyIS1MZUMtEPNGWtyTPPvlCPFcQbMTTH19DiZYD
/DJE5jyZp2IWG+UeyFsrX2RnZ8PjjaQKiguo5mAuTcYSCh8Mkkbs6HQyeP3l143c2CI92Cu0VIQ9
d0Gw1OUYAR8q9THeJ1rkWQcMQelOxBtnbVeiqxC3dgM8bNKKJP92mpijPC8db0qoYW/v8kO+wZlG
At46KCAsZUgrdgh11LgBU7OLwcueY1qARKvnCf+ibGLgEZFxMqez9lR615aMSVI/TGJnbSp2Kycw
MBPHBAYZKQfk0i7PfW1IWCw+EouqzJG6Lug1wX/1uDHjOoOyafdd7FjdN3tz+wXMfy3A+x+Vcs0H
sBQWD8s2sYOVw1tIRN8EPwyNyc3Mnhm5sPzEJnY6TskcsczHa0jcW41/shivaOt1JrZ01RK45sfE
X55cLN2Lq7mg3cYREbXmjYvQDDcGTfTDikK8KgZUyjUTvYVayJQhsvG7fMrqAxkOPrNXNpSIfWBL
OuuhhLam+qTSTPjXZZIsOXp2vpytn+kRw1pfusLvoDPIo/AMWtEyoUaiQE6DyxkyH/v54VB1/L48
e5W5hbQAAYTTq8kpQr3JmNGYiybt73QXIPqpUKNNbzJ6u6qkxYX4kkJ6sTSAbppY8HoLn0tbkwH5
feVDCcr+AlxLZk6mqGl5doxwvBTWvbD9jN/wDrod0wreJ5XvZuQMp9sM+odmBnbHe/FzR3G6yEV1
LeiIcQQQPEQqa6MqcQ6gwTz3mrdHxS8iy06zsY/WcM8bOkDUHuvDPueaPdwRWX+BAav+OIbByxOe
bE/qmtJrmmxmfh92xyGBEn28K8l9jxD7t1/vU/sM5OeYHRvCYKksonIKeWhvfuMT5SeixlKhlcB6
s805QIgbYJe595OCcltumAJEMqd70lclwg0fYlA9rn8E3TFj0yW5IGmhENxXoDgfv88lyyIXsTVz
E//ia5uXWuyOIx2qXFEIsT2CM+3grkMoBf6H3kiQCwGQaVdrPJ5pQO2IuGgMtB3aXp1mwE2la+Zp
KS4BlblOn4cqnKWhZGE++ranRfBlwACNrUqooQwrFZNwVB/hFigLe/bSPJOHlfA7JF1dohxqsRVj
E3dhDgYBSWNhNqgKITM2rOmGgcNlX7Hd0l4dGTcFWZ5y1GFShN6bmASof3qN79b2nl9+QS5cOLxD
+6FQAQVcHqqK0xBW5ObLDE7gNAlK0qS8M5wKOzrA8NMMC8eDfDa73qKY68WGe9UsHXr+qcZDiykz
K3R2xTvtjXZ/dQqebaH2ux4IS2k6T6ukLa8iiE4zIC+EI54koEaVl4mfDqAsFS31kDzQ9NQYgNQP
3NuWYGF3ZvtrcrP1dhECoY7JDCPimvGqY1QJbm4CUrZOcnN5+LuJq14M9pMrbZpnSQyU2mM/RCGL
5PlG9SCujSYGzglL2LDU4FXFgGVuNE6aXdSRLlCEobvv+4X3o8aonPmct9l4Md/qtIBwk4mWcZWa
5xdlLEJKslGCNpYmC9YTPo2cdS8afbtpzNYmTd3MvAlm5s146T0qUT9699i6F6bq6z0jSQ07Xqhw
DOsIEYY0EL6tW2IUdfRcrvEz2Gp9VdLILYeBDf9c4mgSghuQMhOW1v2Xnh/VOVKZiRS5YXdE5Kci
rjt3Vd7wJWqB5tdq9+Px1nbzPKU9UkczTl14z1tehMHVhRY8ckL9fGRLEFWiBiYl+iZ+AHhrBnPa
TlE0moPtNEb7LGORCYuSu1ieOwky7cKZHZhDOwHXVFQ/036MAvy/z/GJKpsg3dkenfX8ZpDlgUq7
odRcVDPiys7YhQ2bprjhiDRC0mdCUXWAJdWP99slSnGq5Up7q+mDMqJLSj/R3ESDRT7DcbQiykNT
YRSkmPURwy0EtVeEMqN8gX7suiuwVqkN9aMCT0FFUHhhkZ0OsxDcBvSw/r+6JXPF6Kxkjt9LA78+
4ULmfYmNI9wjxtU96Ju5dCRiY+JfqBnF9Eyx7JnfVwowDJHK5NdJDLHrzUDOQ4/7DlsbT+BKRxNw
uAGiaefhvlsVH8PNobKwjLIM2Zp/amI+bwWGED1oyhqFxA7w5wV+vbliAkStkxGiDJbGRUcwRcLU
TGsk28joeclVQaSHOalyMAJe/1sthYeWOl/GEqv506XYjyU2J5DqdCXAxhiohgp+9iraygHxuHY3
JgTiddR/V4cPQ681v5gTSmENyxq4fAvufANmViXp5nQ/VhVyr4Vy3Nu3Wwlj4REEXjLp6Mvhxb5W
Ei4AesJH71AHnx3U2+s7MV4tmAu/IiKzpByODKSXJFMfoTMxR3V90PfoD5PkKPyOSilpYR5fLh5L
DfHrSlhsDJJrkHamUnX4+ShEaa7XAerr7e+QasHtih/Thvc5fheZ3VfqSpYsPqjej+mmV8sDvt4t
ImRvjwJssbszjYOjGSPzPa4K34iTvKCO645wXoW7GFEuvFKKKtBBGaOHyZOYK1qkeDyvuWRkH8CP
d8t6+09T059umsOVQiMzV8LmqnLvzRSt5oGzSVprO+1dBZWuFQ2yc9S7nm61qWC6hZUh4pOAzqPT
mhndQ6SzKdUhrs3XdIy4uTPqY5OuE2r6NXV9ydK8iybgyvgzHtTs3CvvXG9ZDrzSKudY68jb7Uyd
SUFfrXb4JmRdn++Gfou8L6Kpyju8Gc9CasfVxNnrIpM+71d6f/PIB33yUmnSFNSzqqgt9gbQfxF5
d3NF65lbyZk+iMatqtfWOJqChXi2wth6k9SjOd7ZD+Q7+6jqmOxxnLeyAkVLZm37sKc7fO5EIuyM
kXG6RYZskyJ5TS1zQpGJjGBVNLx8Q9FpNrxPOFXbp2PIcW8JN4D7vQwcCtRsN9WobtwracdoDplf
25zfDe2q+nNLjVs5Ol7jOr9miF+35xRJIAdbZJ5YVcCX4PNuq9+CLKX7bZW4SKUjU7ywOnKGx/xd
wJQwLSmTBmX/rP8/bjZEE8F3gbDoU+8XDvzk4b34bHWiPUBdVp8h0SAunHOzcIn6G/vIyocEagJI
L82QOL3YBIAeJhLXD1htNhgVF376q12pJlqOiz9F4LAYscOmIzq27Yx+MpYCXrXyvDkkd26gd1VI
FjNzV8awzl94+hoOm00QkYNah4uSziJpn+LVVEs/WC8ej58//Cf/HIeadKWrvyjulR/JtoU346Uq
81+NLpFS45hTWAoNqmjRJWC2/JaPd3oq4hD/GEnkhBn3rYxLgd6/g8aeUXdYs7q2XqgepGbnrlvX
3rjCaTcLDj0milnHZa50MWf+kGEk5pChllpf4d/9Vq0t/ALOox8/2EE5bvy4I3mwi5rU0A0hTXT0
pEpaK3EPXiWEfG4CzjG7uOWKvWHIoWlknKeTH1JDon6J1R84mN1W1fHFGHem2pjt5Y/a2j+3I++6
KSbp6jyk5cykDajgmypMKZ2VNJZyylNvHL0CzEhr9FDo26z0OKBHEhhFcyrlzIIRHufQKNSkdiF0
dS5+cb9UjxXKICyzB0Or5ZmAXJgn6cNGmi22zex5OHxGxCLo8sbILpSpWwYIX1uDdLnNlQlTpHns
KrVhnqHCpUe6h+osPlEPl3qsBmEZQxF5VoVhTFekLKDfq9F1Y2KFKDxmXcUvFPncEssDMdGuJxRT
hFFHUDNt9ypMwYb/mm/fWmFr9RyVLtJ04wWWMxi9e76GOhhvs4S2shIA1HaaEoWA12LCQL1mBiUJ
mtVl3/rzrj58Xsr4HTVw/EsUklSN8iNaqdd1WSNERRYSz4a8synWvVf6vRmoJlM57VSZ0KgWfNZK
HKtkwzDYfE/M6ud35ZpyB9xsUNFOXpdhJPrup+FuKACSQxPvq9ZUaWN6pQBRM71aLVAnlVaem1mB
p8uoCvgvvf19TpkEawpayiVWZHNg9MAl8hGSTt2R3HBCA/2fR3/PJ72e0ItcOZywqOPPFkAJcY+l
F3BXOAuhN4bbqVUMylaFhmPPtgZ4RHzyk+jzcGC+LJj7uxvdtE1d6p1FGISMaMhbgF3eTJeM49lg
zEpnIEmr587vwup1QX+iWSM9BveqPL6E0nwQAbQZrYJBjJ/je4A6rE8ch4PKCSVD3QglY4DjkG0B
x5Ygw9BrcVbrCN052dqljVQggFyDhmjGOZMDlgfoK7jUQ93ZvLHYOxcBnVE2/r/dfstzNY8aNw0t
ZI7aPYTjMcterYobLWiHZpQU5gowEk05oDZDUr4NlnkTPhmR7SBIA3JaTciBsCQ7NqdfnxuIyMoh
mBP2VFEeIH7Clw3kIYKLFHTEKeLFwSS8qzAMDb3O4cJuURFf8tRN/+gO6hOJamv+Jl+GBjCEcpWA
79kgEoIn58cvkOZ4zjgn9+4VrJHJcBkDoxkxXWLzPxyjD5FiXv6B3+6GnyNB2bGEairtomHzPTJm
dnF+yUAmnSXA4ZJyfCE3ppje2x2iJG1U0CLBSlv7N4dZXRySlrPXZfZMjUXDDbkwLlJEduqtFWkd
H01m8urnbctRbtwmQaNH4FMULcSxNyCt8J6oKL8tM21DvRmhmNjwg3Q3M9X9QkbZDOPThJSe+bfv
MlrcnExJe/Pm51vJsBghNGsDGmNE9juZ139kd7CwX474YLrpRoTpp0WVWwtZ2QHroUl2X7Zve/6S
Xof9m8G0iuyi7z7ajnn+H2nPxjOmh/TlGrTng5IV94w+DfzeenKLIiLpgA6oi4nm/0UYhvWCzLCV
xhk0FSrn4S2aT/P9k/kJsYpe079O5oOBHQoAqfb/9buBHz2gMmlKMlrT+PbdeGGa8Boe427VzQBV
zt3RGjGBrNCnsGO4fnlnxfBbjBwrXuBLGa1jhTeOOLGehn7Czc0nMg+PKc9cJbZW0Dz46E8F6rEA
hoUuI1/dKpOKUSJucjZ1PEdCoDQPw9W9kOCwzQNJdwBdWAF5jzsMMvdLm8SU8k6h3K9wyfOOYsXR
wEj0bgl58Oqf07waAPzW/jq7wq3tefYl+gdm4S0gOIxsgyuSJgQwQTlkE5TRPMklYMlhG7T+b4oR
JzQlNhSTbZFWK0wDsWbIQfhs4+SveuoeiFJhK0VFR4RNlEWcG6POZWRQIgr9aiINsLurc9Sh757C
VnYHaV7n5HQtN1lQiciDPlSkfZh7sv0RZvTX3WSbvvCg9zjPRVNCznuZ15dxnqUoJGq+0z5Fl5dF
ZknsYlSiTwT19jUFXGSADgt9zHVl79Dcb7t9Y/zhqOJnYVeK2Pv2A8HPY+lGA4zXvq8OgxO1jPEp
iI/5s46EMoPEGBrAdWP0Jtky10jyt5AW7xu62ha2QW+BDLK6uDlxCEMCxSg++X58Cl175+0+q3Bo
SB0C5SbsxIqklNJHfAvlPV3SrreSEEGcdFlh102X0v1aiYKtnIskPyMHIa5kOugINnHcPWpkzVnO
44FOa5SGqMvpc/k/2OMDMTDekxtgLPfOY92zKfxKR2inP9prZAZ2LTmWvVe9bKDRdrhOgOiEYwtr
cyQdcfVmvsuypGTFupVB2l/d4O1spwKP9c9EjKg0QnAGpFU4juoKgVadz3eYCCDLszq6bO1p92W+
mbwUROUm5AXTNJ/8ifXQBQpdFp7aMfXZqVji8K9arfRQvfgrlh/6itdPJPLm7CLti/xyfcdiRk8A
ay5S4/sPeuPXGZUHDNJ1er+a1Zg0y1pSVO9qhTdMX+Wb1Kbvcmj51XYQGzJBaZyxM2AMOUXNE61R
6Fe+ZKLOhL8r0Uj46B2Mr94XRlMFIxggHIoJwsOpm8oMbH0CaAdkKCAm7t3R0WwdI61KGgMpgy7i
a3WXstUN/Bt4wcSYI4Sap+qCzy+yfR9f892bJQNngUzD2FgfJx2+DgULFriC9lEMqGUNlM3r6Nkk
HoVXex6C+D2Fys5JWbmJuMsOpZoQgXPjM3zS8sUZoMs9fDM+tLVeyqpD10eQdL+VaiYSKwTVfDtR
gYRNDRDAjNQkWqFJTdNLsYyTp3+iM9RpgSM115MaKi7i7l1J7TFvHEReaQ5Lc+5/T0Yc45bGdh1M
HnmqCKRDB+Lep7LdtphCpSIr2p/9AWAD2nUMeBLHI9iz/qS7rpbvxA3btL20+mCn4ZDzIuzVxHbE
opdWy/Gjw1wQ9lA5KSfeHm4FlCUezVzUuqTIyaD/0zyzS4v8KNRHTmcKH3HfdTcfbWShiBtDzoA7
4TDz6kZOm8wyDB36wd3x+u2X12oS90pC9BZPdGCsxnjn4bk99sOxZ8YWZeOZBSuMfxGLA/Pc58lg
wg79Et2VjponOLyNp10315Cy9q5Hr/5emSPLtVIi5GN9JuCuKizfw/f0GtAxIZKSYGgQo0ac9X3e
ldRH/3+x3mhRE+NpsF+9vv3+2aJZZ/nvxfjfOYzHyLii2XR1bnSHsLw4vmd+jfeK3+h3XEn2TQeD
Z3wVaXFVw7m5uWix/xQWA6njn/xnw44Prr0b6AnFhfaOTU0FbE6UnnxclcXLQY9j/+HSI+mLlvUv
HV72j1KZRDmHJiwSxYCV0GyS6hIMX8SyMbVLTMolnc/9jWrOcaB6VRYzulsWWA1mAXADK+iurQNK
Y+O1dYUP5FO/1PhUJC7dt7EXvIM2rLTKSrcUbr4keOacmI/6TE3nJ3OAMIhEksg2b1JAzWM7ii7A
vNDevywSAoXrFGeJXgf6El2wryVkG3mI4n90N3mC16nhrvloiOAhKQfjSWEo83hV8dqvfM111/HC
DwJgXtndfbV4WhCzA/onq5uj5/i6JZ2L2MriHTYPA40XlfWO7Nv1ML3unxM9lsfflXuGr1KIdFTW
WFhO+ZT97FuCAzQXc41CfF65P4CW+UK+vV2S33u4yFCnoh2X56043NBkNbaJWUnDx0eS+1JT5A/c
O+t4wmvfRW4dZsCoRRdqJ/OAwBRqoRJZeh6HCef/qaEOqRmN0Lih1w92fpUQmUqChhvf9CNsxCz0
5KmLM9u7equck4y5LK4b/LPimdCmIXNk2wvmZ9/d0i3AUbE0rhkzbG7lHJERA0x6mZqQNsXp7cdv
8+j0TbXzm5CSFeB/Kjh6g/dp4NeNTH2nCNh9pbmljXbI+ZMINdR7ORtqOOepcZDPHTnFqgXymamX
WcJLzrxOjq7gKumAPtpaM1i8wo/9/0t1/p5Awez3It3+M3P9GxmCkHDunHposTqmkObB29pbP83N
CVdfynhVv6RBB5KLkUSuaLDT8gxkRvelUOhjy0V6uiCiY9/FZDtDGuc+HrVrqQyS3ozVQLFwXqp2
3VWCniao9sr8IY2bW8TJhTHxj1mw9YmUEIspcBpHn+3IUsHFOphN9xe00qK7uwpeyhvfSRGPF4mH
5EUbjPnWWXAEhsYA3GNyhLrCyxqCeaJy3+18dxAlRyEhlrMn5PtCsKbSQoNZHQbYdtFxyUibirfr
mUydGbkWUAhcFlysRAN+nOe2nvb2GrrHEBAiE2cLZ7as+rdRU3ZtBZofnZtO5Rx1NnntMsRsvNnc
K7bbn9xm1I63VFCgQXPa7uci7NmYRG6pbMiznJNIDua9InOpe/BrxUzsDV3ulWFKI+3x6nBseaVJ
WXTet79Fv9pJgjb4azqgbvP/w3ZVGy+EYNXLd2ta+yWSzixsAneo/ClbGEDG3ypd+pFBWLtNZShB
DvHFc5IpdJh9tjrNd/6tG8q7Rw6+UE2np6gsqVTVIai38EbtVOl2xCYhupopVe7r8MwmJQJ0lYYr
+WE3/4rctri9JZQH4fPXAPq423ZUd5qDe3Kget3xSLSYprCgBJYMUntytnU3JvtMVTBQ2if6EHOL
31cEvFVsXS5+WilDRh4oHH3x6V7P0huVnnhGdwRjfsVCD7ar8cokn4qiefN0vahu6km8JHYUhE2m
GrebUlHZLvnJBpODJ9cYFRYGdr2UJq/NlUt7ONI07P0wS4amFiMAx0Mi19IlZH1LUlzQBBXEADa3
CFKI3rQz092qjC2KCmHVC7L4P+7pzgfzoA3N0Qo7PHUglETayS7YpZCQ4tuFtFo5a6qh3WIjz81y
/kYBSrBcn1lx/8St4fA9S4z4RADJjhc7hgmetKDIlcaiGJta044d1di8BUGsirzq3QEP+J8vi4FG
qMMm+DnHHJDs5lmeNXPM9GG8HzuQBAuP5x+eAzuLGAxXnUrTWi9g5dpEGWym4tuoFdSkXayA7dG4
l9rKSGls4THVpTZSEJ5elkcTjY66FTalLRuPEQYj9q34zb5izycWwuGqRN+TpRpO8lU6VGLlzNZz
P+sLpFPFikfj42TZQOvyAvFqrJYN/+GvEYn7qwUW4nP+5rh5yKTviUbnxNB1geL+gpTyPLByXrBH
hLKMX7Rr//4ksY24KoYLWho0pMdyWXraqO1pnsP8BNnIUQrExRw8QLx5MAUVJyug0dDDRkhkhsR6
HthgeRodehs6C9fqFSbddfi9H87MaXtP1frFbL8kGseCsHZjseO6JDUILq7jxVw0gCq8qI4PWe6s
mc9Lx6Vsuquwof2Ky09ZMg4xaz7ST9dLzK3xzvirPSLT8hZ+WphDNNYizwp3x2eplxOZ8N3mTh5q
BONCXXHoZbr7a+xYhMuVyHPcAfs9tjsQMqdm8SqrHIrw/vr+KmugOa8mJ8pY99gmkPBSjc4GKySh
2kof48iX2oAgbS4+ZcuEfSAGxrSEudZv42ExR69OZTxSh9SaVfOVCoRKBry19w4h+ot1K+IwgCWd
c5oBIDoCdDSEiXThR9iz71HmUlaqA/emnPpfCNf7jjfFjpEQKyT5lnURVo+l84VHBw8L9rctED+g
yw8NEjhhBdJbdGjNHM9h1IFqvqeb2Y+oIroaCVs/CJG+tjkvqC/dzYVBAW9VBOCniamE5RE9NYNv
emjbLlkK7VMCXT2WCnP5jHVTwAZPqI/U39+Y/S/VaBc0aQ4QxKQvzFPmJy+evw5bS8hLrkLOytr+
luCkhavS/W66ID/9CD/bSOM/jZ3WfjoxldRkJ2XH8L8Z296cED5gkLZLcr0iScKh9vuvHuC03Iqt
mbxYRjskB9WDXj47HTIY1V9p1IJ6G35dueWLtq1mpR2iznQSfE8DfcHu8dF6d5pZ+6IgOyYwa5kZ
mOuSSbDMktiacKxjy4QdF64RLrOYBMgNOPsrrkrBZmN3XSWja5LzRDvAnWZsFXyuZv/Nu3YLCLtZ
2CzqIidPqCpQGKlgbY0m9DLahNn5+PR62l4y68vw+V8JM84dDFzw9exIhOPD+/px7lv4RydJtCvT
ThKXjFU7oYK3UF+Zd+gYkr/wxtiunDMMgV6Z5b6425WtXcet+lKUrun25DJVXx0WvOvhi94QfEJk
h++556ZEuK5HzI4sUoYX0/8xvelL/lIgjoHAqmFQFCYVop4BfR/QT4RDhCQ6enMi2kY/C5r/IZNz
QFBZwCai5zqsQ6Cbyu3nGZgHuqR4mtzMtfAy0yd33n3auE2Pe2PKB+LCXN7IhnEzw9h2Gj2gR/H4
P6u8Npy9xNZx2TEZ2upW95lKsnLNHzqRpFavDDoB/LPZmX/4C6gnAkE2+x92whYFUzC8j+30ei7d
6v9lkIumaNW6o//Yr1JMZPhTbVkPLRAbxAi923c7i5SdJdtOgyAF4ODp1iqWxsEThY5VXdvhQaAo
FxNE4YV75wDyas8mCUz2jkyLkGeYUGgzYQeR6qItkW3CJqP6OoNWcZz/ivxMgGp5GUZa9Z3v9LWW
r5Dw1z0qPhWBu7ErWgHk3n6AvQwCtUmVrm3DzMPXeNa4RpauT9oFtpPIpWjyuPFc1PUPQdkdE5vJ
jHpABehK6pvXDoX6H/kgV4cLCVJeuExs9FOKvGrxE0pwD94xe5poBD9a5m+8kVHBa1UEe5xkQdWg
ac1nLcZ3d9KzddOnzf2C3FJY26ewmZ/G+f9ORVK1+2Nw47BnlD9HzeLArTEBvUmNZ8fnWxwUU5tp
gDYbtLUeAKcCZJmP13wN1BYa7ijNksiRhbhMk+EZ0yaFJt3JZmOhcePGp7MUuKtFiYvqb7KPGFgb
T5BYM0c8iuCf5Z8B0lxuLkL6aqwHnBE52t8L+3mtJANeGqkhx97wg2Or9u/YNDjE8JUNUjEDT6Ll
KhhMGQLzeDZ+AC4MUwoEcKbbA8kuI6F+RO1vfEqGbpypgxsfyWag1rPiu+iz3xanHHzv69iDhTvf
FVqAhbCJdVjW3JsX7aM09wncVdiS4ynSwcdtyMLued03u+p491Gmojh1REkP96jzbqB+fkXjfYXd
onojUQFyIx0uxnaqL320XtAZxonDF3suh6hd2Z08PlcLb3IKC6e08qCDy4xP2sDusSRrli1zCjwK
vN6JrFbecm8jtBPzZtJqRjHuRqNpUQ1TDdcNiY/IHAtUioigzEGnZSW3eKw0oob9xWtsu/1tDGCv
1eCG0UZqzm65bV+NAgxxNw1jLXmFx1xXQn6cVFctQ7kzWoF/P0PLaSyDFNwuXnXgLX/oieo0kTNK
C4wQj2oHKUQsCoKoymG8+O1u1UmufEXBA6fZChCng+FIg3OhfQYkfMC6SyvEoYL8cq4q1SZGzwmU
3a9uhqJ2H1664/7M3wSMz9MPKso5unYEPGFNm0urxxRtlz+yEOpp9ByGIRA+P8o5UREO1ZNP6Cbu
O3XMGG2VE1F259ulkKeS/TezW8rVMa6neaCYspRlmwrG2zMhM+Gj67LGelioBJWsQPYTGr0+FlPV
tOaJR+hR1YLawBhEVbSfdO5E7IowyX1me/uYItNa/m+H9vpZLo7rrOSKczDfwdCGcXbVZFMnmQjm
4gj9/l9e7bCBLVHUdSM8seMYs0MQaP3ocYohm7wwPb7ElBV1bmOa77UoT2aXyMRHo26ZWauNPtgD
7/KBBKT9IyrxC//A2ASkQmTwJ4T5u2bTudQ1myagNUj9ow9UK3d7vJz5BhcquEsqjgjrCbXY41hN
itiDXLHCXv7I52tkDmmDqLIKnlPfgPU5usWd/ETNz0YU33aoF5Ogh0c4pavAQFgtvHCCfn9QBq5/
lOdpnqvhEWoFwwgvX58CiNEFl4N2ihBvK8qdwQ0lBzuxhnwv59e82TRthbwR6bUc2P83mWG4tAJg
Co2T1jXv70eMziywYW5eTnDf47t/NKEZIiiPTZ7LTroWclNDAWkGWGsmKmTRgz0Th1fqxBWT8Gph
raitpfXk/iviM0Gk5PJgF/PKor37sOdeawFT2yBMYPdCExBp6ApxphLCRDbpL6jVJvNmNR5CYcHA
7cVg/LeVlHygux02PgywMbuAnvjokRtiHOpeetrmRGIe6JNb1Imb1GyFoEZ5ffNviv2xWEi4MEry
JT51zFPyZFCC8LUffZxUk1NwCMVRRy5nWB8u6wsmbN/t/vriaheMggnG6u3LUBrdfakbnM4nHc5t
OkVe7u8xOzdDz/HWjDPOOPKI9VmlJ9uao4DE/HbFa8GxEh2AZzwYpzkRy2lIsjw49zmn/FoJbDra
1/y6Ayt5H89FL+8u70KDB8qpkHXCnFzWnp97USbIfITBnK17euWrNBoHhAa7JmE5pRBi70y5K4hK
p3P1Ol17OssIlis9UllZlHwLgidY/u4pnA7Wtf94WYYrGScIxOI/hQwxFbbD5WR3T2Z+KxozJLDP
omv3QM+G42s0cOiA+ZPj5OxTlJXI/lJYfxualkvj8+QQcWQZkYx2KFDy17YaGdJ9lbktVFeAQYFU
Bh/HYgQM+kL8vUSGoQeW90UHUboQ/EqCgsviSYzJSFiVxM2SBeWg0U1pl1jrJzEXpK3P3FwgkSCz
+e6f2nhoAu21k43+GfeJCWS9NE9j9B/RaA8ifzbTUo1U2sbN9N+V4ygUDNq7ZEUKLOVze/zBlgMX
eEPLnxawOkE2sFWUNQicLUSJ7nvnLEeaQgfjQRJgJ+AXnP9fcRSj/pt7M5tFhbGMjZTJg231CgRY
zH4SNc7rXf5Lc+NOc6mMRDa4SloHByCnXUJJNLx2BWAl2vq50sNirUWc4CvoO8fMllafIVi1+O6o
Qqz6Z5wREJP/igCRnPSYsBYkcL6Tf2au8UOdYmkjEzKvKKeaHdyjYW6LET8QO0bpNRMsTr6YKLcM
5CKCF3c/lVsgroaP5JRg0WN57YutTz9YbjptB83Hi6H361rtkhJsy7MOhPl8ktILk9gpM9zcfuXR
Eq8VvpvORWPsbMUtBJPA4VZqv/hgArC8na05pxJz7qP8EDzzvP4tvhIwPnRPYeQYLXUi1EjUeae4
kk9UT5tdyMKDSUWwVGK+Utovj8uwgJuFuAS2daNxwxZ6s9Zx0ovWdy6dzMNfFQAGIu4+7V7yYiEH
7SnyqeCD/7hjnO2aNeNypKwZov5olC84UzyQ9UANInbYZsLB2bj34DrxD04WoWRoEWPwxTisndAp
sQS4YGNXdKGAyoNkaSPxMHS5a/ISva/VSG4LaBsyiRN2bp2jmtSUf1qjuMU3Vz/cROWFzDa5uAiE
/lTCMHkRxUu1cyt+vGoV/Aa/PUbaRHhnpVqYSkVit3j10M07GtB1hjkyZblc5WCNvKPBWyTzIU7L
CvS0TusQnK6eEBGGJS37VQpLIdgQnyiR+OVGJ20DcimTbnJkAb79BocY9TW0yYYSKbYKXAKMw0Vz
PzV808l4pUvc9luo0WgUrIRpcYwKtWreRTH4wQM0jRtOf0eiVGF913mmWr0ilbAldTxWT6vVv/TT
YbDywOvCoTHVBjbS2FjtSeFhu580b0NmG+OJLfnfbsoxORcm3NW4wOC6zeKEvxjgnmgsm3VRKpSH
G635j2sN4mRfXPyFg+QOHAeuzszgPGUFrM8rWFxclxo8l4t9h91AJSpeLwNjgBQ/mjLlYqTzJj53
y9+jLxBFIP6bnnr3IqELThG5qdgLmPEG72vqrAo7VlQqXz4ZKb4pcmh2ZUWHNCYPraz/+XCNRYWx
xV/yJAr+qJfh0vVIkt7oA1tmM8f8ZG0O0fVMDpn0NDJbjzvsm4XzREwqaAc0cYCyECqfFedsEEmN
XlJX19o+NmaKDKS1icNXyDZh7Vflo38Czog3BhYrKgA3h77TaucjD8zC2D858aIQbJaqEOFrLRWK
GuyzFXKqRXYEzf/h9GKdsFPmSpyFNA+8Xuj0Wg+8rFwAmnxCGXENeVV6VNMZhWlDlo8x2/ce4kUi
GZJGi9biMshnsCeTp5dd0fP9F8e8YENPbm3s9HlYVWuunrX/+XMjNKhjj5DbEI3wfD+Z9OoSfjmZ
QZa3zncHZ5qLNOpMW63XG061urX6i6AhKHqx3zZrUexTIZZkOWmzyCVdf3TrE9KFHP4kmm5zD0KO
vUbJmsX2hImlYH3t6lfK12QFawKs/h9EuVUeKkuUXerF0unSyZSMLcFerRqj5h2ybH9IqMbKoCgA
dHuOhskKRDtWR1oTPYZMh0fRdWR/S+nQYNwYADoGwzp1ceGygto2399nfDysmJgMmami6V6pTIoP
dxUNYjEgLtz7exYNNkGy/7/FFfHwvdpMXsxoSFCj9nK4CoXWVNFe0LdTCGGHb2UrETa8belF8kV0
RPiOMO7OnIHbLKXZJ0tFDR3NSc88+dZlEoKhA7cSniDcxZcbGRltEpBtUbZrutEY3Ty+MRdMoWVv
wnoLcSi2+0J/CX5HesJBYFyohIQaaEY+mdp2u7G4T+OpUbhPJZhyU8XVcMKC6TWhbp8xIsNLyQM/
eZcT4JFCEVuySYaChZ1ofBTX8zMBeINBh3LQ0su7C1+q69ghB764kurwicn3qMrOo26JKpePlmgL
TdI1wLB8sI1OkAVLv75483cXwLFKhkz4uvsCBkLoxCC0F4mB4ntxoD8ncuOVQZNqVz7h/w/rML2X
nqJVejEyy3Dua30cUcQsct+BzyoDNJYXmqH6ADY+8pm/fJuxMri/sqlL+aSPW0qFSvZPi3gkurd6
tufJDh6JXbhKsPL61gqfx0NcJGPx9Q3Fj3UV+i5BwquaxF3DCid5/DS8ToLzDFZKZTBPR/M3LRDS
KFk9cBF5SKqFR6sBvhlt9eA3fgK8j5dCUXMSh7p0pvMQM2Od43LXA881G1wNPHgew41bqrSmXM58
9mEwfV2LjxKfRHUtfBDlTzfocUhNvj+Tgjs+3j12gZefPq410992TIyAOQFpbhvwImmDd1SHXb7i
kV1v3XGQJCgQ8PFjHEO85puesg69In+W5WnPwbXkhvei5Aqztz+DVcJOU7hpHkfuKgDWK9CzvtHG
bO63cONhxtDaPgZzhmf7T01MnBUUgQLaN/rapnK+O7h6Fa9E5xJU+9Bu7y3dN+oe1eqLmYU75LCX
wEJA2khuhVGZYFCiLU/W00LC5xb7MzHlMkHHUvUHOzkTVflHrzqmEmYV/yPuZvQ/UrTrhDv4LP4f
rjycQDOAVBpSkVhnbEINFxNn1HScL38q8Jj0Gjtt+U+L26jzaLbsjV0ymX6chz4A41DYWkVm18Nx
k5S5GDLWcUNbqnCior4PvB+JaQ0prwzk5t63sFYufRUbz3AiCXmEZjtWSuuRjVK/zKYdM9w4r+O3
X5f4rwAA2Y//R5UH5mtn7/67bEvHpM9BkcphD/b2/hiOy/+3lBm9XCvHWEr2Y/Qwn8WfFna5LzdS
yibBGJBrjncczNB4TjPuIhCvF9Pn53VmnNkRb60fT6pnWLPgmkoQtuL046WXwJ4gz9qwmEkcaOx4
aykLwaTfDYpfNdR71u7dyRdaVtJRp36mNIh0j3jGdakhBXvbug7j+xnjR7zxSFKQTr5CfPgH/nhd
xjbA4LKTySyhP5HmFd2uC4w1GSnvAnTDfyGAU9JX2b+VYfF+CZOFa8w5+slAho2QZHBMVpgJOPCN
ReQKcHnSNvRN4CeCWTWSglXHZ+Fpm3/g6sas+XCy8wWs7E0EeOqnUaEYS02FEK8Si8lATHOKcy+u
msBJU6m3r2ydkSXcIjBnQTfmeh5Wv+8cIs8mg/xQhtmD1kYXcbJUDyGZmWfzdMnXZqzs8tWgppGm
4XBPCRsoewDBAEt09SnU35mPfr8D56h//cIKkzTU7WpjaXAyR/AMvLQ3LsraM+kuEdr5aiGwZbM3
pOq58tnQ29/1tAbZVuf+PbKrDGYONbTMFJmQPKi+0xaOnpsMRGvA/E0n9GnZ6UCEK6Fvs+/P3KFI
8+J5uxcDdNVSnIPydzTSznDWOmGB0GHARuN4QPCjWjXj0hG4p0/ON0cri8xZmuoWoy65uDrjSq2C
xxa6pr+Q5PYChh15SQR1nnQHrrFn0Hm/UuTJlEAX6Yi3kjd0d2MsFwGcvSuBOQrg78fs+F0TWC6h
DQPMw51tg072iri9DTWUlIid+5nXBk0OIi+ToZd0LvzNWAvv7uqNMa8S7NWjcUYxPg3hShzQzNz4
Z5MQiBP372hrUhAl38rC6RSgfK5dGY+k4HegPeqsBoY3+4Ml7md+/KIW1YZ2ZkZgQDIVAFRVf8Dk
heMqwzWa5LY4l1q8oBMCzo8SO8tGk9eJh7J967u0dwyLONs3xo6eSAppsjqvcOYhMtjfE6+PvoMo
MdD7LGE9SB7wiG8ClTfz33NwEW5GliET9xy1bc2BNBNSA77MMU+28gJeyS6ICZXZxJeDO54+kLDi
IlhlDuXhguSkBW9BOB8FnBKz5KE3ex8AvdQ7BcmSSk0Y7ReprI3ycJY0x99yS3Md2ofCIgTUzHw2
2+OYn6WMX3aMR0OhMxwYvIUg38IVoxtxqyAg/9V9bIA1v0DNM0FlPwR5ddM3rOecTYrHsVJWxPm4
fnKl6fmVawBxDk/9pT1VvkXVOnU9mzjQhEDjCPZE/zlvutMZVfDjxXG+J9ruR79IUbFnNn0K9z4r
YUOI30AL7NsELoDt6jlU66kZdenHlCp/an/k6Hx3go8UV4wxva5+fM05WUWP78PdkzNJbnvkcypW
pIDRX0Q2QNqlw7RBivZUb7ZaOE3qDGKr2PDOyCYHt5iMrAGR44goFqVfVlW3L9CmQT82+PNG0nUl
9QZQB57KswGvBMhQv2U8xxbf+LWAl0yx92W7w9TxLENN5FXnaQETRFd93RCE0WJSZPxAQXM7tQNG
/CoviwkTS2eg5qE8fa0i0KG5Lob5071ANNg4XA7etTg8O8mjCI6rhN1ZdeKW5LJyB/815zKuvUU1
qeOZ1I8dZRROWMOHGHt4BgykQkTHyfThHAxs4twChUlVRUp7bqvyR2cFj/+RbzrXsk9CN9tKRo6N
9zUrHtj3Uw0UaaDQI+nmt+OmUxrBZRdUxE1hq36zGvxzxAs6GY/9ozPujLgNVq37GjJegELZb9kj
00lMqzwt/fy3udaACsGeWYLDAye+cS1bpTJtWLmbcCk7wv3BYYP/BXnBXSRp+58+1J+6JcH8UJJ8
tPRWYeF+nI3T/9qFZMdgenL3hYSh/zYJqWiDPBbaaSlFeWk3N1ZmSyYDmdAdKkdScSn212WFi4rA
jYMDjDkiv7G77G/2ON5GhV/DLJ/p7r5VJ2hDGpa1RPe1zFuaAXJkxfK7OfTtfP7UNfowI4TOFAwk
IkD5+2vtFxCWObcHneKrurBAkDLZTJUxaoVkSPyFBkCtM+04WFz67noXqCtONX8RBkB3MiYoyzNx
zAL4P4yQFnZ3DbW0q8r2GESBAMb4oJmdRT34vjBYoPDw6GvWd0tm7IxmFDAlmVYk9VF3S40wGKsZ
mhwn1ofyYSupyJo6Njz95KVitSh+7P28pW60ShhY+M///gGf0kxgx+iCX8R1HZx7+hPgoZ4IXsnJ
8lldkSAH/t28+5AV/hAM6EoZsDpuvT9soZjWVqVU1o7SvI4BZpR9LqDuO7aA7d1vPWRCSDc41iQ3
a7iQvmbrRMUmGWOnpjy0uzxYEaPyXov/qTxRMldI2n+nBW0zb9RDcJuYd0Ls0Ik++8cgthwz6gcg
qxQxQXXPsnT8fSdwYoOhzisrN9wOLcfIgpWkyi7/oQKzNu7e7hAwFUgjTAQKdNp4W9B2+2B71ub+
tUxmfOsc556Tgck9nGnE68hNIMf3AJksHnQteLfA/KLhBn3/uZ1hw52vm9wtOQIGwy76e8lLttul
zG+JcYM/46njc+U2f0PKeLBfnWJsvni4rX94eBLNfitjrpIhQ6UFUcMleITuXWQB6YKFQ1sdrbtA
Mq70M9BTyg3pj1BTQCV+Jm8n3OUNNcTJaxY8OE0IH2kijxuJLJQNIcuI2prBPj7okgJeEmVkKW2p
53sjcghZM+Itjj0kLiz54hbUk6PaMTLnfwhUVqGOAoHZjd3d7sPCDHLdZeedNj8vL116TcA38aJa
Wk46iyqIBFuU/4wt+8NQBw05Gqt3I/qESCbmN385Ek7/la4BPqrSAcCo4V8iIhTSKwxrriAIbpI1
/UgKxUR0nLL6IfIYn+ixp6yp9i7r+wjyM5lFBIfGTpkWr2tQP5yEcTPCXoaaa3nQr2Qv5ZPz80Qk
nKhriKDRtUXWvG1i7+BwSuOMXq80sW60NcCouXOexAvPuKGTj+sk7QUkAeSmqGgTNsckCD5k2UPm
BabTVkcuiSr5JpWWBUY3frpgokocsDuLwRgPzSSOgeyGjqAbXcZjN22wAKR18qrURV25bima26h4
SlZixK1VOB/HZChQJAuniNhS1JMntfrU1p5M7rRx7JuU1j2dh20nglrI1ASRX2Sqwt8ftFUhLkDR
+E0gWIm0cvTKQEbXGt+udZESJbuRAj+pSVf/7KhoekYdHG7UEb4yrwP1dJvf3u35MUkdSauoM5Cs
H+FYTqwk4J6qy4wzjwq9XgNlzJg58cabuvodW6UmlrK5y/ulXY8vH16Lwad2HgQSs88Y0VfxsGVU
cC9HGnp2bnHC/3ZZ+hTE7HNIbkLOVQb5+t91WU8/0BVAOdt8eKd2cNjWu38HeG/5/ovAP7/bGir/
70H1vyJB5SjDjdzif7T1BfcCWbEZ4RCuguHFu44SMK0hxd50Aunz/y79g3So30IE8UDCOjDh8rdN
Wn+gqlxpGhmZdMCrHLLbgwWU4OvdHd7xZZnr0tHkBgVDrqP05VWre+4kbSDQhgvjPzq+uxtO1XJR
9iPQKyavmSnus4iuAsTT4CfYTt8tcG0Q1oHWTLvWjotmwBKMU4yOYGCMWYYJItxOLs7jajDWizdr
KR41CNKCPR5fKbsDS+JmQvOkOsf7DXWs/aYatF7ZaVItcPrL9yWxQvtLwiLxkZWkt4Zn485Uhr0B
54noeaa9V0y7ktmYW8ZIok9xzJVB+9H/+PPanQ4bcl+c0nlxicG0/WndBSbGHtjopiQ87uMzZNUO
xygojdfW6BB/xeuw4psYGmYNtLfllMZwijqFj4DlSHSnLMEctEtJW34S0kNmTYt87Fr5hVdPdlxQ
YqHpq63MLIjao+eela6xo17CEDWOosAp3usl5aVOr/6zXE0cV+c4a3MQ3r7USlkc9WgOVXGAMrQ5
OL2SHXPrN1q0D8CBin4uZoyhWV/aiwZP/nywOPrabQHTkhB3zu4IKYyqot2n7BgGFLm1kRNSyPp5
flvVavhxXhyz5bcv31/IGKS91her70T05QilE6GiFjf/rT2V2znlnK2DOmTMuPMANAQ8QKINx6C6
e1eaMgU+dKcTgS3NVq6QO7Pqj4/xmkhVWQcaYfY2siPPycmHM+uL/cd5Cd00oFhKTJvqXu2Xw3oH
WqFBVQHZiRkUnwbEjQe847Z+SEUvm9WAtsu2+ZbjOGn2GurjQnRicJsLTy034sI8siJ17d9N3nC4
yTjMCqos3EpmUbzDxldLLzgQP7vsfCzJDogwVYgOFiX+J6Q3WRL0fFc+xg9Bfgw6Ughoy1/2/epT
Ba9DmzhLNwM7Y8SvVof3kBsVZGujavRUhtTo4plpBDLXrQ/YLFiuL9Uph1HCs9ttCIK0XA3i6yuF
yVqkRBCwSVSlIUwecx93zDROQV9/djn3KLWsROyvBanw0xypMVyGRmUJ6LdqV5LDYP2SW/FzMen+
qgG2juncAC48RhIVCx6ltbJ5khB2TIToA/oSu5+9kK/D558CEl5Pa7mX4uZvHUVCw6Lx/RRpliQC
kN/YTJt1RytMZS40Udhn4arfEBsfs4Ud5V8ZXLafS28Yjr2KHfICwOvLeWXWMiZlYrP4sikwlu6E
xX/QYE4JBWdVlOdt43Wmu6TKwjHSrelSwvtehoy0+E4k4qhCVczU1SvrKHZuVry3xJfK85s9vJET
nBwk+iz9sXtWb9S0ZOEI1IKoBrOH3ZUBHc78439PQ7FLZ9vBjojXUY6RWalDd+Q5F7vSSlDxvrSe
wZ0cIi66oiOSRZWcKEYbDr7RCiJfePuHytfJzigzb9m2FIUmWl0RMtF4llZ6IiEpbf5YofHmQhwP
0O+t72vAfpA/nw13Jjqhg/2QeIOryQi6xvWkQlSHO3Zn4JexWOGVQSYgCQ2zMBngIagmk7TO9riF
hCige5IU6gwag0RoJAzONs9z9SY/KfYprCLtQhhzQUpW9c38tMxzNqusu2Gi+tLwiEhOfMpRXahE
EiSCEJuS+6yh9VAksdfmNyBwLkdDelhiJSeDsy4+HFtnUE7LFKZ2ZjgSnR4yccXkXX0n3AzK6L0g
0GpJFYMED6fJ0unpMUTRCR1LpLVOZpUZpLn58FIbHrFKDsuIRJgQX3G04LozavXTe+FxrlKF4BYV
689bvZ6uN/ff9eMv1SSl1qaswP/absQ6ZZ0CM0Gxg7y5zV7keEkU2SIDnIRDAIpsQNBD987b/JaS
hAgbA5vw1n+B7nA19SkV7+BugWNcs52wE37QVc7G9o6l5hnpQoiqdRQUAk55iCcBFVylkmScAKuX
XOS/GaeieWkhZbChajCYQfZ6w6VmAladbJ+0yrEoTa5dA4zYvhNq0y0z++ysTnOrj7U3dsh8LZnY
p5Mu/daBn+QGX6pg2Rq/tFOcKEoZYxFajhPPWqP8ShRYy+dTNxlAbwxBLfPZAX9NbKaPghiwjcRf
07q9hNlkKugXzUiU8e3ALeK4pARmbapZhSfeIlyzE0pHUtnaQBGRvD1d5sPjBGs84mjmylJUItsF
aRGAQl3G0ypz5B4QwK+vJtztjortkb/Ij4JfrbLN37IscSm0YUiGnhUxH935q5sPYxE4kcA0MHnS
sm93fNSPHH0UK2z9JTkuReRLW2ihXJahRxA4AJoZZtdGtYjG3SZGSqbkxQhdqdhK643SLU1O1l1w
3F35eDDnH/BUdNsis93ZQjBpYUDobVDT4vCzNt9PuZ9UVkminRAQX9cL+8VQyBDL0wKyWopI+vL8
IKeVyYCgJsAbkpyarC1y3LMEAkuGLpdTEL4YZY3rS76k1HXZixlNtUqdce2m5fOQc3GUs9OohF3Q
i9IyGTuKUL03i0KoKrw7xFvntQ+aHtbHF2FERicIASznXU+np9BXlbCzzn9bXkuxBGxi02NapvI0
rMIf50Ec+lVH7BhuesYE+AOEj9uKjxSzhQqtf3A9A0ChtA73v12X4gUD8S2iNj7I89+SZatcsNUu
WOVr696S5WR1JDjL3pMu0+BJ7rerhi2rZFss81RfSsgld48Fo9pcZK5PDiZNDcmw9zSPaY0KfdC/
j0Ul44ZSlX1uKFXz+JXeSRoBvsONa/OjwIPqGMXKF4gycKP3iFeukL9ghX+no9yMCKqFV9lEOGGH
HHlAi4+VGnfPtN+dHFM4t6+SGQjjldBU9GCMxW8nJkJ6YbIASLowkLIIKegrL+YB0mRXPyoLGLU3
Hhux6UykuOne85B2ZE28YLRMgnCgHJ0uc23nQtmbeVfu+1nzvluRh2j/ZVbD8g2mLIubsII3EqS4
FKDB/CEq61m/4UJtaWSn89Nxa2e0Wyp9Yk6+U6mzuWoxbZ5DmFd6efbG0FfzqydqA6aT+OnJcJcb
5Zk/KmXgR2H5OH7fqLwUSHeaZogKbEBJiRgqmvHZhsE1FnVhXBI1RQV39VQYmpMo5uu/ZDiOr5Hp
ib880dtxoQnFmxzGswVUM8qBDTuehyJgDePVU6aTQcXxK07vH6qTj8pUvKCWDeWKhZFnV4Kp9eBF
61BgD/RvP7loTOlKf3c4X3Gk1yFsUhHxCyG6j0UR5Gz0aLbKuMdCgQFXxDQuDOtiWK+Nih0O2b7d
r8sHR05NDXp1WXGeIA83WZw04Byu3Zh//Opo2zUq28w0Ac0tbEoXjm1kb2tkwP9kg4cH2qWWjDM+
zT9+jB960qQGBlNO833fGEWWHQpiLkKcVDQOnIx36vsoIFgsNW5l0iEWbv8EI3/kD51NsIUy2afO
Kj85PlmceWLx7X7Sb8Aw23nEkULqfXZeT+gWrKvVN+tn1LIUccksYBwgwRslHUkwsXNqD1dBH3qO
Rr8tYTIwSrt0+uB+FXHPPU1/DowQSfDgw9zT5HmlMW+4SDmhetnFDIyFPsB0RwFblSmUEa1tBnmC
muxhj1J/bSoRlbZfx+J+mwLutgdJ47FpLdX+G9o6UL6Geg+pOQjXn770TFPG6oC35M9pdOiztbZu
aO/+XOcd/JNHmm6VWEkpN8vxf7iL4P3iir6iIuJwhvj85tgiPxxOU5I/+JGB3PZhHg9C6BkcobmA
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
