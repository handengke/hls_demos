-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simd_array_simd_array_Pipeline_VITIS_LOOP_101_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem0_AWVALID : OUT STD_LOGIC;
    m_axi_gmem0_AWREADY : IN STD_LOGIC;
    m_axi_gmem0_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem0_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WVALID : OUT STD_LOGIC;
    m_axi_gmem0_WREADY : IN STD_LOGIC;
    m_axi_gmem0_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_WLAST : OUT STD_LOGIC;
    m_axi_gmem0_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARVALID : OUT STD_LOGIC;
    m_axi_gmem0_ARREADY : IN STD_LOGIC;
    m_axi_gmem0_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem0_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RVALID : IN STD_LOGIC;
    m_axi_gmem0_RREADY : OUT STD_LOGIC;
    m_axi_gmem0_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_RLAST : IN STD_LOGIC;
    m_axi_gmem0_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BVALID : IN STD_LOGIC;
    m_axi_gmem0_BREADY : OUT STD_LOGIC;
    m_axi_gmem0_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln101 : IN STD_LOGIC_VECTOR (61 downto 0);
    pe_array_pe_res_0_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_1_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_2_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_3_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_4_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_5_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_6_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_7_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_8_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_9_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_10_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_11_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_12_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_13_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_14_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_15_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_16_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_17_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_18_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_19_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_20_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_21_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_22_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_23_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_24_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_25_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_26_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_27_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_28_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_29_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_30_2_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    pe_array_pe_res_31_2_reload : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of simd_array_simd_array_Pipeline_VITIS_LOOP_101_3 is 
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
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

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
    signal icmp_ln101_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem0_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_fu_358_p34 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_reg_452 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_fu_114 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_3 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln101_fu_348_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_fu_358_p33 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component simd_array_mux_325_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        din12_WIDTH : INTEGER;
        din13_WIDTH : INTEGER;
        din14_WIDTH : INTEGER;
        din15_WIDTH : INTEGER;
        din16_WIDTH : INTEGER;
        din17_WIDTH : INTEGER;
        din18_WIDTH : INTEGER;
        din19_WIDTH : INTEGER;
        din20_WIDTH : INTEGER;
        din21_WIDTH : INTEGER;
        din22_WIDTH : INTEGER;
        din23_WIDTH : INTEGER;
        din24_WIDTH : INTEGER;
        din25_WIDTH : INTEGER;
        din26_WIDTH : INTEGER;
        din27_WIDTH : INTEGER;
        din28_WIDTH : INTEGER;
        din29_WIDTH : INTEGER;
        din30_WIDTH : INTEGER;
        din31_WIDTH : INTEGER;
        din32_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (31 downto 0);
        din9 : IN STD_LOGIC_VECTOR (31 downto 0);
        din10 : IN STD_LOGIC_VECTOR (31 downto 0);
        din11 : IN STD_LOGIC_VECTOR (31 downto 0);
        din12 : IN STD_LOGIC_VECTOR (31 downto 0);
        din13 : IN STD_LOGIC_VECTOR (31 downto 0);
        din14 : IN STD_LOGIC_VECTOR (31 downto 0);
        din15 : IN STD_LOGIC_VECTOR (31 downto 0);
        din16 : IN STD_LOGIC_VECTOR (31 downto 0);
        din17 : IN STD_LOGIC_VECTOR (31 downto 0);
        din18 : IN STD_LOGIC_VECTOR (31 downto 0);
        din19 : IN STD_LOGIC_VECTOR (31 downto 0);
        din20 : IN STD_LOGIC_VECTOR (31 downto 0);
        din21 : IN STD_LOGIC_VECTOR (31 downto 0);
        din22 : IN STD_LOGIC_VECTOR (31 downto 0);
        din23 : IN STD_LOGIC_VECTOR (31 downto 0);
        din24 : IN STD_LOGIC_VECTOR (31 downto 0);
        din25 : IN STD_LOGIC_VECTOR (31 downto 0);
        din26 : IN STD_LOGIC_VECTOR (31 downto 0);
        din27 : IN STD_LOGIC_VECTOR (31 downto 0);
        din28 : IN STD_LOGIC_VECTOR (31 downto 0);
        din29 : IN STD_LOGIC_VECTOR (31 downto 0);
        din30 : IN STD_LOGIC_VECTOR (31 downto 0);
        din31 : IN STD_LOGIC_VECTOR (31 downto 0);
        din32 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component simd_array_flow_control_loop_pipe_sequential_init IS
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
    mux_325_32_1_1_U239 : component simd_array_mux_325_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 32,
        din9_WIDTH => 32,
        din10_WIDTH => 32,
        din11_WIDTH => 32,
        din12_WIDTH => 32,
        din13_WIDTH => 32,
        din14_WIDTH => 32,
        din15_WIDTH => 32,
        din16_WIDTH => 32,
        din17_WIDTH => 32,
        din18_WIDTH => 32,
        din19_WIDTH => 32,
        din20_WIDTH => 32,
        din21_WIDTH => 32,
        din22_WIDTH => 32,
        din23_WIDTH => 32,
        din24_WIDTH => 32,
        din25_WIDTH => 32,
        din26_WIDTH => 32,
        din27_WIDTH => 32,
        din28_WIDTH => 32,
        din29_WIDTH => 32,
        din30_WIDTH => 32,
        din31_WIDTH => 32,
        din32_WIDTH => 5,
        dout_WIDTH => 32)
    port map (
        din0 => pe_array_pe_res_0_2_reload,
        din1 => pe_array_pe_res_1_2_reload,
        din2 => pe_array_pe_res_2_2_reload,
        din3 => pe_array_pe_res_3_2_reload,
        din4 => pe_array_pe_res_4_2_reload,
        din5 => pe_array_pe_res_5_2_reload,
        din6 => pe_array_pe_res_6_2_reload,
        din7 => pe_array_pe_res_7_2_reload,
        din8 => pe_array_pe_res_8_2_reload,
        din9 => pe_array_pe_res_9_2_reload,
        din10 => pe_array_pe_res_10_2_reload,
        din11 => pe_array_pe_res_11_2_reload,
        din12 => pe_array_pe_res_12_2_reload,
        din13 => pe_array_pe_res_13_2_reload,
        din14 => pe_array_pe_res_14_2_reload,
        din15 => pe_array_pe_res_15_2_reload,
        din16 => pe_array_pe_res_16_2_reload,
        din17 => pe_array_pe_res_17_2_reload,
        din18 => pe_array_pe_res_18_2_reload,
        din19 => pe_array_pe_res_19_2_reload,
        din20 => pe_array_pe_res_20_2_reload,
        din21 => pe_array_pe_res_21_2_reload,
        din22 => pe_array_pe_res_22_2_reload,
        din23 => pe_array_pe_res_23_2_reload,
        din24 => pe_array_pe_res_24_2_reload,
        din25 => pe_array_pe_res_25_2_reload,
        din26 => pe_array_pe_res_26_2_reload,
        din27 => pe_array_pe_res_27_2_reload,
        din28 => pe_array_pe_res_28_2_reload,
        din29 => pe_array_pe_res_29_2_reload,
        din30 => pe_array_pe_res_30_2_reload,
        din31 => pe_array_pe_res_31_2_reload,
        din32 => tmp_fu_358_p33,
        dout => tmp_fu_358_p34);

    flow_control_loop_pipe_sequential_init_U : component simd_array_flow_control_loop_pipe_sequential_init
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


    i_fu_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln101_fu_342_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_114 <= add_ln101_fu_348_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_114 <= ap_const_lv6_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln101_fu_342_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_452 <= tmp_fu_358_p34;
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
    add_ln101_fu_348_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_3) + unsigned(ap_const_lv6_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem0_WREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_gmem0_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem0_WREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_gmem0_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln101_fu_342_p2)
    begin
        if (((icmp_ln101_fu_342_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_i_3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_114, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_3 <= ap_const_lv6_0;
        else 
            ap_sig_allocacmp_i_3 <= i_fu_114;
        end if; 
    end process;


    gmem0_blk_n_W_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem0_WREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gmem0_blk_n_W <= m_axi_gmem0_WREADY;
        else 
            gmem0_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln101_fu_342_p2 <= "1" when (ap_sig_allocacmp_i_3 = ap_const_lv6_20) else "0";
    m_axi_gmem0_ARADDR <= ap_const_lv64_0;
    m_axi_gmem0_ARBURST <= ap_const_lv2_0;
    m_axi_gmem0_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem0_ARID <= ap_const_lv1_0;
    m_axi_gmem0_ARLEN <= ap_const_lv32_0;
    m_axi_gmem0_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem0_ARPROT <= ap_const_lv3_0;
    m_axi_gmem0_ARQOS <= ap_const_lv4_0;
    m_axi_gmem0_ARREGION <= ap_const_lv4_0;
    m_axi_gmem0_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem0_ARUSER <= ap_const_lv1_0;
    m_axi_gmem0_ARVALID <= ap_const_logic_0;
    m_axi_gmem0_AWADDR <= ap_const_lv64_0;
    m_axi_gmem0_AWBURST <= ap_const_lv2_0;
    m_axi_gmem0_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem0_AWID <= ap_const_lv1_0;
    m_axi_gmem0_AWLEN <= ap_const_lv32_0;
    m_axi_gmem0_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem0_AWPROT <= ap_const_lv3_0;
    m_axi_gmem0_AWQOS <= ap_const_lv4_0;
    m_axi_gmem0_AWREGION <= ap_const_lv4_0;
    m_axi_gmem0_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem0_AWUSER <= ap_const_lv1_0;
    m_axi_gmem0_AWVALID <= ap_const_logic_0;
    m_axi_gmem0_BREADY <= ap_const_logic_0;
    m_axi_gmem0_RREADY <= ap_const_logic_0;
    m_axi_gmem0_WDATA <= tmp_reg_452;
    m_axi_gmem0_WID <= ap_const_lv1_0;
    m_axi_gmem0_WLAST <= ap_const_logic_0;
    m_axi_gmem0_WSTRB <= ap_const_lv4_F;
    m_axi_gmem0_WUSER <= ap_const_lv1_0;

    m_axi_gmem0_WVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_gmem0_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem0_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_358_p33 <= ap_sig_allocacmp_i_3(5 - 1 downto 0);
end behav;
