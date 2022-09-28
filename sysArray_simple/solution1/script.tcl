############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sysArray_simple
set_top systolic_array
add_files sysArray_simple/sysArray.h
add_files sysArray_simple/sysArray.cpp
add_files -tb sysArray_simple/sysArray_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 3 -name default
config_export -format ip_catalog -output /home/handengke/HLS/sysArray_simple/systolic_array.zip -rtl verilog -vivado_clock 3 -vivado_max_timing_paths 5
source "./sysArray_simple/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -flow syn -rtl verilog -format ip_catalog -output /home/handengke/HLS/sysArray_simple/systolic_array.zip
