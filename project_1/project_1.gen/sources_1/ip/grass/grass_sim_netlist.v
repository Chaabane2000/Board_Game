// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 18:07:35 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/grass/grass_sim_netlist.v
// Design      : grass
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "grass,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module grass
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
  grass_blk_mem_gen_v8_4_4 U0
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
kwA=
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
