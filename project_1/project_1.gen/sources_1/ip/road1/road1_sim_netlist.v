// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:49:31 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road1/road1_sim_netlist.v
// Design      : road1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road1
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
  road1_blk_mem_gen_v8_4_4 U0
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
3Rs=
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
