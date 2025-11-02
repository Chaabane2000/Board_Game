-makelib xcelium_lib/xpm -sv \
  "/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project_1.gen/sources_1/ip/road8/sim/road8.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

