#ifndef SYSTOLIC_ARRAY_H
#define SYSTOLIC_ARRAY_H

#include<iomanip>
#include<iostream>
typedef unsigned int DataType;

#define SIDE_LEN  4

#define MAX_BUFFER_SIZE 1024

void systolic_array(DataType din_a[], DataType din_b[], unsigned int ra, unsigned int ca, unsigned int cb, DataType out[]);

#endif
