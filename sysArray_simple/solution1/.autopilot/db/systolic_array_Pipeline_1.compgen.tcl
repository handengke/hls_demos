# This script segment is generated automatically by AutoPilot

set id 1
set name systolic_array_mux_42_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name pe_array_pe_a_pass_0_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_0_1_out \
    op interface \
    ports { pe_array_pe_a_pass_0_0_1_out { O 32 vector } pe_array_pe_a_pass_0_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name pe_array_pe_a_pass_1_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_0_1_out \
    op interface \
    ports { pe_array_pe_a_pass_1_0_1_out { O 32 vector } pe_array_pe_a_pass_1_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name pe_array_pe_a_pass_2_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_0_1_out \
    op interface \
    ports { pe_array_pe_a_pass_2_0_1_out { O 32 vector } pe_array_pe_a_pass_2_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name pe_array_pe_a_pass_3_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_0_1_out \
    op interface \
    ports { pe_array_pe_a_pass_3_0_1_out { O 32 vector } pe_array_pe_a_pass_3_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name pe_array_pe_b_pass_0_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_0_1_out \
    op interface \
    ports { pe_array_pe_b_pass_0_0_1_out { O 32 vector } pe_array_pe_b_pass_0_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name pe_array_pe_b_pass_1_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_0_1_out \
    op interface \
    ports { pe_array_pe_b_pass_1_0_1_out { O 32 vector } pe_array_pe_b_pass_1_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name pe_array_pe_b_pass_2_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_0_1_out \
    op interface \
    ports { pe_array_pe_b_pass_2_0_1_out { O 32 vector } pe_array_pe_b_pass_2_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name pe_array_pe_a_pass_0_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_1_1_out \
    op interface \
    ports { pe_array_pe_a_pass_0_1_1_out { O 32 vector } pe_array_pe_a_pass_0_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name pe_array_pe_a_pass_1_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_1_1_out \
    op interface \
    ports { pe_array_pe_a_pass_1_1_1_out { O 32 vector } pe_array_pe_a_pass_1_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name pe_array_pe_a_pass_2_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_1_1_out \
    op interface \
    ports { pe_array_pe_a_pass_2_1_1_out { O 32 vector } pe_array_pe_a_pass_2_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name pe_array_pe_a_pass_3_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_1_1_out \
    op interface \
    ports { pe_array_pe_a_pass_3_1_1_out { O 32 vector } pe_array_pe_a_pass_3_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name pe_array_pe_b_pass_0_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_1_1_out \
    op interface \
    ports { pe_array_pe_b_pass_0_1_1_out { O 32 vector } pe_array_pe_b_pass_0_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name pe_array_pe_b_pass_1_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_1_1_out \
    op interface \
    ports { pe_array_pe_b_pass_1_1_1_out { O 32 vector } pe_array_pe_b_pass_1_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name pe_array_pe_b_pass_2_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_1_1_out \
    op interface \
    ports { pe_array_pe_b_pass_2_1_1_out { O 32 vector } pe_array_pe_b_pass_2_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name pe_array_pe_a_pass_0_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_2_1_out \
    op interface \
    ports { pe_array_pe_a_pass_0_2_1_out { O 32 vector } pe_array_pe_a_pass_0_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name pe_array_pe_a_pass_1_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_2_1_out \
    op interface \
    ports { pe_array_pe_a_pass_1_2_1_out { O 32 vector } pe_array_pe_a_pass_1_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name pe_array_pe_a_pass_2_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_2_1_out \
    op interface \
    ports { pe_array_pe_a_pass_2_2_1_out { O 32 vector } pe_array_pe_a_pass_2_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name pe_array_pe_a_pass_3_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_2_1_out \
    op interface \
    ports { pe_array_pe_a_pass_3_2_1_out { O 32 vector } pe_array_pe_a_pass_3_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name pe_array_pe_b_pass_0_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_2_1_out \
    op interface \
    ports { pe_array_pe_b_pass_0_2_1_out { O 32 vector } pe_array_pe_b_pass_0_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name pe_array_pe_b_pass_1_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_2_1_out \
    op interface \
    ports { pe_array_pe_b_pass_1_2_1_out { O 32 vector } pe_array_pe_b_pass_1_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name pe_array_pe_b_pass_2_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_2_1_out \
    op interface \
    ports { pe_array_pe_b_pass_2_2_1_out { O 32 vector } pe_array_pe_b_pass_2_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name pe_array_pe_b_pass_0_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_3_1_out \
    op interface \
    ports { pe_array_pe_b_pass_0_3_1_out { O 32 vector } pe_array_pe_b_pass_0_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name pe_array_pe_b_pass_1_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_3_1_out \
    op interface \
    ports { pe_array_pe_b_pass_1_3_1_out { O 32 vector } pe_array_pe_b_pass_1_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name pe_array_pe_b_pass_2_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_3_1_out \
    op interface \
    ports { pe_array_pe_b_pass_2_3_1_out { O 32 vector } pe_array_pe_b_pass_2_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name select_ln14_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_2_out \
    op interface \
    ports { select_ln14_2_out { O 32 vector } select_ln14_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name select_ln14_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_5_out \
    op interface \
    ports { select_ln14_5_out { O 32 vector } select_ln14_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name select_ln14_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_8_out \
    op interface \
    ports { select_ln14_8_out { O 32 vector } select_ln14_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name select_ln14_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_11_out \
    op interface \
    ports { select_ln14_11_out { O 32 vector } select_ln14_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name select_ln14_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_14_out \
    op interface \
    ports { select_ln14_14_out { O 32 vector } select_ln14_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name select_ln14_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_17_out \
    op interface \
    ports { select_ln14_17_out { O 32 vector } select_ln14_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name select_ln14_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_20_out \
    op interface \
    ports { select_ln14_20_out { O 32 vector } select_ln14_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name select_ln14_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_23_out \
    op interface \
    ports { select_ln14_23_out { O 32 vector } select_ln14_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name select_ln14_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_25_out \
    op interface \
    ports { select_ln14_25_out { O 32 vector } select_ln14_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name select_ln14_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_27_out \
    op interface \
    ports { select_ln14_27_out { O 32 vector } select_ln14_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name select_ln14_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_29_out \
    op interface \
    ports { select_ln14_29_out { O 32 vector } select_ln14_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name select_ln14_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_31_out \
    op interface \
    ports { select_ln14_31_out { O 32 vector } select_ln14_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name select_ln14_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_32_out \
    op interface \
    ports { select_ln14_32_out { O 32 vector } select_ln14_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name select_ln14_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_33_out \
    op interface \
    ports { select_ln14_33_out { O 32 vector } select_ln14_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name select_ln14_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_34_out \
    op interface \
    ports { select_ln14_34_out { O 32 vector } select_ln14_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name select_ln14_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_35_out \
    op interface \
    ports { select_ln14_35_out { O 32 vector } select_ln14_35_out_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName systolic_array_flow_control_loop_pipe_sequential_init_U
set CompName systolic_array_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix systolic_array_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


