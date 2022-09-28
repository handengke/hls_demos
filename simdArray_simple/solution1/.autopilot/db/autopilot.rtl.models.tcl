set SynModuleInfo {
  {SRCNAME simd_array MODELNAME simd_array RTLNAME simd_array IS_TOP 1
    SUBMODULES {
      {MODELNAME simd_array_fadd_32ns_32ns_32_10_full_dsp_1 RTLNAME simd_array_fadd_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME simd_array_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME simd_array_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME simd_array_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME simd_array_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME simd_array_control_s_axi RTLNAME simd_array_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME simd_array_gmem0_m_axi RTLNAME simd_array_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME simd_array_gmem1_m_axi RTLNAME simd_array_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
