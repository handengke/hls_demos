/*
    Created by Dengke Han, at 2022/09/23.
*/

#include "simdArray.h"
#include <ctime>
#include <cstdlib>
#include <iostream>
#include<iomanip>

using namespace std;

v_dt V1[1],V2[1], res[1], cres[1];

void init()
{
    //in CSIM and C-synthesis, it's better to use the random initial value
    //however in CO-simulation, since testbench has to be transferred to RTL,too
    //you need to use fixed constant initial value and comment out the code snippet 
    //that generates the random initial value, otherwise it will not pass
    for(int i=0;i<VEC_SIZE;i++){
        V1[0].data[i]=float(i);
        V2[0].data[i]=float(i+1);
    }

//#ifndef __SYNTHESIS__
//	srand(time(0));
//
//	for (int i = 0; i < VEC_SIZE; i++)
//		V1[i] = (DataType)(rand() % 40);
//
//	for (int i = 0; i < VEC_SIZE; i++)
//		V2[i] = (DataType)(rand() % 20);
//
//    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
//    cout<<"The input vectors are:"<<'\n';
//    for(int i=0;i<SIDE_LEN;i++){
//        cout<<V1[i]<<'\t';
//    }
//    cout<<"\n";
//    for(int i=0;i<SIDE_LEN;i++){
//        cout<<V2[i]<<'\t';
//    }
//    cout<<"\n";
//    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
//#endif
}

void add(){
    for(int i=0;i<VEC_SIZE;i++)
        cres[0].data[i]=V1[0].data[i]+V2[0].data[i];
}

void mul(){
    for(int i=0;i<VEC_SIZE;i++)
        cres[0].data[i]=V1[0].data[i]*V2[0].data[i];
}

bool compare(){
    for(int i=0;i<VEC_SIZE;i++){
        if(res[0].data[i]!=cres[0].data[i]) return false;
    }
    return true;
}

int main()
{
	init();

    bool pass=true;

    simd_array(V1,V2,res,1,2);
    // add();
    mul();
    pass &= compare();

    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
    cout<<"software result is:"<<'\n';
    for(int i=0;i<VEC_SIZE;i++)
        cout<<cres[0].data[i]<<'\t';
    cout<<'\n';
    cout<<"kernel result is:"<<'\n';
    for(int i=0;i<VEC_SIZE;i++)
        cout<<res[0].data[i]<<'\t';
    cout<<'\n';
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';

	cout << "\n" << (pass ? "TEST PASSED!" : "TEST FAILED!") << "\n\n";

	if(pass) return 0;
    else return 1;
}
