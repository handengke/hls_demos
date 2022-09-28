set moduleName systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2
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
set C_modelName {systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ sext_ln102 int 62 regular  }
	{ M1_15_1_out int 32 regular {pointer 1}  }
	{ M1_14_1_out int 32 regular {pointer 1}  }
	{ M1_13_1_out int 32 regular {pointer 1}  }
	{ M1_12_1_out int 32 regular {pointer 1}  }
	{ M1_11_1_out int 32 regular {pointer 1}  }
	{ M1_10_1_out int 32 regular {pointer 1}  }
	{ M1_9_1_out int 32 regular {pointer 1}  }
	{ M1_8_1_out int 32 regular {pointer 1}  }
	{ M1_7_1_out int 32 regular {pointer 1}  }
	{ M1_6_1_out int 32 regular {pointer 1}  }
	{ M1_5_1_out int 32 regular {pointer 1}  }
	{ M1_4_1_out int 32 regular {pointer 1}  }
	{ M1_3_1_out int 32 regular {pointer 1}  }
	{ M1_2_1_out int 32 regular {pointer 1}  }
	{ M1_1_1_out int 32 regular {pointer 1}  }
	{ M1_0_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "din_a","offset": { "type": "dynamic","port_name": "din_a","bundle": "control"},"direction": "READONLY"},{"cName": "din_b","offset": { "type": "dynamic","port_name": "din_b","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln102", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "M1_15_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_14_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_13_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_12_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_11_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_10_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_9_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_8_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_7_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_6_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_5_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_4_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_3_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_1_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M1_0_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ sext_ln102 sc_in sc_lv 62 signal 1 } 
	{ M1_15_1_out sc_out sc_lv 32 signal 2 } 
	{ M1_15_1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ M1_14_1_out sc_out sc_lv 32 signal 3 } 
	{ M1_14_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ M1_13_1_out sc_out sc_lv 32 signal 4 } 
	{ M1_13_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ M1_12_1_out sc_out sc_lv 32 signal 5 } 
	{ M1_12_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ M1_11_1_out sc_out sc_lv 32 signal 6 } 
	{ M1_11_1_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ M1_10_1_out sc_out sc_lv 32 signal 7 } 
	{ M1_10_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ M1_9_1_out sc_out sc_lv 32 signal 8 } 
	{ M1_9_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ M1_8_1_out sc_out sc_lv 32 signal 9 } 
	{ M1_8_1_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ M1_7_1_out sc_out sc_lv 32 signal 10 } 
	{ M1_7_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ M1_6_1_out sc_out sc_lv 32 signal 11 } 
	{ M1_6_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ M1_5_1_out sc_out sc_lv 32 signal 12 } 
	{ M1_5_1_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ M1_4_1_out sc_out sc_lv 32 signal 13 } 
	{ M1_4_1_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ M1_3_1_out sc_out sc_lv 32 signal 14 } 
	{ M1_3_1_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ M1_2_1_out sc_out sc_lv 32 signal 15 } 
	{ M1_2_1_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ M1_1_1_out sc_out sc_lv 32 signal 16 } 
	{ M1_1_1_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ M1_0_1_out sc_out sc_lv 32 signal 17 } 
	{ M1_0_1_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "sext_ln102", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln102", "role": "default" }} , 
 	{ "name": "M1_15_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_15_1_out", "role": "default" }} , 
 	{ "name": "M1_15_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_15_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_14_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_14_1_out", "role": "default" }} , 
 	{ "name": "M1_14_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_14_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_13_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_13_1_out", "role": "default" }} , 
 	{ "name": "M1_13_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_13_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_12_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_12_1_out", "role": "default" }} , 
 	{ "name": "M1_12_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_12_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_11_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_11_1_out", "role": "default" }} , 
 	{ "name": "M1_11_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_11_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_10_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_10_1_out", "role": "default" }} , 
 	{ "name": "M1_10_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_10_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_9_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_9_1_out", "role": "default" }} , 
 	{ "name": "M1_9_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_9_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_8_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_8_1_out", "role": "default" }} , 
 	{ "name": "M1_8_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_8_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_7_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_7_1_out", "role": "default" }} , 
 	{ "name": "M1_7_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_7_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_6_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_6_1_out", "role": "default" }} , 
 	{ "name": "M1_6_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_6_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_5_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_5_1_out", "role": "default" }} , 
 	{ "name": "M1_5_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_5_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_4_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_4_1_out", "role": "default" }} , 
 	{ "name": "M1_4_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_4_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_3_1_out", "role": "default" }} , 
 	{ "name": "M1_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_2_1_out", "role": "default" }} , 
 	{ "name": "M1_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_1_1_out", "role": "default" }} , 
 	{ "name": "M1_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "M1_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M1_0_1_out", "role": "default" }} , 
 	{ "name": "M1_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "M1_0_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		M1_0_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	sext_ln102 { ap_none {  { sext_ln102 in_data 0 62 } } }
	M1_15_1_out { ap_vld {  { M1_15_1_out out_data 1 32 }  { M1_15_1_out_ap_vld out_vld 1 1 } } }
	M1_14_1_out { ap_vld {  { M1_14_1_out out_data 1 32 }  { M1_14_1_out_ap_vld out_vld 1 1 } } }
	M1_13_1_out { ap_vld {  { M1_13_1_out out_data 1 32 }  { M1_13_1_out_ap_vld out_vld 1 1 } } }
	M1_12_1_out { ap_vld {  { M1_12_1_out out_data 1 32 }  { M1_12_1_out_ap_vld out_vld 1 1 } } }
	M1_11_1_out { ap_vld {  { M1_11_1_out out_data 1 32 }  { M1_11_1_out_ap_vld out_vld 1 1 } } }
	M1_10_1_out { ap_vld {  { M1_10_1_out out_data 1 32 }  { M1_10_1_out_ap_vld out_vld 1 1 } } }
	M1_9_1_out { ap_vld {  { M1_9_1_out out_data 1 32 }  { M1_9_1_out_ap_vld out_vld 1 1 } } }
	M1_8_1_out { ap_vld {  { M1_8_1_out out_data 1 32 }  { M1_8_1_out_ap_vld out_vld 1 1 } } }
	M1_7_1_out { ap_vld {  { M1_7_1_out out_data 1 32 }  { M1_7_1_out_ap_vld out_vld 1 1 } } }
	M1_6_1_out { ap_vld {  { M1_6_1_out out_data 1 32 }  { M1_6_1_out_ap_vld out_vld 1 1 } } }
	M1_5_1_out { ap_vld {  { M1_5_1_out out_data 1 32 }  { M1_5_1_out_ap_vld out_vld 1 1 } } }
	M1_4_1_out { ap_vld {  { M1_4_1_out out_data 1 32 }  { M1_4_1_out_ap_vld out_vld 1 1 } } }
	M1_3_1_out { ap_vld {  { M1_3_1_out out_data 1 32 }  { M1_3_1_out_ap_vld out_vld 1 1 } } }
	M1_2_1_out { ap_vld {  { M1_2_1_out out_data 1 32 }  { M1_2_1_out_ap_vld out_vld 1 1 } } }
	M1_1_1_out { ap_vld {  { M1_1_1_out out_data 1 32 }  { M1_1_1_out_ap_vld out_vld 1 1 } } }
	M1_0_1_out { ap_vld {  { M1_0_1_out out_data 1 32 }  { M1_0_1_out_ap_vld out_vld 1 1 } } }
}
