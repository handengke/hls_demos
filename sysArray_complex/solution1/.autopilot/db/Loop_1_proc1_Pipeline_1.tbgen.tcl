set moduleName Loop_1_proc1_Pipeline_1
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
set C_modelName {Loop_1_proc1_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pe_array_pe_val_3 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_val_2 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_val_1 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_b_pass_0 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_b_pass_1 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_b_pass_2 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_a_pass_3 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_a_pass_2 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_a_pass_1 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_a_pass_0 int 32 regular {array 4 { 0 0 } 0 1 }  }
	{ pe_array_pe_val_0 int 32 regular {array 4 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pe_array_pe_val_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_b_pass_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_a_pass_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe_array_pe_val_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pe_array_pe_val_3_address0 sc_out sc_lv 2 signal 0 } 
	{ pe_array_pe_val_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_we0 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_d0 sc_out sc_lv 32 signal 0 } 
	{ pe_array_pe_val_3_address1 sc_out sc_lv 2 signal 0 } 
	{ pe_array_pe_val_3_ce1 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_we1 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_d1 sc_out sc_lv 32 signal 0 } 
	{ pe_array_pe_val_2_address0 sc_out sc_lv 2 signal 1 } 
	{ pe_array_pe_val_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_we0 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_d0 sc_out sc_lv 32 signal 1 } 
	{ pe_array_pe_val_2_address1 sc_out sc_lv 2 signal 1 } 
	{ pe_array_pe_val_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_we1 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_d1 sc_out sc_lv 32 signal 1 } 
	{ pe_array_pe_val_1_address0 sc_out sc_lv 2 signal 2 } 
	{ pe_array_pe_val_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_we0 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_d0 sc_out sc_lv 32 signal 2 } 
	{ pe_array_pe_val_1_address1 sc_out sc_lv 2 signal 2 } 
	{ pe_array_pe_val_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_we1 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_d1 sc_out sc_lv 32 signal 2 } 
	{ pe_array_pe_b_pass_0_address0 sc_out sc_lv 2 signal 3 } 
	{ pe_array_pe_b_pass_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_b_pass_0_we0 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_b_pass_0_d0 sc_out sc_lv 32 signal 3 } 
	{ pe_array_pe_b_pass_0_address1 sc_out sc_lv 2 signal 3 } 
	{ pe_array_pe_b_pass_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_b_pass_0_we1 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_b_pass_0_d1 sc_out sc_lv 32 signal 3 } 
	{ pe_array_pe_b_pass_1_address0 sc_out sc_lv 2 signal 4 } 
	{ pe_array_pe_b_pass_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ pe_array_pe_b_pass_1_we0 sc_out sc_logic 1 signal 4 } 
	{ pe_array_pe_b_pass_1_d0 sc_out sc_lv 32 signal 4 } 
	{ pe_array_pe_b_pass_1_address1 sc_out sc_lv 2 signal 4 } 
	{ pe_array_pe_b_pass_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ pe_array_pe_b_pass_1_we1 sc_out sc_logic 1 signal 4 } 
	{ pe_array_pe_b_pass_1_d1 sc_out sc_lv 32 signal 4 } 
	{ pe_array_pe_b_pass_2_address0 sc_out sc_lv 2 signal 5 } 
	{ pe_array_pe_b_pass_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ pe_array_pe_b_pass_2_we0 sc_out sc_logic 1 signal 5 } 
	{ pe_array_pe_b_pass_2_d0 sc_out sc_lv 32 signal 5 } 
	{ pe_array_pe_b_pass_2_address1 sc_out sc_lv 2 signal 5 } 
	{ pe_array_pe_b_pass_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ pe_array_pe_b_pass_2_we1 sc_out sc_logic 1 signal 5 } 
	{ pe_array_pe_b_pass_2_d1 sc_out sc_lv 32 signal 5 } 
	{ pe_array_pe_a_pass_3_address0 sc_out sc_lv 2 signal 6 } 
	{ pe_array_pe_a_pass_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ pe_array_pe_a_pass_3_we0 sc_out sc_logic 1 signal 6 } 
	{ pe_array_pe_a_pass_3_d0 sc_out sc_lv 32 signal 6 } 
	{ pe_array_pe_a_pass_3_address1 sc_out sc_lv 2 signal 6 } 
	{ pe_array_pe_a_pass_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ pe_array_pe_a_pass_3_we1 sc_out sc_logic 1 signal 6 } 
	{ pe_array_pe_a_pass_3_d1 sc_out sc_lv 32 signal 6 } 
	{ pe_array_pe_a_pass_2_address0 sc_out sc_lv 2 signal 7 } 
	{ pe_array_pe_a_pass_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ pe_array_pe_a_pass_2_we0 sc_out sc_logic 1 signal 7 } 
	{ pe_array_pe_a_pass_2_d0 sc_out sc_lv 32 signal 7 } 
	{ pe_array_pe_a_pass_2_address1 sc_out sc_lv 2 signal 7 } 
	{ pe_array_pe_a_pass_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ pe_array_pe_a_pass_2_we1 sc_out sc_logic 1 signal 7 } 
	{ pe_array_pe_a_pass_2_d1 sc_out sc_lv 32 signal 7 } 
	{ pe_array_pe_a_pass_1_address0 sc_out sc_lv 2 signal 8 } 
	{ pe_array_pe_a_pass_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ pe_array_pe_a_pass_1_we0 sc_out sc_logic 1 signal 8 } 
	{ pe_array_pe_a_pass_1_d0 sc_out sc_lv 32 signal 8 } 
	{ pe_array_pe_a_pass_1_address1 sc_out sc_lv 2 signal 8 } 
	{ pe_array_pe_a_pass_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ pe_array_pe_a_pass_1_we1 sc_out sc_logic 1 signal 8 } 
	{ pe_array_pe_a_pass_1_d1 sc_out sc_lv 32 signal 8 } 
	{ pe_array_pe_a_pass_0_address0 sc_out sc_lv 2 signal 9 } 
	{ pe_array_pe_a_pass_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ pe_array_pe_a_pass_0_we0 sc_out sc_logic 1 signal 9 } 
	{ pe_array_pe_a_pass_0_d0 sc_out sc_lv 32 signal 9 } 
	{ pe_array_pe_a_pass_0_address1 sc_out sc_lv 2 signal 9 } 
	{ pe_array_pe_a_pass_0_ce1 sc_out sc_logic 1 signal 9 } 
	{ pe_array_pe_a_pass_0_we1 sc_out sc_logic 1 signal 9 } 
	{ pe_array_pe_a_pass_0_d1 sc_out sc_lv 32 signal 9 } 
	{ pe_array_pe_val_0_address0 sc_out sc_lv 2 signal 10 } 
	{ pe_array_pe_val_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ pe_array_pe_val_0_we0 sc_out sc_logic 1 signal 10 } 
	{ pe_array_pe_val_0_d0 sc_out sc_lv 32 signal 10 } 
	{ pe_array_pe_val_0_address1 sc_out sc_lv 2 signal 10 } 
	{ pe_array_pe_val_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ pe_array_pe_val_0_we1 sc_out sc_logic 1 signal 10 } 
	{ pe_array_pe_val_0_d1 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pe_array_pe_val_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "we0" }} , 
 	{ "name": "pe_array_pe_val_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "d0" }} , 
 	{ "name": "pe_array_pe_val_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "we1" }} , 
 	{ "name": "pe_array_pe_val_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "d1" }} , 
 	{ "name": "pe_array_pe_val_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "we0" }} , 
 	{ "name": "pe_array_pe_val_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "d0" }} , 
 	{ "name": "pe_array_pe_val_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "we1" }} , 
 	{ "name": "pe_array_pe_val_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "d1" }} , 
 	{ "name": "pe_array_pe_val_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "we0" }} , 
 	{ "name": "pe_array_pe_val_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "d0" }} , 
 	{ "name": "pe_array_pe_val_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "we1" }} , 
 	{ "name": "pe_array_pe_val_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "d1" }} , 
 	{ "name": "pe_array_pe_b_pass_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "address0" }} , 
 	{ "name": "pe_array_pe_b_pass_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_b_pass_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "we0" }} , 
 	{ "name": "pe_array_pe_b_pass_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "d0" }} , 
 	{ "name": "pe_array_pe_b_pass_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "address1" }} , 
 	{ "name": "pe_array_pe_b_pass_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_b_pass_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "we1" }} , 
 	{ "name": "pe_array_pe_b_pass_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_0", "role": "d1" }} , 
 	{ "name": "pe_array_pe_b_pass_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "address0" }} , 
 	{ "name": "pe_array_pe_b_pass_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_b_pass_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "we0" }} , 
 	{ "name": "pe_array_pe_b_pass_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "d0" }} , 
 	{ "name": "pe_array_pe_b_pass_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "address1" }} , 
 	{ "name": "pe_array_pe_b_pass_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_b_pass_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "we1" }} , 
 	{ "name": "pe_array_pe_b_pass_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_1", "role": "d1" }} , 
 	{ "name": "pe_array_pe_b_pass_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "address0" }} , 
 	{ "name": "pe_array_pe_b_pass_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_b_pass_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "we0" }} , 
 	{ "name": "pe_array_pe_b_pass_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "d0" }} , 
 	{ "name": "pe_array_pe_b_pass_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "address1" }} , 
 	{ "name": "pe_array_pe_b_pass_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_b_pass_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "we1" }} , 
 	{ "name": "pe_array_pe_b_pass_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_b_pass_2", "role": "d1" }} , 
 	{ "name": "pe_array_pe_a_pass_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "address0" }} , 
 	{ "name": "pe_array_pe_a_pass_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_a_pass_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "we0" }} , 
 	{ "name": "pe_array_pe_a_pass_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "d0" }} , 
 	{ "name": "pe_array_pe_a_pass_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "address1" }} , 
 	{ "name": "pe_array_pe_a_pass_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_a_pass_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "we1" }} , 
 	{ "name": "pe_array_pe_a_pass_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_3", "role": "d1" }} , 
 	{ "name": "pe_array_pe_a_pass_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "address0" }} , 
 	{ "name": "pe_array_pe_a_pass_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_a_pass_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "we0" }} , 
 	{ "name": "pe_array_pe_a_pass_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "d0" }} , 
 	{ "name": "pe_array_pe_a_pass_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "address1" }} , 
 	{ "name": "pe_array_pe_a_pass_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_a_pass_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "we1" }} , 
 	{ "name": "pe_array_pe_a_pass_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_2", "role": "d1" }} , 
 	{ "name": "pe_array_pe_a_pass_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "address0" }} , 
 	{ "name": "pe_array_pe_a_pass_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_a_pass_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "we0" }} , 
 	{ "name": "pe_array_pe_a_pass_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "d0" }} , 
 	{ "name": "pe_array_pe_a_pass_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "address1" }} , 
 	{ "name": "pe_array_pe_a_pass_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_a_pass_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "we1" }} , 
 	{ "name": "pe_array_pe_a_pass_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_1", "role": "d1" }} , 
 	{ "name": "pe_array_pe_a_pass_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "address0" }} , 
 	{ "name": "pe_array_pe_a_pass_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_a_pass_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "we0" }} , 
 	{ "name": "pe_array_pe_a_pass_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "d0" }} , 
 	{ "name": "pe_array_pe_a_pass_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "address1" }} , 
 	{ "name": "pe_array_pe_a_pass_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_a_pass_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "we1" }} , 
 	{ "name": "pe_array_pe_a_pass_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_a_pass_0", "role": "d1" }} , 
 	{ "name": "pe_array_pe_val_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "we0" }} , 
 	{ "name": "pe_array_pe_val_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "d0" }} , 
 	{ "name": "pe_array_pe_val_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "we1" }} , 
 	{ "name": "pe_array_pe_val_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_1_proc1_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pe_array_pe_val_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc1_Pipeline_1 {
		pe_array_pe_val_3 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_2 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_1 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0 {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_0 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pe_array_pe_val_3 { ap_memory {  { pe_array_pe_val_3_address0 mem_address 1 2 }  { pe_array_pe_val_3_ce0 mem_ce 1 1 }  { pe_array_pe_val_3_we0 mem_we 1 1 }  { pe_array_pe_val_3_d0 mem_din 1 32 }  { pe_array_pe_val_3_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_3_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_3_we1 MemPortWE2 1 1 }  { pe_array_pe_val_3_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_val_2 { ap_memory {  { pe_array_pe_val_2_address0 mem_address 1 2 }  { pe_array_pe_val_2_ce0 mem_ce 1 1 }  { pe_array_pe_val_2_we0 mem_we 1 1 }  { pe_array_pe_val_2_d0 mem_din 1 32 }  { pe_array_pe_val_2_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_2_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_2_we1 MemPortWE2 1 1 }  { pe_array_pe_val_2_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_val_1 { ap_memory {  { pe_array_pe_val_1_address0 mem_address 1 2 }  { pe_array_pe_val_1_ce0 mem_ce 1 1 }  { pe_array_pe_val_1_we0 mem_we 1 1 }  { pe_array_pe_val_1_d0 mem_din 1 32 }  { pe_array_pe_val_1_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_1_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_1_we1 MemPortWE2 1 1 }  { pe_array_pe_val_1_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_b_pass_0 { ap_memory {  { pe_array_pe_b_pass_0_address0 mem_address 1 2 }  { pe_array_pe_b_pass_0_ce0 mem_ce 1 1 }  { pe_array_pe_b_pass_0_we0 mem_we 1 1 }  { pe_array_pe_b_pass_0_d0 mem_din 1 32 }  { pe_array_pe_b_pass_0_address1 MemPortADDR2 1 2 }  { pe_array_pe_b_pass_0_ce1 MemPortCE2 1 1 }  { pe_array_pe_b_pass_0_we1 MemPortWE2 1 1 }  { pe_array_pe_b_pass_0_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_b_pass_1 { ap_memory {  { pe_array_pe_b_pass_1_address0 mem_address 1 2 }  { pe_array_pe_b_pass_1_ce0 mem_ce 1 1 }  { pe_array_pe_b_pass_1_we0 mem_we 1 1 }  { pe_array_pe_b_pass_1_d0 mem_din 1 32 }  { pe_array_pe_b_pass_1_address1 MemPortADDR2 1 2 }  { pe_array_pe_b_pass_1_ce1 MemPortCE2 1 1 }  { pe_array_pe_b_pass_1_we1 MemPortWE2 1 1 }  { pe_array_pe_b_pass_1_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_b_pass_2 { ap_memory {  { pe_array_pe_b_pass_2_address0 mem_address 1 2 }  { pe_array_pe_b_pass_2_ce0 mem_ce 1 1 }  { pe_array_pe_b_pass_2_we0 mem_we 1 1 }  { pe_array_pe_b_pass_2_d0 mem_din 1 32 }  { pe_array_pe_b_pass_2_address1 MemPortADDR2 1 2 }  { pe_array_pe_b_pass_2_ce1 MemPortCE2 1 1 }  { pe_array_pe_b_pass_2_we1 MemPortWE2 1 1 }  { pe_array_pe_b_pass_2_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_a_pass_3 { ap_memory {  { pe_array_pe_a_pass_3_address0 mem_address 1 2 }  { pe_array_pe_a_pass_3_ce0 mem_ce 1 1 }  { pe_array_pe_a_pass_3_we0 mem_we 1 1 }  { pe_array_pe_a_pass_3_d0 mem_din 1 32 }  { pe_array_pe_a_pass_3_address1 MemPortADDR2 1 2 }  { pe_array_pe_a_pass_3_ce1 MemPortCE2 1 1 }  { pe_array_pe_a_pass_3_we1 MemPortWE2 1 1 }  { pe_array_pe_a_pass_3_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_a_pass_2 { ap_memory {  { pe_array_pe_a_pass_2_address0 mem_address 1 2 }  { pe_array_pe_a_pass_2_ce0 mem_ce 1 1 }  { pe_array_pe_a_pass_2_we0 mem_we 1 1 }  { pe_array_pe_a_pass_2_d0 mem_din 1 32 }  { pe_array_pe_a_pass_2_address1 MemPortADDR2 1 2 }  { pe_array_pe_a_pass_2_ce1 MemPortCE2 1 1 }  { pe_array_pe_a_pass_2_we1 MemPortWE2 1 1 }  { pe_array_pe_a_pass_2_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_a_pass_1 { ap_memory {  { pe_array_pe_a_pass_1_address0 mem_address 1 2 }  { pe_array_pe_a_pass_1_ce0 mem_ce 1 1 }  { pe_array_pe_a_pass_1_we0 mem_we 1 1 }  { pe_array_pe_a_pass_1_d0 mem_din 1 32 }  { pe_array_pe_a_pass_1_address1 MemPortADDR2 1 2 }  { pe_array_pe_a_pass_1_ce1 MemPortCE2 1 1 }  { pe_array_pe_a_pass_1_we1 MemPortWE2 1 1 }  { pe_array_pe_a_pass_1_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_a_pass_0 { ap_memory {  { pe_array_pe_a_pass_0_address0 mem_address 1 2 }  { pe_array_pe_a_pass_0_ce0 mem_ce 1 1 }  { pe_array_pe_a_pass_0_we0 mem_we 1 1 }  { pe_array_pe_a_pass_0_d0 mem_din 1 32 }  { pe_array_pe_a_pass_0_address1 MemPortADDR2 1 2 }  { pe_array_pe_a_pass_0_ce1 MemPortCE2 1 1 }  { pe_array_pe_a_pass_0_we1 MemPortWE2 1 1 }  { pe_array_pe_a_pass_0_d1 MemPortDIN2 1 32 } } }
	pe_array_pe_val_0 { ap_memory {  { pe_array_pe_val_0_address0 mem_address 1 2 }  { pe_array_pe_val_0_ce0 mem_ce 1 1 }  { pe_array_pe_val_0_we0 mem_we 1 1 }  { pe_array_pe_val_0_d0 mem_din 1 32 }  { pe_array_pe_val_0_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_0_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_0_we1 MemPortWE2 1 1 }  { pe_array_pe_val_0_d1 MemPortDIN2 1 32 } } }
}
