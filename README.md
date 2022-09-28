## NOTE
- simd_array and systolic_array are Vitis projects, in which you write host.cpp to prepare input data for the kernel, write Makefile to generate xclbin file via linking the xo files of your kernel.
- simdArray_simple / sysArray_simple / sysArray_complex are Vitis HLS projects, in which you write the kernel cpp source and testbench, and validate your kernel through vitis_hls COSIM / C-SYNTH / CO-SIM, etc.
- After you've got xo from HLS projects, cp it to the Vitis projects you create for this kernel, then modify the Makefile and host.cpp according to your requirement. Compile and Run.