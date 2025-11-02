// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:49:30 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road1_sim_netlist.v
// Design      : road1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road1.mem" *) 
  (* C_INIT_FILE_NAME = "road1.mif" *) 
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
