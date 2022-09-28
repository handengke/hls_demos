set SynModuleInfo {
  {SRCNAME systolic_array_Pipeline_1 MODELNAME systolic_array_Pipeline_1 RTLNAME systolic_array_systolic_array_Pipeline_1
    SUBMODULES {
      {MODELNAME systolic_array_mux_42_32_1_1 RTLNAME systolic_array_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME systolic_array_flow_control_loop_pipe_sequential_init RTLNAME systolic_array_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME systolic_array_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 MODELNAME systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 RTLNAME systolic_array_systolic_array_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2}
  {SRCNAME systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2 MODELNAME systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2 RTLNAME systolic_array_systolic_array_Pipeline_VITIS_LOOP_102_1_VITIS_LOOP_103_2}
  {SRCNAME systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4 MODELNAME systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4 RTLNAME systolic_array_systolic_array_Pipeline_VITIS_LOOP_107_3_VITIS_LOOP_108_4}
  {SRCNAME systolic_array_Pipeline_top_outer_loop1 MODELNAME systolic_array_Pipeline_top_outer_loop1 RTLNAME systolic_array_systolic_array_Pipeline_top_outer_loop1
    SUBMODULES {
      {MODELNAME systolic_array_mul_32s_32s_32_3_1 RTLNAME systolic_array_mul_32s_32s_32_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6 MODELNAME systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6 RTLNAME systolic_array_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6
    SUBMODULES {
      {MODELNAME systolic_array_mux_165_32_1_1 RTLNAME systolic_array_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME systolic_array MODELNAME systolic_array RTLNAME systolic_array IS_TOP 1
    SUBMODULES {
      {MODELNAME systolic_array_control_s_axi RTLNAME systolic_array_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME systolic_array_gmem_m_axi RTLNAME systolic_array_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
