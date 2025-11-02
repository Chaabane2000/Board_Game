// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:17:49 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road9/road9_sim_netlist.v
// Design      : road9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road9,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road9
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
  road9_blk_mem_gen_v8_4_4 U0
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
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
URw=
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
