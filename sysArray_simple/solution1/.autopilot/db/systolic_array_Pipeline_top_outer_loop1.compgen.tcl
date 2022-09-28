# This script segment is generated automatically by AutoPilot

set name systolic_array_mul_32s_32s_32_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 199 \
    name pe_array_pe_val_3_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_3_3_reload \
    op interface \
    ports { pe_array_pe_val_3_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name pe_array_pe_val_3_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_2_3_reload \
    op interface \
    ports { pe_array_pe_val_3_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name pe_array_pe_val_3_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_1_3_reload \
    op interface \
    ports { pe_array_pe_val_3_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name pe_array_pe_val_3_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_0_3_reload \
    op interface \
    ports { pe_array_pe_val_3_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name pe_array_pe_val_2_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_3_3_reload \
    op interface \
    ports { pe_array_pe_val_2_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name pe_array_pe_val_2_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_2_3_reload \
    op interface \
    ports { pe_array_pe_val_2_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name pe_array_pe_val_2_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_1_3_reload \
    op interface \
    ports { pe_array_pe_val_2_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name pe_array_pe_val_2_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_0_3_reload \
    op interface \
    ports { pe_array_pe_val_2_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name pe_array_pe_val_1_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_3_3_reload \
    op interface \
    ports { pe_array_pe_val_1_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name pe_array_pe_val_1_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_2_3_reload \
    op interface \
    ports { pe_array_pe_val_1_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name pe_array_pe_val_1_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_1_3_reload \
    op interface \
    ports { pe_array_pe_val_1_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name pe_array_pe_val_1_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_0_3_reload \
    op interface \
    ports { pe_array_pe_val_1_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name pe_array_pe_val_0_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_3_3_reload \
    op interface \
    ports { pe_array_pe_val_0_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name pe_array_pe_val_0_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_2_3_reload \
    op interface \
    ports { pe_array_pe_val_0_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name pe_array_pe_val_0_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_1_3_reload \
    op interface \
    ports { pe_array_pe_val_0_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name pe_array_pe_val_0_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_0_3_reload \
    op interface \
    ports { pe_array_pe_val_0_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name pe_array_pe_b_pass_2_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_3_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_2_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name pe_array_pe_b_pass_2_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_2_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_2_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name pe_array_pe_b_pass_2_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_1_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_2_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name pe_array_pe_b_pass_2_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_2_0_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_2_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name pe_array_pe_b_pass_1_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_3_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_1_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name pe_array_pe_b_pass_1_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_2_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_1_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name pe_array_pe_b_pass_1_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_1_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_1_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name pe_array_pe_b_pass_1_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_1_0_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_1_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name pe_array_pe_b_pass_0_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_3_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_0_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name pe_array_pe_b_pass_0_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_2_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_0_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name pe_array_pe_b_pass_0_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_1_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_0_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name pe_array_pe_b_pass_0_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_b_pass_0_0_3_reload \
    op interface \
    ports { pe_array_pe_b_pass_0_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name pe_array_pe_a_pass_3_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_2_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_3_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name pe_array_pe_a_pass_3_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_1_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_3_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name pe_array_pe_a_pass_3_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_3_0_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_3_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name pe_array_pe_a_pass_2_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_2_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_2_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name pe_array_pe_a_pass_2_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_1_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_2_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name pe_array_pe_a_pass_2_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_2_0_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_2_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name pe_array_pe_a_pass_1_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_2_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_1_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name pe_array_pe_a_pass_1_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_1_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_1_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name pe_array_pe_a_pass_1_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_1_0_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_1_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name pe_array_pe_a_pass_0_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_2_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_0_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name pe_array_pe_a_pass_0_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_1_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_0_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name pe_array_pe_a_pass_0_0_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_a_pass_0_0_3_reload \
    op interface \
    ports { pe_array_pe_a_pass_0_0_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name M1_1_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_1_1_reload \
    op interface \
    ports { M1_1_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name M1_9_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_9_1_reload \
    op interface \
    ports { M1_9_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name M1_2_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_2_1_reload \
    op interface \
    ports { M1_2_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name M1_3_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_3_1_reload \
    op interface \
    ports { M1_3_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name M1_4_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_4_1_reload \
    op interface \
    ports { M1_4_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name M1_5_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_5_1_reload \
    op interface \
    ports { M1_5_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name M1_6_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_6_1_reload \
    op interface \
    ports { M1_6_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name M1_7_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_7_1_reload \
    op interface \
    ports { M1_7_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name M1_8_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_8_1_reload \
    op interface \
    ports { M1_8_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name M1_0_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_0_1_reload \
    op interface \
    ports { M1_0_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name M2_12_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_12_1_reload \
    op interface \
    ports { M2_12_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name M2_8_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_8_1_reload \
    op interface \
    ports { M2_8_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name M2_4_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_4_1_reload \
    op interface \
    ports { M2_4_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name M2_0_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_0_1_reload \
    op interface \
    ports { M2_0_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name M1_12_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_12_1_reload \
    op interface \
    ports { M1_12_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name M1_10_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_10_1_reload \
    op interface \
    ports { M1_10_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name M1_11_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_11_1_reload \
    op interface \
    ports { M1_11_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name M2_13_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_13_1_reload \
    op interface \
    ports { M2_13_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name M2_9_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_9_1_reload \
    op interface \
    ports { M2_9_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name M2_5_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_5_1_reload \
    op interface \
    ports { M2_5_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name M2_1_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_1_1_reload \
    op interface \
    ports { M2_1_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name M1_15_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_15_1_reload \
    op interface \
    ports { M1_15_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name M1_13_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_13_1_reload \
    op interface \
    ports { M1_13_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name M1_14_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M1_14_1_reload \
    op interface \
    ports { M1_14_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name M2_14_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_14_1_reload \
    op interface \
    ports { M2_14_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name M2_10_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_10_1_reload \
    op interface \
    ports { M2_10_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name M2_6_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_6_1_reload \
    op interface \
    ports { M2_6_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name M2_2_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_2_1_reload \
    op interface \
    ports { M2_2_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name M2_15_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_15_1_reload \
    op interface \
    ports { M2_15_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name M2_11_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_11_1_reload \
    op interface \
    ports { M2_11_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name M2_7_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_7_1_reload \
    op interface \
    ports { M2_7_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name M2_3_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_M2_3_1_reload \
    op interface \
    ports { M2_3_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name pe_array_pe_val_3_3_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_3_5_out \
    op interface \
    ports { pe_array_pe_val_3_3_5_out { O 32 vector } pe_array_pe_val_3_3_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name pe_array_pe_val_3_2_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_2_5_out \
    op interface \
    ports { pe_array_pe_val_3_2_5_out { O 32 vector } pe_array_pe_val_3_2_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name pe_array_pe_val_3_1_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_1_5_out \
    op interface \
    ports { pe_array_pe_val_3_1_5_out { O 32 vector } pe_array_pe_val_3_1_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name pe_array_pe_val_3_0_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_3_0_5_out \
    op interface \
    ports { pe_array_pe_val_3_0_5_out { O 32 vector } pe_array_pe_val_3_0_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name pe_array_pe_val_2_3_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_3_5_out \
    op interface \
    ports { pe_array_pe_val_2_3_5_out { O 32 vector } pe_array_pe_val_2_3_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name pe_array_pe_val_2_2_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_2_5_out \
    op interface \
    ports { pe_array_pe_val_2_2_5_out { O 32 vector } pe_array_pe_val_2_2_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name pe_array_pe_val_2_1_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_1_5_out \
    op interface \
    ports { pe_array_pe_val_2_1_5_out { O 32 vector } pe_array_pe_val_2_1_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name pe_array_pe_val_2_0_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_2_0_5_out \
    op interface \
    ports { pe_array_pe_val_2_0_5_out { O 32 vector } pe_array_pe_val_2_0_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name pe_array_pe_val_1_3_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_3_5_out \
    op interface \
    ports { pe_array_pe_val_1_3_5_out { O 32 vector } pe_array_pe_val_1_3_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name pe_array_pe_val_1_2_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_2_5_out \
    op interface \
    ports { pe_array_pe_val_1_2_5_out { O 32 vector } pe_array_pe_val_1_2_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name pe_array_pe_val_1_1_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_1_5_out \
    op interface \
    ports { pe_array_pe_val_1_1_5_out { O 32 vector } pe_array_pe_val_1_1_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name pe_array_pe_val_1_0_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_1_0_5_out \
    op interface \
    ports { pe_array_pe_val_1_0_5_out { O 32 vector } pe_array_pe_val_1_0_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name pe_array_pe_val_0_3_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_3_5_out \
    op interface \
    ports { pe_array_pe_val_0_3_5_out { O 32 vector } pe_array_pe_val_0_3_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name pe_array_pe_val_0_2_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_2_5_out \
    op interface \
    ports { pe_array_pe_val_0_2_5_out { O 32 vector } pe_array_pe_val_0_2_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name pe_array_pe_val_0_1_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_1_5_out \
    op interface \
    ports { pe_array_pe_val_0_1_5_out { O 32 vector } pe_array_pe_val_0_1_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name pe_array_pe_val_0_0_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe_array_pe_val_0_0_5_out \
    op interface \
    ports { pe_array_pe_val_0_0_5_out { O 32 vector } pe_array_pe_val_0_0_5_out_ap_vld { O 1 bit } } \
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


