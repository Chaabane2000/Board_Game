vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_1.gen/sources_1/ip/grass/sim/grass.v" \

vlog -work xil_defaultlib \
"glbl.v"

