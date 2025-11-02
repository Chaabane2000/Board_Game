// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 18:07:34 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ grass_sim_netlist.v
// Design      : grass
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "grass,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "grass.mem" *) 
  (* C_INIT_FILE_NAME = "grass.mif" *) 
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
