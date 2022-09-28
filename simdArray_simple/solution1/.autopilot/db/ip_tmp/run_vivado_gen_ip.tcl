create_project prj -part xcu50-fsvh2104-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/handengke/HLS/simdArray_simple/solution1/syn/verilog/simd_array_fmul_32ns_32ns_32_5_max_dsp_1_ip.tcl"
source "/home/handengke/HLS/simdArray_simple/solution1/syn/verilog/simd_array_fadd_32ns_32ns_32_10_full_dsp_1_ip.tcl"
source "/home/handengke/HLS/simdArray_simple/solution1/syn/verilog/simd_array_fdiv_32ns_32ns_32_16_no_dsp_1_ip.tcl"
