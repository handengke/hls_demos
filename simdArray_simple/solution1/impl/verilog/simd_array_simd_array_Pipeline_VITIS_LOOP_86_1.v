// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module simd_array_simd_array_Pipeline_VITIS_LOOP_86_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        sext_ln86,
        V1_31_035_out,
        V1_31_035_out_ap_vld,
        V1_30_034_out,
        V1_30_034_out_ap_vld,
        V1_29_033_out,
        V1_29_033_out_ap_vld,
        V1_28_032_out,
        V1_28_032_out_ap_vld,
        V1_27_031_out,
        V1_27_031_out_ap_vld,
        V1_26_030_out,
        V1_26_030_out_ap_vld,
        V1_25_029_out,
        V1_25_029_out_ap_vld,
        V1_24_028_out,
        V1_24_028_out_ap_vld,
        V1_23_027_out,
        V1_23_027_out_ap_vld,
        V1_22_026_out,
        V1_22_026_out_ap_vld,
        V1_21_025_out,
        V1_21_025_out_ap_vld,
        V1_20_024_out,
        V1_20_024_out_ap_vld,
        V1_19_023_out,
        V1_19_023_out_ap_vld,
        V1_18_022_out,
        V1_18_022_out_ap_vld,
        V1_17_021_out,
        V1_17_021_out_ap_vld,
        V1_16_020_out,
        V1_16_020_out_ap_vld,
        V1_15_019_out,
        V1_15_019_out_ap_vld,
        V1_14_018_out,
        V1_14_018_out_ap_vld,
        V1_13_017_out,
        V1_13_017_out_ap_vld,
        V1_12_016_out,
        V1_12_016_out_ap_vld,
        V1_11_015_out,
        V1_11_015_out_ap_vld,
        V1_10_014_out,
        V1_10_014_out_ap_vld,
        V1_9_013_out,
        V1_9_013_out_ap_vld,
        V1_8_012_out,
        V1_8_012_out_ap_vld,
        V1_7_011_out,
        V1_7_011_out_ap_vld,
        V1_6_010_out,
        V1_6_010_out_ap_vld,
        V1_5_09_out,
        V1_5_09_out_ap_vld,
        V1_4_08_out,
        V1_4_08_out_ap_vld,
        V1_3_07_out,
        V1_3_07_out_ap_vld,
        V1_2_06_out,
        V1_2_06_out_ap_vld,
        V1_1_05_out,
        V1_1_05_out_ap_vld,
        V1_0_04_out,
        V1_0_04_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [31:0] m_axi_gmem_WDATA;
