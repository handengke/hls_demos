
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_simd_array_top/AESL_inst_simd_array/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set din_a__out_r_group [add_wave_group din_a__out_r(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $din_a__out_r_group]
set wdata_group [add_wave_group "Write Channel" -into $din_a__out_r_group]
set ctrl_group [add_wave_group "Handshakes" -into $din_a__out_r_group]
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_BUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_BID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_BRESP -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RRESP -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RUSER -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RID -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RDATA -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARID -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WDATA -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set din_a__din_b__out_r__size__opcode__return_group [add_wave_group din_a__din_b__out_r__size__opcode__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_simd_array_top/AESL_inst_simd_array/interrupt -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_BRESP -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_BREADY -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_BVALID -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_RRESP -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_RDATA -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_RREADY -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_RVALID -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_ARREADY -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_ARVALID -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_ARADDR -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_WSTRB -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_WDATA -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_WREADY -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_WVALID -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_AWREADY -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_AWVALID -into $din_a__din_b__out_r__size__opcode__return_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/s_axi_control_AWADDR -into $din_a__din_b__out_r__size__opcode__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set din_b_group [add_wave_group din_b(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $din_b_group]
set wdata_group [add_wave_group "Write Channel" -into $din_b_group]
set ctrl_group [add_wave_group "Handshakes" -into $din_b_group]
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_simd_array_top/AESL_inst_simd_array/m_axi_gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_simd_array_top/AESL_inst_simd_array/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_simd_array_top/AESL_inst_simd_array/ap_clk -into $clockgroup
save_wave_config simd_array.wcfg
run all
quit

