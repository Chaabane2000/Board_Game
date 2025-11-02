// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:58:28 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road5_sim_netlist.v
// Design      : road5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road5,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "road5.mem" *) 
  (* C_INIT_FILE_NAME = "road5.mif" *) 
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
