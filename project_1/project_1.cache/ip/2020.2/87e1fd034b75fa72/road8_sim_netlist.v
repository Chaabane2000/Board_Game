// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:08:57 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road8_sim_netlist.v
// Design      : road8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road8,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_INIT_FILE = "road8.mem" *) 
  (* C_INIT_FILE_NAME = "road8.mif" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18240)
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
