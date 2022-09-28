set SynModuleInfo {
  {SRCNAME Loop_1_proc1_Pipeline_1 MODELNAME Loop_1_proc1_Pipeline_1 RTLNAME systolic_array_Loop_1_proc1_Pipeline_1
    SUBMODULES {
      {MODELNAME systolic_array_flow_control_loop_pipe_sequential_init RTLNAME systolic_array_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME systolic_array_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 MODELNAME Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 RTLNAME systolic_array_Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2}
  {SRCNAME Loop_1_proc1_Pipeline_VITIS_LOOP_112_2 MODELNAME Loop_1_proc1_Pipeline_VITIS_LOOP_112_2 RTLNAME systolic_array_Loop_1_proc1_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME Loop_1_proc1_Pipeline_VITIS_LOOP_117_4 MODELNAME Loop_1_proc1_Pipeline_VITIS_LOOP_117_4 RTLNAME systolic_array_Loop_1_proc1_Pipeline_VITIS_LOOP_117_4}
  {SRCNAME Loop_1_proc1_Pipeline_sysarray_outer_loop1 MODELNAME Loop_1_proc1_Pipeline_sysarray_outer_loop1 RTLNAME systolic_array_Loop_1_proc1_Pipeline_sysarray_outer_loop1
    SUBMODULES {
      {MODELNAME systolic_array_mux_102410_32_1_1 RTLNAME systolic_array_mux_102410_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME systolic_array_mul_32s_32s_32_3_1 RTLNAME systolic_array_mul_32s_32s_32_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_1_proc1_Pipeline_VITIS_LOOP_210_6 MODELNAME Loop_1_proc1_Pipeline_VITIS_LOOP_210_6 RTLNAME systolic_array_Loop_1_proc1_Pipeline_VITIS_LOOP_210_6
    SUBMODULES {
      {MODELNAME systolic_array_mux_42_32_1_1 RTLNAME systolic_array_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_21 MODELNAME Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_21 RTLNAME systolic_array_Loop_1_proc1_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_21}
  {SRCNAME Loop_1_proc1 MODELNAME Loop_1_proc1 RTLNAME systolic_array_Loop_1_proc1
    SUBMODULES {
      {MODELNAME systolic_array_mul_31ns_31ns_61_3_1 RTLNAME systolic_array_mul_31ns_31ns_61_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME systolic_array_mul_30s_30s_30_3_1 RTLNAME systolic_array_mul_30s_30s_30_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME systolic_array MODELNAME systolic_array RTLNAME systolic_array IS_TOP 1
    SUBMODULES {
      {MODELNAME systolic_array_pe_array_pe_a_pass_0 RTLNAME systolic_array_pe_array_pe_a_pass_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME systolic_array_control_s_axi RTLNAME systolic_array_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME systolic_array_gmem_m_axi RTLNAME systolic_array_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
