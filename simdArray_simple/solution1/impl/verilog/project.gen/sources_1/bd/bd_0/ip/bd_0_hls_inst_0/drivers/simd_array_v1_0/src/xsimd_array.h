// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSIMD_ARRAY_H
#define XSIMD_ARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsimd_array_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XSimd_array_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSimd_array;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSimd_array_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSimd_array_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSimd_array_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSimd_array_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSimd_array_Initialize(XSimd_array *InstancePtr, u16 DeviceId);
XSimd_array_Config* XSimd_array_LookupConfig(u16 DeviceId);
int XSimd_array_CfgInitialize(XSimd_array *InstancePtr, XSimd_array_Config *ConfigPtr);
#else
int XSimd_array_Initialize(XSimd_array *InstancePtr, const char* InstanceName);
int XSimd_array_Release(XSimd_array *InstancePtr);
#endif

void XSimd_array_Start(XSimd_array *InstancePtr);
u32 XSimd_array_IsDone(XSimd_array *InstancePtr);
u32 XSimd_array_IsIdle(XSimd_array *InstancePtr);
u32 XSimd_array_IsReady(XSimd_array *InstancePtr);
void XSimd_array_EnableAutoRestart(XSimd_array *InstancePtr);
void XSimd_array_DisableAutoRestart(XSimd_array *InstancePtr);

void XSimd_array_Set_din_a(XSimd_array *InstancePtr, u64 Data);
u64 XSimd_array_Get_din_a(XSimd_array *InstancePtr);
void XSimd_array_Set_din_b(XSimd_array *InstancePtr, u64 Data);
u64 XSimd_array_Get_din_b(XSimd_array *InstancePtr);
void XSimd_array_Set_out_r(XSimd_array *InstancePtr, u64 Data);
u64 XSimd_array_Get_out_r(XSimd_array *InstancePtr);
void XSimd_array_Set_size(XSimd_array *InstancePtr, u32 Data);
u32 XSimd_array_Get_size(XSimd_array *InstancePtr);
void XSimd_array_Set_opcode(XSimd_array *InstancePtr, u32 Data);
u32 XSimd_array_Get_opcode(XSimd_array *InstancePtr);

void XSimd_array_InterruptGlobalEnable(XSimd_array *InstancePtr);
void XSimd_array_InterruptGlobalDisable(XSimd_array *InstancePtr);
void XSimd_array_InterruptEnable(XSimd_array *InstancePtr, u32 Mask);
void XSimd_array_InterruptDisable(XSimd_array *InstancePtr, u32 Mask);
void XSimd_array_InterruptClear(XSimd_array *InstancePtr, u32 Mask);
u32 XSimd_array_InterruptGetEnabled(XSimd_array *InstancePtr);
u32 XSimd_array_InterruptGetStatus(XSimd_array *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
