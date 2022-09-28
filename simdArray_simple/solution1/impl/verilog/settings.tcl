# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module simd_array
set language verilog
set family virtexuplushbm
set device xcu50
set package -fsvh2104
set speed -2-e
set clock ap_clk
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false
