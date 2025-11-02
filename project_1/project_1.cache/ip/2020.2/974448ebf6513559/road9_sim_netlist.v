// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:17:48 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road9_sim_netlist.v
// Design      : road9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road9,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road9.mem" *) 
  (* C_INIT_FILE_NAME = "road9.mif" *) 
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
