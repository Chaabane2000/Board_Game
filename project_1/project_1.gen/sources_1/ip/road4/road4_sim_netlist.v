// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:56:26 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road4/road4_sim_netlist.v
// Design      : road4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road4,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road4
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
  road4_blk_mem_gen_v8_4_4 U0
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
1ME=
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
