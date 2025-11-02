// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 19:52:25 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road2/road2_sim_netlist.v
// Design      : road2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road2
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
  (* C_INIT_FILE = "road2.mem" *) 
  (* C_INIT_FILE_NAME = "road2.mif" *) 
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
  road2_blk_mem_gen_v8_4_4 U0
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
Egk=
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
