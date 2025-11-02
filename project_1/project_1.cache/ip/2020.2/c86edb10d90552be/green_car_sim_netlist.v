// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 15:49:45 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ green_car_sim_netlist.v
// Design      : green_car
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "green_car,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.35235 mW" *) 
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
  (* C_INIT_FILE = "green_car.mem" *) 
  (* C_INIT_FILE_NAME = "green_car.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1530" *) 
  (* C_READ_DEPTH_B = "1530" *) 
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
  (* C_WRITE_DEPTH_A = "1530" *) 
  (* C_WRITE_DEPTH_B = "1530" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26384)
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