output  [3:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [31:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [61:0] sext_ln86;
output  [31:0] V1_31_035_out;
output   V1_31_035_out_ap_vld;
output  [31:0] V1_30_034_out;
output   V1_30_034_out_ap_vld;
output  [31:0] V1_29_033_out;
output   V1_29_033_out_ap_vld;
output  [31:0] V1_28_032_out;
output   V1_28_032_out_ap_vld;
output  [31:0] V1_27_031_out;
output   V1_27_031_out_ap_vld;
output  [31:0] V1_26_030_out;
output   V1_26_030_out_ap_vld;
output  [31:0] V1_25_029_out;
output   V1_25_029_out_ap_vld;
output  [31:0] V1_24_028_out;
output   V1_24_028_out_ap_vld;
output  [31:0] V1_23_027_out;
output   V1_23_027_out_ap_vld;
output  [31:0] V1_22_026_out;
output   V1_22_026_out_ap_vld;
output  [31:0] V1_21_025_out;
output   V1_21_025_out_ap_vld;
output  [31:0] V1_20_024_out;
output   V1_20_024_out_ap_vld;
output  [31:0] V1_19_023_out;
output   V1_19_023_out_ap_vld;
output  [31:0] V1_18_022_out;
output   V1_18_022_out_ap_vld;
output  [31:0] V1_17_021_out;
output   V1_17_021_out_ap_vld;
output  [31:0] V1_16_020_out;
output   V1_16_020_out_ap_vld;
output  [31:0] V1_15_019_out;
output   V1_15_019_out_ap_vld;
output  [31:0] V1_14_018_out;
output   V1_14_018_out_ap_vld;
output  [31:0] V1_13_017_out;
output   V1_13_017_out_ap_vld;
output  [31:0] V1_12_016_out;
output   V1_12_016_out_ap_vld;
output  [31:0] V1_11_015_out;
output   V1_11_015_out_ap_vld;
output  [31:0] V1_10_014_out;
output   V1_10_014_out_ap_vld;
output  [31:0] V1_9_013_out;
output   V1_9_013_out_ap_vld;
output  [31:0] V1_8_012_out;
output   V1_8_012_out_ap_vld;
output  [31:0] V1_7_011_out;
output   V1_7_011_out_ap_vld;
output  [31:0] V1_6_010_out;
output   V1_6_010_out_ap_vld;
output  [31:0] V1_5_09_out;
output   V1_5_09_out_ap_vld;
output  [31:0] V1_4_08_out;
output   V1_4_08_out_ap_vld;
output  [31:0] V1_3_07_out;
output   V1_3_07_out_ap_vld;
output  [31:0] V1_2_06_out;
output   V1_2_06_out_ap_vld;
output  [31:0] V1_1_05_out;
output   V1_1_05_out_ap_vld;
output  [31:0] V1_0_04_out;
output   V1_0_04_out_ap_vld;

reg ap_idle;
reg m_axi_gmem_RREADY;
reg V1_31_035_out_ap_vld;
reg V1_30_034_out_ap_vld;
reg V1_29_033_out_ap_vld;
reg V1_28_032_out_ap_vld;
reg V1_27_031_out_ap_vld;
reg V1_26_030_out_ap_vld;
reg V1_25_029_out_ap_vld;
reg V1_24_028_out_ap_vld;
reg V1_23_027_out_ap_vld;
reg V1_22_026_out_ap_vld;
reg V1_21_025_out_ap_vld;
reg V1_20_024_out_ap_vld;
reg V1_19_023_out_ap_vld;
reg V1_18_022_out_ap_vld;
reg V1_17_021_out_ap_vld;
reg V1_16_020_out_ap_vld;
reg V1_15_019_out_ap_vld;
reg V1_14_018_out_ap_vld;
reg V1_13_017_out_ap_vld;
reg V1_12_016_out_ap_vld;
reg V1_11_015_out_ap_vld;
reg V1_10_014_out_ap_vld;
reg V1_9_013_out_ap_vld;
reg V1_8_012_out_ap_vld;
reg V1_7_011_out_ap_vld;
reg V1_6_010_out_ap_vld;
reg V1_5_09_out_ap_vld;
reg V1_4_08_out_ap_vld;
reg V1_3_07_out_ap_vld;
reg V1_2_06_out_ap_vld;
reg V1_1_05_out_ap_vld;
reg V1_0_04_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln86_fu_559_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln87_fu_571_p1;
reg   [4:0] trunc_ln87_reg_1079;
reg   [5:0] i_fu_174;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_2;
wire   [5:0] add_ln86_fu_565_p2;
reg   [31:0] V1_1_fu_178;
wire   [31:0] V1_1_33_fu_580_p1;
reg   [31:0] V1_1_1_fu_182;
reg   [31:0] V1_1_2_fu_186;
reg   [31:0] V1_1_3_fu_190;
reg   [31:0] V1_1_4_fu_194;
reg   [31:0] V1_1_5_fu_198;
reg   [31:0] V1_1_6_fu_202;
reg   [31:0] V1_1_7_fu_206;
reg   [31:0] V1_1_8_fu_210;
reg   [31:0] V1_1_9_fu_214;
reg   [31:0] V1_1_10_fu_218;
reg   [31:0] V1_1_11_fu_222;
reg   [31:0] V1_1_12_fu_226;
reg   [31:0] V1_1_13_fu_230;
reg   [31:0] V1_1_14_fu_234;
reg   [31:0] V1_1_15_fu_238;
reg   [31:0] V1_1_16_fu_242;
reg   [31:0] V1_1_17_fu_246;
reg   [31:0] V1_1_18_fu_250;
reg   [31:0] V1_1_19_fu_254;
reg   [31:0] V1_1_20_fu_258;
reg   [31:0] V1_1_21_fu_262;
reg   [31:0] V1_1_22_fu_266;
reg   [31:0] V1_1_23_fu_270;
reg   [31:0] V1_1_24_fu_274;
reg   [31:0] V1_1_25_fu_278;
reg   [31:0] V1_1_26_fu_282;
reg   [31:0] V1_1_27_fu_286;
reg   [31:0] V1_1_28_fu_290;
reg   [31:0] V1_1_29_fu_294;
reg   [31:0] V1_1_30_fu_298;
reg   [31:0] V1_1_31_fu_302;
reg    ap_block_pp0_stage0_01001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

simd_array_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln86_fu_559_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_174 <= add_ln86_fu_565_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_174 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd10))) begin
        V1_1_10_fu_218 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd11))) begin
        V1_1_11_fu_222 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd12))) begin
        V1_1_12_fu_226 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd13))) begin
        V1_1_13_fu_230 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd14))) begin
        V1_1_14_fu_234 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd15))) begin
        V1_1_15_fu_238 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd16))) begin
        V1_1_16_fu_242 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd17))) begin
        V1_1_17_fu_246 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd18))) begin
        V1_1_18_fu_250 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd19))) begin
        V1_1_19_fu_254 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd1))) begin
        V1_1_1_fu_182 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd20))) begin
        V1_1_20_fu_258 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd21))) begin
        V1_1_21_fu_262 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd22))) begin
        V1_1_22_fu_266 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd23))) begin
        V1_1_23_fu_270 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd24))) begin
        V1_1_24_fu_274 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd25))) begin
        V1_1_25_fu_278 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd26))) begin
        V1_1_26_fu_282 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd27))) begin
        V1_1_27_fu_286 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd28))) begin
        V1_1_28_fu_290 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd29))) begin
        V1_1_29_fu_294 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd2))) begin
        V1_1_2_fu_186 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd30))) begin
        V1_1_30_fu_298 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd31))) begin
        V1_1_31_fu_302 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd3))) begin
        V1_1_3_fu_190 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd4))) begin
        V1_1_4_fu_194 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd5))) begin
        V1_1_5_fu_198 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd6))) begin
        V1_1_6_fu_202 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd7))) begin
        V1_1_7_fu_206 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd8))) begin
        V1_1_8_fu_210 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd9))) begin
        V1_1_9_fu_214 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln87_reg_1079 == 5'd0))) begin
        V1_1_fu_178 <= V1_1_33_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln86_fu_559_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln87_reg_1079 <= trunc_ln87_fu_571_p1;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_0_04_out_ap_vld = 1'b1;
    end else begin
        V1_0_04_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_10_014_out_ap_vld = 1'b1;
    end else begin
        V1_10_014_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_11_015_out_ap_vld = 1'b1;
    end else begin
        V1_11_015_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_12_016_out_ap_vld = 1'b1;
    end else begin
        V1_12_016_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_13_017_out_ap_vld = 1'b1;
    end else begin
        V1_13_017_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_14_018_out_ap_vld = 1'b1;
    end else begin
        V1_14_018_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_15_019_out_ap_vld = 1'b1;
    end else begin
        V1_15_019_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_16_020_out_ap_vld = 1'b1;
    end else begin
        V1_16_020_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_17_021_out_ap_vld = 1'b1;
    end else begin
        V1_17_021_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_18_022_out_ap_vld = 1'b1;
    end else begin
        V1_18_022_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_19_023_out_ap_vld = 1'b1;
    end else begin
        V1_19_023_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_1_05_out_ap_vld = 1'b1;
    end else begin
        V1_1_05_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_20_024_out_ap_vld = 1'b1;
    end else begin
        V1_20_024_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_21_025_out_ap_vld = 1'b1;
    end else begin
        V1_21_025_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_22_026_out_ap_vld = 1'b1;
    end else begin
        V1_22_026_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_23_027_out_ap_vld = 1'b1;
    end else begin
        V1_23_027_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_24_028_out_ap_vld = 1'b1;
    end else begin
        V1_24_028_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_25_029_out_ap_vld = 1'b1;
    end else begin
        V1_25_029_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_26_030_out_ap_vld = 1'b1;
    end else begin
        V1_26_030_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_27_031_out_ap_vld = 1'b1;
    end else begin
        V1_27_031_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_28_032_out_ap_vld = 1'b1;
    end else begin
        V1_28_032_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_29_033_out_ap_vld = 1'b1;
    end else begin
        V1_29_033_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_2_06_out_ap_vld = 1'b1;
    end else begin
        V1_2_06_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_30_034_out_ap_vld = 1'b1;
    end else begin
        V1_30_034_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_31_035_out_ap_vld = 1'b1;
    end else begin
        V1_31_035_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_3_07_out_ap_vld = 1'b1;
    end else begin
        V1_3_07_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_4_08_out_ap_vld = 1'b1;
    end else begin
        V1_4_08_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_5_09_out_ap_vld = 1'b1;
    end else begin
        V1_5_09_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_6_010_out_ap_vld = 1'b1;
    end else begin
        V1_6_010_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_7_011_out_ap_vld = 1'b1;
    end else begin
        V1_7_011_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_8_012_out_ap_vld = 1'b1;
    end else begin
        V1_8_012_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V1_9_013_out_ap_vld = 1'b1;
    end else begin
        V1_9_013_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_559_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_174;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem_blk_n_R = m_axi_gmem_RVALID;
    end else begin
        gmem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem_RREADY = 1'b1;
    end else begin
        m_axi_gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign V1_0_04_out = V1_1_fu_178;

