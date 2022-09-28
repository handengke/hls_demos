// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsimd_array.h"

extern XSimd_array_Config XSimd_array_ConfigTable[];

XSimd_array_Config *XSimd_array_LookupConfig(u16 DeviceId) {
	XSimd_array_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMD_ARRAY_NUM_INSTANCES; Index++) {
		if (XSimd_array_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimd_array_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimd_array_Initialize(XSimd_array *InstancePtr, u16 DeviceId) {
	XSimd_array_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimd_array_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimd_array_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

