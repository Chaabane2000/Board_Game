#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vitis/2020.2/bin:/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/ids_lite/ISE/bin/lin64:/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/bin
else
  PATH=/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vitis/2020.2/bin:/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/ids_lite/ISE/bin/lin64:/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mankaic/Desktop/project_1/project_1.runs/road4_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log road4.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source road4.tcl
