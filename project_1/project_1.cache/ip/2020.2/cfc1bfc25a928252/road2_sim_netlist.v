// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:52:24 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road2_sim_netlist.v
// Design      : road2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road2.mem" *) 
  (* C_INIT_FILE_NAME = "road2.mif" *) 
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
