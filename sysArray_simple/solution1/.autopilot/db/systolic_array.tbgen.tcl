set moduleName systolic_array
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {systolic_array}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ din_a int 64 regular {axi_slave 0}  }
	{ din_b int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "din_a","offset": { "type": "dynamic","port_name": "din_a","bundle": "control"},"direction": "READONLY"},{"cName": "din_b","offset": { "type": "dynamic","port_name": "din_b","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "din_a", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "din_b", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"systolic_array","role":"start","value":"0","valid_bit":"0"},{"name":"systolic_array","role":"continue","value":"0","valid_bit":"4"},{"name":"systolic_array","role":"auto_start","value":"0","valid_bit":"7"},{"name":"din_a","role":"data","value":"16"},{"name":"din_b","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"systolic_array","role":"start","value":"0","valid_bit":"0"},{"name":"systolic_array","role":"done","value":"0","valid_bit":"1"},{"name":"systolic_array","role":"idle","value":"0","valid_bit":"2"},{"name":"systolic_array","role":"ready","value":"0","valid_bit":"3"},{"name":"systolic_array","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "27", "29", "31", "33", "51", "54", "55"],
		"CDFG" : "systolic_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "97", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4_fu_775", "Port" : "gmem", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "51", "SubInstance" : "grp_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6_fu_890", "Port" : "gmem", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "27", "SubInstance" : "grp_systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2_fu_668", "Port" : "gmem", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "din_a", "Type" : "None", "Direction" : "I"},
			{"Name" : "din_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.mux_42_32_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_1_fu_624.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2_fu_668", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln102", "Type" : "None", "Direction" : "I"},
			{"Name" : "M1_15_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_14_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_13_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_12_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_11_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_10_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_9_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_8_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_7_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_6_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_5_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_4_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M1_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1_VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2_fu_668.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_fu_691", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "select_ln14_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln14_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_2_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_1_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_b_pass_0_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_3_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_2_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_1_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_a_pass_0_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_3_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_2_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_1_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_val_0_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_2_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_1_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_b_pass_0_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_3_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_2_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_1_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pe_array_pe_a_pass_0_0_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1_VITIS_LOOP_42_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_fu_691.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4_fu_775", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln107", "Type" : "None", "Direction" : "I"},
			{"Name" : "M2_15_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_14_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_13_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_12_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_11_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_10_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_9_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_8_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_7_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_6_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_5_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_4_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "M2_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_3_VITIS_LOOP_108_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4_fu_775.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798", "Parent" : "0", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U182", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U183", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U184", "Parent" : "33"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U185", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U186", "Parent" : "33"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U187", "Parent" : "33"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U188", "Parent" : "33"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U189", "Parent" : "33"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U190", "Parent" : "33"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U191", "Parent" : "33"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U192", "Parent" : "33"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U193", "Parent" : "33"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U194", "Parent" : "33"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U195", "Parent" : "33"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U196", "Parent" : "33"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.mul_32s_32s_32_3_1_U197", "Parent" : "33"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_top_outer_loop1_fu_798.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6_fu_890", "Parent" : "0", "Child" : ["52", "53"],
		"CDFG" : "systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln168", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0_3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1_3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2_3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_3_3_5_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_168_5_VITIS_LOOP_169_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6_fu_890.mux_165_32_1_1_U287", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6_fu_890.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	systolic_array {
		gmem {Type IO LastRead 23 FirstWrite -1}
		din_a {Type I LastRead 0 FirstWrite -1}
		din_b {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}
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
		select_ln14_35_out {Type O LastRead -1 FirstWrite 0}}
	systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln102 {Type I LastRead 0 FirstWrite -1}
		M1_15_1_out {Type O LastRead -1 FirstWrite 0}
		M1_14_1_out {Type O LastRead -1 FirstWrite 0}
		M1_13_1_out {Type O LastRead -1 FirstWrite 0}
		M1_12_1_out {Type O LastRead -1 FirstWrite 0}
		M1_11_1_out {Type O LastRead -1 FirstWrite 0}
		M1_10_1_out {Type O LastRead -1 FirstWrite 0}
		M1_9_1_out {Type O LastRead -1 FirstWrite 0}
		M1_8_1_out {Type O LastRead -1 FirstWrite 0}
		M1_7_1_out {Type O LastRead -1 FirstWrite 0}
		M1_6_1_out {Type O LastRead -1 FirstWrite 0}
		M1_5_1_out {Type O LastRead -1 FirstWrite 0}
		M1_4_1_out {Type O LastRead -1 FirstWrite 0}
		M1_3_1_out {Type O LastRead -1 FirstWrite 0}
		M1_2_1_out {Type O LastRead -1 FirstWrite 0}
		M1_1_1_out {Type O LastRead -1 FirstWrite 0}
		M1_0_1_out {Type O LastRead -1 FirstWrite 0}}
	systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 {
		select_ln14_2_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_5_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_8_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_11_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_14_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_17_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_20_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_23_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_25_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_27_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_29_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_31_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_32_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_33_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_34_reload {Type I LastRead 0 FirstWrite -1}
		select_ln14_35_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_3_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_2_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_3_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_1_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_3_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_b_pass_0_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_3_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_2_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_1_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_2_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_1_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_a_pass_0_0_1_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_3_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_3_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_3_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_2_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_2_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_2_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_2_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_1_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_1_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_1_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_1_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_0_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_0_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_0_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_val_0_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_2_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_1_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_3_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_b_pass_0_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_3_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_2_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_1_0_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0_2_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0_1_3_out {Type O LastRead -1 FirstWrite 0}
		pe_array_pe_a_pass_0_0_3_out {Type O LastRead -1 FirstWrite 0}}
	systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln107 {Type I LastRead 0 FirstWrite -1}
		M2_15_1_out {Type O LastRead -1 FirstWrite 0}
		M2_14_1_out {Type O LastRead -1 FirstWrite 0}
		M2_13_1_out {Type O LastRead -1 FirstWrite 0}
		M2_12_1_out {Type O LastRead -1 FirstWrite 0}
		M2_11_1_out {Type O LastRead -1 FirstWrite 0}
		M2_10_1_out {Type O LastRead -1 FirstWrite 0}
		M2_9_1_out {Type O LastRead -1 FirstWrite 0}
		M2_8_1_out {Type O LastRead -1 FirstWrite 0}
		M2_7_1_out {Type O LastRead -1 FirstWrite 0}
		M2_6_1_out {Type O LastRead -1 FirstWrite 0}
		M2_5_1_out {Type O LastRead -1 FirstWrite 0}
		M2_4_1_out {Type O LastRead -1 FirstWrite 0}
		M2_3_1_out {Type O LastRead -1 FirstWrite 0}
		M2_2_1_out {Type O LastRead -1 FirstWrite 0}
		M2_1_1_out {Type O LastRead -1 FirstWrite 0}
		M2_0_1_out {Type O LastRead -1 FirstWrite 0}}
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
		pe_array_pe_val_0_0_5_out {Type O LastRead -1 FirstWrite 4}}
	systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6 {
		gmem {Type O LastRead -1 FirstWrite 1}
		sext_ln168 {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_0_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_1_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_2_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_0_3_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_0_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_1_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_2_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_1_3_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_0_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_1_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_2_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_2_3_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_0_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_1_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_2_5_reload {Type I LastRead 0 FirstWrite -1}
		pe_array_pe_val_3_3_5_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "97", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "98", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
