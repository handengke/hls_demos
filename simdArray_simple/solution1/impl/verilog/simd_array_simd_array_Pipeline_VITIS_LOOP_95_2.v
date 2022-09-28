// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module simd_array_simd_array_Pipeline_VITIS_LOOP_95_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST,
        m_axi_gmem1_WID,
        m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY,
        m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID,
        m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA,
        m_axi_gmem1_RLAST,
        m_axi_gmem1_RID,
        m_axi_gmem1_RUSER,
        m_axi_gmem1_RRESP,
        m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP,
        m_axi_gmem1_BID,
        m_axi_gmem1_BUSER,
        sext_ln95,
        V2_31_067_out,
        V2_31_067_out_ap_vld,
        V2_30_066_out,
        V2_30_066_out_ap_vld,
        V2_29_065_out,
        V2_29_065_out_ap_vld,
        V2_28_064_out,
        V2_28_064_out_ap_vld,
        V2_27_063_out,
        V2_27_063_out_ap_vld,
        V2_26_062_out,
        V2_26_062_out_ap_vld,
        V2_25_061_out,
        V2_25_061_out_ap_vld,
        V2_24_060_out,
        V2_24_060_out_ap_vld,
        V2_23_059_out,
        V2_23_059_out_ap_vld,
        V2_22_058_out,
        V2_22_058_out_ap_vld,
        V2_21_057_out,
        V2_21_057_out_ap_vld,
        V2_20_056_out,
        V2_20_056_out_ap_vld,
        V2_19_055_out,
        V2_19_055_out_ap_vld,
        V2_18_054_out,
        V2_18_054_out_ap_vld,
        V2_17_053_out,
        V2_17_053_out_ap_vld,
        V2_16_052_out,
        V2_16_052_out_ap_vld,
        V2_15_051_out,
        V2_15_051_out_ap_vld,
        V2_14_050_out,
        V2_14_050_out_ap_vld,
        V2_13_049_out,
        V2_13_049_out_ap_vld,
        V2_12_048_out,
        V2_12_048_out_ap_vld,
        V2_11_047_out,
        V2_11_047_out_ap_vld,
        V2_10_046_out,
        V2_10_046_out_ap_vld,
        V2_9_045_out,
        V2_9_045_out_ap_vld,
        V2_8_044_out,
        V2_8_044_out_ap_vld,
        V2_7_043_out,
        V2_7_043_out_ap_vld,
        V2_6_042_out,
        V2_6_042_out_ap_vld,
        V2_5_041_out,
        V2_5_041_out_ap_vld,
        V2_4_040_out,
        V2_4_040_out_ap_vld,
        V2_3_039_out,
        V2_3_039_out_ap_vld,
        V2_2_038_out,
        V2_2_038_out_ap_vld,
        V2_1_037_out,
        V2_1_037_out_ap_vld,
        V2_0_036_out,
        V2_0_036_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem1_AWVALID;
