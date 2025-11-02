// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 20:00:39 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road6/road6_sim_netlist.v
// Design      : road6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road6,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road6
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
  (* C_INIT_FILE = "road6.mem" *) 
  (* C_INIT_FILE_NAME = "road6.mif" *) 
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
  road6_blk_mem_gen_v8_4_4 U0
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
eLs=
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
