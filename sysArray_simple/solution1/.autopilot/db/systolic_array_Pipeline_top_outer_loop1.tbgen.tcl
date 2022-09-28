set moduleName systolic_array_Pipeline_top_outer_loop1
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
set C_modelName {systolic_array_Pipeline_top_outer_loop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pe_array_pe_val_3_3_3_reload int 32 regular  }
	{ pe_array_pe_val_3_2_3_reload int 32 regular  }
	{ pe_array_pe_val_3_1_3_reload int 32 regular  }
	{ pe_array_pe_val_3_0_3_reload int 32 regular  }
	{ pe_array_pe_val_2_3_3_reload int 32 regular  }
	{ pe_array_pe_val_2_2_3_reload int 32 regular  }
	{ pe_array_pe_val_2_1_3_reload int 32 regular  }
	{ pe_array_pe_val_2_0_3_reload int 32 regular  }
	{ pe_array_pe_val_1_3_3_reload int 32 regular  }
	{ pe_array_pe_val_1_2_3_reload int 32 regular  }
	{ pe_array_pe_val_1_1_3_reload int 32 regular  }
	{ pe_array_pe_val_1_0_3_reload int 32 regular  }
	{ pe_array_pe_val_0_3_3_reload int 32 regular  }
	{ pe_array_pe_val_0_2_3_reload int 32 regular  }
	{ pe_array_pe_val_0_1_3_reload int 32 regular  }
	{ pe_array_pe_val_0_0_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_2_3_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_2_2_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_2_1_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_2_0_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_1_3_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_1_2_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_1_1_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_1_0_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_0_3_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_0_2_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_0_1_3_reload int 32 regular  }
	{ pe_array_pe_b_pass_0_0_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_3_2_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_3_1_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_3_0_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_2_2_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_2_1_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_2_0_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_1_2_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_1_1_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_1_0_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_0_2_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_0_1_3_reload int 32 regular  }
	{ pe_array_pe_a_pass_0_0_3_reload int 32 regular  }
	{ M1_1_1_reload int 32 regular  }
	{ M1_9_1_reload int 32 regular  }
	{ M1_2_1_reload int 32 regular  }
	{ M1_3_1_reload int 32 regular  }
	{ M1_4_1_reload int 32 regular  }
	{ M1_5_1_reload int 32 regular  }
	{ M1_6_1_reload int 32 regular  }
	{ M1_7_1_reload int 32 regular  }
	{ M1_8_1_reload int 32 regular  }
	{ M1_0_1_reload int 32 regular  }
	{ M2_12_1_reload int 32 regular  }
	{ M2_8_1_reload int 32 regular  }
	{ M2_4_1_reload int 32 regular  }
	{ M2_0_1_reload int 32 regular  }
	{ M1_12_1_reload int 32 regular  }
	{ M1_10_1_reload int 32 regular  }
	{ M1_11_1_reload int 32 regular  }
	{ M2_13_1_reload int 32 regular  }
	{ M2_9_1_reload int 32 regular  }
	{ M2_5_1_reload int 32 regular  }
	{ M2_1_1_reload int 32 regular  }
	{ M1_15_1_reload int 32 regular  }
	{ M1_13_1_reload int 32 regular  }
	{ M1_14_1_reload int 32 regular  }
	{ M2_14_1_reload int 32 regular  }
	{ M2_10_1_reload int 32 regular  }
	{ M2_6_1_reload int 32 regular  }
	{ M2_2_1_reload int 32 regular  }
	{ M2_15_1_reload int 32 regular  }
	{ M2_11_1_reload int 32 regular  }
	{ M2_7_1_reload int 32 regular  }
	{ M2_3_1_reload int 32 regular  }
	{ pe_array_pe_val_3_3_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_3_2_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_3_1_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_3_0_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_2_3_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_2_2_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_2_1_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_2_0_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_1_3_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_1_2_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_1_1_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_1_0_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_0_3_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_0_2_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_0_1_5_out int 32 regular {pointer 1}  }
	{ pe_array_pe_val_0_0_5_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pe_array_pe_val_3_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0_0_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_1_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_9_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_2_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_3_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_4_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_5_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_6_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_7_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_8_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_0_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_12_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_8_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_4_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_0_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_12_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_10_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_11_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_13_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_9_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_5_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_1_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_15_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_13_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M1_14_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_14_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_10_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_6_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_2_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_15_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_11_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_7_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M2_3_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_3_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_2_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_1_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_3_0_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_3_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_2_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_1_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_2_0_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_3_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_2_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_1_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_1_0_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_3_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_2_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_1_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_0_0_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pe_array_pe_val_3_3_3_reload sc_in sc_lv 32 signal 0 } 
	{ pe_array_pe_val_3_2_3_reload sc_in sc_lv 32 signal 1 } 
	{ pe_array_pe_val_3_1_3_reload sc_in sc_lv 32 signal 2 } 
	{ pe_array_pe_val_3_0_3_reload sc_in sc_lv 32 signal 3 } 
	{ pe_array_pe_val_2_3_3_reload sc_in sc_lv 32 signal 4 } 
	{ pe_array_pe_val_2_2_3_reload sc_in sc_lv 32 signal 5 } 
	{ pe_array_pe_val_2_1_3_reload sc_in sc_lv 32 signal 6 } 
	{ pe_array_pe_val_2_0_3_reload sc_in sc_lv 32 signal 7 } 
	{ pe_array_pe_val_1_3_3_reload sc_in sc_lv 32 signal 8 } 
	{ pe_array_pe_val_1_2_3_reload sc_in sc_lv 32 signal 9 } 
	{ pe_array_pe_val_1_1_3_reload sc_in sc_lv 32 signal 10 } 
	{ pe_array_pe_val_1_0_3_reload sc_in sc_lv 32 signal 11 } 
	{ pe_array_pe_val_0_3_3_reload sc_in sc_lv 32 signal 12 } 
	{ pe_array_pe_val_0_2_3_reload sc_in sc_lv 32 signal 13 } 
	{ pe_array_pe_val_0_1_3_reload sc_in sc_lv 32 signal 14 } 
	{ pe_array_pe_val_0_0_3_reload sc_in sc_lv 32 signal 15 } 
	{ pe_array_pe_b_pass_2_3_3_reload sc_in sc_lv 32 signal 16 } 
	{ pe_array_pe_b_pass_2_2_3_reload sc_in sc_lv 32 signal 17 } 
	{ pe_array_pe_b_pass_2_1_3_reload sc_in sc_lv 32 signal 18 } 
	{ pe_array_pe_b_pass_2_0_3_reload sc_in sc_lv 32 signal 19 } 
	{ pe_array_pe_b_pass_1_3_3_reload sc_in sc_lv 32 signal 20 } 
	{ pe_array_pe_b_pass_1_2_3_reload sc_in sc_lv 32 signal 21 } 
	{ pe_array_pe_b_pass_1_1_3_reload sc_in sc_lv 32 signal 22 } 
	{ pe_array_pe_b_pass_1_0_3_reload sc_in sc_lv 32 signal 23 } 
	{ pe_array_pe_b_pass_0_3_3_reload sc_in sc_lv 32 signal 24 } 
	{ pe_array_pe_b_pass_0_2_3_reload sc_in sc_lv 32 signal 25 } 
	{ pe_array_pe_b_pass_0_1_3_reload sc_in sc_lv 32 signal 26 } 
	{ pe_array_pe_b_pass_0_0_3_reload sc_in sc_lv 32 signal 27 } 
	{ pe_array_pe_a_pass_3_2_3_reload sc_in sc_lv 32 signal 28 } 
	{ pe_array_pe_a_pass_3_1_3_reload sc_in sc_lv 32 signal 29 } 
	{ pe_array_pe_a_pass_3_0_3_reload sc_in sc_lv 32 signal 30 } 
	{ pe_array_pe_a_pass_2_2_3_reload sc_in sc_lv 32 signal 31 } 
	{ pe_array_pe_a_pass_2_1_3_reload sc_in sc_lv 32 signal 32 } 
	{ pe_array_pe_a_pass_2_0_3_reload sc_in sc_lv 32 signal 33 } 
	{ pe_array_pe_a_pass_1_2_3_reload sc_in sc_lv 32 signal 34 } 
	{ pe_array_pe_a_pass_1_1_3_reload sc_in sc_lv 32 signal 35 } 
	{ pe_array_pe_a_pass_1_0_3_reload sc_in sc_lv 32 signal 36 } 
	{ pe_array_pe_a_pass_0_2_3_reload sc_in sc_lv 32 signal 37 } 
	{ pe_array_pe_a_pass_0_1_3_reload sc_in sc_lv 32 signal 38 } 
	{ pe_array_pe_a_pass_0_0_3_reload sc_in sc_lv 32 signal 39 } 
	{ M1_1_1_reload sc_in sc_lv 32 signal 40 } 
	{ M1_9_1_reload sc_in sc_lv 32 signal 41 } 
	{ M1_2_1_reload sc_in sc_lv 32 signal 42 } 
	{ M1_3_1_reload sc_in sc_lv 32 signal 43 } 
	{ M1_4_1_reload sc_in sc_lv 32 signal 44 } 
	{ M1_5_1_reload sc_in sc_lv 32 signal 45 } 
	{ M1_6_1_reload sc_in sc_lv 32 signal 46 } 
	{ M1_7_1_reload sc_in sc_lv 32 signal 47 } 
	{ M1_8_1_reload sc_in sc_lv 32 signal 48 } 
	{ M1_0_1_reload sc_in sc_lv 32 signal 49 } 
	{ M2_12_1_reload sc_in sc_lv 32 signal 50 } 
	{ M2_8_1_reload sc_in sc_lv 32 signal 51 } 
	{ M2_4_1_reload sc_in sc_lv 32 signal 52 } 
	{ M2_0_1_reload sc_in sc_lv 32 signal 53 } 
	{ M1_12_1_reload sc_in sc_lv 32 signal 54 } 
	{ M1_10_1_reload sc_in sc_lv 32 signal 55 } 
	{ M1_11_1_reload sc_in sc_lv 32 signal 56 } 
	{ M2_13_1_reload sc_in sc_lv 32 signal 57 } 
	{ M2_9_1_reload sc_in sc_lv 32 signal 58 } 
	{ M2_5_1_reload sc_in sc_lv 32 signal 59 } 
	{ M2_1_1_reload sc_in sc_lv 32 signal 60 } 
	{ M1_15_1_reload sc_in sc_lv 32 signal 61 } 
	{ M1_13_1_reload sc_in sc_lv 32 signal 62 } 
	{ M1_14_1_reload sc_in sc_lv 32 signal 63 } 
	{ M2_14_1_reload sc_in sc_lv 32 signal 64 } 
	{ M2_10_1_reload sc_in sc_lv 32 signal 65 } 
	{ M2_6_1_reload sc_in sc_lv 32 signal 66 } 
	{ M2_2_1_reload sc_in sc_lv 32 signal 67 } 
	{ M2_15_1_reload sc_in sc_lv 32 signal 68 } 
	{ M2_11_1_reload sc_in sc_lv 32 signal 69 } 
	{ M2_7_1_reload sc_in sc_lv 32 signal 70 } 
	{ M2_3_1_reload sc_in sc_lv 32 signal 71 } 
	{ pe_array_pe_val_3_3_5_out sc_out sc_lv 32 signal 72 } 
	{ pe_array_pe_val_3_3_5_out_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ pe_array_pe_val_3_2_5_out sc_out sc_lv 32 signal 73 } 
	{ pe_array_pe_val_3_2_5_out_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ pe_array_pe_val_3_1_5_out sc_out sc_lv 32 signal 74 } 
	{ pe_array_pe_val_3_1_5_out_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ pe_array_pe_val_3_0_5_out sc_out sc_lv 32 signal 75 } 
	{ pe_array_pe_val_3_0_5_out_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ pe_array_pe_val_2_3_5_out sc_out sc_lv 32 signal 76 } 
	{ pe_array_pe_val_2_3_5_out_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ pe_array_pe_val_2_2_5_out sc_out sc_lv 32 signal 77 } 
	{ pe_array_pe_val_2_2_5_out_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ pe_array_pe_val_2_1_5_out sc_out sc_lv 32 signal 78 } 
	{ pe_array_pe_val_2_1_5_out_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ pe_array_pe_val_2_0_5_out sc_out sc_lv 32 signal 79 } 
	{ pe_array_pe_val_2_0_5_out_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ pe_array_pe_val_1_3_5_out sc_out sc_lv 32 signal 80 } 
	{ pe_array_pe_val_1_3_5_out_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ pe_array_pe_val_1_2_5_out sc_out sc_lv 32 signal 81 } 
	{ pe_array_pe_val_1_2_5_out_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ pe_array_pe_val_1_1_5_out sc_out sc_lv 32 signal 82 } 
	{ pe_array_pe_val_1_1_5_out_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ pe_array_pe_val_1_0_5_out sc_out sc_lv 32 signal 83 } 
	{ pe_array_pe_val_1_0_5_out_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ pe_array_pe_val_0_3_5_out sc_out sc_lv 32 signal 84 } 
	{ pe_array_pe_val_0_3_5_out_ap_vld sc_out sc_logic 1 outvld 84 } 
	{ pe_array_pe_val_0_2_5_out sc_out sc_lv 32 signal 85 } 
	{ pe_array_pe_val_0_2_5_out_ap_vld sc_out sc_logic 1 outvld 85 } 
	{ pe_array_pe_val_0_1_5_out sc_out sc_lv 32 signal 86 } 
	{ pe_array_pe_val_0_1_5_out_ap_vld sc_out sc_logic 1 outvld 86 } 
	{ pe_array_pe_val_0_0_5_out sc_out sc_lv 32 signal 87 } 
	{ pe_array_pe_val_0_0_5_out_ap_vld sc_out sc_logic 1 outvld 87 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_2_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_1_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_3_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_b_pass_0_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_3_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_2_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_1_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1_0_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_2_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_1_3_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_a_pass_0_0_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0_0_3_reload", "role": "default" }} , 
 	{ "name": "M1_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_1_1_reload", "role": "default" }} , 
 	{ "name": "M1_9_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_9_1_reload", "role": "default" }} , 
 	{ "name": "M1_2_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_2_1_reload", "role": "default" }} , 
 	{ "name": "M1_3_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_3_1_reload", "role": "default" }} , 
 	{ "name": "M1_4_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_4_1_reload", "role": "default" }} , 
 	{ "name": "M1_5_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_5_1_reload", "role": "default" }} , 
 	{ "name": "M1_6_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_6_1_reload", "role": "default" }} , 
 	{ "name": "M1_7_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_7_1_reload", "role": "default" }} , 
 	{ "name": "M1_8_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_8_1_reload", "role": "default" }} , 
 	{ "name": "M1_0_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_0_1_reload", "role": "default" }} , 
 	{ "name": "M2_12_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_12_1_reload", "role": "default" }} , 
 	{ "name": "M2_8_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_8_1_reload", "role": "default" }} , 
 	{ "name": "M2_4_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_4_1_reload", "role": "default" }} , 
 	{ "name": "M2_0_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_0_1_reload", "role": "default" }} , 
 	{ "name": "M1_12_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_12_1_reload", "role": "default" }} , 
 	{ "name": "M1_10_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_10_1_reload", "role": "default" }} , 
 	{ "name": "M1_11_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_11_1_reload", "role": "default" }} , 
 	{ "name": "M2_13_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_13_1_reload", "role": "default" }} , 
 	{ "name": "M2_9_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_9_1_reload", "role": "default" }} , 
 	{ "name": "M2_5_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_5_1_reload", "role": "default" }} , 
 	{ "name": "M2_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_1_1_reload", "role": "default" }} , 
 	{ "name": "M1_15_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_15_1_reload", "role": "default" }} , 
 	{ "name": "M1_13_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_13_1_reload", "role": "default" }} , 
 	{ "name": "M1_14_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_14_1_reload", "role": "default" }} , 
 	{ "name": "M2_14_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_14_1_reload", "role": "default" }} , 
 	{ "name": "M2_10_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_10_1_reload", "role": "default" }} , 
 	{ "name": "M2_6_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_6_1_reload", "role": "default" }} , 
 	{ "name": "M2_2_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_2_1_reload", "role": "default" }} , 
 	{ "name": "M2_15_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_15_1_reload", "role": "default" }} , 
 	{ "name": "M2_11_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_11_1_reload", "role": "default" }} , 
 	{ "name": "M2_7_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_7_1_reload", "role": "default" }} , 
 	{ "name": "M2_3_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M2_3_1_reload", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_3_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_3_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_3_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_3_3_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_3_2_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_2_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_2_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_3_2_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_3_1_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_1_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_1_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_3_1_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_3_0_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3_0_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_0_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_3_0_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_2_3_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_3_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_3_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_2_3_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_2_2_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_2_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_2_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_2_2_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_2_1_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_1_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_1_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_2_1_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_2_0_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2_0_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_2_0_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_2_0_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_1_3_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_3_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_3_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_1_3_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_1_2_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_2_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_2_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_1_2_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_1_1_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_1_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_1_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_1_1_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_1_0_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1_0_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_1_0_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_1_0_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_0_3_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_3_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_3_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_0_3_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_0_2_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_2_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_2_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_0_2_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_0_1_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_1_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_1_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_0_1_5_out", "role": "ap_vld" }} , 
 	{ "name": "pe_array_pe_val_0_0_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0_0_5_out", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_0_0_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pe_array_pe_val_0_0_5_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "systolic_array_Pipeline_top_outer_loop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pe_array_pe_val_3_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_9_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_4_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_5_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_6_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_7_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_8_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_12_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_8_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_4_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_12_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_10_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_11_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_13_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_9_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_5_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_15_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_13_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_14_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_14_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_10_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_6_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_15_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_11_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_7_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_2_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_0_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_2_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_0_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_2_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_0_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_2_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_0_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "top_outer_loop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U182", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U183", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U184", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U185", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U186", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U187", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U188", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U189", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U190", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U191", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U192", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U193", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U194", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U195", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U196", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_3_1_U197", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	systolic_array_Pipeline_top_outer_loop1 {
		pe_array_pe_val_3_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_3_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_0_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_2_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_1_3_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_0_3_reload {Type I LastRead 0 FirstWrite -1}
		M1_1_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_9_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_2_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_3_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_4_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_5_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_6_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_7_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_8_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_0_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_12_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_8_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_4_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_0_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_12_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_10_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_11_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_13_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_9_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_5_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_1_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_15_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_13_1_reload {Type I LastRead 0 FirstWrite -1}
		M1_14_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_14_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_10_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_6_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_2_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_15_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_11_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_7_1_reload {Type I LastRead 0 FirstWrite -1}
		M2_3_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_3_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_3_2_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_3_1_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_3_0_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_2_3_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_2_2_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_2_1_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_2_0_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_1_3_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_1_2_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_1_1_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_1_0_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_0_3_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_0_2_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_0_1_5_out {Type O LastRead -1 FirstWrite 4}
		pe_array_pe_val_0_0_5_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pe_array_pe_val_3_3_3_reload { ap_none {  { pe_array_pe_val_3_3_3_reload in_data 0 32 } } }
	pe_array_pe_val_3_2_3_reload { ap_none {  { pe_array_pe_val_3_2_3_reload in_data 0 32 } } }
	pe_array_pe_val_3_1_3_reload { ap_none {  { pe_array_pe_val_3_1_3_reload in_data 0 32 } } }
	pe_array_pe_val_3_0_3_reload { ap_none {  { pe_array_pe_val_3_0_3_reload in_data 0 32 } } }
	pe_array_pe_val_2_3_3_reload { ap_none {  { pe_array_pe_val_2_3_3_reload in_data 0 32 } } }
	pe_array_pe_val_2_2_3_reload { ap_none {  { pe_array_pe_val_2_2_3_reload in_data 0 32 } } }
	pe_array_pe_val_2_1_3_reload { ap_none {  { pe_array_pe_val_2_1_3_reload in_data 0 32 } } }
	pe_array_pe_val_2_0_3_reload { ap_none {  { pe_array_pe_val_2_0_3_reload in_data 0 32 } } }
	pe_array_pe_val_1_3_3_reload { ap_none {  { pe_array_pe_val_1_3_3_reload in_data 0 32 } } }
	pe_array_pe_val_1_2_3_reload { ap_none {  { pe_array_pe_val_1_2_3_reload in_data 0 32 } } }
	pe_array_pe_val_1_1_3_reload { ap_none {  { pe_array_pe_val_1_1_3_reload in_data 0 32 } } }
	pe_array_pe_val_1_0_3_reload { ap_none {  { pe_array_pe_val_1_0_3_reload in_data 0 32 } } }
	pe_array_pe_val_0_3_3_reload { ap_none {  { pe_array_pe_val_0_3_3_reload in_data 0 32 } } }
	pe_array_pe_val_0_2_3_reload { ap_none {  { pe_array_pe_val_0_2_3_reload in_data 0 32 } } }
	pe_array_pe_val_0_1_3_reload { ap_none {  { pe_array_pe_val_0_1_3_reload in_data 0 32 } } }
	pe_array_pe_val_0_0_3_reload { ap_none {  { pe_array_pe_val_0_0_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_2_3_3_reload { ap_none {  { pe_array_pe_b_pass_2_3_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_2_2_3_reload { ap_none {  { pe_array_pe_b_pass_2_2_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_2_1_3_reload { ap_none {  { pe_array_pe_b_pass_2_1_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_2_0_3_reload { ap_none {  { pe_array_pe_b_pass_2_0_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_1_3_3_reload { ap_none {  { pe_array_pe_b_pass_1_3_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_1_2_3_reload { ap_none {  { pe_array_pe_b_pass_1_2_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_1_1_3_reload { ap_none {  { pe_array_pe_b_pass_1_1_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_1_0_3_reload { ap_none {  { pe_array_pe_b_pass_1_0_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_0_3_3_reload { ap_none {  { pe_array_pe_b_pass_0_3_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_0_2_3_reload { ap_none {  { pe_array_pe_b_pass_0_2_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_0_1_3_reload { ap_none {  { pe_array_pe_b_pass_0_1_3_reload in_data 0 32 } } }
	pe_array_pe_b_pass_0_0_3_reload { ap_none {  { pe_array_pe_b_pass_0_0_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_3_2_3_reload { ap_none {  { pe_array_pe_a_pass_3_2_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_3_1_3_reload { ap_none {  { pe_array_pe_a_pass_3_1_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_3_0_3_reload { ap_none {  { pe_array_pe_a_pass_3_0_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_2_2_3_reload { ap_none {  { pe_array_pe_a_pass_2_2_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_2_1_3_reload { ap_none {  { pe_array_pe_a_pass_2_1_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_2_0_3_reload { ap_none {  { pe_array_pe_a_pass_2_0_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_1_2_3_reload { ap_none {  { pe_array_pe_a_pass_1_2_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_1_1_3_reload { ap_none {  { pe_array_pe_a_pass_1_1_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_1_0_3_reload { ap_none {  { pe_array_pe_a_pass_1_0_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_0_2_3_reload { ap_none {  { pe_array_pe_a_pass_0_2_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_0_1_3_reload { ap_none {  { pe_array_pe_a_pass_0_1_3_reload in_data 0 32 } } }
	pe_array_pe_a_pass_0_0_3_reload { ap_none {  { pe_array_pe_a_pass_0_0_3_reload in_data 0 32 } } }
	M1_1_1_reload { ap_none {  { M1_1_1_reload in_data 0 32 } } }
	M1_9_1_reload { ap_none {  { M1_9_1_reload in_data 0 32 } } }
	M1_2_1_reload { ap_none {  { M1_2_1_reload in_data 0 32 } } }
	M1_3_1_reload { ap_none {  { M1_3_1_reload in_data 0 32 } } }
	M1_4_1_reload { ap_none {  { M1_4_1_reload in_data 0 32 } } }
	M1_5_1_reload { ap_none {  { M1_5_1_reload in_data 0 32 } } }
	M1_6_1_reload { ap_none {  { M1_6_1_reload in_data 0 32 } } }
	M1_7_1_reload { ap_none {  { M1_7_1_reload in_data 0 32 } } }
	M1_8_1_reload { ap_none {  { M1_8_1_reload in_data 0 32 } } }
	M1_0_1_reload { ap_none {  { M1_0_1_reload in_data 0 32 } } }
	M2_12_1_reload { ap_none {  { M2_12_1_reload in_data 0 32 } } }
	M2_8_1_reload { ap_none {  { M2_8_1_reload in_data 0 32 } } }
	M2_4_1_reload { ap_none {  { M2_4_1_reload in_data 0 32 } } }
	M2_0_1_reload { ap_none {  { M2_0_1_reload in_data 0 32 } } }
	M1_12_1_reload { ap_none {  { M1_12_1_reload in_data 0 32 } } }
	M1_10_1_reload { ap_none {  { M1_10_1_reload in_data 0 32 } } }
	M1_11_1_reload { ap_none {  { M1_11_1_reload in_data 0 32 } } }
	M2_13_1_reload { ap_none {  { M2_13_1_reload in_data 0 32 } } }
	M2_9_1_reload { ap_none {  { M2_9_1_reload in_data 0 32 } } }
	M2_5_1_reload { ap_none {  { M2_5_1_reload in_data 0 32 } } }
	M2_1_1_reload { ap_none {  { M2_1_1_reload in_data 0 32 } } }
	M1_15_1_reload { ap_none {  { M1_15_1_reload in_data 0 32 } } }
	M1_13_1_reload { ap_none {  { M1_13_1_reload in_data 0 32 } } }
	M1_14_1_reload { ap_none {  { M1_14_1_reload in_data 0 32 } } }
	M2_14_1_reload { ap_none {  { M2_14_1_reload in_data 0 32 } } }
	M2_10_1_reload { ap_none {  { M2_10_1_reload in_data 0 32 } } }
	M2_6_1_reload { ap_none {  { M2_6_1_reload in_data 0 32 } } }
	M2_2_1_reload { ap_none {  { M2_2_1_reload in_data 0 32 } } }
	M2_15_1_reload { ap_none {  { M2_15_1_reload in_data 0 32 } } }
	M2_11_1_reload { ap_none {  { M2_11_1_reload in_data 0 32 } } }
	M2_7_1_reload { ap_none {  { M2_7_1_reload in_data 0 32 } } }
	M2_3_1_reload { ap_none {  { M2_3_1_reload in_data 0 32 } } }
	pe_array_pe_val_3_3_5_out { ap_vld {  { pe_array_pe_val_3_3_5_out out_data 1 32 }  { pe_array_pe_val_3_3_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_3_2_5_out { ap_vld {  { pe_array_pe_val_3_2_5_out out_data 1 32 }  { pe_array_pe_val_3_2_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_3_1_5_out { ap_vld {  { pe_array_pe_val_3_1_5_out out_data 1 32 }  { pe_array_pe_val_3_1_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_3_0_5_out { ap_vld {  { pe_array_pe_val_3_0_5_out out_data 1 32 }  { pe_array_pe_val_3_0_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_2_3_5_out { ap_vld {  { pe_array_pe_val_2_3_5_out out_data 1 32 }  { pe_array_pe_val_2_3_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_2_2_5_out { ap_vld {  { pe_array_pe_val_2_2_5_out out_data 1 32 }  { pe_array_pe_val_2_2_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_2_1_5_out { ap_vld {  { pe_array_pe_val_2_1_5_out out_data 1 32 }  { pe_array_pe_val_2_1_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_2_0_5_out { ap_vld {  { pe_array_pe_val_2_0_5_out out_data 1 32 }  { pe_array_pe_val_2_0_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_1_3_5_out { ap_vld {  { pe_array_pe_val_1_3_5_out out_data 1 32 }  { pe_array_pe_val_1_3_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_1_2_5_out { ap_vld {  { pe_array_pe_val_1_2_5_out out_data 1 32 }  { pe_array_pe_val_1_2_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_1_1_5_out { ap_vld {  { pe_array_pe_val_1_1_5_out out_data 1 32 }  { pe_array_pe_val_1_1_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_1_0_5_out { ap_vld {  { pe_array_pe_val_1_0_5_out out_data 1 32 }  { pe_array_pe_val_1_0_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_0_3_5_out { ap_vld {  { pe_array_pe_val_0_3_5_out out_data 1 32 }  { pe_array_pe_val_0_3_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_0_2_5_out { ap_vld {  { pe_array_pe_val_0_2_5_out out_data 1 32 }  { pe_array_pe_val_0_2_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_0_1_5_out { ap_vld {  { pe_array_pe_val_0_1_5_out out_data 1 32 }  { pe_array_pe_val_0_1_5_out_ap_vld out_vld 1 1 } } }
	pe_array_pe_val_0_0_5_out { ap_vld {  { pe_array_pe_val_0_0_5_out out_data 1 32 }  { pe_array_pe_val_0_0_5_out_ap_vld out_vld 1 1 } } }
}