input   m_axi_gmem1_AWREADY;
output  [63:0] m_axi_gmem1_AWADDR;
output  [0:0] m_axi_gmem1_AWID;
output  [31:0] m_axi_gmem1_AWLEN;
output  [2:0] m_axi_gmem1_AWSIZE;
output  [1:0] m_axi_gmem1_AWBURST;
output  [1:0] m_axi_gmem1_AWLOCK;
output  [3:0] m_axi_gmem1_AWCACHE;
output  [2:0] m_axi_gmem1_AWPROT;
output  [3:0] m_axi_gmem1_AWQOS;
output  [3:0] m_axi_gmem1_AWREGION;
output  [0:0] m_axi_gmem1_AWUSER;
output   m_axi_gmem1_WVALID;
input   m_axi_gmem1_WREADY;
output  [31:0] m_axi_gmem1_WDATA;
output  [3:0] m_axi_gmem1_WSTRB;
output   m_axi_gmem1_WLAST;
output  [0:0] m_axi_gmem1_WID;
output  [0:0] m_axi_gmem1_WUSER;
output   m_axi_gmem1_ARVALID;
input   m_axi_gmem1_ARREADY;
output  [63:0] m_axi_gmem1_ARADDR;
output  [0:0] m_axi_gmem1_ARID;
output  [31:0] m_axi_gmem1_ARLEN;
output  [2:0] m_axi_gmem1_ARSIZE;
output  [1:0] m_axi_gmem1_ARBURST;
output  [1:0] m_axi_gmem1_ARLOCK;
output  [3:0] m_axi_gmem1_ARCACHE;
output  [2:0] m_axi_gmem1_ARPROT;
output  [3:0] m_axi_gmem1_ARQOS;
output  [3:0] m_axi_gmem1_ARREGION;
output  [0:0] m_axi_gmem1_ARUSER;
input   m_axi_gmem1_RVALID;
output   m_axi_gmem1_RREADY;
input  [31:0] m_axi_gmem1_RDATA;
input   m_axi_gmem1_RLAST;
input  [0:0] m_axi_gmem1_RID;
input  [0:0] m_axi_gmem1_RUSER;
input  [1:0] m_axi_gmem1_RRESP;
input   m_axi_gmem1_BVALID;
output   m_axi_gmem1_BREADY;
input  [1:0] m_axi_gmem1_BRESP;
input  [0:0] m_axi_gmem1_BID;
input  [0:0] m_axi_gmem1_BUSER;
input  [61:0] sext_ln95;
output  [31:0] V2_31_067_out;
output   V2_31_067_out_ap_vld;
output  [31:0] V2_30_066_out;
output   V2_30_066_out_ap_vld;
output  [31:0] V2_29_065_out;
output   V2_29_065_out_ap_vld;
output  [31:0] V2_28_064_out;
output   V2_28_064_out_ap_vld;
output  [31:0] V2_27_063_out;
output   V2_27_063_out_ap_vld;
output  [31:0] V2_26_062_out;
output   V2_26_062_out_ap_vld;
output  [31:0] V2_25_061_out;
output   V2_25_061_out_ap_vld;
output  [31:0] V2_24_060_out;
output   V2_24_060_out_ap_vld;
output  [31:0] V2_23_059_out;
output   V2_23_059_out_ap_vld;
output  [31:0] V2_22_058_out;
output   V2_22_058_out_ap_vld;
output  [31:0] V2_21_057_out;
output   V2_21_057_out_ap_vld;
output  [31:0] V2_20_056_out;
output   V2_20_056_out_ap_vld;
output  [31:0] V2_19_055_out;
output   V2_19_055_out_ap_vld;
output  [31:0] V2_18_054_out;
output   V2_18_054_out_ap_vld;
output  [31:0] V2_17_053_out;
output   V2_17_053_out_ap_vld;
output  [31:0] V2_16_052_out;
output   V2_16_052_out_ap_vld;
output  [31:0] V2_15_051_out;
output   V2_15_051_out_ap_vld;
output  [31:0] V2_14_050_out;
output   V2_14_050_out_ap_vld;
output  [31:0] V2_13_049_out;
output   V2_13_049_out_ap_vld;
output  [31:0] V2_12_048_out;
output   V2_12_048_out_ap_vld;
output  [31:0] V2_11_047_out;
output   V2_11_047_out_ap_vld;
output  [31:0] V2_10_046_out;
output   V2_10_046_out_ap_vld;
output  [31:0] V2_9_045_out;
output   V2_9_045_out_ap_vld;
output  [31:0] V2_8_044_out;
output   V2_8_044_out_ap_vld;
output  [31:0] V2_7_043_out;
output   V2_7_043_out_ap_vld;
output  [31:0] V2_6_042_out;
output   V2_6_042_out_ap_vld;
output  [31:0] V2_5_041_out;
output   V2_5_041_out_ap_vld;
output  [31:0] V2_4_040_out;
output   V2_4_040_out_ap_vld;
output  [31:0] V2_3_039_out;
output   V2_3_039_out_ap_vld;
output  [31:0] V2_2_038_out;
output   V2_2_038_out_ap_vld;
output  [31:0] V2_1_037_out;
output   V2_1_037_out_ap_vld;
output  [31:0] V2_0_036_out;
output   V2_0_036_out_ap_vld;

