// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:20:41 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/road10/road10_sim_netlist.v
// Design      : road10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road10,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road10
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
  (* C_INIT_FILE = "road10.mem" *) 
  (* C_INIT_FILE_NAME = "road10.mif" *) 
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
  road10_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18144)
`pragma protect data_block
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
K0epQp0ds+MZyTHYqJMJMj/W
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