assign V1_10_014_out = V1_1_10_fu_218;

assign V1_11_015_out = V1_1_11_fu_222;

assign V1_12_016_out = V1_1_12_fu_226;

assign V1_13_017_out = V1_1_13_fu_230;

assign V1_14_018_out = V1_1_14_fu_234;

assign V1_15_019_out = V1_1_15_fu_238;

assign V1_16_020_out = V1_1_16_fu_242;

assign V1_17_021_out = V1_1_17_fu_246;

assign V1_18_022_out = V1_1_18_fu_250;

assign V1_19_023_out = V1_1_19_fu_254;

assign V1_1_05_out = V1_1_1_fu_182;

assign V1_1_33_fu_580_p1 = m_axi_gmem_RDATA;

assign V1_20_024_out = V1_1_20_fu_258;

assign V1_21_025_out = V1_1_21_fu_262;

assign V1_22_026_out = V1_1_22_fu_266;

assign V1_23_027_out = V1_1_23_fu_270;

assign V1_24_028_out = V1_1_24_fu_274;

assign V1_25_029_out = V1_1_25_fu_278;

assign V1_26_030_out = V1_1_26_fu_282;

assign V1_27_031_out = V1_1_27_fu_286;

assign V1_28_032_out = V1_1_28_fu_290;

