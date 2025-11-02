// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:08:58 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road8/road8_sim_netlist.v
// Design      : road8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road8,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road8
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
  (* C_INIT_FILE = "road8.mem" *) 
  (* C_INIT_FILE_NAME = "road8.mif" *) 
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
  road8_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18128)
`pragma protect data_block
3Esigw/gjlGLRH+jx3ALT1KuDHvJlrwUTpAz8hNnieVymTYaBl4aW6nsSAh9uQZVz2rOuVDjoxd1
RmCDBbLWKCFg8veML5Hz+ov0HVjdipLSmJO0TCAlOjV6m+cubtPDBAnVayb0dwCjbRstAWZLjAIf
c4DCnpnlT9ZCTqwGaUzJoQDQrBzPnq3qMtzJRiV0krBS4O+nsU5ys8qFmoG4eRzWvstyiC3zSSSH
Jk/99Szoa9EpYYpvNLiKQ5DWJf5sK7pENWvAumz5VsF+5g8bW+A7fnA/unn/cbjYINyfYWPCnpZX
Lfeg3GlYGtesVwyINHVdlMC/GtpF9YOTicE3UqW4NW/HlhyCgze3i/U19RWETZJqMsxvkdN5Tw3L
yya1GfJkLGCkXBIZQLsBAOn+GMXOI57xlTJcw5PW14+RlyUDFAtQwFN4gk0UddBd68s3bcroUs3p
PdRAM2JtCFPiC5QMN56aJyJiitBW+s/HSnthSTVZl4Zqt0qrj9XBDFz879wWgvUamMy71Fya1sGu
YtpKruJ8YRN6S3zddq512k4xjdxmRaU5SlrcHJRkiM2BxFMS22iczrhl+tcLl0CgVeW8jDiOKeAP
+KvfC4Z+bkl52DyNEk8pbFUJWsOTl3FEYtSHtq916GaKH0dtIrZlvOO4vrjuZc1qnh6XWHaF9SFo
1Z8xEDCqiIj8n1xg/qL/mpUfLKtZPXmMkF4KMkOvX6VOrPfmlRwHMxK4JgkH2z4qFH0L9WcbYFaZ
lmlVN32ZBWv0R97GAMGHveEGBlXsh6eGTzP0SHnQMW3lDlmLdF62DyscXNahRoR9SjO6T5lcQTXX
gmhQ5uiAiXS+wI7fc0WF/XbKWMqCrNyh+G71p51JTK41AymeYjJVqRNbnL2jKzNYWlcbJYHSX4xu
wdRzP9EuGPCIknWo/KiYFloIOzeJwD5eeaIolepATp++vowF/TELP5BXoEybIUxB0eczSkfcX7ac
fUmR5Sb6Y/SwprrAcfKtKioXzMEBJGBZ6rblz3bBkUNSp2zHjD5AOx5A62bsm1IBF+YMIRStkH6l
zOaAvPTCHVZyv6GhnFNQ9nC7xqxb2AfaVe6rUp5RejkAE0LWlHoNwTuz8kxZhUKu9BPQj5yFkNlZ
xNOrC/3yomiPhehGuH5cW+PvFOtlfr2S61ygQh7Zvni1sakLdmlKYJ/syZwf7VNANnGC+mjTMusO
AJfkd4R4a1HNnVVWsBnPBCduyPfC2pYneU27xHZXcPFh02g/7H7UlqjuPFIgcoBl2d5skj/iDY/b
a55s6rwaDddWbvgTxWc4hLY6pYLL7vdllRG70s2Kxg+XAPD0DVRJ8FjeE+tQKZOW88EGH0H54s46
wUQ8UB8TfJ3QKAGLvYV5PLUEI1kbg6saYH+OD0Z1OZpL74isIYd4kE+uQQXAPyNZwBle7gLrVzOX
W7ang5/0YBVhxYcIU3sp+3OURpm2mGu0R7f4RBWzlzXx1gI35mbBELSlmy59rzlEKqgaHlEidKLT
hWW8ExZ2+cEKD1me6yUUvkkpluEIX44D+li+KhCOCOqfGcAdYfW/KD0r/kC2oA2qIpx6wSX0GOAp
vwG+H6dyxiTGi2T8TsR1l37NjMZ25qqJuBTb3DwNKoyKhhegX0nCJUsjEedY525Wp/3OTAHKgsCx
hrjEmcvMOB/okxk7McOgBGKo0iNbNCWS7Zulm0ECtrYY9Jm30N3mEDPZvD3Y03AY+Olidv+WT+l0
BZdUt09uQmWZa2dTkiltOJTjVQHUTY0cUcGOwAluEiwsiXnXFX7Y0SJ6J8MR91GIAIFAUUW+LuKQ
o89zp6glLSXb0pcP4jnRCVac10qYS9BuHyz16uX3DyA28EJ/YCGdg79uM6GI/DQJYMw0OyumXvX8
dfPUx2Wevk0dLoOkDYX2WWYlcZQw7u/RUtZpv+IqDfXQnmIXNlIAI42ziYrhJlvKpZ3a7JsYw8Rl
ZQ4ByJOQYG3n0sAX5VU+vXBByTkWzDY/pb74W4Zw5C0z8/Nn4PVK3vz3JsVxV0G+/B2OUVHI32TP
QES0EZ+A+ZtTSbOBNH8ZPwmhuSX/lfR5QytCWckZwxXgaBik7f9hdVKcbJekd95+fBWrhmF/uOcY
PwFMuaZOfv4FGtKNChxMaWmQfBJo+/tYf9Kv8KjlKNU59OthBk8xGydXn/4n7jQM3mt22rhcP6k0
i5EZJ6rzHkxlI/BlpDmQSa5qXszn1Ni+KBa6jgJYsPKJAVUs4cUfUIa0aTHAQtye3eWxLzVBQaPd
erHR2FOQvAa7g8XVWu9vrx2QzLMcUyeg8mVF3PbZozu6YtRzSi2lzEyWdEu8wz/szLNKP3lcZNKI
wWdxRAG2r0NVeW0eOObgtiJSOYa55jJN+utOIKOaB0WgmbGLhU0S3QPoq9kp+R0tqh+Ze2UNKNM6
ZT3OOJ+XbIf+JhklurAvZLF5e84b7Ru9YMIuNliaiSGiFGLNynnzLT/NTMkdI6cRvcZNMk9ckkov
Wl0QogOo7hxyqNb/B5C7LrfTkGWG/3f+8vplF1NjKecmCLxpaZpXGT1HsaO3piygqATFO8CdyGFT
emM9x9/lMX+Y0vfmMCUQb6A4qHyScFxMINDzF8Jl3O07QtRPqsjg3hXp51KjVSDZ4eThs6wUkZYs
oAw/rsb6sfPJPmMaDVwlgUacedVZSc3R5bFmb8igNdVeHfvzr3yI/5eUAF1pZh44S/jbyFqlOtya
sVRSHQehuGIXnefb3UAUW8BXxKl0DDHDirFcUT0k28T8pqJjhdBMlDq/7qjiOdhnWbisR29mf8Pn
qUyabmAcS7BSXB5wt9+/zuUjVX5MWHJPrQDM2bUqlcSlwy5EirgIk17o4jMYUXiQRDyQ+VGxj+Fi
Odr10F+NAJKbohAdecDQ9BK73FnqzMzBgyYB0pb4QGMOs6z+3ApxbXWQ52dVNf51fY4WInFLg8Mo
7N6sIv5SJljxqT5wAYgWMgQtpj0iT9scmJ89VCSUyYpbePddtuxmJXfvtTAE0hsJU8vV2I57RsSD
jYBf6Ygr7MS1wMoTzdNWv59JKsw9yB9MCzLBeL9E/RgwzgJr9e79pYdqeY67Hb9HO3nyuqkOcpFD
WKjVx7K0ui3cByA0GiLUNK8ONqUlEZkaJoPzLny7seqGBoQVitVxfy4TFaIE/dUE4hjz9zN0luRR
Ard5vj7xfvI+DEbsanDBe9CrDwVzYOXW7QSDON8Co2e1rszyhZZfsw75xpjCConvcrn2iJ+KKQ1a
BxrjOIF7BBfgSLcB3uqT8Z4hT2RRaE76LAexPdPfezpdXAcDj0uMwGE2YqwbYh+MVuU429QLq99U
2srrgF2R3yikdHpKvJM1x7ilheLmFTXl81knS0VgCOhzQaAeVmwujGj0aWH9PmngViDNQDLw6bNM
JNGrcQZHoxmEdNQ1lYPGbvLun7koGC63GtH/1yqL7ZodI1y8ErPQam4W40Mdl9419h+H6W/0FIqb
O3bk3xjoMBHpgIj8z9RwuIP1ffS0Jwi2ZQW5iwfz4i4dGjUA24B6MnNA33TrU9O5+kRyz5SYgeZT
8as41MdQVlhOujCXRdeRwelmTormlHD0AXUZwaP2UzfuFxJKEe/IvvgJ/8WJHkZEBLH/XhHWhzNG
M9WHBSiClfx9ybBbmd94/yvgjnIQWwWJMNk4wXiUlio9tImS1vXd+iVNu38zAPbpMUYwd23S0zW+
6ltpHtsIwyjupjqHnXbwygp/U5hmNNOc47mxIVGDewVEPeGFdMw+9Wbiwnxp/iSsA/xAJ9Sn/KmE
C1Bd0XgL0rg7aP4WkJ34DIP1KwXpMKfDoDwpSIJLedcs7J1xrfMADVfeM0wSOYAnG/vqIZ+71DSV
XmX7ShM8ntsZiNstGiyOcBgkrDOyhzH5LXQgxDb7IOz3ACMwjaUJju1RUiZToFBxq0aBFmcix3yT
te2ROUsfWASiiTDFjB6CVjSHDnep3YdhUhnEINr9vg7nxWuHKEw55BKxQWQhiMvdkD9GUYH+8uT8
g0RamGd8yn2e/O1xQ1I12+h8q4K7KxNZt8SDG7KaPogLUrKOSnzp0FywLg+81gpTeVYdl+klfuI8
YsfuQQGQ1KJw04QMUOMtGYwlarASpOY1/oiYimfxV+xBLO5hFz7gnkxHH2J6smyWCuQPKmtrSoOv
k7H9g6VmH+7rtuE0A0aoNQvsxxFO1w9V2JlczKyIwb5WloOxD++k9ZDvwP2ozvcuKZaKY4VaGqsH
Q09nSIFfUKguIuHpiiiqfNIi05nWwbFc+sKtySPL3QmQucL+5ZKoEuql23ahQihqJuqCaCUkkJMX
EFx7mJ+DN97hvDX1QFK8+9j6SeZQNiemk1jUu9X6LZZ9XtZN+6YwSSRxvcfvXbDP0SFlXh9fevrP
gCOgncy3zAptiGMGdCawinwEocS18U0ymecLilv+p2QuLpmOep+On5Wukd8L/95Txn+qvPZiyNpA
hZW3H8nCiywibgiUC8kROWJlWGmssTcXAe6nqurpOZKKJOojDUQKBQv4H2b/LxMeeFjs/ERH/xHA
kWJUs6DN3s0D36EN2i51WpmhdOsD0A9HHDCuYu8DIHphQectNp2vDqFdzfBwukH/46yH2E2ysv/o
lreuuQ/gYj2pX5Q1lFATMG5nEC9OIvwTs9Tlve9CeLzAimgwuRXSmerZXuUdKRPKaqpUGSotcrm2
XDUVRiMP3eszgVIr6LAPbdEYi60mZ7p1CVHPRjqDsUhNn0J1CKft7WDxUTLdw6Y1kmLv0gR1ErTw
guhGHeFM0xlCNHC0dFjJVlO5W6EiLGuf/Zj4J+8R+u9MS5Wep0xVm0m7fsiG0j/Av/KnINC4bS62
dKcLWlMX/QhEUM9rcuULK5kepXidvZuTBs8C5GC3EJZGM0dTdosgW0wqkQP1ioo+ORSSd68nQfxJ
TOEJ/So02v1jeTX5f/xKq4rhExlnnpQ41XRl2bBQm2T3/eLS59sYT91mSCnbohoN8BaB/P+EUYg7
qXg9U9y/xB756PJ4VYzwQ1HSKF85QQln3Sk+DskYFe6PGZZQRUbA1aHrvn/3rJk3qd3ZDxGhDgkx
vh8R+xd3oKlidAjRk7laiuhhecs98BkxMdEBHKmIIQ5KN8ifxEjRB4L6R/DKTYsIruoN5G1rr2Cg
xgBCQcoCJqq7579Z8GHOJimOnDsak2XixdZjy9kaL4BH24d2vLfULdbbK547BxAb7kdaeH2pFmcB
FTPXMCI+uOqHIod6u1tEysJGaCO+Jxrj3LBO8uLX8ouy6NeGqlPxZ2Rs18RcKr/U+epRE6A0s68c
WN1kduVt6Us6VFv4ZHqM4UZysf9eSP5gUiN1gfMj7ZgwkIwdEEtA/4OIq6a/EHUNxwf8AFSVVKzd
ENuzApngdT6KXmg5ZsY5YBidI3AyCcoM1gBzvIAspxRP15x2lYzUdKOBGVS9yRoTnOX9FP5ia93q
WHgEr3+O7Yv8IP70R8h7HgjYDnjN3p7y/rrPqmw+sRBxBCMU4gnaVuLRBWxO2Zy36OzcWaiIspkf
LAfZ9jaHD3ckya/pkCD3c2llRIfdfOkkAsd9t/mpE2fl4RDWl4gGNSWbpWrqg7EwYpAdyGNUbxhd
4owMKJutfHJUdE/GBWSuh+0TpKLrkUk0Tt0Y37xcTHyRU7PnPThr3nhum2jIsrfWYV+aaQ3lDkFU
qpaGyK0AaxCDNsDyiIGbH6nuiZKxmgZAPUTdvTc/xiWH5zsuRNfiL9fu1NxXTDo8pRxQcRd4m6Nb
HmZN3O8qARJT1pyGVWi4TtvTjtW/FhbWjWDtBKStUdlIbsCHOkLTW2k31fE/E/i/+5mSgXvTsp1a
3KtbqUopKHAI68Y/mEz7+l63VOAValqDFbsdohLzW8sFsQBBLxZusODMRK9zJ51kHvEHzqrWk+JB
qRqESBfgRFrueMBcob8kc9tYxhJGJzR7txURxcZ8suNORcenN1FFBPmSfgGf3VZnF9qRGV1RfQ2k
JDPpISaWT2wyS4NZPHvJdVuqL2ig1nfg0vjeoz5JvodjRpaz1qD4uUUgk4FdbJK8tt8wjNDC8ea4
X0jYjM5ll2IsZfN5cBmN+hMMTLx3+B7niKCRj+nDWBizHsPowQOIzRgNbnlXr4Z15Wm9iIVdchKr
JkFvcPH+wtfNVN5Eik8/OVbryqDKbWO5Tz3KKGyYT6pNBhXpHyEs3ixABA1uFUTi8krkrFU5Sbnt
5cXiVxPEcnYtCwTb2erNGlIaoNArDfjgQmuju7F3RAhxf93lsjI4WN4Q1hHNXdrWB/5da8/bOetw
yUL8kb42vQEIEOKvXPYkZsQWF4xKFD++Q2arLUh4a/kQqb18JwqJKQ8TnPKQPZeSqJzpeMSd8sJf
UmbFm/7rvuJTNBLtTKnWJs46aIGMChD3IBLnt8FrWboPFl9WkO5QEwfFAKZ38ehODjEqARxg8ZpT
/t7qy2Dy5pNHguZVgf2T3UxSdoqirnvwNZvt0B5AWnHD6CAJX1DeT7o94KIaLkXvl9sNE99AWhSp
b4Sc1ssHpY+2janY7n9upebmmDqtroOTs8GvpfAYsoaJe+R24HeX7KL984PtRzcMHTVYQkXjum41
SdcAH60KPaUUts1qHYhqT0nGyPDUikk/9xDAUeOKgHdxdqX691Eu62emCu+AuIzigRUJ9EZvBDbQ
q2xvRjiNi6A9S6PjbwPk1EjnJp5souM5V1HI4Ny9NsFFAbjYen3ouKvNFv1PPZldEFbYYrkUiAMa
lDTZss+89zWCZspc7J4o1uRKzUzJMWxHurxTfkXj7k0wRHrHJSG+4R1WMs8GJnUBKoR3uofYQXzE
lxGkCS4CDOpEl7yXsp0DWwj9w2jLAAzIbAo/xAohaKPliLhWLYAeG4mN2KMSAm7AYAY9SVP1LJus
oeh6Zfyqlz5grsACQVFqvJPdJ7ZnvvGUrCFbsB7g0WqmU7PhrPCewq9J0hgCzYAukA1KOhdU2PkV
LxWJ2P0IyAC2cO76thky2X8xpyHs/KrdYhWW26W2nJVzFXY4Fl1CFDgrlLhhE4YztuBhXINNQk8k
OyPOh6Q/7teg3mjtxucqDS0Q0y1Kha+3kstFiG6djlNhXXmzVMj0jUO6uvC6zhVPA4YWQPbOjZCk
nFr31LbRkTe4GR8ZYpxk4/6hYewB9LPwaVjBJvpptRPg1sPNKfTs+D6bqV3fDQIXbtDCq9JkQdFe
2AXkSX95Fk11YWzA+FGktARBJ5JT7DiU1z8Mrgk/KlQwrklNnsPQTvDOUrhF89Jl127+HRAz/6uw
nWAuJOqpJiDQws2AqrN+9ASAmQ/SvTb6ixW6T+3X1jF5vcm51ntanWHnv/0Vj85yP6fi968SzP6A
47ZeUHY0DlEtn3MLI34YrWn5I6nGbcEdd2K5tfsxzmEgO36rO8ryPGqMsO1byQ0pIx7n6kNj/7hc
oQ86LpW2H02budlViyfuQ/TkcI4yLEVChQ8Yt9Bit9fk5wj8Z4sk1OuuooVYk63QMkV0C2yJcPhf
v9mlrZLelI0RVyW/NOG+8vgm67ZtdS9Hc+w21IhMxHgLbOg8Cb1CfaFxl6e3m7h0403Kh9yimfL0
Vb7y/A9MKuP72FcjaxbIbaIdCcW4VZbDCTIwdb0th8at56BJJ8hK4XWRN5ERl1Z6H9HZgm5aKUj0
amE7aPfccMFeTG6KU2Zms1D1RHREoEMbkwmQPMyDhdwrgmXERbEUv7PDqqZWQDWF58qffQVIgwhB
MFTW4el64SE/A3VvJER4Wm7Slkhd9jIq+85xP57CjnfYateYgUlESpQjEy0f8q4J6Kwo/F5lekzE
j43kmplSH5Bvo+Bv+vL1Hg4uJH7hLYgb0pxa56MnxApz6A8Mq0z9l+Q4t2i1w+aPI/fkHwo4aGYT
ijAyHuZvGK3RIFwavjBqGNllt6fVRbkI3FXLGgeM4xFo3tQjC28xSMlplh7slpx0SQfq35avGjRf
C/t6oCUWarmlNwtHx0ndwX9Y4uXHIKv483EZynY31Zez/WXbB3fZ1LOlB5Bq+drcMX6iBkh/uKbE
eb+3cJ49NyuK2rFfB0FgrjNaOh8nVOsErXHAHDI4L85v/uHRFpBHo/sEYGkJX6C6Yii8g6hfwG8g
7a0f33asITeT+QR5g/BxlWHYlXRtZnHvpGXNLtRGMEK5vaMZzCkPtVlpXQGMlEDFowC9Q66t5PGf
M0bFVp66gJ/ekFJkUxdaCrhjZS0EBE457lzIu66dD2d2L4FOHrf6JS60trajUoigeULjJFzHUeQI
iyUanQYzA9dcDRM6+AXgjvmakstVX2R3cQUTNQA1/wqaaV7zKI2Mt18XbMxscXk93XKhH+SEVOxs
Hb2whk+g0gf15Ax7JuBjzZjNt3/dNST95A50KjOHvT5DuNJ86ArXl8NFbuHLruXbcfepnAQIggWO
VCyMJRRrhj/HdXSRcqrQNW46wFurI4WzLVu3ZoUIU5UMftW7INzighotDCwQX2hBbVKPOSJinMLt
00cTEm9V3nS+gSq/5M3FI51nde87+SQysVShCYouxYcJLQLNwREK9ngNOmtq/6u4IsFkRodksgFE
yWcaf8bge3d7o31nv6i2kCA6xEOgvMzzQQSgZJrM579yPTBeApsI4mtr42rwz11gocss/o8X9a5K
lcuwgCnKfuBG8dB+HLoYg39tgNaCFC5nzz8eGSUKDMIHZGI5vfSIzkeLQhkuLw7uqMgJKtXgnWI5
kO2rybABmgKpQVpPKzi2VcYDHqOfO4t8Vj1PfRG5quB8WKMGVe8XDiXLgRvOZiBx8z1Lg+JfEoTN
Rbjhrft9Domx940PtkWOhBVP7r6AN5bq3VQT6wA4EppVO9h/uXTmLgMwx39qJeA9sjxZ+EomJPWT
W6+IGcf7ddedcDCuHPBBxQ4yTbL28BxVI/mvb3V4E42ogGpYMcrPmf3cukns/c3CGuiRKmBv4YjB
G0bONM64aK7kqiR7jYwocpBLAlA19yMsX3cmAKmf5XrHrCuTYV6+CWs1UQ1pvU6uYksTaUFGWJUZ
DXBxMv4TP3zWbBE3uHa5Myj87BUk6OiYnt7Rflpi5B3hVj5YfeJwqLDG/k0gBBIgcvlfGjZOw4pV
53Rq9Y1mLi4EILIm0OL4D8Jpl9qf+9UJzmQi0dADAsvuNvkpQunEov7aJ8xE7ymzQGfx09QDts7r
/bToguf11uBSABA+doALthNsinelXN443PEhGfWIs6TDpzR4EkAvnAWP30JmYwlFs/RtmWbTUIIR
TLJX9au4r/+cGgmdH7kaEGAS5ZctL+uphnXFB863wp7qdIF6gSFasrd5tvT8eozcCFQv9evr4m63
ecDGn2JOZiiHV//Y5fint2xkxMNsB0T/Y73bOe0fF3fHppdu5XjJhJNL6CNMAdITV3fCSHx8ENN0
Mo8buKPAblISjl8tXiDHcWI48BPZrZnrer46UWLOZGPlocWbx8+7obJ1osGXmW+mHcWKIAWbC9Uw
FgQEk/ZxsIT5Mtl7YfGD9b8FXehjLvL8ZKbtdGCjYokAOtLuyUYe1ZsSH0rA2urnsUSxSVup5nfI
w6ehut5zoIiUA0G2FFV6HN9fkQenIs2c/JvqxuXYRIdVRUOVdth0suPJbJpZt5eh09CJFpVKK/VK
h3GL9091kz8CrfsuYgQ8JQ9XzbfWt1yg6+LEE0JB0jBuPw4BEx8aI9p+A47l+u336SPNTKUBUGl5
0URRgLIgKgns2nUWJW/9e4cOfCohczqdbcswZW/G3XrmOmg2CHoSDcphV0UOWlPdqTawF0s+C0yQ
ygi8ULoLh9R16E2jxCPQ/5J5wpVyNzGXk8zOzl+PX4oklDMCrzCwYxmHKVJpMraXIV5gkdqFtEmd
S5cyPCog5btM2AWDTGevEEMjDIZNzpeXQJhq7KOtM4z4gCVdM02wlqK9JETLmKdyW5pxKNxtt0at
r5tO/1BKGMcsqIH1Vp+vflZsbJvoOlO19OJVIGrCZAk5mIvpt1JHAoVAv0uqnc/kPgb49oAZ2pEv
O8EeJVyASY4KmTUpFpI9t8Hs26JJSxkvFUq26KOKZs/LDEXfKkubMjPTnVMhqdz0yt3tVcoM6JVf
ewMN0KfZI9MedqUaFUA7ihCGSgZ+dAaDP8OObFDtEokbfqEXO5pV/21sG+GALaCFIo0LvmLWFO/g
logYdimfoh9cDoLHpx/R+ovdJwXdcPF/VkctN0TUmnW5Dpgpf1OXZxGY0hm3B0oveZ1u1Jb1L0CK
OaWgDCG5y8xSuP77nWZIi6D6uNiO2BO8ofo6pSf9lLJWdMosWZ0trfns4lmCyHyv3cdVrZQU/zjq
4ll3dra+GmTjSYfRQhgDZ5XwC5br14A6Z5Tk/5eTf1W9J/YLp6ZxWyaZYg35tjay2wfuygMcXWPN
Gyg9hwfEYVnyfrOgJWak0we6l4Ckulcelw2gQW2RWdHycyCRbN9AmcycOlula9whFIyg/fODDf1e
9gFQKgQVQCSMHryGkgTe+7Jo/jUX8Vbl7E+NUqhFLxoQnEyTvNvR3lO8prVTN5rgvHLO4K+ifd/i
QoEejN8O+eZgFQpJm7GapIoqfqxd6fZ2QFoLGkHaMyOHJBA9zFuUKTVceo4WCwK0OG3S7g6MMucH
8T5/Rksn7qYA+IG1Z1lA/8jWRs/i7MksYbwKJoqLuO8dHBcRymk49RlafHwnE3STiDFzQ+4OCYFK
hTwOk6FtGcR9HmWHJ0DXdiKjgBof8HYrpyuUROBdHLckYp0iLbNZfT3tKziV9bMVGP5jkaFpfLIK
Ld8vxRwUGIMQL+MBN4JCEC2m20rMmFnr/jYXAftkVvFG7d4Wr5ew1RpoSpQzudNM7TwfgqPKY2eJ
CAJwfdtet60ttGy5ZB1ocdvvVTZT4w2+wcKthki+jEG+wq5rTkNKMKjzdFsk2MIRwTyaFS+Numzv
Y1Syo6S5X17fKOwxPfKlllI43gallYZK0IfWWe2gLO4HNDrTWAyjyqjgRB1CFY1fPFMktMDmeiXW
ifK3omzQ4yeYwRFf9iJUt0MOvc2LGFkpQf55Vm/Svym/iJ1PdbZysDZMlwa6JR4U9d3yH6LSX9XO
2HFSmqLzHdKjeeM3eZL5RvuC2ZvXvXewDTBQInybYaO/1RyTHw7SSrgIaqfiFILHUBHr9k4FeHrZ
Vh8/DxyNffNOuxSZqDHkvcLSJ46On/LUemwLn168VWBrlbbHP0m7+xUnK3h1wTklbtMzkevKzxwE
/5hEU1Z4CiwzEPKP5axblwgafqSFjuf5A0jHSFBjhE+wL2ZNyCWtqKp17D0TTLRame16SlTspUO/
6y7E1ZIuTT2N/vZOwtfY4Jot9TUSlbvtJPfzJ/ygWTUSp6ahdVIrM81PmMr7E9p5gub2QaHlBpha
hDOoou7p3jmo/j75fYhTlsQfCamkpauNAOd1ceQLYEIZ9XbeTyZtEehRJWX6aHmyXNDvFnkStJ1V
YNaKwxAFblpdywsEBkJwBa8735oML0DM9EzVW2PoA1tcgorPE4XZYOeapb4I+OLZwuljuPd6kq2Q
DuIF8Vl8WV/16Jk0Zy4cHK9ayP+6/tsOTtyi7w8ydGHHvKaHg+nrw6BbPpEAYB/utP1a7v/O1Gsz
I7DtxzPjiiq+oVrmdTBronVwtxJmNP9J//HmZHGbCYRPQFecOGVDwcrqshxKKg5tBZLhzjrEKSp3
TpmQjEUFLlo9kMlHsIMQqYzx+YMAwlMP0nRoZ/laW/MizNKiNYnLoDUuVsdwrCLn60c9D4W1WTYU
UdJMxPJ59HO5ztR+N67B2fXybg43kQJIFRcbi2B+s50OS77OTwt87+qlsKGbgDw01uJTA022WBC9
7AvS5j9qeiIWHY5zUbcUiiZ3oMuL0x6Hy/5VhUyHugrDAvkm7bRMiYr74xlgm5jBFUuxFNk1cbmb
ce+9c4G5aCroVd1JQCzBAcqtV6Z2khZGpUjJdd+qcSjj4EU+Dv5Avbe8tj2c28gTfubY+p/9u8AB
7N+DHPm+0jZwFKi5puwP/CzF0BnkLvEUN0pj39ZZhkPl6sfBj2TniW0LvyBRKtXo63gLW+Zuplws
7zN26o257JtTsJavHfJJ5XKXaotyrkb9T5r9Bjb2x7eqcDRekSJA/mqoIeIIv9uubZ6CDLI6Iv+b
lkA1hz3oV2zGiJgwzeHcaUH/uwORAhJA9VUT/m964/oTOJ1ILDVa4WBkzDBW6raAoJlxNJu+S93G
bEC0DQPhEVTnPjMgSwvH/gFCDDr9lTIzZwJ7V+zr0raBr4jmZo6SGs2qvNOkeVaXpceYRShlliTN
Wr+7ZDm7l7A1uEiLb7/sJoVOoDBdAoZVpgWcGM6CmKKBuwDAKRMCWgSwQCiA+WxtGyQcs95xtWJ8
cr9KcN1tcIjzVJkhRgP4QMdoNpEbDCb5X24P+uH8/w2u8B49XX+kIdg950uF26eteK5MVdiP2z4Y
6xHo39PRZw/L3HpQV9Vetf9c9HIzKGLuujxx0d2TRyx+XJh93WDh98WTPWcuGvTKdmMfZUMfynOt
wMQ8NQChAEM14GKg3oViL7/otbIchgvc7Yi2laaRfV/cZUK3SBQGAPWpsYqaLnxZnVH+AE1a/W3C
ZFRrysVz/jE3mWP1tsg1HHW98UiKYwkPiJIemvWHxmPfMxxRt3BMXWCJ+RLVzpq5KqVQx6JFW7lD
E3jmG3vJ+TPLHq8oKTuTumMn2Nbp7fBTEeqiP3gjf1TrqvcGzMHrEu09OBbeA+mnqU3ayJ373nlX
RKdV7iBD4b6X7a/kGFHDlwQmu104RDYSBM86KD9hOga/Kdz1+h6WjGsYUUwU2OIGO2xGnxV+Zr67
+RZBfg7KktxffZ9MO5IjikLDBmRqd6aoUHEa8Ei56GDe0imtUo/ZytyRRSwuiYQlirZ6Jhgk/rda
HYu2wELrTcGNsb2W8ESGrzead19um0jbgjqH3imbVgUYdrAZbkIdeQeBa2gvgI7VRIOs9Ea9BOuO
9BAu9AcXyMXBAAWUIKbQw2zr6c/U7cDEJlRNITVm2r/Qg8fVkz2xD3upj2G2HZCKttcJYRpvslWt
jPWiPWjnZtBGlxKGKm7Cb56g4HBtzmGQPzwAZTOuEY00LzjR/TiI+unJvwvd7cgVt2e1b1bzx5dm
1uFuge+mpwwJ05zWMULU3rw+klLFebu+MWH8e6/NCEJ3tE/MiIebK313hJk7KdKdxD4B18Y0iw5h
kZGMzGlbcZflPC+H4PPbJiVyr+jUdYsNc5ah4wGAlRai2gpB7oj/wL9uA9WrmUdFzgiM5iv1bxAs
1M+vR4Yv6NDDVjiLemVzmxcc+zKuRprADflgwcW0obvUP7IMTtOvUDzBHAA3wxxH2CGTRb1bh1TO
zKwNT/sR7XJgt69oY9WStKv27pCF02kUGa2nTCMimBpIqoLUs9gvTFafhMfN6u8wSMuvtJimyAAY
enF728n5BasvX1oW6eiT2bl3FbH+kMPOwunujphlQWmf3a8ABNKPT6CDte5jxXeGuIte3LaSHH+m
2gVgoa987AMbHXwDUbIo51XzY0X1/DHH+a10WySD3wL++oPaStD2CbN2cRRt9l2BVq48qdNDYToW
pszQa6/XhoiwIVk12Px2zpQmMpOy2byMK5dwuMEmsoEcKreLVzJXiaIzXkSC/1wUvvDqqL4UJVHO
jvL2eDslltTw9pBbEgY39zCBTEtxfN7kmNpUTN/9ZdyGJ+noFpoulvMntkFsCoAi0E71Sl/UBl/B
o3cIEpmmaBj6bKr/aiYpOFrnaB2FoMgzObNQXb2rqZ2IDX7uJcYDBIKbVw4L4UX94DpLjcRJg0j9
+Vy0kIdJlvWid5UznOnq+tvcbAn3i8iSdv2JorU8xvNEw+E6x27v8WGSgVljSxlOGQtrKkloeGzk
kFZtCGz7M/QY3gofBP5mn74laue84JPNNZWbq/NhjrwfAVWFefoQAuiu1BUt9Im4tEE2s15E8kZr
onJIVH8nSxUWo/0aklI7bDHqH4O3L+aqJQYgcpxQKEz6fTHWqCCzVKPsqYD7x9VUQEWLRIVBJ2bn
T0bmvAZlioLc69S8G86jiECxJKFxi9DP285/D9AJmON2fd/hMmhcCtoeb8WO38AF16oAtPcXv3ap
85Ih/g41mVD+MAwUpcWKFtEhUcwYu5NYVGAPJF/ulKUussOcNQdKMDKjV7E2ouzCZI5sVc6ek5If
I0DPm9eqp0h5pCbhdPt2pBnTrtT0Ub6GWAhx0ucC4c0kCVm6Pk8M6UEuvh5clQL4FR8zCkel9LtC
JFIisEACouYZ7r/oEQSrhii9ET2mS/t2m3S0e1LalZdtgtiCr4G/nxdbGj8alJQ0ce9Da/0jeY5j
LVO06miYb4SftsA48DbGzKZVwUTuQQt9Swbt/cG8RpztUTI3iZkzdNTddMeGUPQS+mx2w47eu11Y
+KBCl51OeQBJUu5YO5gQ63W/TD3XDUzKJmf+E9SsAepFA1l8fBExRVPTrjN7QxZACreUikrOXS0+
Fghq3tRv2b6KrbeCHT/iJwrkQ+VuYKT9bm5rEHrg6kuqn0Ac6KMQ7ufhphmn4x1/cdf1KEAJhG3U
I5/AO+xL5XUvySSAdC6vhXQ9oBOhfFG85USRo69ThCC+Kt1bRr3WEA9WPOWVA788BZJL441PqP6/
gDp+7iAgquEuP995WbHgR751Hl6BddO+3qzpncNrIojuToE1dS8PDsaZ1kg+wGM9/YdDI6/2C6Fo
eYItbD7xRbE89sNv2izLyQjdWrUeYFCNbmukjv4XvZASlsHAZtZCDNmE2dGadXzYAOX7/5ek9yp1
aCVLI+Uz8eNg5zBJ3e6k9WOjsCURhHCVW3j4lxAdaIP7srH3Ej9FFlJrMSNKEQk6LB6jEtM/ivr7
80hHJcuyhcSPQxS2jPHnx9ULCp+jtgvX17+T6seLsgaVpV+mhXMTT1fGgFNreNXHeVRnMsudPV5p
Bu046LvpzPcXECV84UspSwaO5+iTu5vDYCMF6JkP9piAm/fKqgTw0c22Y1DJIgMLphn1Dx46a1tz
sFR4nh1cRhkFmu32pPcYyH7TtchdYYilPsfZ3F4zHWw+tk9nDDMdOXOVUa0/ezhg+JWo/BwqS9uO
E3ZoMyi5TUSSmuwhzlqa8jqayD7ZQELRDKw7AJZ+N+e7PgTvDzU2UPzB5yRzBK117LAr7FA5O9AC
UYyzkaAltX+k17MNE6Ha9VvWlhJCGAuzQ3+JB4+xXC5SrUDMnPN94DZVSHRvmYnoSMpjQZmbf8a+
Ps5BFzMZePCu2pZT6Q7nYJ7Y6ejuq0GIZi0f2DTWhSgHvn8OUGIy4qkdhG+X/XV+eKcbU1AVsxHq
Zbv1I6RGMkeP+5Cum0y1/ANctpnxgLy/cNDJ041gVMCmV+98BLDiKUog0zXIpDnBBqBeaUyZLGkM
snVHZtfOMbz50fmVMkL/VKWnL+l75W2KyHvpQ20aJkKT7XywXYvvnnCmgwQnkjtrKuXYuSx/R4ZB
kkJQQZZr3NStIbJDeI/iEmuFpL5TdhNvwDGlmNw2xyX5pkTbHl5H/PYo9hFvOLFxnjBMzhWG5rc6
Q/Xis1PGAUReo7EX9WaRkDRLPv7HKJjllcr6t8/3WfsqZmg6xTCmisTMKIyCz7fzNGL/9rj9mTrp
xuexOQj2Vn98cfIstLn9Iql91dWI2QO/nWNnqc5dU+UXlrd6JG5bzAcWq95BEzRuMtjCjOf1+cfy
dbe7YSEMgIDLWW3gYAjuqwonxXbxb0pLgc0ADVxoyzxe1gQc+RXuYPpNuyB7k88snRhBjlTG/OWE
d95YvobXX/zViDd8Qkxi5HBUk0jGibDg7MZRYfvhAHbtMiJPfRNUqEuWB3uVM5gU/ZVwDgEWE38U
0tv0bsuPcAOZf9iyxyvJoU9syrg5VdR7dzEMKxVGsVIWakclIaVNsl1huXi7qk+DCLZ/TzUwoa4S
H149eGuofChLx2W6nepIhylJbJbyKBvOQ4pElXFPeMO7k5NJHcXpixXtOUWZOBglBJ3m8CqLmi+W
cGOye5jWaEQVhi6duja8cn/FoW2csvtifNDsVc+RNzYVOrM78je7p0jtcMGZ/5sUbavCcoPzSN2W
BaBlJAg6XCPvwp85Jc8/0D3DRhzjz3XiMzMWKeGYRte1OvUkZoG6uP2UviXJcQzqI/ka0Nmm8NNh
xeB+i8t9Qa3878HsJuYGwitvdPHxP4S4Y3UElL0Pr/EDNqGUXUisyno+xDjALykHubBnNRG/+qA+
8dgYQAaXcenhbs1QcFupWDemv/SjMNb0OnKZsVh6y6taM1KwRaTpDJs0GAoEP7TxtlLWgEN5crgq
HZX7AcnNkUCOVfCKNBFrF22CUlbbCDp228CmZGK1dRIhXEeX3WLGH202uKgUTEC0V7ULDd6GtblE
rOacqTYOVpy2d45oHpxb/5ETvpee20Y6HqtmQBoSHRwA6uEcVGcr2EParaE+M8T8GhPqO34QX5pY
mjQ0Qek3eENhbK25/wh+qGe+J5TzeEX1v0wc8KFYFYsFyVcuaWAHam4t6gEsADYyA8A7cX+c950d
pVVRKkA7G6HLSD2yN31FmG+3Igx1GZc9abDf3Y5DwYMN5VdFMVsRTefw1gkQ0pERYmABDxK25+bo
ZOnrfM5cgOr86blMAPhCvOkeNBbzIPaYN2kJBRdiI2slaFCRdbVIKLfDc+dtNp7ZcpvOxCKLwZjv
CeeIURf6z2Q2AE3ZOo3VTmMS/ohs+Y8e5t0SA+8+DbhcItPBKooBQ5kis5LfQsIoKSi3iy2YmTo6
9kCLaavzyGHtFjH7HKuBPafj3yieYzeuuEIE/S/DzTlKI2qsoWgP9FvzgEiRRjHzjh6ZT8KdGv8q
zZB/VSZjy9lNoiYUAlS9HRsjwNhXUUfXR5tQhkzg6TtFVBCNWLJVj6I2I10CzM1VLZm+Xg/bVCZ6
h+yvHFHtNkL+vAW8m751Faxg29dyw/TYt8p0fAB/HlGuywg8PG41EYkKaOvzyWTJN4QyuRR5OiXk
6GgnyQ/LoOfDfaCDG/4SGs79hWnXSQBnzHnwwF7O+6wz07y5tcaG5o3A7mbBVoxLtHnNTvopGz4Z
aClzdLSSopkGgPnFPaPSkEkE8jlztPSrU50w5hHovaVa1p2fSfttlXYr1mKTrH2jZOksykSEcHaD
07JAqw+7TUeYMLsVkGOIKhGYs7NLJK4OyQbAZwsUy+nlG6yKLX28NA8+0A3SA7qhcuGx6XLKCYsW
0VRg2P/YK5qVLCxiFQNiqkQFKh/jPmHNOFQqSKXeIghhP6mdIHWJJ6fnEYG7/QcCU3/Y0mLwgxNA
mxQv2GREnem+hu29koJe6eMfaG2b5u0o8jjEFrMrvapx+Q1sGe6JE8gl+CsxNqbilMeokaqs4LdC
ykulDJx3zfXNu/wep6KG8Nys+hNXue3UrKLJHQb9snsp/MCCROuALfFvTXjLcvlwftMgTL4gTCxt
DhjU1nNE+8lZO+2E6jr4SqHHT2nX9T+iMPe2+cv3lTk5NCee79MhV4FFgGZkDIatHJF15o9Ob4GZ
LPkWZMtS0bTwwRpqr06UAF3X4wCY6E166fMYbvq0zphHPw0g3HcEPJgBZ32qTEq9fgZ9bKm9GIbV
vYx9BoDO9EMqgrtZ244rA0mmAwsUJ9or+/EeNCBFbyz39ceQLwcEW5CqTYat9OQRkktM7aq5D3SG
fAHQY5VsqyKOEwC+9aTmGT7Oah+LgGITxfvvRYqYEW4I0d0KOkPft2/OPSTakthHs+xoZLfMNMds
OytjXgN0c0TknlswTj1v2Pw/zQoEHvcZxswi3uQbYI6yBa/ILiEOOoEZUiijviSnxw9oYdz7aVEC
3zI+cJDimopC3Gc+EqP+n5mEwrrH9rE3SXrN3/qfWE3niFIMA3djLUdo9SolwRMBuZqDriKEUmCO
RxAF0HfHJZPEkJEw0Zi7ezWm+O25HmJgjukYGGEFIX+HjHmsZp5haBl+wsTxxtCHpR1Re6N9yvoc
TAWLZfiHGi3+s8cnLunWbSRDbUZHfTM90e1kuMo5kAsK37viy50PhPQrGJAcB/bSATu/eaelIkQM
ePNtsUXqaaEuCZIcjaHDIQ6UvlNo4w1pV/x81tiBBuJKLeK0M31JQq2voxMzJccPkDbj3uynsvBq
mb5Z08WvHU9DosOhvCaYOCrhX0KbAPKJYDcJpIymOc8QlQJQTo/tcwKYcXMW8n6a6TqVInwCB1/S
zqyYGE+oUAm2IzoqMr17DlnZ48lDjLGEVLI0aC3yv5uHNfnZLpa1Jv0F5vrwaAz/RW5sKcvvKoym
PalXrhLYpWdVJ6qI6GV9uW4I15v4uLipfNjxetTZidv1VxqREhvU3eEknYbLo+Bny9+nAViSJCcs
ZEumya0GVXJmZoBrvTp7um80IoV48eYHmNw+qKZUIqIAM3bNFXjqF3H4oNf1oFbuBGcvUgxflVTl
GXfzM34NOeJbTgndCMrgz3BBFtPqyxykDtsyGCA6kuAKsWfhkfLH+4EBfewsRxmWjufMX9KinlpY
H/c/1nevw6x0svX5t+Cpff0Z7s5fkBH+xFNZUvbBVuddzd1euVNrVgYi+Hf1kJOWuHSC+19bzCKT
JICadOb/evos42OBlkCSanLiSWQ7JWzjflWR4L+Y8/hVSbt7ivJWMPUyOpdgKBS/kFEDae1TC5Bk
rMZm3UkYfD1nkQeoLxTlbZklZkNsWCvBsj7JzgAP5F5KLZSWs/bA9RKaFV2uHFruCvd8aAW2UQk8
FvuNwwPZNSIG/9uJgiq4FgcAi4WVyrZ7aeKUb5eYfZXxY7/c+kQGxP8lkkjRHor4sGbrw3YBsyv7
gCIeIMouYyQ7u3OhXSfxKY0YGrqEoI7WcQnJ3WNx+unYfZ4PZXroaEZ38RSq/EXDtWl9bmodMH8H
L5nBdc1MRygF23p1xxhTv8G4TPoHLaAvJZ+inEqRzAaYKIS/CrrFyy0e5i1qbEMG4YwdQbdOLBQc
sIpZYH3qXNLPXmYek43ah0EDUxOPBLidtd7xx7Hs7DJkBi/fxQJSZD3BoAw+Z1p/kFI5bFXJD0cZ
x43Kk5rguogYl4GQxJqYRCzVRVKuQVrr8I10PS8c80LXc8QnJp36OBz+t9kS97DR5i4kzYxDExKZ
QmKzOsyaiElixPjbY0BNAMy9vp7QyqjFh7BWttATTLknTS2LTrG1KjtykaBu+yGW3QejT5HW2zxR
c8+6Nj0uqVAvSphQqQcmh2XeOjSzAWqwtzSqWlSmheaij8OsT3haKb+iR/JGTul4WN2AFDDo+nXl
DrTzCZ4cRrRdYwrYZpB0Dv2UGA164binGB0U9Vnxt92xvrBZvuCdsJg9beO0H+R5SaSSrONyqXi2
opn+GgyhQ60m1SCnAKIpYkW9YcEjsSH4KWpBLWvqpKQahQBwleUTStX3dwuem9RjiG53pytCPxro
EJE8YsxwjLlw1gyNIxs1eetQEx4CqqLXGLyRJ1A6sJgWIg3Fq1wxDdAH8uE4ns5bxAvM33j+pUk5
aeqAL/vcZd0b+35cGk7VbwuG5F+L9IWHcxe9PpbKmoCT8V9z8OL5mpZPwENI2hiQ1m+HKe3IsMOE
6UXfQJ+yD6KP0PSNrP6G3O/Z+51ITjxr6QVBcZ15tj1bdHzG0alC6P/BKYSlm/4MHsaH/xds8U8l
9xBF4lGBc0yydsZv8+LZJTzreQFv7SV5qWoEdNV84gNDr9ejsKgZJ7ltXvvztMyG/hIykd6zIO20
62MuMU/+O0ZJWAeQQ/52NYNcuD8GdTXPqgqNlOOGODmQZrRZXLn/nEoS9AVJF4JfH+86S8Bokxjh
7cDDf7XZMywRZgoxQtV1zpGXUG90NUD8/A2LBALtYynujs9uRr3lpUJbiLBTfo3PuguXu3+5ZU7Y
oIHhZ1HRirxNztYwVAaIE6XbyNuG+22mJ+qFn5WF9VTdVlDQ0i6Prvg4b2KpWHCl7zovRWipdr/y
ASMyXLT73/QMrUD0adsoNYb3um6jZNog36v1YHLgANNIvl5NgeEKgUHK7MXOs+jD6O3/6+K7JTpD
18PBXeR1FI76aS6m1iJbS/3jbNvxVx7OHhl6N5hLjll/9xtUJ8S3A1vI1dnRrDfq1qSTAEHt2M+I
7Ggy5CBOfyzSrzIHNnf6L+yKKfBZhJNml2Q30k0yb2/HBzOKJdA0BYr/qLON2W5yAoG1FwAjJtgR
seipcP1IRCQyj17sg/twHBisRnDg/n+P4yFBvNkhSARnI4RZS36JwJ5auc/Xw0zmqYI1wHwu6/MJ
ZKXtgTYljf3mQiTFLR6PT1Tk0lfrBxPLI2Vnn+7gDr799KtMxHMn1i1G2TLPvdgeRihWbfw+3rwE
2haBqDFJwHmOxba+7dvH8rOS3irGkZ1djlQJFBHaRrJA2MM33OKC5gFWBdVNkAZL6BsGDO6YvpmG
6CJKizT4OBLGfCZGGr6uK9wGLNMRUQzw8RmemSgb6/acDm8nrTYLPHS10OmfbAuW7w7ec15+jQ7k
uYYDQal9+X/WHlt4iQnqFgkkvMHsjWZdb7PRclpDXAN+RNn/GELtzgAswGUBejQJdgZXUc9RYdHv
h9lKGzddwabvh06IiKtQXajjgPmUVN7L3H8glWMH+4IowISVRpGdK+z9AAeTIBr0TgF8Vpvfo3eM
YBPMidSThI8g726ijnBghKQMHsRsNWsk/+wk65YdUfdblyNOqoxTJ4uHCS2yKH/t2WFVi+AwWuoC
eK372Y1jg3rn1Ze1WpBFxiWN+J43JvmBy0NJnhz6vsy76fR84CFI6t6RFmd1SAz2o/LbdifkFgtr
30A6ALAqIOpft+B5CmE1hrYQCEr/aNUdzTbQtgl+UtqoY1Qm6HwlKMfBFFr+6ijDlhV0FwAOGJTk
SVTFshN5k5wrHrVEjvKRSwa4iFrLWxDimwKna7nyiTYgG3Z/3vst9O40qWhWI54kIVE1l1jN4muN
eBK7SQyx9sz7t/QcJZw0jG7AZsOC+tHoHhayxim2fGUgwK/BEn7nqzQu7cnqqHDo94wdkFIIs5w8
Tt3ocgGTvroUWZUU6GIyc2lmmJr+DvlenSUn/0KQiEvBUO/LY90YVL66RmnSSCgC2tFK3Olu0x9a
g9GyapD3NRMFcrSRJd+V8v4y6tuQZNjgPjzvC7nG9Iz74xEVY1GYF5TcnnJB1PU0WVKKbETebNRa
qvbBJc6c50SPNcClGodF2+m+9MrzXBeTd6oHenYJOiwwsAIBkXWZk3/6vVd+eRN+W2daQ3zE+fHW
pVQilGI+aTLfCQri2tSJI78rrNTH8nId3rA/eBfdYyDtlfSnXqs5gKHdQ19nJEIKFN0avey5czeJ
cS8Og/RtU8YKEHpaU5B/nz3sTG8sjGUuN6Bxke0kUdkWax7Bi7RTOxr84GfG0x439MwDl+E0C0mV
ZHGQGUcltjy8+9E2L3hR5n87HDpTDDNgRA9g4euh0cekkssbXeF20+e7vpnR0FD5D2/ncmA1OuZL
rOjPZ3TLk+46TVAMBfyhLZyhwXAIWdvYvfRn4EC+VQL4ds9tyEIgmimqGnKEItmv8nV6lARvFgW6
t70GvCiBrh0ykAuWIod/mrhh2g+lwrQDa13EQtBctRzZ0ntcrYvsBHl9uIIbo1KDvdGlMstmgCSi
Upmx9MlungjnTMy99ehCR9K5puHcU0+GRfjg06E6WicKxwwVSk0aPNJPVYQGi4nNriyC4tRNc+C3
FrCgl10X5QqLboueFnLXb/xNsidqQf5N96SooKNGnR1UMh6HwvXL1ry4k7bRTRuldL/QNjqlPyAS
P1G/hwZjtoyxfn3vKGcELYBk1dYdFrYYJrGvXkMpaFnwv95CrhRfOTdk3F7f7J3oe/ZWWNjmft71
z8yCUzswLgtZyYgCTWdX1Qpz7EyKTGIqHldAzlkhbz+Nd2U6SSCBSIPyaQJXWVoOP9D+qEq3zrpi
S71BloLQgeioimzx4IRFwCifoBU5/Kd2SXUoOb6upIy/jFkZPjP/tpZhjGeaC0daJRmdPvjceKkJ
HXThqSUy2iu+F4kVk/4HWUdd+9EW8bpKHkq6yBeeHhNBZyRRM0bMU8TxT2fdUmcER9VbrYHE3whx
oVmn3VNPvSKUGRGV+y1S8mLjDP4LrkiHXysQADH1ghw9KCnAwYV7gDWwALjmN2fj4BLi1vIjQ4da
QyEdThelAZIJeDh8Lw6TRr821UnU5k3m3tPxN4BNHuS24BzWEUb3SXLJBzLA4nHGG9wmovctjQCU
bLLxe9qdX9fuZ/CzbTIhihrdWs+FD/wupF5PEwvi0FvqmtFdMumai2s0cSoP9x7FzaWbLxO9j0dp
z1kiZzepTZglCwKjyyHqLvIiXtvFMB6IWpfTD50IuWEn1VCYKK6YUCmhuR1uq69p/N0WeBf5UwOe
twt2YNfos0RuqR6o/86hrshjj3Pd0m1w6JjgRjnP+7MpzR2ZXTtxrAgBIkcYYNbnyvUW7mI9q32r
W4l6q1NYTZ34EjbneOXUQgBVgPwftuL11i8A58zV+sZLMa2CzNvLmSRbuPClvJfW2pLm9iY/d1Hq
1SaL8cuwpsB5xtitNhVtAa6slSvm7464gVWFyoZQnTR17qlnULYxV7e0GWpoYA9S6Bx49uMQT0PI
aFpZJ11s5YQj/ii7BOTsfjVigKneRkbRzNO3QAoluSmoEDIet+ySorJWhJnXuvPJ1RbImNHJc2fV
Ewfy0mdYpStTRstbEuOpcBvwb/4UT2sOTerMXBZJuzol7GF0Xoa9/ki6MzBepbwL/eD+8HaYqKGZ
eBesdtM0z2CMLDXNrm9ijkmuXitmlniNP8TTrOqxI+GK8DOW159YTEdZoXpXciMlBvOn3uycZKVn
GlryUj478mFeEqV0+/WwTntmCRc+zRdCdPkK5CW4ykcHyBMmeM0PwYA15uIhUmEiJUR9NDfVKC7N
WteyiWJN9uOuXv2EhfWpjHMGcdh6X7rsfKczjb0KfuuOZbPFSCEVREaHfuE5JV1ATYaJTUO/cDr+
fv7FZW4RMDpM2/403Ll1NRBulQBEF5zV/LsT+LlOYPCHh0+qxUWpd9KSuoJh1B2TAP+gsQzx4AHS
NXhRYujahcZYdl24fPG5Jn6yj68rgmz+x3PDnLKEOg/6Ph0h68WKrPsAFo/9wxmgJz8HsdBGZSGN
kmy4uKvPbR1DdD1KCmHspRs8KD7zbWvdMwqEMCc7u0A1d3+w241xiV+H1Vigra7WjXNz62HgJFID
385XP/jYgrmKacqaYx16WLZCx6DzUmYuvQWh2VZkcftURMiyvpEeQliPN7nVfuU5dQXlmcM9BGc+
fK8PL+/yUr8CduK0hL9QXmqRx+8AjpGrnF9EIwrGEjc1hu5XCkFeQMMDxhxjch9ZcNAjDb1qTXSt
pqqRp8P2/qEVazO9D4FpVAll3JuX0QB9S8GqI/j+kqhT02607TFzISv2gYmyJkNVt8dmLkQVU31B
vmXR5VXBdb+WFgod39uB7NzE9zzao51geMhH29jueDm9UxkBM1kGuMmwlug+c5fl17cwOLqsmgdw
ln91p3mKIYPNz1bQrj8x9dgXKS6ZSoNZMTaOiDuyYRe2KYeIoBzPnsa42hUbxYfd49sd88m1YxEH
3gEs8xza/fz8QRCmBnPku/FhJd+wc6ITV26Ms6JmV6XGMJBvd1X/gnbwcJZp44LyZdAeXhVJvKSM
uScQ6O8AgvrjnnsEfrfAvUkR33HObuV03mjXTPxcAeX+NpqKx1ifEfqZrfQsywzdgXteiiEYWlsI
dMAR+OtCfcq0Kd6CXCaZLjfqFMF3+mcF8tK19BGr3dolaI7UfYUlDLKKVEgbVC26v4Ic/oC2xzjP
UsofYbOYt5fNeCGeM9arXu8ay5DYbAFz9HjyTx5YRuKS1krzuYcOjJhw9JtiZxykZvkMLIeVkmug
bmEdsrPQys6mOJl6sWYI7nC8rzksuvffXbHQYX5292Yp3KJoHDxHgbIlMUvhz6u8VXjPfxHKGJdq
GPEeLQNKt2LozXL0su2tlQicLv/L1zI9NGkwAYO3pLE2d5RW1Lgb3LQ6grOJ69wM+CxT6kja4fyb
3ch905FXbThea3PDxiKeK1IBJUskSFj0WlhFNJcJ3iFZs0W7Y0PZS5Aahjg99gnqfQWz236YTgqu
k2s=
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
