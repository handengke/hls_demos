set moduleName systolic_array_Pipeline_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {systolic_array_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pe_array_pe_a_pass_0_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_1_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_2_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_3_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_0_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_1_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_2_0_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_0_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_1_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_2_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_3_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_0_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_1_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_2_1_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_0_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_1_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_2_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_a_pass_3_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_0_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_1_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_2_2_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_0_3_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_1_3_1_out int 32 regular {pointer 1}  }
	{ pe_array_pe_b_pass_2_3_1_out int 32 regular {pointer 1}  }
	{ select_ln14_2_out int 32 regular {pointer 1}  }
	{ select_ln14_5_out int 32 regular {pointer 1}  }
	{ select_ln14_8_out int 32 regular {pointer 1}  }
	{ select_ln14_11_out int 32 regular {pointer 1}  }
	{ select_ln14_14_out int 32 regular {pointer 1}  }
	{ select_ln14_17_out int 32 regular {pointer 1}  }
	{ select_ln14_20_out int 32 regular {pointer 1}  }
	{ select_ln14_23_out int 32 regular {pointer 1}  }
	{ select_ln14_25_out int 32 regular {pointer 1}  }
	{ select_ln14_27_out int 32 regular {pointer 1}  }
	{ select_ln14_29_out int 32 regular {pointer 1}  }
	{ select_ln14_31_out int 32 regular {pointer 1}  }
	{ select_ln14_32_out int 32 regular {pointer 1}  }
	{ select_ln14_33_out int 32 regular {pointer 1}  }
	{ select_ln14_34_out int 32 regular {pointer 1}  }
	{ select_ln14_35_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pe_array_pe_a_pass_0_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln14_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 86
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pe_array_pe_a_pass_0_0_1_out sc_out sc_lv 32 signal 0 } 
	{ pe_array_pe_a_pass_0_0_1_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ pe_array_pe_a_pass_1_0_1_out sc_out sc_lv 32 signal 1 } 
	{ pe_array_pe_a_pass_1_0_1_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ pe_array_pe_a_pass_2_0_1_out sc_out sc_lv 32 signal 2 } 
	{ pe_array_pe_a_pass_2_0_1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ pe_array_pe_a_pass_3_0_1_out sc_out sc_lv 32 signal 3 } 
	{ pe_array_pe_a_pass_3_0_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ pe_array_pe_b_pass_0_0_1_out sc_out sc_lv 32 signal 4 } 
	{ pe_array_pe_b_pass_0_0_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ pe_array_pe_b_pass_1_0_1_out sc_out sc_lv 32 signal 5 } 
	{ pe_array_pe_b_pass_1_0_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ pe_array_pe_b_pass_2_0_1_out sc_out sc_lv 32 signal 6 } 
	{ pe_array_pe_b_pass_2_0_1_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ pe_array_pe_a_pass_0_1_1_out sc_out sc_lv 32 signal 7 } 
	{ pe_array_pe_a_pass_0_1_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ pe_array_pe_a_pass_1_1_1_out sc_out sc_lv 32 signal 8 } 
	{ pe_array_pe_a_pass_1_1_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ pe_array_pe_a_pass_2_1_1_out sc_out sc_lv 32 signal 9 } 
	{ pe_array_pe_a_pass_2_1_1_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ pe_array_pe_a_pass_3_1_1_out sc_out sc_lv 32 signal 10 } 
	{ pe_array_pe_a_pass_3_1_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ pe_array_pe_b_pass_0_1_1_out sc_out sc_lv 32 signal 11 } 
	{ pe_array_pe_b_pass_0_1_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ pe_array_pe_b_pass_1_1_1_out sc_out sc_lv 32 signal 12 } 
	{ pe_array_pe_b_pass_1_1_1_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ pe_array_pe_b_pass_2_1_1_out sc_out sc_lv 32 signal 13 } 
	{ pe_array_pe_b_pass_2_1_1_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ pe_array_pe_a_pass_0_2_1_out sc_out sc_lv 32 signal 14 } 
	{ pe_array_pe_a_pass_0_2_1_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ pe_array_pe_a_pass_1_2_1_out sc_out sc_lv 32 signal 15 } 
	{ pe_array_pe_a_pass_1_2_1_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ pe_array_pe_a_pass_2_2_1_out sc_out sc_lv 32 signal 16 } 
	{ pe_array_pe_a_pass_2_2_1_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ pe_array_pe_a_pass_3_2_1_out sc_out sc_lv 32 signal 17 } 
	{ pe_array_pe_a_pass_3_2_1_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ pe_array_pe_b_pass_0_2_1_out sc_out sc_lv 32 signal 18 } 
	{ pe_array_pe_b_pass_0_2_1_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ pe_array_pe_b_pass_1_2_1_out sc_out sc_lv 32 signal 19 } 
	{ pe_array_pe_b_pass_1_2_1_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ pe_array_pe_b_pass_2_2_1_out sc_out sc_lv 32 signal 20 } 
	{ pe_array_pe_b_pass_2_2_1_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ pe_array_pe_b_pass_0_3_1_out sc_out sc_lv 32 signal 21 } 
	{ pe_array_pe_b_pass_0_3_1_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ pe_array_pe_b_pass_1_3_1_out sc_out sc_lv 32 signal 22 } 
	{ pe_array_pe_b_pass_1_3_1_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ pe_array_pe_b_pass_2_3_1_out sc_out sc_lv 32 signal 23 } 
	{ pe_array_pe_b_pass_2_3_1_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ select_ln14_2_out sc_out sc_lv 32 signal 24 } 
	{ select_ln14_2_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ select_ln14_5_out sc_out sc_lv 32 signal 25 } 
	{ select_ln14_5_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ select_ln14_8_out sc_out sc_lv 32 signal 26 } 
	{ select_ln14_8_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ select_ln14_11_out sc_out sc_lv 32 signal 27 } 
	{ select_ln14_11_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ select_ln14_14_out sc_out sc_lv 32 signal 28 } 
	{ select_ln14_14_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ select_ln14_17_out sc_out sc_lv 32 signal 29 } 
	{ select_ln14_17_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ select_ln14_20_out sc_out sc_lv 32 signal 30 } 
	{ select_ln14_20_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ select_ln14_23_out sc_out sc_lv 32 signal 31 } 
	{ select_ln14_23_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ select_ln14_25_out sc_out sc_lv 32 signal 32 } 
	{ select_ln14_25_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ select_ln14_27_out sc_out sc_lv 32 signal 33 } 
	{ select_ln14_27_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ select_ln14_29_out sc_out sc_lv 32 signal 34 } 
	{ select_ln14_29_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ select_ln14_31_out sc_out sc_lv 32 signal 35 } 
	{ select_ln14_31_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ select_ln14_32_out sc_out sc_lv 32 signal 36 } 
	{ select_ln14_32_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ select_ln14_33_out sc_out sc_lv 32 signal 37 } 
	{ select_ln14_33_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ select_ln14_34_out sc_out sc_lv 32 signal 38 } 
	{ select_ln14_34_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ select_ln14_35_out sc_out sc_lv 32 signal 39 } 
	{ select_ln14_35_out_ap_vld sc_out sc_logic 1 outvld 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_0_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_1_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_1_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_2_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_2_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_3_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_3_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_0_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_0_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_1_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_1_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_2_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_0_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_2_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_0_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_0_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_1_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_1_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_2_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_2_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_3_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_3_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_0_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_0_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_1_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_1_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_2_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_1_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_2_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_0_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_0_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_1_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_1_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_2_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_2_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_a_pass_3_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_a_pass_3_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_0_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_0_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_1_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_1_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_2_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_2_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_2_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_0_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_3_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_0_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_1_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_3_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_1_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_b_pass_2_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_3_1_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_b_pass_2_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_2_out", "role": "default" }} , 
 	{ "name": "select_ln14_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_2_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_5_out", "role": "default" }} , 
 	{ "name": "select_ln14_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_5_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_8_out", "role": "default" }} , 
 	{ "name": "select_ln14_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_8_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_11_out", "role": "default" }} , 
 	{ "name": "select_ln14_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_11_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_14_out", "role": "default" }} , 
 	{ "name": "select_ln14_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_14_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_17_out", "role": "default" }} , 
 	{ "name": "select_ln14_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_17_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_20_out", "role": "default" }} , 
 	{ "name": "select_ln14_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_20_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_23_out", "role": "default" }} , 
 	{ "name": "select_ln14_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_23_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_25_out", "role": "default" }} , 
 	{ "name": "select_ln14_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_25_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_27_out", "role": "default" }} , 
 	{ "name": "select_ln14_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_27_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_29_out", "role": "default" }} , 
 	{ "name": "select_ln14_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_29_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_31_out", "role": "default" }} , 
 	{ "name": "select_ln14_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_31_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_32_out", "role": "default" }} , 
 	{ "name": "select_ln14_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_32_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_33_out", "role": "default" }} , 
 	{ "name": "select_ln14_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_33_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_34_out", "role": "default" }} , 
 	{ "name": "select_ln14_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_34_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln14_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln14_35_out", "role": "default" }} , 
 	{ "name": "select_ln14_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln14_35_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "systolic_array_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pe_array_pe_a_pass_0_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln14_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	systolic_array_Pipeline_1 {
		pe_array_pe_a_pass_0_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_0_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_1_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_2_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_3_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_3_1_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_3_1_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_2_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_5_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_8_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_11_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_14_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_17_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_20_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_23_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_25_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_27_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_29_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_31_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_32_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_33_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_34_out {Type O LastRead -1 FirstWrite 0}
		select_ln14_35_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pe_array_pe_a_pass_0_0_1_out { ap_vld {  { pe_array_pe_a_pass_0_0_1_out out_data 1 32 }  { pe_array_pe_a_pass_0_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_1_0_1_out { ap_vld {  { pe_array_pe_a_pass_1_0_1_out out_data 1 32 }  { pe_array_pe_a_pass_1_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_2_0_1_out { ap_vld {  { pe_array_pe_a_pass_2_0_1_out out_data 1 32 }  { pe_array_pe_a_pass_2_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_3_0_1_out { ap_vld {  { pe_array_pe_a_pass_3_0_1_out out_data 1 32 }  { pe_array_pe_a_pass_3_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_0_0_1_out { ap_vld {  { pe_array_pe_b_pass_0_0_1_out out_data 1 32 }  { pe_array_pe_b_pass_0_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_1_0_1_out { ap_vld {  { pe_array_pe_b_pass_1_0_1_out out_data 1 32 }  { pe_array_pe_b_pass_1_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_2_0_1_out { ap_vld {  { pe_array_pe_b_pass_2_0_1_out out_data 1 32 }  { pe_array_pe_b_pass_2_0_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_0_1_1_out { ap_vld {  { pe_array_pe_a_pass_0_1_1_out out_data 1 32 }  { pe_array_pe_a_pass_0_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_1_1_1_out { ap_vld {  { pe_array_pe_a_pass_1_1_1_out out_data 1 32 }  { pe_array_pe_a_pass_1_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_2_1_1_out { ap_vld {  { pe_array_pe_a_pass_2_1_1_out out_data 1 32 }  { pe_array_pe_a_pass_2_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_3_1_1_out { ap_vld {  { pe_array_pe_a_pass_3_1_1_out out_data 1 32 }  { pe_array_pe_a_pass_3_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_0_1_1_out { ap_vld {  { pe_array_pe_b_pass_0_1_1_out out_data 1 32 }  { pe_array_pe_b_pass_0_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_1_1_1_out { ap_vld {  { pe_array_pe_b_pass_1_1_1_out out_data 1 32 }  { pe_array_pe_b_pass_1_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_2_1_1_out { ap_vld {  { pe_array_pe_b_pass_2_1_1_out out_data 1 32 }  { pe_array_pe_b_pass_2_1_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_0_2_1_out { ap_vld {  { pe_array_pe_a_pass_0_2_1_out out_data 1 32 }  { pe_array_pe_a_pass_0_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_1_2_1_out { ap_vld {  { pe_array_pe_a_pass_1_2_1_out out_data 1 32 }  { pe_array_pe_a_pass_1_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_2_2_1_out { ap_vld {  { pe_array_pe_a_pass_2_2_1_out out_data 1 32 }  { pe_array_pe_a_pass_2_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_a_pass_3_2_1_out { ap_vld {  { pe_array_pe_a_pass_3_2_1_out out_data 1 32 }  { pe_array_pe_a_pass_3_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_0_2_1_out { ap_vld {  { pe_array_pe_b_pass_0_2_1_out out_data 1 32 }  { pe_array_pe_b_pass_0_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_1_2_1_out { ap_vld {  { pe_array_pe_b_pass_1_2_1_out out_data 1 32 }  { pe_array_pe_b_pass_1_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_2_2_1_out { ap_vld {  { pe_array_pe_b_pass_2_2_1_out out_data 1 32 }  { pe_array_pe_b_pass_2_2_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_0_3_1_out { ap_vld {  { pe_array_pe_b_pass_0_3_1_out out_data 1 32 }  { pe_array_pe_b_pass_0_3_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_1_3_1_out { ap_vld {  { pe_array_pe_b_pass_1_3_1_out out_data 1 32 }  { pe_array_pe_b_pass_1_3_1_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_b_pass_2_3_1_out { ap_vld {  { pe_array_pe_b_pass_2_3_1_out out_data 1 32 }  { pe_array_pe_b_pass_2_3_1_out_ap_vld out_vld 1 1 } } }
	select_ln14_2_out { ap_vld {  { select_ln14_2_out out_data 1 32 }  { select_ln14_2_out_ap_vld out_vld 1 1 } } }
	select_ln14_5_out { ap_vld {  { select_ln14_5_out out_data 1 32 }  { select_ln14_5_out_ap_vld out_vld 1 1 } } }
	select_ln14_8_out { ap_vld {  { select_ln14_8_out out_data 1 32 }  { select_ln14_8_out_ap_vld out_vld 1 1 } } }
	select_ln14_11_out { ap_vld {  { select_ln14_11_out out_data 1 32 }  { select_ln14_11_out_ap_vld out_vld 1 1 } } }
	select_ln14_14_out { ap_vld {  { select_ln14_14_out out_data 1 32 }  { select_ln14_14_out_ap_vld out_vld 1 1 } } }
	select_ln14_17_out { ap_vld {  { select_ln14_17_out out_data 1 32 }  { select_ln14_17_out_ap_vld out_vld 1 1 } } }
	select_ln14_20_out { ap_vld {  { select_ln14_20_out out_data 1 32 }  { select_ln14_20_out_ap_vld out_vld 1 1 } } }
	select_ln14_23_out { ap_vld {  { select_ln14_23_out out_data 1 32 }  { select_ln14_23_out_ap_vld out_vld 1 1 } } }
	select_ln14_25_out { ap_vld {  { select_ln14_25_out out_data 1 32 }  { select_ln14_25_out_ap_vld out_vld 1 1 } } }
	select_ln14_27_out { ap_vld {  { select_ln14_27_out out_data 1 32 }  { select_ln14_27_out_ap_vld out_vld 1 1 } } }
	select_ln14_29_out { ap_vld {  { select_ln14_29_out out_data 1 32 }  { select_ln14_29_out_ap_vld out_vld 1 1 } } }
	select_ln14_31_out { ap_vld {  { select_ln14_31_out out_data 1 32 }  { select_ln14_31_out_ap_vld out_vld 1 1 } } }
	select_ln14_32_out { ap_vld {  { select_ln14_32_out out_data 1 32 }  { select_ln14_32_out_ap_vld out_vld 1 1 } } }
	select_ln14_33_out { ap_vld {  { select_ln14_33_out out_data 1 32 }  { select_ln14_33_out_ap_vld out_vld 1 1 } } }
	select_ln14_34_out { ap_vld {  { select_ln14_34_out out_data 1 32 }  { select_ln14_34_out_ap_vld out_vld 1 1 } } }
	select_ln14_35_out { ap_vld {  { select_ln14_35_out out_data 1 32 }  { select_ln14_35_out_ap_vld out_vld 1 1 } } }
}