reg ap_idle;
reg m_axi_gmem1_RREADY;
reg V2_31_067_out_ap_vld;
reg V2_30_066_out_ap_vld;
reg V2_29_065_out_ap_vld;
reg V2_28_064_out_ap_vld;
reg V2_27_063_out_ap_vld;
reg V2_26_062_out_ap_vld;
reg V2_25_061_out_ap_vld;
reg V2_24_060_out_ap_vld;
reg V2_23_059_out_ap_vld;
reg V2_22_058_out_ap_vld;
reg V2_21_057_out_ap_vld;
reg V2_20_056_out_ap_vld;
reg V2_19_055_out_ap_vld;
reg V2_18_054_out_ap_vld;
reg V2_17_053_out_ap_vld;
reg V2_16_052_out_ap_vld;
reg V2_15_051_out_ap_vld;
reg V2_14_050_out_ap_vld;
reg V2_13_049_out_ap_vld;
reg V2_12_048_out_ap_vld;
reg V2_11_047_out_ap_vld;
reg V2_10_046_out_ap_vld;
reg V2_9_045_out_ap_vld;
reg V2_8_044_out_ap_vld;
reg V2_7_043_out_ap_vld;
reg V2_6_042_out_ap_vld;
reg V2_5_041_out_ap_vld;
reg V2_4_040_out_ap_vld;
reg V2_3_039_out_ap_vld;
reg V2_2_038_out_ap_vld;
reg V2_1_037_out_ap_vld;
reg V2_0_036_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln95_fu_557_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem1_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln96_fu_569_p1;
reg   [4:0] trunc_ln96_reg_1077;
reg   [5:0] i_fu_172;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_1;
wire   [5:0] add_ln95_fu_563_p2;
reg   [31:0] V2_1_fu_176;
wire   [31:0] V2_1_33_fu_578_p1;
reg   [31:0] V2_1_1_fu_180;
reg   [31:0] V2_1_2_fu_184;
reg   [31:0] V2_1_3_fu_188;
reg   [31:0] V2_1_4_fu_192;
reg   [31:0] V2_1_5_fu_196;
reg   [31:0] V2_1_6_fu_200;
reg   [31:0] V2_1_7_fu_204;
reg   [31:0] V2_1_8_fu_208;
reg   [31:0] V2_1_9_fu_212;
reg   [31:0] V2_1_10_fu_216;
reg   [31:0] V2_1_11_fu_220;
reg   [31:0] V2_1_12_fu_224;
reg   [31:0] V2_1_13_fu_228;
reg   [31:0] V2_1_14_fu_232;
reg   [31:0] V2_1_15_fu_236;
reg   [31:0] V2_1_16_fu_240;
reg   [31:0] V2_1_17_fu_244;
reg   [31:0] V2_1_18_fu_248;
reg   [31:0] V2_1_19_fu_252;
reg   [31:0] V2_1_20_fu_256;
reg   [31:0] V2_1_21_fu_260;
reg   [31:0] V2_1_22_fu_264;
reg   [31:0] V2_1_23_fu_268;
reg   [31:0] V2_1_24_fu_272;
reg   [31:0] V2_1_25_fu_276;
reg   [31:0] V2_1_26_fu_280;
reg   [31:0] V2_1_27_fu_284;
reg   [31:0] V2_1_28_fu_288;
reg   [31:0] V2_1_29_fu_292;
reg   [31:0] V2_1_30_fu_296;
reg   [31:0] V2_1_31_fu_300;
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
        if (((icmp_ln95_fu_557_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_172 <= add_ln95_fu_563_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_172 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd10))) begin
        V2_1_10_fu_216 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd11))) begin
        V2_1_11_fu_220 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd12))) begin
        V2_1_12_fu_224 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd13))) begin
        V2_1_13_fu_228 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd14))) begin
        V2_1_14_fu_232 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd15))) begin
        V2_1_15_fu_236 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd16))) begin
        V2_1_16_fu_240 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd17))) begin
        V2_1_17_fu_244 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd18))) begin
        V2_1_18_fu_248 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd19))) begin
        V2_1_19_fu_252 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd1))) begin
        V2_1_1_fu_180 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd20))) begin
        V2_1_20_fu_256 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd21))) begin
        V2_1_21_fu_260 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd22))) begin
        V2_1_22_fu_264 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd23))) begin
        V2_1_23_fu_268 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd24))) begin
        V2_1_24_fu_272 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd25))) begin
        V2_1_25_fu_276 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd26))) begin
        V2_1_26_fu_280 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd27))) begin
        V2_1_27_fu_284 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd28))) begin
        V2_1_28_fu_288 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd29))) begin
        V2_1_29_fu_292 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd2))) begin
        V2_1_2_fu_184 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd30))) begin
        V2_1_30_fu_296 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd31))) begin
        V2_1_31_fu_300 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd3))) begin
        V2_1_3_fu_188 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd4))) begin
        V2_1_4_fu_192 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd5))) begin
        V2_1_5_fu_196 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd6))) begin
        V2_1_6_fu_200 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd7))) begin
        V2_1_7_fu_204 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd8))) begin
        V2_1_8_fu_208 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd9))) begin
        V2_1_9_fu_212 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln96_reg_1077 == 5'd0))) begin
        V2_1_fu_176 <= V2_1_33_fu_578_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln95_fu_557_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln96_reg_1077 <= trunc_ln96_fu_569_p1;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_0_036_out_ap_vld = 1'b1;
    end else begin
        V2_0_036_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_10_046_out_ap_vld = 1'b1;
    end else begin
        V2_10_046_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_11_047_out_ap_vld = 1'b1;
    end else begin
        V2_11_047_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_12_048_out_ap_vld = 1'b1;
    end else begin
        V2_12_048_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_13_049_out_ap_vld = 1'b1;
    end else begin
        V2_13_049_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_14_050_out_ap_vld = 1'b1;
    end else begin
        V2_14_050_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_15_051_out_ap_vld = 1'b1;
    end else begin
        V2_15_051_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_16_052_out_ap_vld = 1'b1;
    end else begin
        V2_16_052_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_17_053_out_ap_vld = 1'b1;
    end else begin
        V2_17_053_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_18_054_out_ap_vld = 1'b1;
    end else begin
        V2_18_054_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_19_055_out_ap_vld = 1'b1;
    end else begin
        V2_19_055_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_1_037_out_ap_vld = 1'b1;
    end else begin
        V2_1_037_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_20_056_out_ap_vld = 1'b1;
    end else begin
        V2_20_056_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_21_057_out_ap_vld = 1'b1;
    end else begin
        V2_21_057_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_22_058_out_ap_vld = 1'b1;
    end else begin
        V2_22_058_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_23_059_out_ap_vld = 1'b1;
    end else begin
        V2_23_059_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_24_060_out_ap_vld = 1'b1;
    end else begin
        V2_24_060_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_25_061_out_ap_vld = 1'b1;
    end else begin
        V2_25_061_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_26_062_out_ap_vld = 1'b1;
    end else begin
        V2_26_062_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_27_063_out_ap_vld = 1'b1;
    end else begin
        V2_27_063_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_28_064_out_ap_vld = 1'b1;
    end else begin
        V2_28_064_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_29_065_out_ap_vld = 1'b1;
    end else begin
        V2_29_065_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_2_038_out_ap_vld = 1'b1;
    end else begin
        V2_2_038_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_30_066_out_ap_vld = 1'b1;
    end else begin
        V2_30_066_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_31_067_out_ap_vld = 1'b1;
    end else begin
        V2_31_067_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_3_039_out_ap_vld = 1'b1;
    end else begin
        V2_3_039_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_4_040_out_ap_vld = 1'b1;
    end else begin
        V2_4_040_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_5_041_out_ap_vld = 1'b1;
    end else begin
        V2_5_041_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_6_042_out_ap_vld = 1'b1;
    end else begin
        V2_6_042_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_7_043_out_ap_vld = 1'b1;
    end else begin
        V2_7_043_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_8_044_out_ap_vld = 1'b1;
    end else begin
        V2_8_044_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        V2_9_045_out_ap_vld = 1'b1;
    end else begin
        V2_9_045_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln95_fu_557_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_172;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem1_blk_n_R = m_axi_gmem1_RVALID;
    end else begin
        gmem1_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem1_RREADY = 1'b1;
    end else begin
        m_axi_gmem1_RREADY = 1'b0;
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

