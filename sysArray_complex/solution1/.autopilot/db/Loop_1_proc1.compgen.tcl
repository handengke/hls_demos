# This script segment is generated automatically by AutoPilot

set name systolic_array_mul_31ns_31ns_61_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set name systolic_array_mul_30s_30s_30_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6261 \
    name pe_array_pe_val_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_val_0 \
    op interface \
    ports { pe_array_pe_val_0_address0 { O 2 vector } pe_array_pe_val_0_ce0 { O 1 bit } pe_array_pe_val_0_we0 { O 1 bit } pe_array_pe_val_0_d0 { O 32 vector } pe_array_pe_val_0_q0 { I 32 vector } pe_array_pe_val_0_address1 { O 2 vector } pe_array_pe_val_0_ce1 { O 1 bit } pe_array_pe_val_0_we1 { O 1 bit } pe_array_pe_val_0_d1 { O 32 vector } pe_array_pe_val_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6262 \
    name pe_array_pe_a_pass_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_a_pass_0 \
    op interface \
    ports { pe_array_pe_a_pass_0_address0 { O 2 vector } pe_array_pe_a_pass_0_ce0 { O 1 bit } pe_array_pe_a_pass_0_we0 { O 1 bit } pe_array_pe_a_pass_0_d0 { O 32 vector } pe_array_pe_a_pass_0_q0 { I 32 vector } pe_array_pe_a_pass_0_address1 { O 2 vector } pe_array_pe_a_pass_0_ce1 { O 1 bit } pe_array_pe_a_pass_0_we1 { O 1 bit } pe_array_pe_a_pass_0_d1 { O 32 vector } pe_array_pe_a_pass_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6263 \
    name pe_array_pe_a_pass_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_a_pass_3 \
    op interface \
    ports { pe_array_pe_a_pass_3_address0 { O 2 vector } pe_array_pe_a_pass_3_ce0 { O 1 bit } pe_array_pe_a_pass_3_we0 { O 1 bit } pe_array_pe_a_pass_3_d0 { O 32 vector } pe_array_pe_a_pass_3_q0 { I 32 vector } pe_array_pe_a_pass_3_address1 { O 2 vector } pe_array_pe_a_pass_3_ce1 { O 1 bit } pe_array_pe_a_pass_3_we1 { O 1 bit } pe_array_pe_a_pass_3_d1 { O 32 vector } pe_array_pe_a_pass_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6264 \
    name pe_array_pe_a_pass_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_a_pass_2 \
    op interface \
    ports { pe_array_pe_a_pass_2_address0 { O 2 vector } pe_array_pe_a_pass_2_ce0 { O 1 bit } pe_array_pe_a_pass_2_we0 { O 1 bit } pe_array_pe_a_pass_2_d0 { O 32 vector } pe_array_pe_a_pass_2_q0 { I 32 vector } pe_array_pe_a_pass_2_address1 { O 2 vector } pe_array_pe_a_pass_2_ce1 { O 1 bit } pe_array_pe_a_pass_2_we1 { O 1 bit } pe_array_pe_a_pass_2_d1 { O 32 vector } pe_array_pe_a_pass_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6265 \
    name pe_array_pe_a_pass_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_a_pass_1 \
    op interface \
    ports { pe_array_pe_a_pass_1_address0 { O 2 vector } pe_array_pe_a_pass_1_ce0 { O 1 bit } pe_array_pe_a_pass_1_we0 { O 1 bit } pe_array_pe_a_pass_1_d0 { O 32 vector } pe_array_pe_a_pass_1_q0 { I 32 vector } pe_array_pe_a_pass_1_address1 { O 2 vector } pe_array_pe_a_pass_1_ce1 { O 1 bit } pe_array_pe_a_pass_1_we1 { O 1 bit } pe_array_pe_a_pass_1_d1 { O 32 vector } pe_array_pe_a_pass_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6266 \
    name pe_array_pe_b_pass_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_b_pass_2 \
    op interface \
    ports { pe_array_pe_b_pass_2_address0 { O 2 vector } pe_array_pe_b_pass_2_ce0 { O 1 bit } pe_array_pe_b_pass_2_we0 { O 1 bit } pe_array_pe_b_pass_2_d0 { O 32 vector } pe_array_pe_b_pass_2_q0 { I 32 vector } pe_array_pe_b_pass_2_address1 { O 2 vector } pe_array_pe_b_pass_2_ce1 { O 1 bit } pe_array_pe_b_pass_2_we1 { O 1 bit } pe_array_pe_b_pass_2_d1 { O 32 vector } pe_array_pe_b_pass_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6267 \
    name pe_array_pe_b_pass_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_b_pass_1 \
    op interface \
    ports { pe_array_pe_b_pass_1_address0 { O 2 vector } pe_array_pe_b_pass_1_ce0 { O 1 bit } pe_array_pe_b_pass_1_we0 { O 1 bit } pe_array_pe_b_pass_1_d0 { O 32 vector } pe_array_pe_b_pass_1_q0 { I 32 vector } pe_array_pe_b_pass_1_address1 { O 2 vector } pe_array_pe_b_pass_1_ce1 { O 1 bit } pe_array_pe_b_pass_1_we1 { O 1 bit } pe_array_pe_b_pass_1_d1 { O 32 vector } pe_array_pe_b_pass_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6268 \
    name pe_array_pe_b_pass_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_b_pass_0 \
    op interface \
    ports { pe_array_pe_b_pass_0_address0 { O 2 vector } pe_array_pe_b_pass_0_ce0 { O 1 bit } pe_array_pe_b_pass_0_we0 { O 1 bit } pe_array_pe_b_pass_0_d0 { O 32 vector } pe_array_pe_b_pass_0_q0 { I 32 vector } pe_array_pe_b_pass_0_address1 { O 2 vector } pe_array_pe_b_pass_0_ce1 { O 1 bit } pe_array_pe_b_pass_0_we1 { O 1 bit } pe_array_pe_b_pass_0_d1 { O 32 vector } pe_array_pe_b_pass_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6269 \
    name pe_array_pe_val_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_val_1 \
    op interface \
    ports { pe_array_pe_val_1_address0 { O 2 vector } pe_array_pe_val_1_ce0 { O 1 bit } pe_array_pe_val_1_we0 { O 1 bit } pe_array_pe_val_1_d0 { O 32 vector } pe_array_pe_val_1_q0 { I 32 vector } pe_array_pe_val_1_address1 { O 2 vector } pe_array_pe_val_1_ce1 { O 1 bit } pe_array_pe_val_1_we1 { O 1 bit } pe_array_pe_val_1_d1 { O 32 vector } pe_array_pe_val_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6270 \
    name pe_array_pe_val_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_val_2 \
    op interface \
    ports { pe_array_pe_val_2_address0 { O 2 vector } pe_array_pe_val_2_ce0 { O 1 bit } pe_array_pe_val_2_we0 { O 1 bit } pe_array_pe_val_2_d0 { O 32 vector } pe_array_pe_val_2_q0 { I 32 vector } pe_array_pe_val_2_address1 { O 2 vector } pe_array_pe_val_2_ce1 { O 1 bit } pe_array_pe_val_2_we1 { O 1 bit } pe_array_pe_val_2_d1 { O 32 vector } pe_array_pe_val_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6271 \
    name pe_array_pe_val_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pe_array_pe_val_3 \
    op interface \
    ports { pe_array_pe_val_3_address0 { O 2 vector } pe_array_pe_val_3_ce0 { O 1 bit } pe_array_pe_val_3_we0 { O 1 bit } pe_array_pe_val_3_d0 { O 32 vector } pe_array_pe_val_3_q0 { I 32 vector } pe_array_pe_val_3_address1 { O 2 vector } pe_array_pe_val_3_ce1 { O 1 bit } pe_array_pe_val_3_we1 { O 1 bit } pe_array_pe_val_3_d1 { O 32 vector } pe_array_pe_val_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6272 \
    name ca \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ca \
    op interface \
    ports { ca { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6273 \
    name din_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_din_a \
    op interface \
    ports { din_a { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6274 \
    name ra \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ra \
    op interface \
    ports { ra { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6275 \
    name gmem \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 32 vector } m_axi_gmem_WSTRB { O 4 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 32 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6276 \
    name cb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cb \
    op interface \
    ports { cb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6277 \
    name din_b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_din_b \
    op interface \
    ports { din_b { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6278 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


