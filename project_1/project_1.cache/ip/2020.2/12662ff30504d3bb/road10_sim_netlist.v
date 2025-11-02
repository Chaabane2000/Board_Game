// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Oct 17 02:20:40 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ road10_sim_netlist.v
// Design      : road10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "road10,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
