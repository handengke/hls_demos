set moduleName Loop_1_proc1_Pipeline_VITIS_LOOP_210_6
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
set C_modelName {Loop_1_proc1_Pipeline_VITIS_LOOP_210_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ pe_array_pe_val_3 int 32 regular {array 4 { 1 1 } 1 1 }  }
	{ pe_array_pe_val_2 int 32 regular {array 4 { 1 1 } 1 1 }  }
	{ pe_array_pe_val_1 int 32 regular {array 4 { 1 1 } 1 1 }  }
	{ pe_array_pe_val_0 int 32 regular {array 4 { 1 1 } 1 1 }  }
	{ cb int 32 regular  }
	{ shl_ln139_mid2 int 32 regular  }
	{ shl_ln2 int 32 regular  }
	{ out_r int 64 regular  }
	{ gmem int 32 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pe_array_pe_val_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pe_array_pe_val_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln139_mid2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "din_a","offset": { "type": "dynamic","port_name": "din_a","bundle": "control"},"direction": "READONLY"},{"cName": "din_b","offset": { "type": "dynamic","port_name": "din_b","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r"},"direction": "WRITEONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 8 } 
	{ pe_array_pe_val_3_address0 sc_out sc_lv 2 signal 0 } 
	{ pe_array_pe_val_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_q0 sc_in sc_lv 32 signal 0 } 
	{ pe_array_pe_val_3_address1 sc_out sc_lv 2 signal 0 } 
	{ pe_array_pe_val_3_ce1 sc_out sc_logic 1 signal 0 } 
	{ pe_array_pe_val_3_q1 sc_in sc_lv 32 signal 0 } 
	{ pe_array_pe_val_2_address0 sc_out sc_lv 2 signal 1 } 
	{ pe_array_pe_val_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_q0 sc_in sc_lv 32 signal 1 } 
	{ pe_array_pe_val_2_address1 sc_out sc_lv 2 signal 1 } 
	{ pe_array_pe_val_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ pe_array_pe_val_2_q1 sc_in sc_lv 32 signal 1 } 
	{ pe_array_pe_val_1_address0 sc_out sc_lv 2 signal 2 } 
	{ pe_array_pe_val_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_q0 sc_in sc_lv 32 signal 2 } 
	{ pe_array_pe_val_1_address1 sc_out sc_lv 2 signal 2 } 
	{ pe_array_pe_val_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ pe_array_pe_val_1_q1 sc_in sc_lv 32 signal 2 } 
	{ pe_array_pe_val_0_address0 sc_out sc_lv 2 signal 3 } 
	{ pe_array_pe_val_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_val_0_q0 sc_in sc_lv 32 signal 3 } 
	{ pe_array_pe_val_0_address1 sc_out sc_lv 2 signal 3 } 
	{ pe_array_pe_val_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ pe_array_pe_val_0_q1 sc_in sc_lv 32 signal 3 } 
	{ cb sc_in sc_lv 32 signal 4 } 
	{ shl_ln139_mid2 sc_in sc_lv 32 signal 5 } 
	{ shl_ln2 sc_in sc_lv 32 signal 6 } 
	{ out_r sc_in sc_lv 64 signal 7 } 
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
 	{ "name": "pe_array_pe_val_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "q0" }} , 
 	{ "name": "pe_array_pe_val_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_3", "role": "q1" }} , 
 	{ "name": "pe_array_pe_val_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "q0" }} , 
 	{ "name": "pe_array_pe_val_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_2", "role": "q1" }} , 
 	{ "name": "pe_array_pe_val_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "q0" }} , 
 	{ "name": "pe_array_pe_val_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_1", "role": "q1" }} , 
 	{ "name": "pe_array_pe_val_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "address0" }} , 
 	{ "name": "pe_array_pe_val_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "ce0" }} , 
 	{ "name": "pe_array_pe_val_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "q0" }} , 
 	{ "name": "pe_array_pe_val_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "address1" }} , 
 	{ "name": "pe_array_pe_val_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "ce1" }} , 
 	{ "name": "pe_array_pe_val_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pe_array_pe_val_0", "role": "q1" }} , 
 	{ "name": "cb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb", "role": "default" }} , 
 	{ "name": "shl_ln139_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln139_mid2", "role": "default" }} , 
 	{ "name": "shl_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln2", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "Loop_1_proc1_Pipeline_VITIS_LOOP_210_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pe_array_pe_val_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pe_array_pe_val_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cb", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln139_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_210_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U6228", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U6229", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc1_Pipeline_VITIS_LOOP_210_6 {
		pe_array_pe_val_3 {Type I LastRead 3 FirstWrite -1}
		pe_array_pe_val_2 {Type I LastRead 3 FirstWrite -1}
		pe_array_pe_val_1 {Type I LastRead 3 FirstWrite -1}
		pe_array_pe_val_0 {Type I LastRead 3 FirstWrite -1}
		cb {Type I LastRead 0 FirstWrite -1}
		shl_ln139_mid2 {Type I LastRead 0 FirstWrite -1}
		shl_ln2 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 7 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pe_array_pe_val_3 { ap_memory {  { pe_array_pe_val_3_address0 mem_address 1 2 }  { pe_array_pe_val_3_ce0 mem_ce 1 1 }  { pe_array_pe_val_3_q0 mem_dout 0 32 }  { pe_array_pe_val_3_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_3_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_3_q1 MemPortDOUT2 0 32 } } }
	pe_array_pe_val_2 { ap_memory {  { pe_array_pe_val_2_address0 mem_address 1 2 }  { pe_array_pe_val_2_ce0 mem_ce 1 1 }  { pe_array_pe_val_2_q0 mem_dout 0 32 }  { pe_array_pe_val_2_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_2_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_2_q1 MemPortDOUT2 0 32 } } }
	pe_array_pe_val_1 { ap_memory {  { pe_array_pe_val_1_address0 mem_address 1 2 }  { pe_array_pe_val_1_ce0 mem_ce 1 1 }  { pe_array_pe_val_1_q0 mem_dout 0 32 }  { pe_array_pe_val_1_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_1_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_1_q1 MemPortDOUT2 0 32 } } }
	pe_array_pe_val_0 { ap_memory {  { pe_array_pe_val_0_address0 mem_address 1 2 }  { pe_array_pe_val_0_ce0 mem_ce 1 1 }  { pe_array_pe_val_0_q0 mem_dout 0 32 }  { pe_array_pe_val_0_address1 MemPortADDR2 1 2 }  { pe_array_pe_val_0_ce1 MemPortCE2 1 1 }  { pe_array_pe_val_0_q1 MemPortDOUT2 0 32 } } }
	cb { ap_none {  { cb in_data 0 32 } } }
	shl_ln139_mid2 { ap_none {  { shl_ln139_mid2 in_data 0 32 } } }
	shl_ln2 { ap_none {  { shl_ln2 in_data 0 32 } } }
	out_r { ap_none {  { out_r in_data 0 64 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}
