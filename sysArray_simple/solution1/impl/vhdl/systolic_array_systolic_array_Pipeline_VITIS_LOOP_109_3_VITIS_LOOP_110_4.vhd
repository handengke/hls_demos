-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity systolic_array_systolic_array_Pipeline_VITIS_LOOP_109_3_VITIS_LOOP_110_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln109 : IN STD_LOGIC_VECTOR (61 downto 0);
    M2_15_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_15_1_out_ap_vld : OUT STD_LOGIC;
    M2_14_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_14_1_out_ap_vld : OUT STD_LOGIC;
    M2_13_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_13_1_out_ap_vld : OUT STD_LOGIC;
    M2_12_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_12_1_out_ap_vld : OUT STD_LOGIC;
    M2_11_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_11_1_out_ap_vld : OUT STD_LOGIC;
    M2_10_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_10_1_out_ap_vld : OUT STD_LOGIC;
    M2_9_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_9_1_out_ap_vld : OUT STD_LOGIC;
    M2_8_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_8_1_out_ap_vld : OUT STD_LOGIC;
    M2_7_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_7_1_out_ap_vld : OUT STD_LOGIC;
    M2_6_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_6_1_out_ap_vld : OUT STD_LOGIC;
    M2_5_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_5_1_out_ap_vld : OUT STD_LOGIC;
    M2_4_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_4_1_out_ap_vld : OUT STD_LOGIC;
    M2_3_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_3_1_out_ap_vld : OUT STD_LOGIC;
    M2_2_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_2_1_out_ap_vld : OUT STD_LOGIC;
    M2_1_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_1_1_out_ap_vld : OUT STD_LOGIC;
    M2_0_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    M2_0_1_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of systolic_array_systolic_array_Pipeline_VITIS_LOOP_109_3_VITIS_LOOP_110_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv4_C : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln109_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln1_fu_401_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln1_reg_699 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_fu_120 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln110_fu_409_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_fu_124 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_i_1_load : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln109_1_fu_385_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten15_fu_128 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_indvar_flatten15_load : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln109_fu_353_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal M2_1_fu_132 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_1_fu_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_2_fu_140 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_3_fu_144 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_4_fu_148 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_5_fu_152 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_6_fu_156 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_7_fu_160 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_8_fu_164 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_9_fu_168 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_10_fu_172 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_11_fu_176 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_12_fu_180 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_13_fu_184 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_14_fu_188 : STD_LOGIC_VECTOR (31 downto 0);
    signal M2_1_15_fu_192 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln110_fu_365_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln109_1_fu_379_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln109_fu_371_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln109_fu_393_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln111_fu_397_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component systolic_array_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component systolic_array_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_1_fu_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln109_fu_347_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_1_fu_124 <= select_ln109_1_fu_385_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_1_fu_124 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten15_fu_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln109_fu_347_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten15_fu_128 <= add_ln109_fu_353_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten15_fu_128 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln109_fu_347_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_120 <= add_ln110_fu_409_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_120 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_A = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_10_fu_172 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_B = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_11_fu_176 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_C = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_12_fu_180 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_D = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_13_fu_184 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_E = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_14_fu_188 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_F = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_15_fu_192 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv4_1 = add_ln1_reg_699))) then
                M2_1_1_fu_136 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv4_2 = add_ln1_reg_699))) then
                M2_1_2_fu_140 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_lv4_3 = add_ln1_reg_699) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_3_fu_144 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_lv4_4 = add_ln1_reg_699) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_4_fu_148 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_lv4_5 = add_ln1_reg_699) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_5_fu_152 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_lv4_6 = add_ln1_reg_699) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_6_fu_156 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_7 = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_7_fu_160 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_8 = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_8_fu_164 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_lv4_9 = add_ln1_reg_699) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M2_1_9_fu_168 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv4_0 = add_ln1_reg_699))) then
                M2_1_fu_132 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln109_fu_347_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln1_reg_699 <= add_ln1_fu_401_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    M2_0_1_out <= M2_1_fu_132;

    M2_0_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_0_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_0_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_10_1_out <= M2_1_10_fu_172;

    M2_10_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_10_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_10_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_11_1_out <= M2_1_11_fu_176;

    M2_11_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_11_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_11_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_12_1_out <= M2_1_12_fu_180;

    M2_12_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_12_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_12_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_13_1_out <= M2_1_13_fu_184;

    M2_13_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_13_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_13_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_14_1_out <= M2_1_14_fu_188;

    M2_14_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_14_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_14_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_15_1_out <= M2_1_15_fu_192;

    M2_15_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_15_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_15_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_1_1_out <= M2_1_1_fu_136;

    M2_1_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_1_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_1_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_2_1_out <= M2_1_2_fu_140;

    M2_2_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_2_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_2_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_3_1_out <= M2_1_3_fu_144;

    M2_3_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_3_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_3_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_4_1_out <= M2_1_4_fu_148;

    M2_4_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_4_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_4_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_5_1_out <= M2_1_5_fu_152;

    M2_5_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_5_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_5_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_6_1_out <= M2_1_6_fu_156;

    M2_6_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_6_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_6_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_7_1_out <= M2_1_7_fu_160;

    M2_7_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_7_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_7_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_8_1_out <= M2_1_8_fu_164;

    M2_8_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_8_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_8_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    M2_9_1_out <= M2_1_9_fu_168;

    M2_9_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln109_fu_347_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            M2_9_1_out_ap_vld <= ap_const_logic_1;
        else 
            M2_9_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    add_ln109_1_fu_379_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1_load) + unsigned(ap_const_lv3_1));
    add_ln109_fu_353_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten15_load) + unsigned(ap_const_lv5_1));
    add_ln110_fu_409_p2 <= std_logic_vector(unsigned(select_ln109_fu_371_p3) + unsigned(ap_const_lv3_1));
    add_ln1_fu_401_p3 <= (trunc_ln109_fu_393_p1 & trunc_ln111_fu_397_p1);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID)
    begin
                ap_block_pp0_stage0_01001 <= ((m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_gmem_RVALID)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (m_axi_gmem_RVALID = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln109_fu_347_p2)
    begin
        if (((icmp_ln109_fu_347_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_1_fu_124)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_i_1_load <= i_1_fu_124;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten15_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten15_fu_128)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten15_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_indvar_flatten15_load <= indvar_flatten15_fu_128;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_120, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_120;
        end if; 
    end process;


    gmem_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem_RVALID, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gmem_blk_n_R <= m_axi_gmem_RVALID;
        else 
            gmem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln109_fu_347_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten15_load = ap_const_lv5_10) else "0";
    icmp_ln110_fu_365_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv3_4) else "0";
    m_axi_gmem_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_ARID <= ap_const_lv1_0;
    m_axi_gmem_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_ARVALID <= ap_const_logic_0;
    m_axi_gmem_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_AWID <= ap_const_lv1_0;
    m_axi_gmem_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_AWVALID <= ap_const_logic_0;
    m_axi_gmem_BREADY <= ap_const_logic_0;

    m_axi_gmem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_gmem_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_WDATA <= ap_const_lv32_0;
    m_axi_gmem_WID <= ap_const_lv1_0;
    m_axi_gmem_WLAST <= ap_const_logic_0;
    m_axi_gmem_WSTRB <= ap_const_lv4_0;
    m_axi_gmem_WUSER <= ap_const_lv1_0;
    m_axi_gmem_WVALID <= ap_const_logic_0;
    select_ln109_1_fu_385_p3 <= 
        add_ln109_1_fu_379_p2 when (icmp_ln110_fu_365_p2(0) = '1') else 
        ap_sig_allocacmp_i_1_load;
    select_ln109_fu_371_p3 <= 
        ap_const_lv3_0 when (icmp_ln110_fu_365_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    trunc_ln109_fu_393_p1 <= select_ln109_1_fu_385_p3(2 - 1 downto 0);
    trunc_ln111_fu_397_p1 <= select_ln109_fu_371_p3(2 - 1 downto 0);
end behav;
