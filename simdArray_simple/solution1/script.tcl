############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simdArray_simple
set_top simd_array
add_files simdArray_simple/simdArray.h
add_files simdArray_simple/simdArray.cpp
add_files -tb simdArray_simple/simdArray_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 3 -name default
config_export -format xo -vivado_clock 3
source "./simdArray_simple/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -flow syn -rtl verilog -format ip_catalog
