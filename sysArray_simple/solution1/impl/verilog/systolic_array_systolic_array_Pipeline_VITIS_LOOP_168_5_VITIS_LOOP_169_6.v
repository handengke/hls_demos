// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module systolic_array_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6 (
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
        sext_ln168,
        pe_array_pe_val_0_0_5_reload,
        pe_array_pe_val_0_1_5_reload,
        pe_array_pe_val_0_2_5_reload,
        pe_array_pe_val_0_3_5_reload,
        pe_array_pe_val_1_0_5_reload,
        pe_array_pe_val_1_1_5_reload,
        pe_array_pe_val_1_2_5_reload,
        pe_array_pe_val_1_3_5_reload,
        pe_array_pe_val_2_0_5_reload,
        pe_array_pe_val_2_1_5_reload,
        pe_array_pe_val_2_2_5_reload,
        pe_array_pe_val_2_3_5_reload,
        pe_array_pe_val_3_0_5_reload,
        pe_array_pe_val_3_1_5_reload,
        pe_array_pe_val_3_2_5_reload,
        pe_array_pe_val_3_3_5_reload
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
input  [61:0] sext_ln168;
input  [31:0] pe_array_pe_val_0_0_5_reload;
input  [31:0] pe_array_pe_val_0_1_5_reload;
input  [31:0] pe_array_pe_val_0_2_5_reload;
input  [31:0] pe_array_pe_val_0_3_5_reload;
input  [31:0] pe_array_pe_val_1_0_5_reload;
input  [31:0] pe_array_pe_val_1_1_5_reload;
input  [31:0] pe_array_pe_val_1_2_5_reload;
input  [31:0] pe_array_pe_val_1_3_5_reload;
input  [31:0] pe_array_pe_val_2_0_5_reload;
input  [31:0] pe_array_pe_val_2_1_5_reload;
input  [31:0] pe_array_pe_val_2_2_5_reload;
input  [31:0] pe_array_pe_val_2_3_5_reload;
input  [31:0] pe_array_pe_val_3_0_5_reload;
input  [31:0] pe_array_pe_val_3_1_5_reload;
input  [31:0] pe_array_pe_val_3_2_5_reload;
input  [31:0] pe_array_pe_val_3_3_5_reload;

reg ap_idle;
reg m_axi_gmem_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln168_fu_244_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_fu_310_p18;
reg   [31:0] tmp_reg_398;
wire    ap_block_pp0_stage0_01001;
reg   [2:0] j_fu_94;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_load;
wire   [2:0] add_ln169_fu_348_p2;
reg   [2:0] i_fu_98;
reg   [2:0] ap_sig_allocacmp_i_load;
wire   [2:0] select_ln168_1_fu_282_p3;
reg   [4:0] indvar_flatten23_fu_102;
reg   [4:0] ap_sig_allocacmp_indvar_flatten23_load;
wire   [4:0] add_ln168_fu_250_p2;
wire   [0:0] icmp_ln169_fu_262_p2;
wire   [2:0] add_ln168_1_fu_276_p2;
wire   [2:0] select_ln168_fu_268_p3;
wire   [1:0] trunc_ln168_fu_290_p1;
wire   [1:0] trunc_ln170_fu_294_p1;
wire   [3:0] tmp_1_fu_298_p3;
wire   [4:0] tmp_fu_310_p17;
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

systolic_array_mux_165_32_1_1 #(
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
    .din16_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
mux_165_32_1_1_U287(
    .din0(pe_array_pe_val_0_0_5_reload),
    .din1(pe_array_pe_val_0_1_5_reload),
    .din2(pe_array_pe_val_0_2_5_reload),
    .din3(pe_array_pe_val_0_3_5_reload),
    .din4(pe_array_pe_val_1_0_5_reload),
    .din5(pe_array_pe_val_1_1_5_reload),
    .din6(pe_array_pe_val_1_2_5_reload),
    .din7(pe_array_pe_val_1_3_5_reload),
    .din8(pe_array_pe_val_2_0_5_reload),
    .din9(pe_array_pe_val_2_1_5_reload),
    .din10(pe_array_pe_val_2_2_5_reload),
    .din11(pe_array_pe_val_2_3_5_reload),
    .din12(pe_array_pe_val_3_0_5_reload),
    .din13(pe_array_pe_val_3_1_5_reload),
    .din14(pe_array_pe_val_3_2_5_reload),
    .din15(pe_array_pe_val_3_3_5_reload),
    .din16(tmp_fu_310_p17),
    .dout(tmp_fu_310_p18)
);

systolic_array_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if (((icmp_ln168_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_98 <= select_ln168_1_fu_282_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_98 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln168_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten23_fu_102 <= add_ln168_fu_250_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_102 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln168_fu_244_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_94 <= add_ln169_fu_348_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_94 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_244_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_398 <= tmp_fu_310_p18;
    end
end

always @ (*) begin
    if (((icmp_ln168_fu_244_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_98;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 3'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem_blk_n_W = m_axi_gmem_WREADY;
    end else begin
        gmem_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem_WVALID = 1'b1;
    end else begin
        m_axi_gmem_WVALID = 1'b0;
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

assign add_ln168_1_fu_276_p2 = (ap_sig_allocacmp_i_load + 3'd1);

assign add_ln168_fu_250_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 5'd1);

assign add_ln169_fu_348_p2 = (select_ln168_fu_268_p3 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_gmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_gmem_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln168_fu_244_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln169_fu_262_p2 = ((ap_sig_allocacmp_j_load == 3'd4) ? 1'b1 : 1'b0);

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

assign m_axi_gmem_RREADY = 1'b0;

assign m_axi_gmem_WDATA = tmp_reg_398;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 4'd15;

assign m_axi_gmem_WUSER = 1'd0;

assign select_ln168_1_fu_282_p3 = ((icmp_ln169_fu_262_p2[0:0] == 1'b1) ? add_ln168_1_fu_276_p2 : ap_sig_allocacmp_i_load);

assign select_ln168_fu_268_p3 = ((icmp_ln169_fu_262_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_j_load);

assign tmp_1_fu_298_p3 = {{trunc_ln168_fu_290_p1}, {trunc_ln170_fu_294_p1}};

assign tmp_fu_310_p17 = tmp_1_fu_298_p3;

assign trunc_ln168_fu_290_p1 = select_ln168_1_fu_282_p3[1:0];

assign trunc_ln170_fu_294_p1 = select_ln168_fu_268_p3[1:0];

endmodule //systolic_array_systolic_array_Pipeline_VITIS_LOOP_168_5_VITIS_LOOP_169_6
