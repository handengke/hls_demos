#include "sysArray.h"
#include <ctime>
#include <cstdlib>
#include <iostream>
#include<iomanip>

using namespace std;

#define VEC_SIZE  (2*SIDE_LEN)
#define MAT_SIZE  (VEC_SIZE*VEC_SIZE)

DataType M1[MAT_SIZE], M2[MAT_SIZE], res[MAT_SIZE], cres[MAT_SIZE];

void init()
{
    //in CSIM and C-synthesis, it's better to use the random initial value
    //however in CO-simulation, since testbench has to be transferred to RTL,too
    //you need to use fixed constant initial value and comment out the code snippet 
    //that generates the random initial value, otherwise it will not pass
    for(int i=0;i<MAT_SIZE;i++){
        M1[i]=i;
        M2[i]=i+1;
    }
// #ifndef __SYNTHESIS__
// 	srand(time(0));

// 	for (int i = 0; i < MAT_SIZE; i++)
// 		M1[i] = (DataType)(rand() % 40);

// 	for (int i = 0; i < MAT_SIZE; i++)
// 		M2[i] = (DataType)(rand() % 20);
// #endif

#ifndef __SYNTHESIS__
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
    cout<<"The input matrices are:"<<'\n';
    for(int i=0;i<VEC_SIZE;i++){
        for(int j=0;j<VEC_SIZE;j++){
            cout<<M1[i*VEC_SIZE+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<endl;
    for(int i=0;i<VEC_SIZE;i++){
        for(int j=0;j<VEC_SIZE;j++){
            cout<<M2[i*VEC_SIZE+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
#endif
}

void CMM(){
    for(int i=0;i<VEC_SIZE;i++){
        for(int j=0;j<VEC_SIZE;j++){
            cres[i*VEC_SIZE+j]=0;
            for(int k=0;k<VEC_SIZE;k++)
                cres[i*VEC_SIZE+j]+=M1[i*VEC_SIZE+k]*M2[k*VEC_SIZE+j];
        }
    }
}

bool compare(){
    for(int i=0;i<MAT_SIZE;i++){
        if(res[i]!=cres[i]) return false;
    }
    return true;
}

int main()
{
	init();

	systolic_array(M1,M2,VEC_SIZE,VEC_SIZE,VEC_SIZE,res);
	CMM();

    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
    cout<<"The res from CMM function is:"<<'\n';
    for(int i=0;i<VEC_SIZE;i++){
        for(int j=0;j<VEC_SIZE;j++){
            cout<<cres[i*VEC_SIZE+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<endl;
    cout<<"The res from sysArray is:"<<'\n';
    for(int i=0;i<VEC_SIZE;i++){
        for(int j=0;j<VEC_SIZE;j++){
            cout<<res[i*VEC_SIZE+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';

	cout << "\n" << (compare() ? "TEST PASSED!" : "TEST FAILED!") << "\n\n";

	if(compare()) return 0;
    else return 1;
}
