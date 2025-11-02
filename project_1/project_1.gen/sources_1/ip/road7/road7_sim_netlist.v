// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 20:02:35 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top road7 -prefix
//               road7_ road7_sim_netlist.v
// Design      : road7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road7,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module road7
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
  (* C_INIT_FILE = "road7.mem" *) 
  (* C_INIT_FILE_NAME = "road7.mif" *) 
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
  road7_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17840)
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
