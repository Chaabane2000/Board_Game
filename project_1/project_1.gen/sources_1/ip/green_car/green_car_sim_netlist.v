// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Oct  9 15:49:46 2025
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mankaic/Desktop/project_1/project_1.gen/sources_1/ip/green_car/green_car_sim_netlist.v
// Design      : green_car
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "green_car,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module green_car
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
  green_car_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26320)
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
