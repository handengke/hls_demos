/*
    Created by Dengke Han, at 2022/09/23.
*/

#ifndef _SIMD_ARRAY_H_
#define _SIMD_ARRAY_H_

#include<iomanip>
#include<iostream>

#define VEC_SIZE 32
typedef struct v_datatype { float data[VEC_SIZE]; } v_dt;

void simd_array(v_dt* din_a, v_dt* din_b, v_dt* out, const unsigned int size,const unsigned int opcode);

#endif
