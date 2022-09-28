// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsystolic_array.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSystolic_array_CfgInitialize(XSystolic_array *InstancePtr, XSystolic_array_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSystolic_array_Start(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSystolic_array_IsDone(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSystolic_array_IsIdle(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSystolic_array_IsReady(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSystolic_array_EnableAutoRestart(XSystolic_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSystolic_array_DisableAutoRestart(XSystolic_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_AP_CTRL, 0);
}

void XSystolic_array_Set_din_a(XSystolic_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_A_DATA, (u32)(Data));
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_A_DATA + 4, (u32)(Data >> 32));
}

u64 XSystolic_array_Get_din_a(XSystolic_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_A_DATA);
    Data += (u64)XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_A_DATA + 4) << 32;
    return Data;
}

void XSystolic_array_Set_din_b(XSystolic_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_B_DATA, (u32)(Data));
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_B_DATA + 4, (u32)(Data >> 32));
}

u64 XSystolic_array_Get_din_b(XSystolic_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_B_DATA);
    Data += (u64)XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_DIN_B_DATA + 4) << 32;
    return Data;
}

void XSystolic_array_Set_ra(XSystolic_array *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_RA_DATA, Data);
}

u32 XSystolic_array_Get_ra(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_RA_DATA);
    return Data;
}

void XSystolic_array_Set_ca(XSystolic_array *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_CA_DATA, Data);
}

u32 XSystolic_array_Get_ca(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_CA_DATA);
    return Data;
}

void XSystolic_array_Set_cb(XSystolic_array *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_CB_DATA, Data);
}

u32 XSystolic_array_Get_cb(XSystolic_array *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_CB_DATA);
    return Data;
}

void XSystolic_array_Set_out_r(XSystolic_array *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSystolic_array_Get_out_r(XSystolic_array *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XSystolic_array_InterruptGlobalEnable(XSystolic_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_GIE, 1);
}

void XSystolic_array_InterruptGlobalDisable(XSystolic_array *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_GIE, 0);
}

void XSystolic_array_InterruptEnable(XSystolic_array *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_IER);
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_IER, Register | Mask);
}

void XSystolic_array_InterruptDisable(XSystolic_array *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_IER);
    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSystolic_array_InterruptClear(XSystolic_array *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_WriteReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_ISR, Mask);
}

u32 XSystolic_array_InterruptGetEnabled(XSystolic_array *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_IER);
}

u32 XSystolic_array_InterruptGetStatus(XSystolic_array *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSystolic_array_ReadReg(InstancePtr->Control_BaseAddress, XSYSTOLIC_ARRAY_CONTROL_ADDR_ISR);
}

