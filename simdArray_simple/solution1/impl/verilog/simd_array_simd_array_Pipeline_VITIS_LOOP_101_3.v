// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module simd_array_simd_array_Pipeline_VITIS_LOOP_101_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem0_AWVALID,
        m_axi_gmem0_AWREADY,
        m_axi_gmem0_AWADDR,
        m_axi_gmem0_AWID,
        m_axi_gmem0_AWLEN,
        m_axi_gmem0_AWSIZE,
        m_axi_gmem0_AWBURST,
        m_axi_gmem0_AWLOCK,
        m_axi_gmem0_AWCACHE,
        m_axi_gmem0_AWPROT,
        m_axi_gmem0_AWQOS,
        m_axi_gmem0_AWREGION,
        m_axi_gmem0_AWUSER,
        m_axi_gmem0_WVALID,
        m_axi_gmem0_WREADY,
        m_axi_gmem0_WDATA,
        m_axi_gmem0_WSTRB,
        m_axi_gmem0_WLAST,
        m_axi_gmem0_WID,
        m_axi_gmem0_WUSER,
        m_axi_gmem0_ARVALID,
        m_axi_gmem0_ARREADY,
        m_axi_gmem0_ARADDR,
        m_axi_gmem0_ARID,
        m_axi_gmem0_ARLEN,
        m_axi_gmem0_ARSIZE,
        m_axi_gmem0_ARBURST,
        m_axi_gmem0_ARLOCK,
        m_axi_gmem0_ARCACHE,
        m_axi_gmem0_ARPROT,
        m_axi_gmem0_ARQOS,
        m_axi_gmem0_ARREGION,
        m_axi_gmem0_ARUSER,
        m_axi_gmem0_RVALID,
        m_axi_gmem0_RREADY,
        m_axi_gmem0_RDATA,
        m_axi_gmem0_RLAST,
        m_axi_gmem0_RID,
        m_axi_gmem0_RUSER,
        m_axi_gmem0_RRESP,
        m_axi_gmem0_BVALID,
        m_axi_gmem0_BREADY,
        m_axi_gmem0_BRESP,
        m_axi_gmem0_BID,
        m_axi_gmem0_BUSER,
        sext_ln101,
        pe_array_pe_res_0_2_reload,
        pe_array_pe_res_1_2_reload,
        pe_array_pe_res_2_2_reload,
        pe_array_pe_res_3_2_reload,
        pe_array_pe_res_4_2_reload,
        pe_array_pe_res_5_2_reload,
        pe_array_pe_res_6_2_reload,
        pe_array_pe_res_7_2_reload,
        pe_array_pe_res_8_2_reload,
        pe_array_pe_res_9_2_reload,
        pe_array_pe_res_10_2_reload,
        pe_array_pe_res_11_2_reload,
        pe_array_pe_res_12_2_reload,
        pe_array_pe_res_13_2_reload,
        pe_array_pe_res_14_2_reload,
        pe_array_pe_res_15_2_reload,
        pe_array_pe_res_16_2_reload,
        pe_array_pe_res_17_2_reload,
        pe_array_pe_res_18_2_reload,
        pe_array_pe_res_19_2_reload,
        pe_array_pe_res_20_2_reload,
        pe_array_pe_res_21_2_reload,
        pe_array_pe_res_22_2_reload,
        pe_array_pe_res_23_2_reload,
        pe_array_pe_res_24_2_reload,
        pe_array_pe_res_25_2_reload,
        pe_array_pe_res_26_2_reload,
        pe_array_pe_res_27_2_reload,
        pe_array_pe_res_28_2_reload,
        pe_array_pe_res_29_2_reload,
        pe_array_pe_res_30_2_reload,
        pe_array_pe_res_31_2_reload
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem0_AWVALID;
input   m_axi_gmem0_AWREADY;
output  [63:0] m_axi_gmem0_AWADDR;
output  [0:0] m_axi_gmem0_AWID;
output  [31:0] m_axi_gmem0_AWLEN;
output  [2:0] m_axi_gmem0_AWSIZE;
output  [1:0] m_axi_gmem0_AWBURST;
output  [1:0] m_axi_gmem0_AWLOCK;
output  [3:0] m_axi_gmem0_AWCACHE;
output  [2:0] m_axi_gmem0_AWPROT;
output  [3:0] m_axi_gmem0_AWQOS;
output  [3:0] m_axi_gmem0_AWREGION;
output  [0:0] m_axi_gmem0_AWUSER;
output   m_axi_gmem0_WVALID;
input   m_axi_gmem0_WREADY;
output  [31:0] m_axi_gmem0_WDATA;
output  [3:0] m_axi_gmem0_WSTRB;
output   m_axi_gmem0_WLAST;
output  [0:0] m_axi_gmem0_WID;
output  [0:0] m_axi_gmem0_WUSER;
output   m_axi_gmem0_ARVALID;
input   m_axi_gmem0_ARREADY;
output  [63:0] m_axi_gmem0_ARADDR;
output  [0:0] m_axi_gmem0_ARID;
output  [31:0] m_axi_gmem0_ARLEN;
output  [2:0] m_axi_gmem0_ARSIZE;
output  [1:0] m_axi_gmem0_ARBURST;
output  [1:0] m_axi_gmem0_ARLOCK;
output  [3:0] m_axi_gmem0_ARCACHE;
output  [2:0] m_axi_gmem0_ARPROT;
output  [3:0] m_axi_gmem0_ARQOS;
output  [3:0] m_axi_gmem0_ARREGION;
output  [0:0] m_axi_gmem0_ARUSER;
input   m_axi_gmem0_RVALID;
output   m_axi_gmem0_RREADY;
input  [31:0] m_axi_gmem0_RDATA;
input   m_axi_gmem0_RLAST;
input  [0:0] m_axi_gmem0_RID;
input  [0:0] m_axi_gmem0_RUSER;
input  [1:0] m_axi_gmem0_RRESP;
input   m_axi_gmem0_BVALID;
output   m_axi_gmem0_BREADY;
input  [1:0] m_axi_gmem0_BRESP;
input  [0:0] m_axi_gmem0_BID;
input  [0:0] m_axi_gmem0_BUSER;
input  [61:0] sext_ln101;
input  [31:0] pe_array_pe_res_0_2_reload;
input  [31:0] pe_array_pe_res_1_2_reload;
input  [31:0] pe_array_pe_res_2_2_reload;
input  [31:0] pe_array_pe_res_3_2_reload;
input  [31:0] pe_array_pe_res_4_2_reload;
input  [31:0] pe_array_pe_res_5_2_reload;
input  [31:0] pe_array_pe_res_6_2_reload;
input  [31:0] pe_array_pe_res_7_2_reload;
input  [31:0] pe_array_pe_res_8_2_reload;
input  [31:0] pe_array_pe_res_9_2_reload;
input  [31:0] pe_array_pe_res_10_2_reload;
input  [31:0] pe_array_pe_res_11_2_reload;
input  [31:0] pe_array_pe_res_12_2_reload;
input  [31:0] pe_array_pe_res_13_2_reload;
input  [31:0] pe_array_pe_res_14_2_reload;
input  [31:0] pe_array_pe_res_15_2_reload;
input  [31:0] pe_array_pe_res_16_2_reload;
input  [31:0] pe_array_pe_res_17_2_reload;
input  [31:0] pe_array_pe_res_18_2_reload;
input  [31:0] pe_array_pe_res_19_2_reload;
input  [31:0] pe_array_pe_res_20_2_reload;
input  [31:0] pe_array_pe_res_21_2_reload;
input  [31:0] pe_array_pe_res_22_2_reload;
input  [31:0] pe_array_pe_res_23_2_reload;
input  [31:0] pe_array_pe_res_24_2_reload;
input  [31:0] pe_array_pe_res_25_2_reload;
input  [31:0] pe_array_pe_res_26_2_reload;
input  [31:0] pe_array_pe_res_27_2_reload;
input  [31:0] pe_array_pe_res_28_2_reload;
input  [31:0] pe_array_pe_res_29_2_reload;
input  [31:0] pe_array_pe_res_30_2_reload;
input  [31:0] pe_array_pe_res_31_2_reload;