assign V2_0_036_out = V2_1_fu_176;

assign V2_10_046_out = V2_1_10_fu_216;

assign V2_11_047_out = V2_1_11_fu_220;

assign V2_12_048_out = V2_1_12_fu_224;

assign V2_13_049_out = V2_1_13_fu_228;

assign V2_14_050_out = V2_1_14_fu_232;

assign V2_15_051_out = V2_1_15_fu_236;

assign V2_16_052_out = V2_1_16_fu_240;

assign V2_17_053_out = V2_1_17_fu_244;

assign V2_18_054_out = V2_1_18_fu_248;

assign V2_19_055_out = V2_1_19_fu_252;

assign V2_1_037_out = V2_1_1_fu_180;

assign V2_1_33_fu_578_p1 = m_axi_gmem1_RDATA;

assign V2_20_056_out = V2_1_20_fu_256;

assign V2_21_057_out = V2_1_21_fu_260;

assign V2_22_058_out = V2_1_22_fu_264;

assign V2_23_059_out = V2_1_23_fu_268;

assign V2_24_060_out = V2_1_24_fu_272;

assign V2_25_061_out = V2_1_25_fu_276;

assign V2_26_062_out = V2_1_26_fu_280;

assign V2_27_063_out = V2_1_27_fu_284;

