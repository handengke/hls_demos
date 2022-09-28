// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsystolic_array.h"

extern XSystolic_array_Config XSystolic_array_ConfigTable[];

XSystolic_array_Config *XSystolic_array_LookupConfig(u16 DeviceId) {
	XSystolic_array_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSYSTOLIC_ARRAY_NUM_INSTANCES; Index++) {
		if (XSystolic_array_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSystolic_array_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSystolic_array_Initialize(XSystolic_array *InstancePtr, u16 DeviceId) {
	XSystolic_array_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSystolic_array_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSystolic_array_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

