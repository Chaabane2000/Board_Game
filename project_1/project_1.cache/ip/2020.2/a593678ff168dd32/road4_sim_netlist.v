// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:56:25 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road4_sim_netlist.v
// Design      : road4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road4,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road4.mem" *) 
  (* C_INIT_FILE_NAME = "road4.mif" *) 
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
