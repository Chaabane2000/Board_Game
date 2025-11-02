// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 20:02:35 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ road7_sim_netlist.v
// Design      : road7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road7,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17920)
`pragma protect data_block
KRcqpwtD6a3RplgjtDBjSjup5sjzHCdpF0cM1d6NcINrXZO3y92Euk4WNlGNl1/NTJGU1sH4WUAt
QQjo+yM/ZSlsOgIUF0XZVMLqxd56cERVGkykE5ZdI4lSkZKfMl2gPamOvCfAXPEP908EWEeYrQaQ
iNXOt11zOfgPwak7NAx0uNj5FqOAJ5d7SGNHm+i6sYRRZJAptp8vvJNAuUUoLO9RWSiKpVUaeVTP
FeeLGG4hqM8y1xkm+7tNAHnQfcWdaty4EksaJ5XioAJB8c9WXCzO/xbRmGHH7cDKSnvPFZ8V5UZd
CS2pSG9o24bkPC++ZA6EjjdUkb110WDqKFmI4J/WcdoC7KZcIqzxM+4DkLBXv6KUUgMt+zdT8Ivv
3XX5/8YPlYr3TuvAksyKoTed1S9TJc40b2Us/btcf9e9SyZqgzVQDggJjjfdXnynL64t2nWCayf/
ahVfHbo9MQF3AM5IA2LWZ24xLLf2pLyitFzIRqIvztKYnF0spgdxpUO0PZEMV65g30/Pzhvu0NfH
XDrc/QRF/nr3iqPimG9WLxS0TGbR5sTkiY8kU8BzB8qMoMOtI3wssTv7cX9XEtWGVXRGY/az77KM
j5boiJbIR9Ifaug2Sqs7uAEpbafjomGeqzUzlSSkSiBN4nRGAKTgYEu6IxskZJJCeFZittWWsnks
/woMaCcZPDWInnPoiujOOTsjR9k7e4SafhvYGNUYkvpr39hbHjU8cWyRjvxvZb9RDjX+qQWQlAlN
fuz9vBr/n2rEP4qJNgkLv+vPsWdTkKUOvIb7QyIBlIlwn5g2qC1C5QVnka2ssIwqmLdzkJksfiHu
2b6K+MNQvOtS6hmDKYgKPvkmH9NDI0VFUrfee+uhqO8k2CH4Yi6IcaK3gCeQsipmo77Z6St+0d5/
/o0KLcdPFY9QTfXvZiopMFdQa1/4oOXwnigXWFaH101Pf2OPXw2mTlgKK0O6vgcDZrRaxcniALDF
kPXcuc8qR+OL3JVOFcc1momjUFVWH99l3oaF0GXYdFKy53nPvBIN30gh5wAEZBeoJKPEKo9e/ptc
5tXS3rWs1HVg9MQN38U2bQnE6C+Izvrv3s4U2hyw4W/b9bJJJ5MwBg2pPwXanGo0Xvr4iigI/pRJ
4NKK8a0Zs5ZJR23834h7HGD53oBPhTT1wXaJQ2kvM/Chh0GsUNuVUlXXzEBrLUY7urdoGN2uMNm/
QK+CMwObw+7xghCvso6p8aCgVv0QUnhk8BfMHOIx6lNcN8/lk4gheoV8QQMzZ5vFEK9Lf2zNjZvc
cSpX/WVx6cAS9oLow2hzy22gwhlcYdxyboLBXlq22yrEclYb32mOPVknSO4gnC3J14YtgKXY/fUl
jdiHXTpOPatAoc5Gk1EzfvA57c08EOKU2E9PZFGTbjZ9jJiFyetyEjSJzWFKn4rpGsyoCPoViTA3
LLI53hXAvH6JUYWZ3qUbXcZYJ/bRmWhj+eDUJkqT6RE3CXu8rqiHPiUpqUrqjsF7pf/gkVr5AeX5
bNzKEWZvZCYuWwsd9IYb9cGWy9GQ+sX7aOlPZd8iKYORgzMGRlzl6hDSfa8upqRw9c+GaN0RV3/Z
NcvQ3XsbJTTOwgOngOpBxDrz7ssa+VWhXt9VbCBjYUsqIx2YlC63zfYf31yHO17V77VrOr2lAhdV
PDE1QiX5+hK7Y7LU6axa5ichoRTts30kRnaC+Md9GpRBm3i5ZpgruALo9EB1gORbwugEMLmlnDaE
ciGPq4jZp9kmZcLH0dPO6a2zEE+9Txor+zvvtYBiKzD6lDD22WKoGELJ8zA7IjEaac0qnBV70P5l
saFmOZei5ygC+CjzzxZSR5ske1zjgGLIaGa0UhWetURQslzDnwOTIRw+4LW8G4V2ZXKagrEntbY1
lf9B3wpdm3sv5zUTQEtVPCxKHtfsW71hIORgWSC4qw0QL4m07vk5mQwyjUxD3L3whZ7qMX0ARLkT
LcyfX0Ofb8qLH+AMjbqPeMZ1rtJ004F9485ZtoP7Co7i8OMJKGPTy79BJxoVvG/KbrVTOU7Q3mSQ
Or7+NgazMguVX9kvq7B43JBfyQS9GNXO0SBF3oO5MmVIDqIjBvL66u1xHK4Sg70dlD0nJ1cG3OQz
tcrINCbbr0tJrJ0y+ZuYr+sE65P8aO2TJaO+qw6Jjo0vK+ey7E8A7Z1MJaMtXyETTO0Eu0kIjrkf
I0yOSDiNuQS0c70PbdsL6ieNLOUvQa4odzuf9UCeTCcw6qr8cvpmBdyrd72jKDa+Gas4ljuzDj4/
P43OSxynBhkKIBcs+DIPKcFyodCYuqZedt9fvqYHzrkj7q5uDpZcqTP/bkur7vQ+ncbgN8YBTDkA
2T6H43vb3qEqd1jvbvOpptkbES2ZJBOiScwhhiPxPBpV2mgTtOYanEetQqW3aUrEyhpFwwrB4LRe
xOQ+nAXJxHrQZdzfebQRkysCXaixM/XU6gPQxSAF8AFjLEduJULePEtYvjDiJDVbv43yjK4Phg1J
+4kudrUW8DDM2w/gZAZsKogB3pk9thkNNLllT3hmhvA6cgkCyrDevhg/hXsy1lz+beY5kAFCydF1
cm1vuYk5gPF9zJ9uOaSW8lMl35ZDwNYUSWNRFy11X+sMWxTVaLHnLGAClxNRIp2hEYUbo8x+OSq8
siS59ZSVYzbrQ4100TdJjeeWKgplUNTImkTCQ4KS3X4QvHWOGc1smG1GVBLAqIR4Z5PH6SQ2IKX0
0wdq8S/DPMpE/mPTPkMicY7RTe78qBSXf8YFu29CfT4AdoC0y6K/MhqhYXzBMEEGBrsLppA73ats
HaoMRIBB2dIcyUlrT6FFQZCxzMn4ZtR6jARvZDM0h3vUPT2D0qDBJ5sow3X13gS/zLNczIdxTnN5
ncN3RdDqFg7p3C7HbpcS/kD3nlLaZom2OvlSxoDpNdiH7dt7HKNClh9ZJU+AfB7KJGMIxvYJJHkK
oenAYVxxzs3JBq+VIMFs9aXTSDgwq6q3hTqyHARHNyTseJHMP+SRVJOq+9h+EQqi/6EcrCmwJ6gd
Oz7R34AkV+658NuOgv/3kr+YREcTlnaBxuo0+9WqQy+h1xKunxmE8ZMz0ejpREU8HW8qG9gwEGUE
ob39kyPh5FKGJrs5HcLuBFPgWAqrrjNv/uA9Qid4/or3XDe7gy7kqbUkkzpPZ+1bSmbRNB9zY+2a
8tNdWcIdWWr8Ux+eEIn4dR2tdTWFsCP24eS4ew+EddNTHwdQyOsK0gHIFLEBIlNumOshSE6u85hs
k7EsS7ZcH8KFhpLw+3mDoIkK34u1dtJ6wu18aSqxCgLHI98OiRGtkuFootmbcZUe0aIr8mumZbEz
U5gdRCyyLnU+RBqFoWvowwSiuaO23xLfAGsxSFPBdw0Z6L/I6gn+SRjPpc9vPue9xHwlAj7xxGZP
1vt5pXg3V/41m80shBGkVaR5pkakBpDxlkmS+thdILM5znaTGM8Ns68BZB1PUQZZLg0KR/uy5Jqj
dYqCkChLhN1KaAfsNXTIPqeggntPXfJ2eW1nsQ0I/MubVlfqVBhuTFn21rc/PhXRmLp3qVaqZv/t
aOGBgL1RpqZsYPHzNo7aHhzDAEfsvfBXfRlTOzC6qgJzK0IUakgSLjHu7pDhdO5f00DyCkYrp/Rb
XnOaGtIsB1l8eJx3fOdnmmmONyHoLNVlEER0rNy5BlUuzldK1Pbss6ELPVk4PuBMjjoAUlrlutL9
1Jn/mMWuRZWJQ7kNMJdtkh+qlRDnRpo6lFesJE5UIu+iV3Z0Cyyak+LTaOxuBNhz1CIHybH3pDOL
6W6NAUJVJCm1aPP+ju1jNVx38Qz4ULYPEY6ihklxcsyhiJylBNNnHUJcowrb95B0T5qxgLHyff8K
jhR64173VVyqnXrXUXgGSoIqqYXANozB0+e4IsOyVdMjcV3Dv6DLEUiPLPC6Bw0t0CaLOFs7vrdD
iY803PnTgAQxE0r4coligW6pdpGmQ23U65ulaaUVtpF20VGdT7+lH6e7xOwr4T5dHXAPwAsSnZFX
KiYgLQnje/nnLPQIJXBmMzvjImOFVW2HFoSkT6Kzbs9dbk1ygolMV1PgxTsgI9MwBDH7KzrnLOqs
+azsaRnloGMZ+1wgcCVcQIN9kN/b4HtOcEob8zg09e3i80iU+UIcR49tQmEwfUcIvH1iFFjeYGly
ecxsNHEaR3uYiN/Rv5tGNkfYan491R1uH4AjiM7saRAv7CxLKGaoiwY2k5GTBl83mn2H2he4cnRL
Cq7aGkFOI/CajAhReaVUIU9KvM2G+BR8frHVUmjbPPL9fApes+TYB7MOwntyBKYuqxa6d6OWjokd
IMJBWHJO/7jVR3kOK3AtGxOfpwIpLdukBPx4kU60nNGdcKzxaPkAFkfhWTOmxFRMk7vkc1XrOYQM
zCsNustdRh5eSz5+EkyfWP0j17kUPdQ50jH1pnff7XKPR3Tfsht+g4lLau4qlMryAhLqZdiQoWrW
REonFVdN3gnDoOUlC/EtbjYvMS4Fe5H9tqpJpsgUls+8Uf6o4unmMLGiI4T5kBjSq8/Wm5Bs7TQd
BVfy9nkToxhcbS5RNP8DSQcKgeMaT6SN02DucU0+hbhddyxRE9I1Uy7hCTmT7McSW0ler+DsTg6u
WW7GRbuUHQhJ3YWdzJa5zCyfHEmGVAc1J1ivH9yGqiNGJXIlHaPI896a+gzPbsGaT43omjIx3Pjm
Ufe6CDCcou7GGkgoCJDzao9kz3BMnDpNBGPnFhy6A+3dUyS0C6P2R7+CvjBOjvEgSc9OlXbbm3md
dsRnq9FtxmrIiR9IPoMgYx4AhQvppqyV6DGCWLMY2wIkL13RGhIWDxJVA69GyEB/494ErYNKl3zz
6gfWJoLFMvYdvz0krdGUQ93bDCBN51/pQITF9/wT8R5DN1LQYups7vHzn/AJLbtSmWzl0FNuOTES
1PXDFGdTs7ITiytjjOtnWnD2pwm+16CFetMk2u3dZQIdf52Hf6HkmGE8qLO8bR7I1LXhDt/ikPdy
Bny8flu7KAP3WgmKN+cieqorlFJhkZ0PKgLaV4JOA+i7Sv3+YBCyVIYTs1Aum3qZxdhfghTlm4qk
0SjycKg65ooy9FjfMSRnLtSusEW8qE3C5P69PyDT+i8dZFTk8B7mBo0EVZ6MgDpIYULdE5QIhVtQ
jojyxNh7rvLydnQmnkz/Hs8jE4b4SwYXGXhY1Q9QqkgcE10pttueAH0M3OIF77G1SZoLDAhV3CjX
lkzTyw5lE9Fxxd7ca82UZT4dYkkK5gNzhRhxDFyK+SdIAchY/6nuiOBxl+xP6YCe6wZDHFvnEaBr
tK9wYhS1fIVgRU7kRAa7gvISuqUyt52NYN/aTewWtdcEfBxChxEy1+OvvDzQhIukysGy7rP7LXo/
px9l3I5ZA0m7+f2Wm/MD6I86aYcH6kBnq+fHM+3Hxdgx9EKCqyl6Om3MrKwstkB3UNjmpxyQDG7b
ywH3P9Eh6LwBRUcWn5mkbip4t/p5MElIKD8Fhhb+MwGZ4q7P7Kk3ymfsncLt7WbdwJrMAKXJqJIn
A3nf2vwQGN5md5+JaIWdWC0ojR7osDiIz+0yP4QQhQuf+kRWote77JowHAi+kz/XbHzL00PrL5wL
eJDWfXTPM1uQdAU4w+dTV1Im1Tq62rKXxrMBnHawFCMP52QuuBX6KRq1oZkL5SRoJLjGpok7cDdj
9M3+ORhcY2szY03nO29IjGkNUAo/sNe2TSYEez4D8caRla+jJ7i0KUt6YywbBbVreLHucBcpvGsY
trMx6UkkL48Bx2xt8WuijxFmNvF/dha3lntpsu2muM6N+TxQ7XtsqOD+t8OwlfGlfK1fGAapcBRl
mQnVm05wZ7KWf7MUNWW4l+XyoLSYyt0ZapQ3HDQYp8EY/BVMI+KhT7d9d6fQqknZMnqBX71fL9Ip
9p9GZz6YKEsYVqCvviD2PSUJxR/rqeQKURyfnSGNvW+/v9+8XGB2LBeiHYDS6+LEPbftcYAty8Q+
iFhqRGW+BdcqdHZb40eeVb2DUp28uJBtW26tbHPjlasGouLd3FZgB5bMg7aYT5XYcezS/S/FFFEt
aIY31FOqQ/2in8zdC+4Og0FYCXuxBPxsZ6sliHGkYxHD9ZzOsd+mKseH+pcTUfMqlDCu13wxHhKx
Kg/osHa92H7rmNn4a/StJGzMw1/ZUCommDjmoPwuS9OypKJRp8An61aLnvAlE2GomHDbFACIKxOJ
dlsFfL72c+ULxUtsv1Z831M+qX5KNhKui5xdIkFqHi6ho14VCW9qIztGnI0ZuG601L4GlaWyKZBN
EwfBc5rqOTRTxBPjO2k9Q1mQXPwgqQOiBkv2XtKQDmQrnr6/KtZ+p7xrQfcEsbzQk6dhImtvvWup
GexeLo23MVP++1sdyaZO6hyXqlBtNhKRJvjnMLwoD1szTTcU0EE0dbbsx0SvM79QdYsAu3fFYWux
RLSxvjK8l6qDwNQChBqtg47nLAVOz6VIKhtnq+bmkmMTN6mqOo2HXITpbkHprk906fzif3fIUrmv
e/igynYE++NIk7nUy8iBkBrRhkdaIW4GPcn+KQvjaWp6SsH72lUiXlA2d0apIOOSItJMnBe/loLO
KfHvsBpTNjlGF16SQV8fhT18mtvDzsU60cyHVljTMKhyqbMJWWvEEJ+See17I8id3k3Ci/YEv1Xa
eKqI1XB0avUcZloi3IPmcHQ/i98LIdWsV6U2r+EafU0dLKUxNBRhhtoh0nEgLnTl0hy4IssQ2kbF
ZM9p7+ztO6+U8GnkjPVG7TzYxeDm1WexwpOvgHuG297FB3oArskrkIgFpbAzuZwdy+dtZmMBdhF0
poXLco2XOQQJY3a4EuL8Jz2sDFm3YTwRUfd6WJa21zhlNU7GQnC2stJ2dK5eiSn3BKxiurREK+Nb
VQREL4XQuBip2YNqzYy28sh3Xmap0OhfOZb15hnJpJT6VkTHXLhUBIIsb6cvLOa9LF56SKX8/5jA
YLCX+xwRAO9DNff9N6tMzrsz3I06KQwHRHeqTsiO6Zbg0sMxS4CjbTU0If7Um4exj79VkHSNo4Yr
O+2xb9NPArybcbIqLpEwMC9nJn5Ww0WHp84+OPpB+0o2koOJVgSRBNfwovD88ewQAAKva8R3BJF9
Hw2DfyuX0zCT9VK1o0GNW/XOeiQ2dQm4NPXaEikFBkvSaSIG7IWZK8OpA2UuqkvS0bdqMqtgUuTn
aMw7kl2BUyvd7DVlBm1/I64f0jl01nWiCSPtkJbGjVofVFur46Y/hJ/BQUbjYhFCBJ+RMXUIz0iY
WJZMTnZMUVrWD+aC/Vea01NOlrR7DjGmpR7p/r9DGcnXR/61JLdGEz7xd0+0STdIqIllhGi7ISya
G95rlLsqEL3FdnLXFUM3ObZIvTfNz7A5aydCj6n6ZyYet1Viu2Rz+/dFmRXiVBnovsY0dftlFrvu
wd3qZG/17msLOrzFng39psighzqZ3lh8DV4R287P/1pLfi2g+vvhIbx6XZ+gqiDi4h8SejXMAdHp
QmN78pbmNXYytzRcr79sJUpm10XrEQTWVlgPg4LFxrzIq2N61VKduo7GR43jwk69CwmVTSdSF3Q8
vKcw1DqQcVW1wZTvxTUWlnNRVtF93Cl3PoVcGHMMMSX9n61tK3YzZQJm8NJ3XKJVx7AotLdMOX0s
ds3AkkyH39Co7eMDXF+Ic9AXOmSr12p0wyeXR5n3NSw9NPteJn5SxQtQfqnHa3o7OL6MZ37UwlHs
MtYfYkUvRJI5MkuK/gRHQqC18QTxj0QNlaJzqfOiWPMDVQTrqB5FINR8rsqSJHGIJ+mxH0Nycx1f
aKLoXP70VnNCiHugUjlNWCkiVAN1qEhCliOnTPxqf7ZUYlv8kWBqEFZ6+zwNUBdzanGl2mGBvJc5
ThVoZy5byBGyiO1F7M8JpDwAESZfD4u4ElGvqaafvyum9z49burT0I0z85tbxbnayYp0Xd7ZeQ+G
ZZJ93rys70ze3lIDX3nnFLpuRV+ZBS17KQCkwilhscv2HeZTNwe1PvpfVGLHX+aPKzM5uXf0orXx
mU5YBXqhS2UsnCoACRdBkfCT+TEK6WRFp9i1rvNzZ/sxHsI9Vb66M7EwvOSf4QWUt7TfPy2UY63w
QyCtjqWz7rG0j/n/SFDYkgptcHRrSSuE+uBjdX6Lpxj+nUCFu6MYagz6Pf4TFnxsbbq0kGrZTuVt
xfxg6DqfKi2dlb7yO5kblTkJnds/JTqVQYK9GNNbxofJcibGMKXc1q1SEK8BhQGFO4lTGRhrnG3x
ZrfOpqcVdNQVSEzREkoRpoYXf2cGhIJFGSqDb474UUik1gXOCNtXawJkLG2chlaO3B7CM/wjDNHn
qkV5liaYL+nuJo0YjAc1VEfRlDqcs77Yl6Qe+VHXM0dQbY19+X7FM94fzvp0PmrTwU+037ljRp4k
KSnZiJTVpGg7zr0GEZmJysZwSdDFIfX9XY7cwtTa/VZc7Sypp5E8Zb73hynJG1lN3EUce7Bq5LM7
xK+GkbW09T+V8p5I1sPhjC9nXi5fqClgKkhJIKCOqTIDA7yv8oCecZRaNGytEd0HItwvepZHtBqx
oNOnYPFEXvVidE1NxvcHke0LbRe6/LgZNhB78n1xZu6bIzQ2sEDgXQlE89fZoReBkLtTwyQHKz/L
74H9ek+93wy4mTzWTQS41/tCWF9mDHD+bOeoVvK5p2uQIExTRbW9zRmPb+z7HKY0QXcVxp+KZBnd
sYdxbEggMkichv8QKxlEfbIQWUNqXng/B0VU7Tc/rsBzWio9gQt87uuuX9LJHFFMP86d8sE9lgaR
RLIBx5aSLNbR/iIpjimN0wAkKthibyq3mCXGXU1hTyht7gi7MxqsufGLZki38g9IpqnwD/w1saPR
jojYZWHeBWvWlruTxKwibb/945B+9+L2473lDREmixYypA0FR5/+q+xA4Vx6KBmT1/YSEX3NHoGn
v/Fz3mxrZc1RFg43Pi54cPDp+LBxy/2M2+U1Xn3tNaEXDGc3giHF58WY35jR92xQ+jk1CRtCdEeX
iXyoSp/HwdSZUan/dTMCZq/E2AchVxlwhLKAQsYStuMPtGpeBtCvFrKBEjKBMojDFGS6964Yeokx
m59oIrNFP9CPVUuLJOhQfqnYIOR9PaUnjGkymfIUZZBpjYX2T+8r266ooTS00qBwc6MJiuENBbn1
e5pqGqj+94+3j5g4n6e/UeJcXyQtqIIc74dHsGRtqXs337MuhtfuL4ejBqyti4GSQTL+FLOECc5n
/QSsMKsm8eKD7vAsznGT8RWzVx76dYG8XD7JVevQF4v52pX0Sd5uJ9f6aIOGLpYvu4wOo2aoZB33
fPZPZwhlY/4mCLa0r5pb3HW61MfDUMqLkn1pfRqfgobKBjLuXolMcCCMfLOEwDcnjLX/EpiELJ5l
vmBqkrnuz1dflRqrXgUU1TtuJDBhLaaWzUMDjD1TeGNgDfnbc9mkEidVqvlz2h70RI9gP2kKmxE/
vWNygQJUa1OqgWtlqoALcOzqgtHFUgLOvKalpniolgjJiTa3HJ/9VURyTRGTIF58nXfKg1aYnffT
U1aYg8JVX/jFGjO6HBjSPV9kiPli6EHp5ZNP0/BfmsvSUA60u8fZDLv/BAUfj4xP3IcjsO37uhNb
izmzpDM0c4cnX0btBcUNWMIEg1t3kFWLxa6/+g7Bqt1wC5Q/lvAYkaHCXoZGusuakqo2dc4faWP9
2nJ8lUqsmgzuDQ10SByZ+vODE4htnoiV0bVlNPk5JDPumzrMPc4e/K2w+Xt8x+Rnp4Zcqvuv8a6K
NJMwqTsH3LaZcvmLJcfvyqQbqvpD3rPOTS1Fq+OjlmyKgcC8ifxn1ecju4QLP/dGf8tQyZua6NFL
KwEyezMFiopXdBpqF8D32pIxgpXV6kmyaBNarVP9zuddRRbXnqcJLX7p4oaENRn5LKmoUL42c61E
+ll5m09/IGAWtyPhU3HAdBimPy5Jj9YatVNevlXSHbI0I+wPewmguMCO+bjfyfKVMDkQ/eSvqKgd
ypjUWkAc0k8aAthk8R9s0xJW9L6lr4WoEqsEOq3vCb2M2xlsX9YcFc2OkHYFZUZ01q5n31gFOGu5
EjJlQhMKRMOw1bVWghUNcmqkGyVHkMYe+ntP4Wd8sbnwapUUF7Lf9hpliAPFpCZKc/0o0Ic9uXr5
wGqMMDiWh++UB/KAeoD11XSibeQU2ZipDCVYDoqTy8FDzcnnXkAiI2KamCMeYOjtkoDhZ47KRweW
j7y78rQQDYEa6K3oo3ZQ7dF7ZSTCiqpHdPSl/bH4BI7Qevgb5zbNwO1roc3lJAuyEHo1RmMAqR74
cXW143bCeQmCAIO8LieWaQTF0JcQ3Y2FlPGw3DO15w1xdDQDdnZrkNhB1nA1gz4qXqtgtS8H3eun
bDpXSo6zaIS9FRKPpSPRNW1Rs2eZmsC25sOivo3CpTw84OzsyczxsJ1V8k8kDOp+ltdIW0009ptY
a6r1Y2l0Te3kOW4u+5DAC0z++IuNCMtOEMF6iodb/YvkzhOdaVGbXyAn+O3M+24wnBL5F0193Mgv
gWZZ/NTMG6GLs31sfYidl7fv8rYgWn8QOMfSy6QqpQtw1DV4FTVAKfILRxSFRRvrAh9Ag5nfGnDx
eUZ4r/MGTD1S5U6zjhcJswR3HKj+q8De++EbTSBe/iuSB8WF0GBeiUt4nDAfw24UHeCUWRnE1VYI
FJ1RU/FgdZYHVaa9pC5eCiG1zoEebj/TbGKzcjyp2YhkspFPk0cN5FvpYt3+nMusvdEgEFueANQf
ze7v/4E8Z7eGCgzrjC6YgzpP/5bBv+GfgdykHLbLb2xODax287K5iRLhYjC99COm1Hy5E4DSkkQN
rAH1OzVKLZcXdUQ4NNYvfsRFGbr9jl/bQJwMacW4Zqq11h+WMYJxEWz/Kmi8ZwFeQc8D0R9YUJWx
EnISEPJHWMK7SZZ2FCmOE+rzWXghbkSrkU1ZRPhRI8leDB02As6DHxy4ab0Ni/dgt1c3jxwn35df
NeKgrk/Rm3xCY/4frk70gPyCzVa+B+SLhe4TpEUVnKfkoDG28NvJPbzr7wGDiZZbc8L7a4gxsGDz
0EnYc5soquK8quq/syCy7k2EFxVY/hw+YeRlTzL1tv2Up2FpzqDEdyzajMKiZrr2ZyPBV+DaGzS0
44xYtyFYrpL3V1n9PONMmcpUsqmjCsqQhKYtZ/pTzvTY5YDIUytg40mYh0KBmn+NgBqFXTvo2C+7
/tdjUpnb5hebmlLdyWU6u16OC3/ABUuKJpqvUaDk21wYHxoIobeO9Xp/NcalGXVsSl0AzYsxmFHp
ImiNbfpBI2fuAkPEi/3jnXGJqNOxZs7ceny+OTYcUxbtiPW6/D/ieTSSt0zNegESNWIU8/VEmQ3L
vMvF6VAaP8X3/+os3pz32C+1XKu78H1r2tGh6V3qdmnj5FWgEd09sbCzPw8b/1XH2KGV/GLtWdpI
QaTVLTQRt7GOY/NqjgHmHIdPd7gy2p5J7pUGN5d3v43eKQM2TizV17qga9IUFybjQ1RskwHKVOFe
WAx3uc2X78f0ihMtb9DsElXmmwVlPcQb2ftsHbCtqcxVonV0GjPDNIYAi0h6IQ+43oMmctpgXNv1
ksaQh+mniDQLFy5ngbyVThr/r2y9O4BkOCYpXCcg1ppy5RtWEBF2YFXmK2YUuuqwQkE+oFEMbFlN
uboo1Cq0LeutWZctVilU1BiVon/qgyi0dGojIxUeJ1zJsjNJPt9t12+gcJeyThGGCet51VlE6108
Wh9D26zzZSZ6OHnTJimkRpMW+TH7g1PjjsBPW7Sb6Zp4F65bGw+TWVvdgrSe4LCTnQPppsYCI6k7
wAMDA3Ow+2HUomJchiTMPl6KlfBlX7gw5d61dETLjvSgTPDM78tTjE0ahGFXL0Q5CFyb8EUDLvvC
vQHI0pV1w2zUph2mzMMmLWcVTbu27Aa8EYFxx4YmTtzZO+UR7euHUngWivV/O6c9QbCRxTaH0dce
hvDKAddfTh7b1Zsls61+/pFxV/ByW0/+jPS5W/fjh7GMOofc72lizG9JqhrcZmYC1sEfX3FtrB42
+gZZ6cEArCHNsYKv887x7tFWcYnAPwD+VdwZiI0WmacDLV96+cK2NH9tbij5x7LP8Kdl9+lghy5h
89fuy5XzPzZ1VCvIV+jPEM3eUAiAzxsSe6MX42rRaRRZq/iNAythy2JUo9lVKG4jAO1iGZiRfP61
WMmyJqIbEtVmcuLhYvW9A4FPrakGdRddBoq7Ic9tkMeE4pZO9CoaFjGMbhwVWgJhQ9WlRnwW8D+d
IzS6WtED85sJoX8jKIMJZeqOStlcR0Rficw+C+Rcp7IxPxlZzPwjf6rR2FYCvHTAQzuSlJlbRPYg
drtr0EgJin51RBP65hf5ebUeDkm5dluXn19FdVQ+WZML0+glCNohkemqJPyhu7fQzokeEui/0NVe
Yx9wPbgcoXzssZm6YJKPd31LrxQvWTBWBO57QBCdzjymRpP/Cg62zCgTfl8UPD47UuhgaaDrUYw2
MtMCkmfX4/MaQyacUrcQDwBNG9hdZsqufsekVnbRHqwlLqDq/MjYyoRnr7EAwCBlYIz+nnHUjrSO
Kw98OG/8eZbdBYDuvgcc61LQ4mUk3SvtcURB7nZmJRoMioHd4LWB0ixxA9vYKSq4YB/5mqCApNV2
nR+8nyukLumlyj4MC8fcaDcfaLGU/pDar6zXedomzQsIYZUD8KFV1i+QQ9Zuov2gxi4v7D+XwMaa
+QLJPW6u2fXR6IwebY4P6v1JIdiVh/nLWquYH1YTC1xifLxVbDucMPoyioul3zZ+jHctfb6FFOzD
w8o0OsVOz19oBMhqoSi2gfxt365W+YsIBJ5CIe5C5sXsdT6dRkjiHNPpDcjVA048pjCsDVYIHzth
jbhc4G/YHDq5zi+UBWVWuuZj2EbKLUEeoOIIdsE/+2KMb5aSI0HRxBFHNNiSaGeXC+/W+eH1l6Tg
tKj5N5m5eG/7kjeam4/BEW1C5o9o+qlW1P6uUp/De0vG6Gk7sfXnzl/HOPNbatTFe5//4gRXIQKs
SU+PDh/YkwaGtfcB9h21x3xrFPtUlXODRZ/Wt0R0+wl0yu2Bp5/Ea/Nf2YjF2J4N9WhJY1opWkcU
Lz9fVe+JjI/t/oAuAmlwYS74+4QcDmbVi4SY4lnNNTEA4MYHZ6Cr+F7mC/2YxToYLd7aRCwukDiP
YPy41NV3JmajXLDk2N2AWFFA2KS3OOumNxYHkUmEd7jrbswMDJY82xr0K1BpRvY80qRVDo9hTRc5
Kpe1bsBCjiCcdP5WYqoueW9Fdz84RQXjhq5nBb/J8ui65mDJZQN5qk8DK4rEQQoemQxc2rKqFGB+
hOjD4SB094NOsYtsyJCt09SDC4fUAAoqwLslSmxS7qXo4rodAs+dDcjCwASZMKN0BK4dwYhCFLnM
phBr62E1VRmWS/CtQhaRwdDu7e5JMAkL0/gpTCOxMuueUI5vLqg0Ca0yMXXg29BO61jNqeX8bGat
fKd5L3Sw1hfIXyo2L9UsIaCVnSmVgepBSxLTDBy/x+c2xzgLFXw3CNlD4dfRO7gNVW45Vld8nUIN
jNKqm/ekj8cS6jqS6kCOa74ur8rfXV4qqmAmQy68t/A9wNQ5sfPlkdVCJBLNM7K8RON+o//PazrB
7HmvyV9cZ2+y6e3w+DGlsI8sAW6j7NJq2NLbRWvHQFEllWrmfz+9gNSIhkJp5nIf5b4ae7nWGzu/
ZzHxAgJoqQ7rDofIElJovaXBTDdhL7Tw0++mUcS2J0JrQbe1ZCZkRj9P7BaWdPq/JWgAveIoiMnZ
K/k1K4Q/yy+00X6DAROD7tfoaqIbjvslFvp5QnjcC4Z2HOLdPMgbI7DGZLSbUtxQ9OTx35VzCf3u
CNzaZqFMuh6FawyYazdKvi1q9VTTNipDxtSABMPJ+uGhOFdFusDtD6Vy6YeT5eQP4K03hcrzPpni
IQcrdA0JMIlYMP2s61u2BLCXmO6b+vQR2+Dk3AX+Pi9zz8hsnD0IfebFnLBg6GwJ2bmbw5iwUVka
vVahdJdMUUNz/G71LkwKn87jWcvaqQtgujbc/mB3A2sPcrdtwZcCDbSaqJca+FI04fbRk0Jzj4wG
lNnt8yEAqolGYxmpM1qgr+RDSZZxaz63B0dPvt5UBnk17kfAF6kTC84qRjz7zvzt8IqFCC1t/uMe
qKD/X2lqkcpMrne7/sQ+tHck7+qJdhW6qb0prveUkUYYBjHtgD8JgaSX4sk0uztvXSEhw3eSik1Z
EVSJsZCLswf3K3rYnYkWLwY/+fzUcgbPezkWzd2zyD7sWlVnQsYgafKb8S6a9IzINpuqh5BECM3f
UpWCv+szC74cCfTh9S0vjDxSbuWiKcbbxLQTsbVZoGeb3EDWnP21O+rnrsTd6mwQQ7/BUwRXMpiQ
bDuUfV5HXnBbGEwmD+qFSC6rU4tueH94l+Yd0PtQwEinGGq78Kqd+0DyYWn7rPbxfVBPy188uE62
LpmmvDAzSWj41x9Hu3+RBbAwKJDzV2JFYAlVl/nlFDmDr1I25oQMsw1kWhxrB6wIJYhVSlKA3BNb
iUdg92sEedVVaLAZhblm3kpl41RMZMJjI/mICj/c20m6WuXJO0hZbD+v2EZ3y+E0uNFh76tG3Rnu
FRLivO09A1Ean/3+WNUHc5gqjQeVC4sk1rSx7gxUIbvpJyEzwVgUZSyOpwIaYpFF0sbg1QW6DiVL
VuGpqY/s9Fc+Rj5UfvoHPzjMK/jsItGzVIWyICmIlMiMAKbLkSOJECtjrNF3TYBcjJbj5JB5iHkd
2uXIxF4W10ucThkD8S54EaPOeVihQU+C5XhH7abHRm8oHHruasmhWZ+74VLOLJs6Sy8Aj2h1bTrn
xp0pvFvIKk3DsDtI89elRpeGnMYAtUmsHCbwLW9YCRzktQLKZPGCaHb+ss2QohwBfW5vd+rCxtzT
xfnwR23JcqEqWejBEeCWhMy5DnW4WQcpmXyrjfJdqwLjoLmf+EpuvNOfLujzVOxOfPGxXy2narHS
M6K/DpRAGB7mVkiLFp8bITZq5oddtOo34R/5N4b7BVSVY/bRKlBsUE8EFSbJAO1yzym08TkLPTp5
M0PwUuUf4FZkdAkSkOH94RZuZZOgWtP5i+A6pAkJs9dCu1WWAm5eHyFZ9Y1QHKleC+6E0qfL8Dao
XrbfvgzvIdG7C0KNRhFS3TONbYzah5V3H21KIpz9dK3JM3ARPuqZb/hJVoJrwgjvCSBLwmA2+g6O
gp6Dk3oiaNuNfPoymDJB9mCacXh0nXtBbDjTBRuCH31t1pHjTvDQUbpFrBemkU/j1hitB7F7bf8i
VvP55Vjv0pRlqPhT0174iz687ixgJpO44BmkfVjb0EfqvZEY7w1PyTLzD5xzR21jyKiTxTm7vky8
sOL09P+/KuKHa3PalG7rU9gwMYQDnZdC1aWkRyFd3fM/d81Vx+y6uz5AYKmJLtHvqRbURBuWdYlo
S5Q53dP3elTG3FZ/3x3w1zvdhDzHksDZWFHppUNahibx6rc0rPbzLvl6r74bUXR00qEgGKHDMYXd
U6+TiPD3sI6Lu//nFgTk4BIHUoct4F4LyS3Pyf7b18o8Ua+1WEsd0JkAObDM2CJzF0QXrx0irzsv
3mG8IDeVIERZQa4L51QRlRRPn608V/9MJJod2chttJQ+pAyOa4RB8UcjQUEmsOsBOvmJqhfztenI
JFEytf2ZFMKe79FJvGvHBg+VBZGyZ9VpPGp44RueQ/TvxQlKST1HwTss0mDyjnHcGYaYtfhYiOav
6/BrEj3LsJf1stohvuTNtfp80AprSwgzRAy7s5mqeakHQs0udAbH/G7MwpQOKFd43KK5dtwW6S7j
ibzix4OcvH5Cy1lUwe4d+JVxrA39YY+CRjtP7sqSYGsqQuwzKfkVlzD2YrBJ8kNxEZcQDsGMwTlh
cYA0P1nj/kR/NDDx/libFKbyOCyfKILNCl+CehhH4hmVp2PuvNxHhtb04Vak47p9syiiNKuHZ4aD
EUcI+48BxafcW09gTTCrgOT/LBEvaTeM43QjwjXSBc+qG7DaniKloSptmLFuKy6zItc+45XI87hL
d4ObwYhsv/eBj/VDNA8hACsuwihuc9Z/zawuMX95UHKXfcWUTy2R6ncW65yKuKkyn+8QXAl7vl//
TFxEdLhZQ+rjYzVJ5RH3wCjPsFldP496S8RlQb9RYbyBUJN85mkpHCKvypEIrsQeel2+9A02Nj2H
rCJFcuL5TtKzAtC5Aap+0HtRT0vGL+ZMMOwsczvp+Q3evyUDRt9A9dRZYev5/Lmx3TpiY8quG5VC
BZ5Pp8t8I5UqrQUu5n/NHo2QgOpbLeJTUZ+kGkGPaYPUKE/CsZyMCGZZiEOVURlzigUvoCXPq3mc
xitOmQEByLcBnTtA0LsKw4Vc1FK+omGMFcy0lirWnPfJeM4WuT56jXlBhTN3O/SA3Fq0ALbLwov6
WLDDtoXQ1EmYw1H53tw7nVL0rVIBxJ8CCK6HyXJcR9PRMSk7jwLcDluIknMp+ViAE5sg/CLBcMjh
//8j1/DGQII5YuKkUekal/oOyzlY8IqiTItj/xnyGBXLBmo/6xu7vPPL894XUUabL6jjoaD41Ewl
JrkJZhcExHEej32ZDWmqUSRNRGOL0nkxeewTHumoJNRWXOnMPRrFV2qdddizCL0u/Ih4nvgBh4YF
cfWYOhrw1c3MKB6mI2D2PYF4TUYLwKHi1Yu7YJxCu1D4Rf3eM29JgEqz/k1NFoD0XtLvx8ysN9kL
lo38KfvpgTCjQcAFIS3B7nBy9LtPG8q5yuC9S2SiUObFiddd2wLdk+wBD3WhjtGkDyj7oumjr3l2
71jh+KZG3ocPDaWMD7nnFol3uW9FMVdJbi/A/rcFBiwtGUM9T+VYfAfTYrocnWvsNAExEeawJ3PO
lcBpDF/PTfcwhfU2DLORz+2RBTMq7aR7NZ/L+t/4P5NMLM2XCBq5xwfjOm8GUjVD8I7B4wQlRDPi
+J5Q6Tj/PH5hERoHpW75WcTlO6N3uZk9RY0A0kphB4H1Ik5xn0bMqfmE1UxWu3Msdlg3RMElLTzU
UuDPDeQBlR4G35Qy9hwqMVkdZHDo57HdVrGw6Tw+OqvJh9Thb23x6kUDTobhHNF7fSVPpRkwEfYq
QOS1Cn5mjAH8cNyZhOPNc5RjZMgFiyWDD4//vgQ+4uYs1Dqq+/mGaJJtLJet+bYeint44eHYeiw+
Eez62KeGJpGHg1whgAYP3UOEsMtCIv5EhHKs+7DKiI/BmOEtK3sE1reU2U4mCWUXJXqA+O5kwk3V
h2mEKErW9dpSRly4cLmVCumTh+yF4dKE8kHiKruDs7WoHVadVhxQBMk7kFYw8/qmnMgxPjZu1Fsr
10vIeW7Fh4pnCyu5ZX0pggMVs59hvBLHSURGreVhz+xAgjLlLP9rBk1rZnZ/a+9XMaKJyxrFgp/O
seT9MvFj7hl96IXAIfLDRL+tqbr12sbdJnaclO0qqLs/Qd5yIBJ47zLjig/YhsSz1LPEl5d7XTNr
hVlFFvjwbUhMtXmRv8LB8AWzySvGn4oSAwcVDw+RDURpYB6OtPhLWKLeu9R3QVZWRN41dVxC2Nqo
gKfca8LNE76+5EZZIkIIbETOB+FfgZFvy5Jmd24m1KXbpjVMuBtfS9ACyUJtWnTgL/txJKXntzi/
wPWSWi2HRW/N5o7Qjitnm5bOyvTkIHy+GsCRKzR2Mzx3eib6EpozP2RMetTCm7VS9Vyeh09EmlPT
+9sr5RjNDu6VwWzcKh2nMQ9oxkB32k+pn8TA6/OBRYjX+qj3zGuRg5x3sxFJr6X8n4snoHW5LOM6
nF6g8B8BNOs3+WDoLPC+uVSFVdtSzxNwNXR8OEq+QU4SOj3c/zhYblLkFr8WM5H65bXpRD3klBX+
wYhACEZ+rQXuY2Hw9WISFRJu6If+PF34oXpF89Vx6Z8tvzoiqFR9AdVLbm/x96h2BtCrLbtHon41
F+qOA1M1UFzJVmYM5NUiSC6MfpFDedTipbeZM1d7LRmo7ljjEr2x69Qdjc+cmsehofpFOxk3DF8e
JTAmYQgXnyfYJilvKIoli8XnabK/XFQ7EqmYfy+rFS+cy/EqkJCvQrLzfjhhRy8hLCVDV1NZ0gEz
8+2wl4oNO8iS75wQA4UfnqSk8U4n4qR+FM4O+K7lunxWEzKVSUcnK4dSRHsUvJ3EDiUvN4FlAmXe
/se7Gdly7ZMh/nCI2yfGseJYvyU1vitT24Mki7PVUldFGuj4TlclmTH3IOK7TbOfAh9Z+/oBnV3C
jGHKoBRNGMvLZwrHKxW7QMlLrsYGS6XPL8KC5vRzba83zLi3DxP1WUlR6+hHCNqLBbLaIC7uOVW+
k6OT9L6sPHvCd9m9n6sxG6sq8wuhhA0j6u1K+p9DUjF3LyVX6QMWlriDcXbmOF0uPsxxbeTqNi8P
YlgLahRmpOegzvguK6kBRM11JulsYETnYy5MbdWe7SXfBcuOAdC2shTX82mJekDFS/lScdmRCiVd
8zTmoyGJQw2DPFLRopuNaQ39I2HosvGiIR0OCuIUInQAbIQ2fOkI9DM6qPYUPpT5/16WvnajSLet
NKvR1Od9JwlrAvRbvwWwGw/oo/K3XVUrDnUY7m8oFoDOy1uDuA6C5I8ssJnZkXf3YSByTlvqy85n
qD4eMKkunCpyB9Qxs4+UMXsehFao62qfksnTr76QFTzkTdAgTBLP9h7COoe0oCcowwlNz7CRyk8V
YaRyKMvbmVQR9YQ/y3oVJ3LNdUOzEjGA9F7+PjuRkk3Rs9FHfwIXhcfF+gqxvtg/CMjeZ8WeCGi4
w1B2xOQjMai8Vi3yWto5X0Y2fjl/yGxP4uXKOqH5isSyLOOr0tFqUkpkbaEfsjh6xjMnwchbuRU7
NrWeMwx5m8/vF6W2hm5yOZHYxRCPzE2g2GfH0c1TwTM9aDB6K7+0oZ68kkiOgRJVRsFN1re/Aiem
nu4qwsXLtSw4w1dtRTHZ80wFmGPDHTdCOss1zb+ag6vp6ZZ1V51C8gBC6FJ4j61S4i42zJh1KJAf
/U8qTDQekPFfhZs7YtRWL6sCHzCyIiEt3/XLS6B8R6LVEWZ+dX/1g8pZAVYaDmKG9/8GAdCvdea+
mhD14agi1MCL3yu4cjou+XunmEQSfcpIQsg1ztcDLI9buk/DsHr2mzKTudei7b3t00XV/1YiUwJm
YyD5iwLG9Z0YGN9bxDRVx+0M1A69uWVq2SyS6ulmmyOOsRCXoqiodv1LqljQuwJ1RFMO5K5u+bco
JbvNJMLMQQcHkfv76IMoy+ryJmfCJWBNZxZsC+bB5xgqnZ1Jsqjmd568TwsyMR8tbrQH9BP8gFo1
Z4Wiqh4LbRDvyM2lzLJz0e4tgS0k1zK+nBpbK41TRft12EuIZO53TCLTH/q2T6w/q4SEFmKftwYi
DDN/o2bbBjTg37aDrlnbaPH883VPRRzI6ogQspXboP/sJwEGLiziGkEyeW7O3IAK3T2HOOhM2ILo
41NL2bOkMngCiOB2HEUKWPsflFXAEY8tUBLehc+fDheDKVE1EUqm9Zgea2MjMGlPC+gfzZAopYCs
PrzsigKyhC0TPr3W2nMnhY6sAs4/cDPZo8yaBWEmcRbFtT6RRIpfgYj9czWr3wM+6KlHXkCaZvj2
EsVEjq2nT1FcYTpXFH+f4m0tlT95c2thViG+rsyQTDY+M9O0GMANFCFMcx2Q6/PQ5JkbJj5muDHf
ejqqSZbsjkHbdy3YZ6gSb3K/TO+335ZItsZp9qKQdsqp9IAdqQspq59wz6VH4jaCS1b6u7boYhj1
LmyoFayZWARvX8gHZhxYN7EHpFg8GKwZ6PmAhsnKQf5htFucZjF5+RFVwo+oRBJ6KgMl/pucECzb
xv4KhYa1zAIPKi3rfM25F6Pgpy3HQLneVUc1ZdTHyZt1ezKJsngdDjOYHgx97DYwUMyjFkRG19pC
FPTQjtR7zG844gnfR6wUuPEr818OUgxPu0YVrn3BFQFiHSyXNc5SBGemRejRBpixr5B0Mn4dWqCI
+2+ahL5vSqqos2K70CRtC7/v3ujUtU4hISttiNimhUGz5UYk/bKazDFANJCj1TywLt3qtOdhmFhJ
Y/XVepMqcF7vh4Bcykt2hHv9ZSACeGBvGjm43GE8FdUtFp8qRpeilTXyghSFWaNcLxDkrUQSKo4m
s1MfUSZQRL9vzO7Z89YpFqlmDVwAiYT85VvQL14g/Y7Cx3rqlXkB9fhJC/YR2ropJXhD+UerFVmy
IR/cMWjIXbz1oai8fc2ZGBWVu0cyq71xKBsCq+CJloDCDzHo2hWan3uaXrFn78IL98Ras1P6GxF3
TExQJDfM8T7rNb4+XOrAeiE1klwKc2iFlk+vSQ8quoHx4bpBlNytroRnh2pc2isOBdAmENQWjxTv
7Ad1uZjQZPlCXswxWxbYAvogRz6I7nsp2Aef69ArCNGUtYgw2jY+CZhqB8xW+dmG4puV96Ibrp9D
+jkRQTbNhgU/IF04+EceragUIxLXC7MIrrlYsZKSFkz/MT47kei1E047hNBAcBPe4NeAwsLSPwS0
rddsTqjpGbJsNet8gQYAt1K/g6vT6Ysa00aAfN28bHkuQHJM8kRpKdQ6h3TRnJ+scE9EB6KXjOz6
Bd4KERUeA3JdaTRSzOAOWhFrOAaItt1DKD6oCFDE+KdL7PXphTamizVy/nf/XI1lVlufmTb9mPtz
W9am6AKGPACyme0MLsZiwkmLOlzWNMCGasMenj4INtjV0XHw8l1LglUTlfFkfllLeBPFIkwltPGu
RlSC5NwdllK0ALQoFW0+vDDVcWiehUopx4H9f25MxRqerojYCSbyFcsdXbYcem4vnBepuuRW9Bsk
nxjsFbs8MIJ0+ecLneugc2Ez2iQH/nCB4akLDeoJoq7MTuBrm2jlqrnOSKLKrXasm5r4OpcrofIM
Sei0S8r/d8KFr2CfV/uHm4wX+pSZy3pDEON2u6bV7JkVaBH+JVTTxgF/OBUCxXSW6snHeaUJOpYI
gOUqYDDChhvxET74u3sEynTjNK81+VMe/JsD/uHXJcW7d/db4vq4Upm9iWBW9wE22tqxe36dCz7o
kQzXqzd3GojjodN9DNRBleemWtkonkQnamRIJqvz0ZAbBIQYsS/3B2C7UAQQr2C/rbk5jvG94l1P
kMB89ov37JdXvWl+8ZzfO9lW+ahlIyrSZAltQyxQK0SvITn4VqgPbs1Ru9MBKDS6L9MQTbQoRUFO
z2NNwWKUlll1yYiWoqiGeEeFHOtPMlLlVEPhD/2+aotMzOZ92oLrEvlNW2TzqHscDkcvBgga93bE
468LZ92LxxLQ4zpDCxQFnDySOdWFp4R6sy5yO27Ogro8oCoDTay21BArupMvIn5c1x7doUcyzK4/
2t8HFU2sPxDOw/zU88bZbv7u0dC+bd1M1VAzuogrjx6zw0dySEwibwF2Jeb4MGhu37XBsZBBch6/
RjC7Uk0gvOiA3He3LxNR3Vx+gCOHubxNGRG7EQhL3sff/QUzsUJQSgwGIZ4DbIL3khP2hM/2ev13
ymIO78fRSGJ3pgOh3RXjMqqQGXvQZbKk+jdBz29BA4dsRh3BCypqhVly+qIDyYA5vXThf+7YjUd1
FOvbG2IedQyHEc5bFGvkldJJJOy9d2tCFynq3bhrzpaZWWWRl9xCm7yr2PLhfkeZ5DSUgpKWU74q
uhc9CA26f1NUdsq9kJgGg/06laA+vJFIVPEJHEaEtQxtZduNxR7IK5W5Gbhw7VxI3/AmjBNanMgs
tLnRJaPNumAL5BjE6iQUDAgxAqFmos2cMPdS831pmMTt1n57uflddMQ5zZWpX7GQvOo7Z1cx4yNN
/jFIxuwSSCMfCHdBjeR4AGj/BN9lhDpeDra3peGuDsQzrs6/OUIsNMCbR2ijfMhvFu/qxd7BzRI5
FkA828U5fBfCZJ5dKlPcLqRR/jVCO26g5tMu1bkB/+YwkiFrz68UaMhUtPajoK1+I63aHbRxENCG
VP1rglTpjRjvIIVxKucnP/LYfjTdtI1uXX417a1T26S2sYo4BR6PCvQ5aLY8ZJ2IxvtvQZmJrJc1
UOFYMtshwGHyxbn44TDY5/epTxSocswJcS5pXrZRyavnxIT5Trm2xViPQ/fIsKTPOnoCrHn6RB4Q
km3IbkNjw/VH4uk9NFFKUMQ4sdihVFaG/4DCS3eKMw+a5djTnV1RZl9PvqK3Uo9ZdBqtp4ZHghzH
FaoU1ALyeqyZdKOVFHBB6+fAJPdXmMPgrvOu/Wi0GRfd0VOOAkLB0HHzANc+jXMbxX8uRQbTq2oj
0R2XKHuZC/nlnVXCSZ4ggUuePRZr3Y+SCUWGKOuJ9qCkxCPhqaMLl41HvXk1/oPbg/NboMc4MwD3
zZhJDWsPz0M5kI78pvacztCZHsuXgq/NEU+znpS4xdn9QeIxZlpaYQaR57QnN31hKMdpSLkXrsRV
HEAiHaB8y+ItFvLvlkvvZNpNzibM/BLov5GPB6Y0IihoU5j2a1B1lYhX8sQPElKNBZudvwJSJMgB
WruYGrSlK9j5OVM8R1NGYr9vLY/wboY03JwpYHdVZI0cwo/jukwaWGv7Qa3fXGAhD1FY0B96nWPt
uv2MxVu652KlGwESd4QJsdtGDhrvpZGBcwqwhI9QPTHy7rwrF2Tl9+XzswefKYqbkRlUiykklmj2
X3lff2nkHWnFUesPJUFylm35PFaQF6uw1WjzwhyG3WDK5Kld4m/fbhUSeFi95M63E28aRHkkf0mk
7V7Oiq1kEdD39mc5ZO7wXjPlXbJ0tfhDm/a75U4rVD1vBdyB98yZV6q5JVGEp3oHMYh6Nn+nQmPt
CmSXcqIGmuyCfNh6VjdbdLUl3e3vCLVjFUeXNMBWp/cXQ7B845KN3EJGBdSYh6VzWnO12JdGtpUk
Pdq5qfmy6DMhEW3lXc5DTA6iRMVJ8dI+yfwG+d7pwNRs2xp2mG2OI2LNrDBAVmIqegKHVjVJBHCV
Z74z9ahV3LvZn1IPPAo8rtuufVAlsBtYGDfwkv71X+8PRBBMXxps0+YfXqG6v6uF2Qbfj4ADBbmd
DlysbRrPWVl393qdFMnlLONRgWeURUXjmxj0/XBDBkWMGud7V8NG/xycVWxLHgLIGyMBzy001uKD
2MwXSFa7GGKpuRlAhJQ1iZVfGuQDDI5GqMpMIMmPKnk08llIY92vtp4qeVE78f9FmDJClTHBR8vO
wCOgl0aubOd17+ZDRNvrPAHBQj75zd4wyNseqjffpdz5rCvPEm5msSJl5x83VXV5NBNHwHR9t3ve
AhCbuPurQj+m8LWb/2LpQ11xIs5eOIa2AhQyLMIKP+7LLc4952PclH2zSwEqV85XkJW6NSzeC2OQ
bzePOTAO/Hwgl9A9wgBrX1FjY514PbsFkQxCigcPJEzfvSlLpVyR8xCT4mlyGApCzToe287I9yAq
H8GN2Hr1MuMFyMJnrotE/0H5AnNhRWfcdVibk1k2DM0X7jYmfdOX3Av1iLklfBQ3enOEH1zK54Rt
ALYuyPtFyEiExr8cagEQpZ26wVpd6Rj4Lnn85fTdIGMpgLLgRq7YYc5yzork+G6kXiBscWNpAQcP
T961YXCFOODMLGeiD5KnNGnjmeDxO6Ij0H/uMWOXdU2X0U+uTzLUpPQKtQfro7ZtkBs4AFeg9B1Y
Q3LWm4bKi2jBb7DUtDlkG3LihXHcDm9jDlWVauBO+4sgqsygGj3rAudO6dCs8ngOlNdYWYTFk21E
1wdsokOTj8M9JuBnfwL761HExQiGp1i2WOADQyOh9TB/Bsq6CJUdRlU/N8ch1V/ZiOJTXSLWdJaa
ftza6upH/spnR1c3Y6r/lY6cC9Q/ig==
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
