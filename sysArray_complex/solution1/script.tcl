############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sysArray_complex
set_top systolic_array
add_files sysArray_complex/sysArray.h
add_files sysArray_complex/sysArray.cpp
add_files -tb sysArray_complex/sysArray_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 3 -name default
config_export -format xo
source "./sysArray_complex/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -format ip_catalog
