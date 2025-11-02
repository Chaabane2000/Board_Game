// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:58:29 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road5/road5_sim_netlist.v
// Design      : road5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road5,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road5
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
  road5_blk_mem_gen_v8_4_4 U0
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
DnQ=
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
