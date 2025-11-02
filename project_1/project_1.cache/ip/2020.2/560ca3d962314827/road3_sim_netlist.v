// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:54:43 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road3_sim_netlist.v
// Design      : road3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road3.mem" *) 
  (* C_INIT_FILE_NAME = "road3.mif" *) 
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
