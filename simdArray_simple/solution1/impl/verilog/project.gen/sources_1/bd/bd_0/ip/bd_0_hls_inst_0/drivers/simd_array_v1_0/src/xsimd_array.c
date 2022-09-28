// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimd_array.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimd_array_CfgInitialize(XSimd_array *InstancePtr, XSimd_array_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimd_array_Start(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimd_array_IsDone(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimd_array_IsIdle(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimd_array_IsReady(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimd_array_EnableAutoRestart(XSimd_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSimd_array_DisableAutoRestart(XSimd_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_AP_CTRL, 0);
}

void XSimd_array_Set_din_a(XSimd_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_A_DATA, (u32)(Data));
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_A_DATA + 4, (u32)(Data >> 32));
}

u64 XSimd_array_Get_din_a(XSimd_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_A_DATA);
    Data += (u64)XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_A_DATA + 4) << 32;
    return Data;
}

void XSimd_array_Set_din_b(XSimd_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_B_DATA, (u32)(Data));
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_B_DATA + 4, (u32)(Data >> 32));
}

u64 XSimd_array_Get_din_b(XSimd_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_B_DATA);
    Data += (u64)XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_DIN_B_DATA + 4) << 32;
    return Data;
}

void XSimd_array_Set_out_r(XSimd_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSimd_array_Get_out_r(XSimd_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XSimd_array_Set_size(XSimd_array *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XSimd_array_Get_size(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XSimd_array_Set_opcode(XSimd_array *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OPCODE_DATA, Data);
}

u32 XSimd_array_Get_opcode(XSimd_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_OPCODE_DATA);
    return Data;
}

void XSimd_array_InterruptGlobalEnable(XSimd_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_GIE, 1);
}

void XSimd_array_InterruptGlobalDisable(XSimd_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_GIE, 0);
}

void XSimd_array_InterruptEnable(XSimd_array *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_IER);
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_IER, Register | Mask);
}

void XSimd_array_InterruptDisable(XSimd_array *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_IER);
    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSimd_array_InterruptClear(XSimd_array *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimd_array_WriteReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_ISR, Mask);
}

u32 XSimd_array_InterruptGetEnabled(XSimd_array *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_IER);
}

u32 XSimd_array_InterruptGetStatus(XSimd_array *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimd_array_ReadReg(InstancePtr->Control_BaseAddress, XSIMD_ARRAY_CONTROL_ADDR_ISR);
}