assign V2_28_064_out = V2_1_28_fu_288;

assign V2_29_065_out = V2_1_29_fu_292;

assign V2_2_038_out = V2_1_2_fu_184;

assign V2_30_066_out = V2_1_30_fu_296;

assign V2_31_067_out = V2_1_31_fu_300;

assign V2_3_039_out = V2_1_3_fu_188;

assign V2_4_040_out = V2_1_4_fu_192;

assign V2_5_041_out = V2_1_5_fu_196;

assign V2_6_042_out = V2_1_6_fu_200;

assign V2_7_043_out = V2_1_7_fu_204;

assign V2_8_044_out = V2_1_8_fu_208;

assign V2_9_045_out = V2_1_9_fu_212;

assign add_ln95_fu_563_p2 = (ap_sig_allocacmp_i_1 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem1_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_gmem1_RVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln95_fu_557_p2 = ((ap_sig_allocacmp_i_1 == 6'd32) ? 1'b1 : 1'b0);

assign m_axi_gmem1_ARADDR = 64'd0;

assign m_axi_gmem1_ARBURST = 2'd0;

assign m_axi_gmem1_ARCACHE = 4'd0;

assign m_axi_gmem1_ARID = 1'd0;

assign m_axi_gmem1_ARLEN = 32'd0;

assign m_axi_gmem1_ARLOCK = 2'd0;

assign m_axi_gmem1_ARPROT = 3'd0;

assign m_axi_gmem1_ARQOS = 4'd0;

assign m_axi_gmem1_ARREGION = 4'd0;

assign m_axi_gmem1_ARSIZE = 3'd0;

assign m_axi_gmem1_ARUSER = 1'd0;

assign m_axi_gmem1_ARVALID = 1'b0;

assign m_axi_gmem1_AWADDR = 64'd0;

assign m_axi_gmem1_AWBURST = 2'd0;

assign m_axi_gmem1_AWCACHE = 4'd0;

assign m_axi_gmem1_AWID = 1'd0;

assign m_axi_gmem1_AWLEN = 32'd0;

assign m_axi_gmem1_AWLOCK = 2'd0;

assign m_axi_gmem1_AWPROT = 3'd0;

assign m_axi_gmem1_AWQOS = 4'd0;

assign m_axi_gmem1_AWREGION = 4'd0;

assign m_axi_gmem1_AWSIZE = 3'd0;

assign m_axi_gmem1_AWUSER = 1'd0;

assign m_axi_gmem1_AWVALID = 1'b0;

assign m_axi_gmem1_BREADY = 1'b0;

assign m_axi_gmem1_WDATA = 32'd0;

assign m_axi_gmem1_WID = 1'd0;

assign m_axi_gmem1_WLAST = 1'b0;

assign m_axi_gmem1_WSTRB = 4'd0;

assign m_axi_gmem1_WUSER = 1'd0;

assign m_axi_gmem1_WVALID = 1'b0;

assign trunc_ln96_fu_569_p1 = ap_sig_allocacmp_i_1[4:0];

endmodule //simd_array_simd_array_Pipeline_VITIS_LOOP_95_2
