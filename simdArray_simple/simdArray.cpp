/*
    Created by Dengke Han, at 2022/09/23.
*/

#include "simdArray.h"

void simd_array(v_dt* din_a, v_dt* din_b, v_dt* out, const unsigned int size,const unsigned int opcode) {
    #pragma HLS INTERFACE m_axi port = din_a offset = slave bundle = gmem0
    #pragma HLS INTERFACE m_axi port = din_b offset = slave bundle = gmem1
    #pragma HLS INTERFACE m_axi port = out offset = slave bundle = gmem0

    #pragma HLS INTERFACE s_axilite port = din_a
    #pragma HLS INTERFACE s_axilite port = din_b
    #pragma HLS INTERFACE s_axilite port = out
    #pragma HLS INTERFACE s_axilite port = size
    #pragma HLS INTERFACE s_axilite port = opcode
    #pragma HLS INTERFACE s_axilite port = return
    
    //to partition the vector of vector to different cores
    unsigned int vSize = ((size - 1) / VEC_SIZE) + 1;

    loop1:
        for (int i = 0; i < vSize; i++) {
        loop2:
            for (int k = 0; k < VEC_SIZE; k++) {
                switch(opcode){
                    case 0: break;
                    case 1: out[i].data[k] = din_a[i].data[k] + din_b[i].data[k];break;
                    case 2: out[i].data[k] = din_a[i].data[k] * din_b[i].data[k];break;
                    case 3: out[i].data[k] = din_a[i].data[k] / din_b[i].data[k];break;
                    default: out[i].data[k] = din_a[i].data[k] + din_b[i].data[k];break;
                }
                
            }
        }
}