assign V1_29_033_out = V1_1_29_fu_294;

assign V1_2_06_out = V1_1_2_fu_186;

assign V1_30_034_out = V1_1_30_fu_298;

assign V1_31_035_out = V1_1_31_fu_302;

assign V1_3_07_out = V1_1_3_fu_190;

assign V1_4_08_out = V1_1_4_fu_194;

assign V1_5_09_out = V1_1_5_fu_198;

assign V1_6_010_out = V1_1_6_fu_202;

assign V1_7_011_out = V1_1_7_fu_206;

assign V1_8_012_out = V1_1_8_fu_210;

assign V1_9_013_out = V1_1_9_fu_214;

assign add_ln86_fu_565_p2 = (ap_sig_allocacmp_i_2 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_gmem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_gmem_RVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln86_fu_559_p2 = ((ap_sig_allocacmp_i_2 == 6'd32) ? 1'b1 : 1'b0);

assign m_axi_gmem_ARADDR = 64'd0;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd0;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_ARVALID = 1'b0;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_WDATA = 32'd0;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 4'd0;

assign m_axi_gmem_WUSER = 1'd0;

assign m_axi_gmem_WVALID = 1'b0;

assign trunc_ln87_fu_571_p1 = ap_sig_allocacmp_i_2[4:0];

endmodule //simd_array_simd_array_Pipeline_VITIS_LOOP_86_1
