# This script segment is generated automatically by AutoPilot

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
    id 12 \
    name pe_array_pe_a_pass_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_a_pass_0 \
    op interface \
    ports { pe_array_pe_a_pass_0_address0 { O 2 vector } pe_array_pe_a_pass_0_ce0 { O 1 bit } pe_array_pe_a_pass_0_we0 { O 1 bit } pe_array_pe_a_pass_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name pe_array_pe_a_pass_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_a_pass_1 \
    op interface \
    ports { pe_array_pe_a_pass_1_address0 { O 2 vector } pe_array_pe_a_pass_1_ce0 { O 1 bit } pe_array_pe_a_pass_1_we0 { O 1 bit } pe_array_pe_a_pass_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name pe_array_pe_a_pass_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_a_pass_2 \
    op interface \
    ports { pe_array_pe_a_pass_2_address0 { O 2 vector } pe_array_pe_a_pass_2_ce0 { O 1 bit } pe_array_pe_a_pass_2_we0 { O 1 bit } pe_array_pe_a_pass_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name pe_array_pe_a_pass_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_a_pass_3 \
    op interface \
    ports { pe_array_pe_a_pass_3_address0 { O 2 vector } pe_array_pe_a_pass_3_ce0 { O 1 bit } pe_array_pe_a_pass_3_we0 { O 1 bit } pe_array_pe_a_pass_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_a_pass_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name pe_array_pe_b_pass_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_b_pass_0 \
    op interface \
    ports { pe_array_pe_b_pass_0_address0 { O 2 vector } pe_array_pe_b_pass_0_ce0 { O 1 bit } pe_array_pe_b_pass_0_we0 { O 1 bit } pe_array_pe_b_pass_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name pe_array_pe_b_pass_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_b_pass_1 \
    op interface \
    ports { pe_array_pe_b_pass_1_address0 { O 2 vector } pe_array_pe_b_pass_1_ce0 { O 1 bit } pe_array_pe_b_pass_1_we0 { O 1 bit } pe_array_pe_b_pass_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name pe_array_pe_b_pass_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_b_pass_2 \
    op interface \
    ports { pe_array_pe_b_pass_2_address0 { O 2 vector } pe_array_pe_b_pass_2_ce0 { O 1 bit } pe_array_pe_b_pass_2_we0 { O 1 bit } pe_array_pe_b_pass_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_b_pass_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name pe_array_pe_val_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_val_0 \
    op interface \
    ports { pe_array_pe_val_0_address0 { O 2 vector } pe_array_pe_val_0_ce0 { O 1 bit } pe_array_pe_val_0_we0 { O 1 bit } pe_array_pe_val_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name pe_array_pe_val_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_val_1 \
    op interface \
    ports { pe_array_pe_val_1_address0 { O 2 vector } pe_array_pe_val_1_ce0 { O 1 bit } pe_array_pe_val_1_we0 { O 1 bit } pe_array_pe_val_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name pe_array_pe_val_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_val_2 \
    op interface \
    ports { pe_array_pe_val_2_address0 { O 2 vector } pe_array_pe_val_2_ce0 { O 1 bit } pe_array_pe_val_2_we0 { O 1 bit } pe_array_pe_val_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name pe_array_pe_val_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename pe_array_pe_val_3 \
    op interface \
    ports { pe_array_pe_val_3_address0 { O 2 vector } pe_array_pe_val_3_ce0 { O 1 bit } pe_array_pe_val_3_we0 { O 1 bit } pe_array_pe_val_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pe_array_pe_val_3'"
}
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

