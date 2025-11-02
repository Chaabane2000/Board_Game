// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:54:44 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road3/road3_sim_netlist.v
// Design      : road3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road3
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
  road3_blk_mem_gen_v8_4_4 U0
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
efQ=
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