reg ap_idle;
reg m_axi_gmem0_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln101_fu_342_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem0_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_fu_358_p34;
reg   [31:0] tmp_reg_452;
wire    ap_block_pp0_stage0_01001;
reg   [5:0] i_fu_114;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_3;
wire   [5:0] add_ln101_fu_348_p2;
wire   [4:0] tmp_fu_358_p33;
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

simd_array_mux_325_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
mux_325_32_1_1_U239(
    .din0(pe_array_pe_res_0_2_reload),
    .din1(pe_array_pe_res_1_2_reload),
    .din2(pe_array_pe_res_2_2_reload),
    .din3(pe_array_pe_res_3_2_reload),
    .din4(pe_array_pe_res_4_2_reload),
    .din5(pe_array_pe_res_5_2_reload),
    .din6(pe_array_pe_res_6_2_reload),
    .din7(pe_array_pe_res_7_2_reload),
    .din8(pe_array_pe_res_8_2_reload),
    .din9(pe_array_pe_res_9_2_reload),
    .din10(pe_array_pe_res_10_2_reload),
    .din11(pe_array_pe_res_11_2_reload),
    .din12(pe_array_pe_res_12_2_reload),
    .din13(pe_array_pe_res_13_2_reload),
    .din14(pe_array_pe_res_14_2_reload),
    .din15(pe_array_pe_res_15_2_reload),
    .din16(pe_array_pe_res_16_2_reload),
    .din17(pe_array_pe_res_17_2_reload),
    .din18(pe_array_pe_res_18_2_reload),
    .din19(pe_array_pe_res_19_2_reload),
    .din20(pe_array_pe_res_20_2_reload),
    .din21(pe_array_pe_res_21_2_reload),
    .din22(pe_array_pe_res_22_2_reload),
    .din23(pe_array_pe_res_23_2_reload),
    .din24(pe_array_pe_res_24_2_reload),
    .din25(pe_array_pe_res_25_2_reload),
    .din26(pe_array_pe_res_26_2_reload),
    .din27(pe_array_pe_res_27_2_reload),
    .din28(pe_array_pe_res_28_2_reload),
    .din29(pe_array_pe_res_29_2_reload),
    .din30(pe_array_pe_res_30_2_reload),
    .din31(pe_array_pe_res_31_2_reload),
    .din32(tmp_fu_358_p33),
    .dout(tmp_fu_358_p34)
);

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
        if (((icmp_ln101_fu_342_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_114 <= add_ln101_fu_348_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_114 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln101_fu_342_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_452 <= tmp_fu_358_p34;
    end
end

always @ (*) begin
    if (((icmp_ln101_fu_342_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_3 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_114;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem0_blk_n_W = m_axi_gmem0_WREADY;
    end else begin
        gmem0_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem0_WVALID = 1'b1;
    end else begin
        m_axi_gmem0_WVALID = 1'b0;
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

assign add_ln101_fu_348_p2 = (ap_sig_allocacmp_i_3 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln101_fu_342_p2 = ((ap_sig_allocacmp_i_3 == 6'd32) ? 1'b1 : 1'b0);

assign m_axi_gmem0_ARADDR = 64'd0;

assign m_axi_gmem0_ARBURST = 2'd0;

assign m_axi_gmem0_ARCACHE = 4'd0;

assign m_axi_gmem0_ARID = 1'd0;

assign m_axi_gmem0_ARLEN = 32'd0;

assign m_axi_gmem0_ARLOCK = 2'd0;

assign m_axi_gmem0_ARPROT = 3'd0;

assign m_axi_gmem0_ARQOS = 4'd0;

assign m_axi_gmem0_ARREGION = 4'd0;

assign m_axi_gmem0_ARSIZE = 3'd0;

assign m_axi_gmem0_ARUSER = 1'd0;

assign m_axi_gmem0_ARVALID = 1'b0;

assign m_axi_gmem0_AWADDR = 64'd0;

assign m_axi_gmem0_AWBURST = 2'd0;

assign m_axi_gmem0_AWCACHE = 4'd0;

assign m_axi_gmem0_AWID = 1'd0;

assign m_axi_gmem0_AWLEN = 32'd0;

assign m_axi_gmem0_AWLOCK = 2'd0;

assign m_axi_gmem0_AWPROT = 3'd0;

assign m_axi_gmem0_AWQOS = 4'd0;

assign m_axi_gmem0_AWREGION = 4'd0;

assign m_axi_gmem0_AWSIZE = 3'd0;

assign m_axi_gmem0_AWUSER = 1'd0;

assign m_axi_gmem0_AWVALID = 1'b0;

assign m_axi_gmem0_BREADY = 1'b0;

assign m_axi_gmem0_RREADY = 1'b0;

assign m_axi_gmem0_WDATA = tmp_reg_452;

assign m_axi_gmem0_WID = 1'd0;

assign m_axi_gmem0_WLAST = 1'b0;

assign m_axi_gmem0_WSTRB = 4'd15;

assign m_axi_gmem0_WUSER = 1'd0;

assign tmp_fu_358_p33 = ap_sig_allocacmp_i_3[4:0];

endmodule //simd_array_simd_array_Pipeline_VITIS_LOOP_101_3
