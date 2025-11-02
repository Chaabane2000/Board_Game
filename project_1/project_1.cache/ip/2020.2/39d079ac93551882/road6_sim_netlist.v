// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 20:00:38 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road6_sim_netlist.v
// Design      : road6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road6,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road6.mem" *) 
  (* C_INIT_FILE_NAME = "road6.mif" *) 
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
JfiCJhuoLsclQhGEIY4kSZGYudQMzSw7QU4r2CYzJayqc3Y5y2WDTC2lvLldZNWycl4j80qB1V2K
gTHZHNEhLIJkaMrg+c3zX9fyrvPiX85OFUj8RYm/8YSybYcHboVGots3ZqMfvOe1PpLnHJ0YC468
n7EBqkG3+u70nOKFckJVEh/r5vn+Sl/5Ye7voJeW4Curou/WKA2O/b1qhZR8Iu9tPPkgDeHJ5rOZ
sgRt2ba9KNtt94zM5W16T3DLCinUD8a2g+C36PiFVcCe6S9f/ZLtQDDQ9BsYco9EahB9z8Qziepw
f2iIDnHwpB5Y8SsYmDLCWbO0qj6k7QpdT2DsQL9FFSdrcntrGCIwDUPu/vuECp87jRRRnKywKCvH
PtR3dzLRaXbTtxQCT18P5MMn/oWhmOyLwu639X0XPW5onDJ6QEjIKVe+89huOAr0ranHtyKJ8cLo
Pnc0HW7/0PhZhiFX4vjp0jgD8xqcurSs3q/PU8l4k6Eb7cnNQYixQv7GogeZIESb/bkcyR4siFaP
bFQop6EKsYDIP14vsNjLhQMkCm4+mAv4GPVMRP1egJbRyIbdWKPOJWAwCl5s1hDop9NBWBKzRidv
6tB3frZivkk2fJpA708EbM7oh/qMFYOHD6f0lC8ZOBihYqFT35pLsaGGa6CVA5O71Exdjb7ntZ8F
2MFp4qqfeeB4izalkPBSCPEPr4C6f1zI1zY7/IQxZO1FJzQ6XJ/QvqHJMls9DiUqCoO1c2zBZR10
r8AG6afj+Yk8lrvIg9OfDX6nM0Gf5VSseVC78MOQhvBci9vp4vdTs9F9jbI6AAtyJz+iQrXo5Elj
19weJuhahSqVxnP240hJWh1IJG0J53tDVdNAs84IH5alnZmXJw3NSwPmwhGrs/hicd0QKXcq2dMt
TCxoGXPxJC/vsPUjXqCSwTF2AVo2FvFe56FbhuaKwwmB410csCwvU6c0nj+kLDw+DnKcLYvpf/P9
Po+a2fY2A7imTy3t4b0Ko0YgN/MxPZW65XgOyOXRfspkg8uWoH4kg1Qk5vcNGo0VeOvxMuLAmhNz
DFicGRlFvahmjMDxAX1A0epgYlWueLAzVVzBbfs4FrBiYiBUSxhM9FkvlQ8gzR6FzxJt9cNP0cT7
kX6ETMv0oiprA0u15Ge0hvGhJEdR2DsNSDhma4y3w7YpcFoA3Tcdr7IuH85kTESLVo5/u/9Ofmay
gUvjFYmB9Ab5jiLzclyNoq9/1eBGFcOXEwJFo7LWnSl5S2kyVSnjZpcLSU5n5TgEpjJW/uCKeSC6
FzOSmQD2RN5slFyU9qP4hicels3UdD+xEM0CFsDO3Qpq2hGvmZSzKSPzd1walzF5hYHb63Zh2AEm
hWOIEhEHsCZpIabnzZgJqw7y402JCcXQ58cdQmNtkha6Y/XbcliYBmpAeVkZNmDJgM18Ss98YjSZ
dwLdETEbaukB3shEM+2og7oI9EbxhqgJZWtezwKubWgL6in1swdf2HfpFd4/Efo4cLKWOx0gC3EY
eNKxH0NUJj6X1dihgaya5KkZMvlhOUEHgHiKw9LAbHS3e1FDE9jgU51U9Lkx2zOLLNIgJakbz2zn
nUOG2M/I3pjHPSHy0s4LPsvdSMxLPmCMaF08tv70rezdA8b4PFVG1ADzgrHQjDg4rvgaMo9RmPPK
e9pyhLEExhsWT0PRqzUmaWywS5YjGltSK1CSRn9OgXvHlc7FE4r7+tWvjj+WUzp1gClb8/PIKmG0
Hg6McbvADvq/em1/5B9tqGF2CobkK0Np/j4f9WAWQ1eHTD1285gjf38kdDC81vZ0JPg50jspw1Af
ShU5u/h9425J4r0pS/IHT16PovE1Nlv6O145uV9k37iH8tcEs4a7Fkx1GA85VBPVOatJA5YGQm/E
cy57QYw2lJ+MrCeWYn8brPXTSlLMctgodibmdp9esnb0mAmtU3Z+SJRtvqZ3CAP+AVfa7xNZ/72p
ZGL/m0aDuXY1yCEPYd6n1Ps8aaR7VFLVclK0jNf2qhqp+5vznROIMPgjC7AboEQc+rnij9OvZLDz
t8aJqnFxxxPPMLPMlVqEcBgbBieD1tmy48hGkfcqnN/whQu4vr/c8cC/hXF8pPke9lBgPqO4Bw6b
Q/gEdauVionuTJTB7peSOPU9FFp5Q4W2UDWBuNaZ0xWMgHk2QChkcheymWObikDLMRjdbnutiumG
qD7FvZS8RyU5KKuhw/ENK73JRPHThvkiwvfrnQSHx0sTLxDth4tT8oKvh9V9LRkVuVc8R3DarU+U
xuugmMtu3hOEh5bPVCRXvD54Z9Pc9wpyUADM7WwFHgYfSyblSnV1ij/9BDvcKwVyXqxE9Wx+zSPn
pFPCFDn05YmI7A+rtyr9JhjbcnDyvGMv+9qwbe2HtoSnXCmMHL02Tso2S1B46h81wWo6mMc98u09
NSI9LBObdGMBur6OftgW8CfK7RkrVqhkV1Ea7ajebo8s87nZSuJ3Hmvdizz+jeJVvF/BAN59Ej8L
hXY5o5MRtsRtzTFHkCld6adwtqsKeaL54rMW/763P2QNDu6Nhuou9i7s2AxdisjtCHOJ/mRdF2lf
nMS5PwpTomu912W3w8F2CgeC7dP4uBKgq/fUt6GhjAdidzuKJ61lbt/b+0IlJA4irUAUqL6oEHJQ
pPMC6l3eLPsh6leaBsTtqh4lLpFvvMLWCjMfpB/TcsZGLgH870QhcA1dZWR+LZebSxipXPlg+kxY
yGHEQSTCoT7gj8qRar73g8FKsbI1IitNGJRYEItrfUc5Zpbb+zBB2v/3jlTigniLf2v7qKRcUevE
o3Aq57O+ATPkhoA5jEK/zl72XM1bLhqhdRwP0wAoEb8R2Ui5cSiq+6KuT5k5MpvXwc7DbI6KItdP
mv9WQZMQ4XcAJV6fg39v3LLlejRNgM7theg2r6VKAFdZJdSNh2Saxqa91tipMtwUVJmJWhxUpyBI
FGYTrfY1JI+DLw22wurb9ENkxS+8e8m8Zl3TayfpRu+m5CmiKDQg0VfcD7+T/cM2Jmxx+wNDA3MI
xTdp3+ETy8MEUvxQhk+hLI6UfVISwUPW6arwoSnI7EoEpc/v3mOd6VcZQTWtn2E6Lk/91hq++BQV
pH9nRJmkjcP5Gq2ZAxUMf1qyAH3WVhBp3Fk0B3dgQBY4YuhEZsZomCoHcc6X0ohGk8k092nQqRse
uh6IDH0g3IkSK4k0Xqs0gxM2zvZEjH+SXoTvR2YaE2sOs9+8lTjzVLALz4DhzZvKQte+msBGSq7s
6CpXpJJIvllnZAmKyFnmoZIWpWyKtCNUzGjChM3YRO1dKBBekfZRFrODCUW0+wpY5I1FhN+fOclI
UQm8Vwj4kI8ibBHbvdDvWLt+9wfkT2lEXGe3aZeHyQH/NqRSP6JODOM6D357RhqXot+flc4rfmEn
LOMA8kkwUK/MX9ZpRWefXW+tEnlxCiSqqgN6E3z1EJSJjr8zjDz0lfXw8Yb95Pu/K1k0dy7PdFpk
VxJ6SaDOB5HlcvarkltgcYW3RVs9b6iaXa9HJ6beoH1gQfRFbSGjsVIBNyjBJhSkzPj3QKaizutL
7aW8y8wnEsB3lxpjqE6XwqGcCQmclde7RbAK+am633Q+qAMu9BeVbs37ahjGGyAtAwnJG+WunwdT
CpMl3V3P+HGOYaLI3AzOsvFd86NQ1mRaSNKWYfnsu07NYLb9Akf+1GZ84eZ79WOy/nLgWuR8oVup
7t9petFNIxepMn/UuffQ7KMOlGbc7Z6eAkphl/jSlkJFDk+b99sjbIA6MCCmaCvNQ81AF4oQQxGI
D3bt6IyI71Isk5aZrXzDHM/8SCwZScrtVHJ09Onqq68pD0wlrDPwx59CPwbNeSGx6U9qbc+ylCoO
uzaUEgHZ9etDUWurhTQ0b6dM7X0iW5rZdELtoiMeecwDYeeIJxb8A3yLTbtNasO8bw81nsnP5yr2
gSw8E8FgEOOKUWha8BNfxrQolbJnYnGGW1yFOZAwttFT+AnY2cD2eEms80sPNYK4xXjyjsjtKN5q
1DgGYFzhI5bOlhXpxqi5d/dkxWvLxU1lMyVWOioYugPPVyk5mpblJODtH9StQAoe5/EeDiWEoyRh
3ZJb2xh8TVxPde3yv6dYoRNBgCswRdLgDQ8Enu8j1p1tFEJ316qP5Ob9mvVTbpIRC6Lj+1BBLiP5
I8QsipjpwrQvgG7GKjsuSIjjJPlo4Nf04vf8E1/OOpyyYskeSAnTR6LiYVqsMdO5JPZIbOPZs6DO
JFSGjM0KdMkeI4lKUQh7zYY/eV21ZyNmdr8EpJuSntz6KNBfr4xWeBhzquSBNdlxATD6u5VPVRFK
5NDTwsoarP1tub7DpOP89qqSUA7JabrJ6UTO4i0JVkdxc16eWBiej3McOHrKp0Xnh5v/KW/MgkNH
CWZT1dqeAUEZCCUlP3AP0Nwh6hNTmI0+oCf0BB59ybVlCIAtIG4NHFUsVb8GMeVA5bsHODR59dlt
/89DXqlDOMXO3kKzImiwvH5pizOEwnCNBhPWv/WopKz2lDH8z8WRP2C7rj07iHNOVf05mbOIYXCc
C1s3tr2u55gYGm0fefSzYQjpyw9hHe0OpEZ6FZk9rXec1HAaOg0yQC/a5wb2rcBR79R6PtApzwQc
P2dKqCvoBONaj2aMdFMf5k03CyjT5t46UWT3LN4kTdVZvCXCsKrzHNZ+yOd+vALzHOyD94HUG+6v
MWNY9mt5WRiGNZqwGwku1DYRn9COUzjeCTlfYHl+wFBp/ENYlDvErd6Jef+7afAQH7RRKRyKDmYp
prxqY4AXTT3qEF7y2yW2dcrE95/B1BJE0HODf0hVygSSZyJTmQvdAnSYg8jOrVS/u+Ug9mgbFm8J
KqfPVDSoW5RXyeN0H0D9wahQKnD0DDzATnRS/ZHT/Gl1xLxQv8fdQDM3jHsiZDattsJ0aOE/lz9T
U69HE7o4bvoUAKB4e2aWTA3Yw35iF+eVXOLx3WmceZlbH8TBwDk6EKnPV1i9yYThUWTPo5NIKqHf
M/Q8GsQYkdEWViU2nNNQJ2m0EauTeb+uRUoC7/V+8CTamS9ID/BGeYlZ01S8M/DGZlcrgIA+ZUhK
CCRET7vJH7Ctm8V7DKIxISXfHv9uM+O/W1c+5ppzvi5zPldiVDQ5G3UduOrXqrJdnOvBxR8gGMYT
76XfXfU/vluxF9PDN26QewFZaI5wRK532GXq/vVeftgz2XfkcZKZjSFG1YeDVqJZfgPEtgpXFCum
B8WVU4TiEcQhBEUOHtPslAhD8aNAgJIK0LqZvYhuYt8Bv4+STJ2qs9DyHS2FFw1in7hyks6nI2Cs
qTfgt/166v5IVTZa6JKWqW8mcDTV/gNuTqyBYQgtfrX79YPqZItvh8DPybB+DssR/2qlY44DMWfo
ZAdRPKapEOw39bjNCfBDi2alfb8lPwpcBoPJ28CnfUh4fg2eqVE00vFX4JFp/xBVX28HpgZQGnAn
D+St660aTyq/2kvMNTOb3tPsHYSxMVrWqhoLwoAA/WRZpta0Xpk3doRckWvJwfVt8ZaDTp4kKDAt
5dnhXh0IQhmYMwECNeJSTpoyH9X5bsm9RvoAwszz6LFK2od0wNo/wbJ2c9wSbzhEjQfQE0/Ar9uP
nc3DYHB1irsJibu02D7tUqQdHjHWyV3fP0/7P3VyoE3KQCj7NL0uDVaUVi/9x8hcjvt6TCTGqClE
PKOLDbJ7fEkwEycvfZhz4bKwdeYEjEhjpOW4ySV7tfyPMI9JfVMEmKdCLMp8n7k3Rrrv0L189RNl
NY4RYIPdK53Hs9+rg8PlJygHsGr8w03mjwL2CVoTpspQkqmIVeEefRaC/G1//iGhFvg9qvOdHiL1
9FBPuWZpwj1TxPyNv5sSOnJXW2mszxOw0zQqrmLg8mJ9FvZMb90E9D+kNWd8oNtzYGyuHOT3rJZV
ZeO0EYMKO3GQRPHqANT0eNiuIcSqWl5WXSA0G2TuFKQa+uHeG4upwKfDR1xrmm1y+6N2PPeTPZ5o
3JEiUcX+trXWcNIL/SoL77nx+eZNaF1F86mF00arKPAPLJLZVvAcydciWyTQRXsesKbTqifIiENH
L0ITm25fC7EXLXksNPvgdEGltXgBZ6K689x6ZCG0/X7bMAATmPMerXFAH/djE/08+k8JGksp3rTZ
FHk+2TVVTwbuYFNtXEw7NCikY79eYXhOR65V0rsCyqqG5Fh1O9rM6my2p0ClmRpiKLmyiocK69rG
EbNho051cBMI3rc1sriaOFuR3vG7klGPDd4kb1BHclBoVvv12dmThLM6D/DBPpl4oB5YERsCx1qm
5bOu7GnIyTcoC02dYqJgpAqA4MqecBIhQQcJhjDOXSGZJFopZw92eHqr9PKzBGGHdLaghRhtC6ZF
XJxBDikV454ZRUwllSw0jtMfUR+5WQOU/ZXgn5Xr3PfAijL6z2zDaXwyhFHyBVziDF9QqK9M0AFc
NKLeaIUURS9MYvIVYIEG2lqTSYVkH/V3zxXpo/DPJJ+PY7oAFXfKXXm+YPvWgRypr9CMh7GYkcqn
Jnss5AZaP8yrShO8fASHGhi4Q7WRQLCTrKb9KRxi7xSfgMiJE7FDakOu81R808AQ558CqY7my1Wu
0k9PYJp9gHkaTnmdm88VwnPjY1d725Le3FZmysvc0gaCaE5u+QTx15UlJ7ySj174S42rOjPQ6GB0
OWJpXxm3kkWCC8i1RlJp70EC8XVJkONbxBT6T2MZEAwR1M/NExchWD8FtN6IzYmrf2lKEql0gFat
0yZwlKmAACLmHFV4tvVJlGnSFbb6wVCTSehrQHnRnbJFXKrjewtDoaBWx2tyAwVn0oZcZ0AO8OKM
yH1qOKyXqOKNBGGNzR5bgnjvWqWSuu+iudQH1GzsuE3UFTBlQDWMCBFyKVNW/cvhV0aWBugLM7UU
fAfzZLojZhU5VuCbclscI92cY2bVLvcNwBWbPxRyIWxZ/5RtGljkiOLLk/HSFYvVH2n/oDMWz1L7
4GJMOy4j/f7La+noanBp0scmscO1cvqj0Exfy5+EMcm+xf7DazGRck4r9zvhzvlxFi4EaKJ+7DJD
bMp4hrpiB1iTRTKDo3BUDKXH+Vx/KcgOgM0JVT4QbHZHipejledzrRO0Rte1ViBHwhVigxik5VOc
OCf08RlXzEzW+M+S+iSknNyhZjc1GhKfSf+8N/wX5/j03sYxTIWiQM7O1yxSlzRADq8nZ466DP/U
brbA2bFt2Ufyl68eReTtO0dPhNT81Bi8CBDBlCfPK1SGTjYVJGCESMyz2kmJcmSx6f/ZA9EfYmKh
oi2bxIL7ZYNBH04/aVP4H/hW0CjZKM3zeNAfMtpamY4TYXHNIpoUXBs0oogOfLoWVu5lon7YLD26
m1yfITTaCsHiuAGIy094u3n20pOnfuuKmvXcd/SRYabwQEZNwadypnt1seF5/ItJbJsAZLKCPJhl
P7cANws1PDDw8ny05xJeNPRqcVRRJ0ZrmMTw+/wj849+Z3qUNPhOwZl0DgWQyDVoprEfHTGunBNQ
Z6zDYlqf3aBZwVuX1pHuMIhsV5dzjzsYYS8coUDOW1MemPngxlsIU6Dt4cD62age+3qzK1aUNuLk
ertp+mj7VyPJ7H2U2+MbXoVQ3OXb1O0utI5jPCuvT3hbIxnfq9zbuBA8+YkOqPPJXji3aC4UuTdp
cDjvVj+i1Ib4TVMyaYQHpyA7Yrl00VUtPeXP3/Tuq4uN17OeZapuZaXEQ+G4kmK8+pKKzINSMK9Q
zfLiz5FRm7+cy37ThPBUnAumDPKx5nlejJthqorMt/DBICDlPvNcxPnKM6Hhs04w0AkNqRlB4XpQ
5CWLqkoVJrq0dtvkNv/c85gx1XjGvcPsfYMzX0c4IOQDS9oDt+FpgePcxk1NFIbKrqnuTj5/ueY4
HJiBCKvUbAfTs/2gyZ4PotD4qcBFs4omeuSF0ozucIgEMZb2sKHNhqHz2sl4g8JT/kP4aC3zX1wx
0PQW9+lGnYjz7pD7rE2Gpxboweg0ulthlyccQBRMguhSxKez9LsaRl0o7Y1IhtxeZ3lOw+cncEUo
jiOauUQMjpTOcJrmWRCB7M/DmAP0FazStmi7yOfLlJ+gew92feKkxrODNH5+T7MH2F+tjSfcDHal
snusnjg8dP29S517x9YzE0pC2n7tDeKNJMfyzq8KSG0BUm+nW+scTxSJJSs4FBveNRsg0ylgawlr
IYmhbOkvKoqqMzP9bkAy2OE2IGgh2slBX2TUNAzAAvBQrwFBAbSGWJqFukYFkJqP+NTh5yvqYwjI
HraTwDG208oQvsQUGBX2fCBWVIng3dPYFtMdYIthGb8niOfrDrUom6SBiuuo2IDZE7Dh1SrraNJf
tVvAhnZ3zeurmunEG4jPhaw9uE94Uo8a1LeeeZPO4ecyu/+qSlPNoSN5w+Jn0L3KgLvpMf9i0VWM
HGyw5yXUCejpY7J3/7xm6hgdn1dT3B/g3qt1G4twjCaVhWfUEdTjZncdvKZz3HTEa9BBkoOl6vXt
jVFLEL2LzZ91cE0nyoQkVWJXwkqr6H8fVpSrWgcyR6WolGZ1z0KSalfq5R9Ms4j7LllA43cH5xe7
lZpNA7pHe8elGohDPBOWVfrov1DVWg1sZa3DjOhhyyjutl0wAFIMrohBxNNx73AhmHa8HwwhueX3
GrK68KemzLF+Uz0bJ5TnaLLoxSGHb7/3VSV2Nysj3y+8oE+W/k+dn8zeM5tkZqi9S3EiE4kzKSfy
Fa55Pi9d78QFhoNflGpG56fw1sodHyazjjeqsNo3bv3aBC3h55c/4qFgTcJdPaYtEF+29oL/H6Nx
/HXlczYm4Sv30mGQC2wBgmTmxbNRATeXJl8qLi31zXt1ZrKcJeDI2cun2KKfzE4Q5yt+76AIOqrQ
hAgg65ITLqUA5jGMTc2oBPASoyC5+lLYGlk2zyx2LYqLtS+m5zULL0iQIGHfuLtU29kvxWE1Qjvz
dPXnAV+6R9y6W7sgRp6O9Qb+h5TYZK9ttxMj/uGVEJFM2j0Cu6KzA5xKRkk96tOU83TqSy3PAPdZ
ahKXFG+8i32EIidkUWGfIp30/2FyY7Sync1OP0SyzegjpmdsP0UxUmSVymHza6F76pmyrupYbv9O
itNEhRT9Q2ltumC1z1TerHfyjlxtkp+RpFWkr41VV6Nb6zDXtNzwSt6xs/NzsrZONLICrKmPxCg5
OqfowKfj4q/tk8Z21FV81xJDrEOskhWf3DaefGVDQffxj4GiPxcpYBysevODep+lyjMPqetQtiBY
fd/tlliffm6XwkJWlywOWqhQ623VaXABepnI2LKB53QVtspGzvwma5iqbUPjvlZb4ZKTpReappmi
EnOc6FT3XmlfCub3Go4qMA+E9PBvjqQ22oVzXf4hNCrLkZzuE2Pmp7Y++DeDRk3QFqPdKUkJ3B9A
hBOvEwCUAQz9D2uCpWKUNLHyyP7myiLeykc0tBj3udAYep08Az2jx7Iy+0wGySgllJ3HymXnjZCd
Ad8zlcB+OOrIPFU0Cfh9fFLG5TCzQmQvNOJ0CyTRbv9EyhFsvncKsLBXuuuDU9Ukl5bq5IDBZcuE
LK7MjlNrB5EJESB8c12XfiE+CjjAZVqsE4lRmws7Mwlhnv2ihw+q1SlzXfRfi86+rZLx9W0du5g3
46mXBpE8P7NmWUqaW1qBEdRE+doCYPdPjpDYuCNnFNowQb13YgkkGYF/1dwPLP+uEyQwB7gKYSl6
0vIbkYVHQRiNg94koJk2D9oK/cJXTT8CtaOfjPBstVRGoqDF0ortBXaIEuV4ZjAhvH0DO2ZaYDO4
LDzxN6lO4jujLI7aiSe2hfxBG36YmYL5ORRF1nihY76Of7Ef0HRJm7v8sIDvQaCLROAZCgD+ACIO
HZuoEpE/9mo5somL878VFGXIznoLJbZ3B+TYMnLQPOHNXl+xxZskZh1/oEju9elXzTQ0eQS7XRgD
yK4JAmxth9SfGqh40EZHEQSw1HhocV2qL9QzVF1oDHDVBlOtoaRuqCXpJtGK2DWkMYKL9SLcWIBB
eA+eQXz92uw6YpKoUKFiK/iYsPnqdAKe5mLHmb80I5dEbgvtWgBLIqZ1pNuvZOdFfMN6JIkiPKyE
dqHZ1xB2SyLmQSHROFQFSxA0eLLtOeAyQJw3rdBQS5cQe5wh0F7VPCu0EcG3r4Fp8ly3oZ/7cYu4
NwhlTaJT4aonUhU3DD6bWpDnQMzjvX0MMRu+beVchXrXTJKzIWirhjwfWU9NjfoetULe6df6Rtk1
cxBS1ZY1n56EhXMtghHGYIC8rwXWtsRcBsRqSqDgVlqEN1/bRiMZmxyXUPJc/Y9RfatHIoT9v48F
xOiB40w6hqHMw5gtF1aeeyMbjvfotFC086PNDJdTLBimv0MvKCPYUfEi//DFVl5TMG7mJv195L/o
tsd0WCNhCZH+2+GNirrUlPlEm5HWyEBQTvtxYscr7Ano5d6hxuemLBvyKfkuMHIIYn4t7yMhErqY
UmueY+AQ+Xsv3FXRzRkqfQPi/D27Y+lIJcEwW3i3GRTCO7MmveWOyh5QBX9MI1+Xrcg5gCxRarl3
HLiTdOonjdvFwR+we6Bssl0lSqMVwT4sBaU8P0LMUNin3i+/jDUM8Pyh5httoiSFCIAaH4vaPMvh
Ab7Wj4Df2/IyUOrBOAKfuOL+9M+AEYI8USeY2Q4A7U+wYRxdhkE+fAfbYC8N5zWIQejMnWkThChj
X9EOrTpJSpZtieJzVde2YXvszpKo6WCCvEFmtsfglkxHrtl9OWNPdtxroiCCGf3ErCyphsenRptk
tBeZV6lPAecmpriSSWXTVwSyDlUUVc18G8k8kNKvRHx3tA09upMtLn/6LQaXz9x/EYnR0Nhp+50G
lMdcO3Qls2SXOOvV0s9gQ/DolUefUMFQFPZXUB1K2KTZBn7xLk9J8FzNoeKsifTd2TiwG3Eh72U9
CMeSLL+L+Qp01qTcARORXFzt6jXw5lJxeQeQPzicl2FWjAhyCb2qMQrDC7gIW4seXRXmIvdFPtPC
QWsHDbZsD1hHJmCEr3+tgwAPkfJLyt44vYFbdy9WbJP3ChRm95ZVLStXzGsSeGCXCHDPtxyK1uPo
Ntif3JGxLXJCaJ83Bp1ZGROucQwEx647US7O5ghUhO8njFBOn6/zZ6hIrv0sz3koWptLXAMI+EcQ
n79sLX8lRiA3cIjsYtSOKDCxcqgJK5XArNM9d5uvMyfXSZ3zNgOmkcv158w4YZBWJWBufSUz1QuU
JAY6mBj3mhkC1jCoT9si/3NEwqDF3oXv7I+keX3gurAaWwmZhf6159cBvmVcJMWbFUaMM01mLdyP
Uyy0F8JlOmCh3mK9Ua9mga/ks5PJ/b0jtCo2DvrQFvPAXXbYM3c8iBSZgrQV1+5FaXoCO5llR7rO
977J7Oodaw3GtVUhBD1gym5ThZjLWEAx0yPyr5aKnYY+Po68+/DNROHvl43BWeK+i4mhthaOKcwr
9KQqHRG1NC4TOjvK2UlfHVHjjuBebRiPkF95ru24H6a9sMwc5lhVBN4LybQ3/r61dFlWH5HN6s7m
lLPabszWQdQmPkUBTQ5xf+9DPrUU+J8FM1sKqWSR0UgBqRRtRd+/hXi9KD4TrJia/YQmiiEEUsoV
crD9usW5mqg6UV4hgGBklE2FrkKwx9bYQajrbQtOJa+iAzm/tzWa9Ju4/fv0PaPwK89jHfV8BOHg
cyb86XR/JNduTfXCsdZgxo0p1yaAOmS+ll3VuYxSKFGoRJagofMkHlb/KgCuvPtGbd2YFaxBA26a
INVwSum5f+w3hEYuixJRkayo5Ab01zuNzfzNpJN+qyEpJeLAA8m0pKx2mKMRjXWoTEBejMrZHeFu
a5tRd7/quy5h+2MgCZnWgd1IwvClpWo0SdlVZfozOBFYgrjHRucVIbrZq5YZ5HejfrvN2WBBDtEf
T6gLiOLTGIqBR5UJe3rS+C6aq232ubWfIsPxHyZPydCHEp1vHNm2YwkGfDrkvWS7kmp2qqy/kHMN
vUHrp3Uvx5PFOUWB6z2A63g88hpLV9ZV881dnBFJSS/nc/VzcemnporwTCL48soIBQS9B8yazaQb
2/X8V8CvD2EFCNr9jrNkyxhbjacRWyGoV0pqu1x64jKwO4Nput2gtWjh6xN3tdxf/C+gODU6tkE3
Z9yedX7/ICvt+CUvZ4rnGw7+QwK1Ta0ZS0Uf8lEJfV/GKtINKjT9CHpRi6nqWEq5o0QVdv2OfU+P
xR7LdmsqxujvMLO9la7ja/prsVcjqNWnNwaEgvydhokhayj3yfIKw9/0xgqJU6QqHe6C5B9fVSUA
ERe3j4vaVV/+hHRGVG7Xf1NmFFCcuM3qhOM3jh38HMG+ieA7q5Bb/jiBFDrRHLfjkDo3nE6CI+2r
waOpX/70R3upy5EB1ZlgXnES1puvknmv79qtjQJMdABoydEvlrObHbceP17yZFi43jnUICe+m7C2
ATdqeOLzxQKv2ZkbiPx0HrfBvLzkBWdJJdAzt5lylXe+ws+/xd8XwkfshxBCV+tFemCWSbB43i3s
Gmc2iYPImXO7URMIT3Eo1DwxGeZ8+IC5FwGLuzthSWyiGb0H0xvc0PsmqHfjgnQ50QgKmwiMZS4C
dxKvkv+CHRrqD+l7T0gqqKf9EZetO0fm65/4EQDL61hiZkmhmwFz+NGmAhecGe12bN5J5JGYDHYc
s7SW1fk1AlBas01kQI54C9xCE3oxsLElCycmZL7y4naPfNmIZJkpley2ZpguZIT50cFSB03Vf92u
H1wHqoqRUkyWpmyTJ4BHdl3xZaTS8A07ZIhIGKpOsdAu9PVcIUj2UzBTih67I8xYMaqsN6qqu40p
t+gMJnYEC9jvuRYFOqGCs8qYSvdFXSiajF0WjHFxjL2bF6K4sGDmaM6iiYl/fdDOZbe9bNIV0D4r
Cw8/pF8tSEPY4XUmZ6JvuLIWXyk/R2Oe/aIjpH4VGQoOuH5tkcMDAYWor0kRLVntz9+6TWjyboaN
aE02wD7cR/JiO315MNLVQKJsQj9XWcA2aeF7Hw+PxCdDZVeDVCrdhk5ssLyaP9+WGUURz5Bkp+t6
qiSkSGdvJJ2XwxWOl+Bc/1d2MT/fJPmBLMhrEcngsJYSGjBMtOHscOa7DIcaEQbZ2Eru+TX3APdJ
jQSYCoOuHe5lzWu2QeeHQWR22L1r8HzXg7ikjruroPHYAgb44EWIhWHGlj8HN07fEGYq7uFeOzkr
rCQnG7JkS6gcpG8XWUrdPwO+HwlgVxc5ugdvNRD8qYKLVCMtxrydq01Y0UuNGwSDdkZbomysecZS
mzBS5VrWNrhAhZMG964XEG6SnDy//K+JJeZKSMjSM/lVklf2z9ZXej5PS7wHy42RGs2+OSAkF0aA
aUIO2uwYtFwN6FHsGxGCT9WH3JQzr86clKNLa4S2S/mx7SDDPlFmxVFKkRhCFBt3c5i0iP3zKutb
Fmy3J+8624sdfzhyC+hc2BzNt1EilvVD9RS/gOVId/0gpQJgoJ2pyKYTFGcRouiAozsS+SBQZoMh
sxAA4KSe9nrGpgpyjdj+IoBVH6Km+9hbxeUMc6uKRPmEGq1FVSM27bL+j4rHWJN5rw+FNKpYQsqZ
uaXQE8buqmPMKg+uJIB4JyLWRDUUZU36mBeFavQEwauG9x7Ne7mpARcSRBeBduxVk8f/abzb2crk
kZkbeIL4ccR3XhkCQlz9+TAflft9tgx1Af8csjNluHGmvXokYDIxGfm40/vQLihrY+taIQbw/q56
wmzt/vBQZsQ5Mvt47l5Zi80b5azyYt/wCDihYQ3ODffFaK18BME+J3wm/fqrIfTGDXBX1iq6O65q
6tx2HPEK/DgWy4zezXtyqnwwSnTulQzNnw9K0eUe2yMu6Wky2amFOHzZZrvGZipVCN5SAj0fG5r3
dzj9t28E/wCftj8CtlyiQX5JmUWenjeKaiALayIzEEALddPK8/doRzFlkWVwIN9qf4e8cLfvX9sN
5X2F5d8xubgye4t+W4UVufyhC/8EmK+cxOuOv9qvUuW9xx8iSC0A/HL/28typJoQokdyJBSh+SKn
nG5flmGf41E5kXZurpSFB9zkwHZP2BIWqP1CdmnQiCyt89I1zWcEeWihKFgpUnTPkTUJNvkFxlJ6
x/1/08mAJ6aiECB7+t7FeE1RQNy8w1fn+htWksyHv2dhgc+asJFZvYAX+04GBqCehUyXHHg9CNDA
jWPcSvCGaX2pK3Fw1CJW+WAWcs+k7O2J84qC+nwsxvKn6S+uGTmsBvD+8Y/d/mW5T2LBxDjl2XaX
xTjKZ+DjWPUofpOtU1wvzDPOINA0gPDFuYoVvyrYOwBaWtSS5viqqhLel5ZZgmh7iWKy2DUo5a5q
sadH40dhg3G3ik+63cChKmmT4nZZjxX4T3j/eteTS83sxTo7ZWK7VIVbicDFUXFpZbohguPn6xJY
uHl9ZMu7iaa7DgZDHg8er4uTq+sNoc2rhTRKYXWvUkhVhV4XCLHDgi4eFgtGWFl+rgA0wfIilQn6
BwryEm8jP2Lc5miUQ/tpuR6JdHWDxGO/rAQ6EDbHOcm3Kk4uuNG7nebKKGUfWg6luEKKlUDVUG5h
+FGocIdq9QsnSOxcIgbtPvbD6W2CAsjFZLcsZH83S5iXz3+HKl9rMniibayeKW8dZDRgZFRIUoMe
BbllPfpfY1iiCdAUOoQtlNsHCEOFlsB6xuNycl3KBjdbGDG/XH95X1OnBE++iODFujUfaoCWmzeS
qMsKBvJIYGn5b8bQdL4WSNVzEpMqMuVQEpuyGe0ofxlbiNftd7OdxgAOBRFWhWbOeTkP2TGy6eno
t75RK/WWDm/0eO1fcHa1GSfabtaGsNzwFc+5plCRyC+PssclvYF1gfua8EyqAsiFHu2BY6njhJDp
8Mr1Wda3v/dQsDYrNrmArmcDt45k++OEj5I5VRbHP2sBWB2czgBKxJGmioG9AsW5B8tPMzdt52Z7
VTENLjUAqoSbYNA4KKnMnnv+fsJC37VCpueHVt2m/YtePNVWQFFkhjkI1MZ+IPkVxPs7CMo8SfBT
qYLMlYYI3FBRg3qKhOO5WoSpPgXc4rUbtT5Cg1aSRl9l/HxpBIZtkPcOIZub+uQtJxciOjU6mbPb
QiCqRmVUAzZXbB6zPPl0HEk9ZJJv2HuhDP3JVqU6ePsO9JrGITROL6f0tFzDQH90v478aWcaV1Ta
6wPiWQBvmY1ESrdsVP4oicrvNOPURucHlTRWCarijQtAejPlHeO3Hm9g6RtxgjIP9x2eQTOakwlh
yd5JLnaqsPBhFa/XBIoT4TTZIYTDPrNMz8A+47jEGYiKyQ7NqZDoH+Sw4nf8MZtPvPS0+VLKVzjY
5RfAn4S3WeeKX7ys7FAg9tqn0M4yqGCvOgA4LBu1LKgVX4vPmdBWK4uraE8Pepo0AdG0BzcsqA48
DhpX9UofaLTk/FU7+Mm5E8ak7ORAwwYOxj5644NVHkX12xrNTox8tgZtH9n8JgDTskeZ8N2StcNR
HzBPYV7W38w//mwrLNsFBm3pTP/RUYttvmN+jAB1u9a8pkTY26KG/hE06L4+lpSKsy37c5Df7EPz
Ayyu2rTsHY1yggbu19y5awYzQ60/mgnxx8sHXSCRs7SJ9eaBH9JSKbMLUJXXNlwLMyyFfZKtqUWf
tpb+WRnPun7EtfsYi0E97x7qGCnBVO8HyZiH5ga/FfzkQkcgNzpXmpmTBPUOUtNCMgYt9UB7s1FB
2IUdOAI7/qk1AgvYqZrBCCMNhwIPWJmi2r4PHC/OSThXdmaG22yeSWJUKdMY1/Kt0A/gvJ02b8ql
/OvtTafOFIeDY2nDX2JFRowLgTsj5wtd0A0+Fe9hEaayj9Q3FWgkn4ujTh70AQFleC8u8odyN7jj
COUsSwyhbzEbvJ6IOA4KFco/QtDjXKWpYoQCO+HHZWXeavKD//vmTJczjVPGXvccGpur+KmXPUWA
lZiH6XCE0Tpk5sWYY0Xf3vW26B7SdDIwuBHNbUNUUvCIT8WLjpPg/uXPwjyGPOrBsB005LkQRSde
MgskZzORjkOKRQPxKmbQ/aCyt7nVuvvw2Lo6KaDc75b7leMzFKEzXeZWzTKdo2TzvsOnrQ9h8Qst
mEv/R6hI5kQiV5MBF/ipR5l5G6uuWOzEJENoHKq0KtcPzvQ8JIS1ABFF+JBpvULwW7PqMq7+6Jo5
rTLQNSHCAXkw/U10rgGI8Y3UkdhTkMa3mXsLN8vOrmlD0dB7ftcoKVdCEj0+HAtJFW3+uMvVZquu
dyWGRpeS1YL9N/HK78lEbHAh7WDmPC1FKQe9tJvkW4XmD4PVzQNpD4mahz6DMjm2nx+PLIQrs43R
z65wWuDucic1fzXD/Pt2IMDgDv+GQg0nSw/36Z7BKaoSIVLRMk3nAikTVV65qOkSjDAXxckLDyPJ
MHe7PEHgd9DS4u3AdjwpZJSGDkYVHTjVx8vvbrGuPGyj2JOF0C7vMsNGGVwkIVJxpSDAcv4ULFCc
rvT3iOI8AkGUGUjykJMXZECNPFkCcNAKWpSbB9PnE2wL7wM0E9Tr0Y6Dp61sv1mNL+aFZrQ6LlNo
wr+fyxxyndjLCJ07ei41UxyoHzaUN+LLtMHegl25MRnuTQJjmd9Yz3FSUy115nFy5MAfDPzWYo39
6/RTi261TA7RGpyaTuR6VYjUX2kXhTaUa6mJKBmWJVT072lgrYEWXRE7F6sGuM3/Nrrfasf8uP+C
FQ6WsWYZSc/RoVUqDYAAC5ZxTD/vuO/R7Ksa2JoD7VOJMWSGzj/QnQe5pdWtE8ajhFSYSCZhqXFt
/abrgCs/oJiytLbmhiVGQwOSdkz3AhvA5gJvK0Bs6ZN1sCejQlcrI5mNnBG6raFW6s1PJ6sVtANR
8z/DM8lgOkE5GqEaaWZCg41hkrAJ2H0E3i3SwlJCTCqNVUEvGdJf67rdk/rV99Ikz3AO2B1pXjnM
gYY32z+5PDYYNtvtTAa9ldeu31EU1o+D+fgD6YZyU3DjS6ie4yaquhRkODhu77OCcsaxKGwqeqr9
cQmuQm851TF7yQvhyjFAEaaJR1h0Vr7HmZVag0IvtbKi0FPxu86++OsXHwpzlpr1CGyPHBWC4wV6
OoSrxgT3wqFvTcAQWt33FqvMBBzcb/b5zPrW+MXczAhlTTImOLuAWNfurRCrEh3fhpCOh05PF6Dn
/Sd+3QmfXrDlzrdNtdpFjfjtAVgHTRH94zgbDUaonG/jrZD6TAIbCSUr47HEJeQO3Gpdcr+fhtQQ
T3XJMO2bQMnHGlR5/t1EgM3fh+pcDvQ+4o2rP/4juXTNLKrZ1rqluRIQ2WisYBXGha6O3Yr0FzIL
LYEFN+0fK8MCwIoe+edlcNCKBRZ0W57Py4I64Xz/EFf1Fru4moN6ZHmmqmnDtLM2BJ38hKBvGO1d
TdFX797El0NPgLCmYx8WCB1w9+W+VlLo2UNp3xgemy9uQUKWsUBKk7hHDpNHda5f2rVSSksGrYj6
bsY8BC2C1Yo5J5pUWC40OVW3MO+YkiJIknWhjSLYLihPOQ1SDYJUtQw3XKqBKqLmt9VZUBpDUT/O
4FiFR4hhTobAembQgAr4ReqZUdVzj+FyrTCSAB+pqS5XWk592XDMfjSA6IH7tq4Afx8FGfERWNSU
NRVys/gqhabqXOWi5pWo8HDeKUQeETCgbIzNn2C3bjjBPzOwvoZqe6sBCIm42EqxcfmVNlArKdvN
4ipviNOxFW/l/8DFFaIheopcstI3lW9CSwKycuKeBaJTPH7ZnW8EGGQT0V9cfgIgMN7ARMb48i4n
fwpP6OLRkAzOOoYhsZ78GhevQilMqOsaogoJaXtVi/Nn6L3f6NT2oNAyDJOfrUe7J7QyPq638KTD
afHpUfDAmGpWIIEtddDkwFBEg1AiJkb6OYqt0KhRQT54l72kn81nQMXDJ9X24a2bvOdZNRyHu8MM
BbVPS9V4l1CxNHircxeNDgmTsgyRMPEH4DxFWXkvsTDf1PsUzpnHEtJH9KtShRHCU3VqduDuMTHI
xTf3xNYLE4jd9yyEjtGubA0rj05jZ8XdJJk9y62yME5xzEEb2fFjnWJHI+AfoJDZeONu6vyKm27R
03D+KDETB3sMoQEttmIR18hJMXAJD0PRERkdm2E1LIGt3R96Ju/ICOOYVNdFvF1om69PlLf2qEV7
6u/EbycQufV/+AZhy3hTB07GnwhFCOj0PupacKi5Kcg2MuAanNLZkMPNyhgOzRMAxnFrdBsosiKy
6p7qzrFpDcFlvcpmyYUpDOM3Oe/lmCEmx36IOXimI2E1W7fWiPgnjUlLpryR87/pPa+bBYZXGw9l
guhSUqRSKfEL0z2DgTPHnE8GjTqWc5tcKLtBULusV3+fiBouygrSE/O2NVGH3GQdypnC6FxUOaaU
y2/uWRvXLTSyHOmlyZfiO8qn7La/CR2vqJkQ0k7jZTYqR/0WTLDxKmNEZCxArVp48CswHrtfktL1
+Q8c07iqy7dxNDVtAySdcp9lfBOwRH9TLziNFCU5CFMilr5VpXN9qWREsm3HDU0mmB1OOhPBOLd2
O2DPdt6MEdk3enZyv5tRaGLFcrk2x2fwbUnxJiXmR8W07042voGS5eeauc50aRyUHZT2UhHb+Zwo
rogAcR6i4Uv/otdS1QbpWxYUhg5NbwuOvuWaTB/fkfiygrIs5d02ElrCUgv+NNf1yBezMWXJeYJW
YMb6+KhxCse7yTMLj0lcRDcJuKuFerahzWiE3vfqnA3OqvswstZF+sYF6czevE9zYQ+gbhu4wVRB
GmDkgKUxL14FLOpn6XHYNsSmjufU/axtog0O2COfDayIRHAVjsLyFHT7R3OESCYoqjHTXeJn/+88
1boMgwuirJPoaUk0l7XvzwlaM5cYqX/APJQ4PAgz769zhwCtZeVrI9V0/qjjlF4fPUBZnl4PQSW5
uBg9lN4rsQHFJnYL82FfRwCp/+iqV0r8sdejvUPWiZ/h7SQKtwRyOCF8MEdUj2TKkf7m6wwMI9AF
PqxsWJvcNjY9MKvFYNeaS3FMyo93RsVZJMMd3LSNFRlNZay/sHbslKsVejPULj/8bHq997GuMD4+
5T/PtGlnjrv17/lBrZL4zyXVvEEs/11S0BVTXKX8+eTFnTYovl/lmq1zCUPeVyqhqWh24Xc+Lrw7
cNaILxFHDMi8Opyp6xzQLiQgccoIHY9QyobnOQIM5stORV0JTUDQK1Q+n1EQvru9ghzVhUxZT8me
giNyQ7YsPYb4YlBnPjJMM/tn8yBr7T/0cZDeWxXckrVz8dqmMnF0QBVMGBWPEGnz2SJc4kFkJfOy
Bz0df0ZH/95ARClcLtfXSpTxN75M0pHnC0Tp0sOK/iQ70hidvLxkaeOtKjXcLCLty4eGM432TzU5
YTbDG46KefLaEng4dNvUoaHjunmCxfib+f9NTKRtrwR0jE0tDTP7jmv4oObuAyIUlH5mtFhqpacX
ChiS5L2aHiZwh0Lokr0lC/Rzj+49nfiYAt9lgXSZ0zU5eoaLlJLvTTAEGU1Q7X8LJvQUvh7qbhFB
8eYQyonffcJNHhj0K1AEjrbYxAO06GHXyx4AWPm6oxaaD+s1ZXzcpB0HLtWbvHL80aGbesTS1LmW
r7q+Wvs2tOvAtzVQRet/jLzSqm7fjSy05ELXd5MQ+KPNWF3yOwgsggTcywHRJRtlzDdsgotbDXCT
d9AdmyQCmMJFbCMkIJtCb9t5es9mjOh1W3G1WsKkXYL7BKxruHL4YepN5Nvo0IcCAqT18kCKK62a
YVWTzhknsp/X3X58BcrZ+lOQuZczTdM402B2s4OGCVr99yHiKr4UIdYIyIvqpFVcFSCL4FtNju49
4vMGUd9Dq2D1/odrkOicbg79B9o2QMhWs4NPFaeYHtOI0quRBKKrlMPekeZ1tK6ODycxQOQu3BmW
PxKbld3Zxwf55Rwj1pCWn42cwBR5ZU5BKTxG1wyZ7E989G8drcdsHjsIP/fZHeHn0AoHEafgCFVh
bQ8O3MttHo3gYv0unAD/a55eLycoFT/oY9mE7mYtz0MyjmRrq4pNoKfwRFFobNwbX7iQFWeY9MOP
giWaJU6/0ABnCmZKMkFrrGoOE2kfyarDMBtUPh+InVSh6WqFSQCFUhD3NIgcGfYWdlry4CQKT/Ba
DFEFvt8MxAnoorKO0/QQETFyBJpQExkA/obOHqVawXHM4A7PSZH0BaK3AVVa2jroq3cqDxumnTFG
2OB5DWPGIIiT4QAjqN0axC53LIjKgyD3IRxgjFfVAp5TfEDKncb3+fcsgaXHnbHxf0PyYZpdHwpW
cPyk61qoGTaTQJhWI4vhTSHonSnbL/EcUEdat8pgtDlbt9gt5fr4wuh93A5uCQk3ny6lhhsewynq
c0xVg1pxWNJbt4BJCvUiOGYkTPo0EbvvFK8N3E0fC+YzkrjFeeOJSIZiW/j60NiQS2BS77ykFcX3
zCHjTLOmStJOtLQUU0dQj+2Ul/eykTNpnvvlekEQ3T0sCAHifIjWdwFC0+7VZRlA416E1UfPp8H6
/DDMI3WokEuWLtIfvrhSmZWUIC5RWlK8LCOucLX3gUoW5T8WXFuLMGxNS3i8k3gIh2DIL0C6yCV6
ffon2xyPCCl1KqQha+BKPGHkh+S8w5HK9h2kKJ3VQ4EBcop8D225ge+fgq8GQuuuJ7SlaQKNiCn/
VV4JvGmozMIv78HTaGgd8LkP5DI4ZlEAjQhrqWypkoiLmPEb0+xdrxF3VgRNw/95kuZ9wLoCbBd4
vOnFMR0ApTMy85EZHQvqTq81Qv5CvsAJPULa2pz4WBhE/B7azdcmAYjTpXuDFdhlB9GvE36B7fQE
H50+KXlfWj2cEvREcSnWz2GWL5Q6jR+pk0TOwwhcMhulvNamdTrUJx1qabOvxxSKSco+JkJ/6NIy
vpYwBjr7TEu1Rs1va01N83Rx6f7gN0zgkr5kQOf7+cGzkcP3+5jREjK8FgoyfvX3bTGHnI9m7t9h
lEayRvfcrJUbg6xeIxndUr2ucBdetoA3QMvGph/AP+3hh4gKDmKSp0aoTeUnQXJglsREF7vhD2ZG
SUsxzoSYs9mXeIpVSBfmIUeOijdIPdDpka4lJ3YtHTXxy2pS5HFjRAnClRpTJRzUpUjmifMo0fY8
BpMErdexDbdjBmQaynM91KGApwH/0c88EVKuH6C3WJT6ZeRj2cWlVq4uh0tbPGX8kvgyNgGoL2KB
a4Jq3CGqdVk0Js5n6F12pGldFaJAhcOi9XFeSpd91r62Cho2lLyVxkrruflSF//J+nn48lTBOInc
E1YyfMINWGy0UKnd+JzmvsGf03t09JQwFa2zYa94yYrJucnVb+KYkprS24CwvOVKRAL0CR/uq06p
1tLzVHZJMU2AfWyiDYcjoDrH437lFWUkTK1rMBYIzAH5Hur0dBoOThhc2/F9fur7W2F4fnGc6myM
zcyzJFl2kcy/ogvPbJmrJCP/CzqNUb+O1xAtD8nDQY53K0XJeSavP9b++wSFJpF8bMrU4JGJtzy9
oWvVy+ef/Cv0DEQsLQ7kOm1X3/1i1erMuZG5g84rdv1tbLS+07367CJBOLmOsh0MykAdFDoV13hJ
dVwDcOVB5KdADM8kh2dc1mAN2fSorO+LT+Z/Sl76sWF+1GKoTOuOYq3yJVHbE6YWT5kfKa/ivmPF
E1+FE17SMeTiUuyzj/k/wa5QmoocwPPV3K4otF8Hd/or+K2PfF1HcHfMQH00TWJsZyqDE7eheteC
gvO7dp3qukmbqq0tckkt7Fej9uPOeMSGrUlgWFYZl1niRfikG8qDgDWRCVvTCZCkq/cbpivLzJDf
pcM3UTym0kP6fNShiz0rQ4CMPZKpeGjJgBiXe7yt1hs9g9PssOwrS2odWdu8pBSNEMGgfl2d2W1h
M1H0jHNqYi94isipROQgw51rDeDm8aaZMcQeyrFRJyh8P9qCo82yB3uOQMHaVrIWqYrhEXExTAFR
7XDB3dOpzDmwg+IFrLb3BykcRH35PyvC2czxqMxFbMZDkQ0NJIcLhUEOnR5emT7ErN/ofN7DQ033
4rjwQusYVoIMQ57ktGhNt2aVnMfwenYdivpxEXHa6G8koQzBSCVZYMCmMzCeGmj1Fy75x3CBrD+T
Rr5oo9RJ034a2wFrhRnhQuTflfVsLGJm++PrMcij0HYxTFW5oiZf5hWwkZ3a+M4ciu3YO4xB9ADQ
1xnWP0sGGOnf3xOZjngFbr7O/yENILkZ/uZ1eAwEOcxZAWUNjFWDiMYmH5PVbiRUMlIvDPPTUJhF
LWH+Jp+HuAKMVcYQiB2q79DJNAHSUvvgKPhOuv3M6IpTzf/GiycgUjHm2OefYWs4sdhHugIE5FVp
uWg5NIwcGd+dB7E3GvQm6ftsNxweH0b/BZLiQdmdo8bB+0RMVnxEPKivVIoyrXNMvao5tTaxnjO9
MrQ3EOzINX0+zic+21Db2zW982+zLKxejYCbV5/1/FUyR/y/sQK42Ph8qp7vYlHHjMmxHJlClzNn
wg3UKGLSz4y+s1f0e1dXGC2FKRFx88LcxICaf+7CUX999VGCBpuRNCPZ6N1AJoe6hKzXc5FFW3TY
L/LoYG7HfAFzkRnjdvY83SW3A9j+TEZQFRHiQaBxbjyvBd3ajUlsbQ183THG1RFpuwE+ztboPlrG
yykJr8f4vaaGeQNQZlbPyzKgcnblwxWCS0KwFuTNTg2mFkfJcFQiZ2eEW6pLviIyLLUTPRPi8h2g
tyjz7LbcBHTw6AiY9juSMqPlH1LdvpqwKdPt+a6scp+mn0DiPS0gIj0wUCA2Ud6tAJgLoP7fD5jo
jUNloPwUwtWTKUEmzoyhbghxntUwoRM23NKaydZ5+W06gDVFwowxAfdR9HA4fvPUQgOGK2TQRmcc
YAGvpbYV/g9q1cGd8YlUauG9Zlr4l07Fn58/IN7SSY5sADZlNpkougNuTAS4M70cYxqRLxi3ttWu
6rcJeEzm4zjhabweHPqpq7HIJFeaSkcgOH3rHEFx9LhYtjP+zCmzoDAVh80QvGN+vwKeepmfWBgO
lZoNT/B+nQwe3ktNlzFKhZ3AiFot1/2nOnZkaFoDSCYMeEAni/SiauiRQ0qMaFL+7Tqcsl9UTDB6
rKUsu5E591GF8QNaTEjAxwnbGysnfrsifsyHDwW+sUgBFOCXdn9BavLPxpuGQqZxJthCe9BK322j
a8sThyi6eVMcAyErtejRuHkYlgs9S3mA+oxeX+JC2ZR5Jji7z6oXNXPMdXR12UdpSzz89JJstGh0
7oc81FHo83nhG3alfUk23/j6TOrtNOHB75/dov3diGrJLm9jJlLKqzUkgllBNof51CZXVOhFJ4qc
m7lRM68rhOhhjv1v5+u4rW/BYPEMp6cXOEvqviAWWnxdz94g08JGHsfoTHJWWM38MkR0uW07aKDQ
eRntE3PLcFiLfMyt7/q1Q9fqRgzD+yaazlooaygzuTn1rUmTqVckLwjUC0KTbZZbDPbduThkf1RZ
1LoZLwenlf3SBHQNqp98YULqSrp0qcXtTy2O1+3olg/p7Fau9C/pJbT1zCmeU98Jhr2xSHXKrxvZ
9ka2YaQeOk4kRltHOZiNnTIgwBNSdknpgkHGzePJ1BnzSgpK73jAabn+ZgnFt8TVq9vjqn1QU0Za
mcTgcp8U/xesUCGQhDcw+BcQHXTfPgdcjjuwv4yv6QgYGT8IGn0tci1FxJ3Icw9RDnyHwaNGIg6M
G620Qo4BpyXiOg/rRNgMdqeQMuiH+qKkhm3GWxw+aWcuPUONsBn5wma3cc4q7JxPA1VCZiILU1d7
yrtZKs63c2+R3JDS29P7D3vHqJLHmWxMgZ5uZ15AvIfFUmK/upvZ+qL+nUcnZarL6cKPeMY4R5Au
bQ2xCPMWIya+AIPE1T6sAJbVby09cnFsd1nKKwIKv9WTM1FET+1IXpl46AeEkarX/4Fr6Q0cmR+g
Qx4qPCoSf1rHGvyNYGlrkkxV6qOxneNtZVk8aIkxT5Qh0MCXCcI+dhSu7WQ5PGpmr6FjVdiSUcys
YwND2wFBogfGhSueAebFd13R+wPh6HC/uH00W/nFPEp+Tdu7iDn1zJOicR4ieUQvuZ4tNs7IGLQs
a7681Uyta7SAk2wK5omcsYRtDf4Vl5nRZj+8EtC4frvYSFJBpnXY5uyWyx9fR67X96o+Nf/5IaCR
zxwmtfZBpQUFKe6ci3c6nqw9eqfAOzPXEtD/u5ySrqBAvmRk2JCPf8MnNg97fBoIdpEVdDYi03y3
mKvDX6De7BrKkMxw9Mgb/OYJgQkMwlOeatyvE92OGUnn8a2V/G8NTlXIRsGE3U0ie6JesoAhZi+7
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
