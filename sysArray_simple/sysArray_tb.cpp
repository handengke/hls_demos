#include "sysArray.h"
#include <ctime>
#include <cstdlib>
#include <iostream>
#include<iomanip>

using namespace std;

#define MAT_SIZE	(SIDE_LEN*SIDE_LEN)

DataType M1[MAT_SIZE], M2[MAT_SIZE], res[MAT_SIZE], cres[MAT_SIZE];

void init()
{
    for(int i=0;i<MAT_SIZE;i++){
        M1[i]=i;
        M2[i]=i+1;
    }
#ifndef __SYNTHESIS__
	srand(time(0));

	for (int i = 0; i < MAT_SIZE; i++)
		M1[i] = (DataType)(rand() % 40);

	for (int i = 0; i < MAT_SIZE; i++)
		M2[i] = (DataType)(rand() % 20);
#endif

#ifndef __SYNTHESIS__
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
    cout<<"The input matrices are:"<<'\n';
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++){
            cout<<M1[i*SIDE_LEN+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<endl;
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++){
            cout<<M2[i*SIDE_LEN+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
#endif
}

void CMM(){
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++){
            cres[i*SIDE_LEN+j]=0;
            for(int k=0;k<SIDE_LEN;k++)
                cres[i*SIDE_LEN+j]+=M1[i*SIDE_LEN+k]*M2[k*SIDE_LEN+j];
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

	systolic_array(M1,M2,res);
	CMM();

    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';
    cout<<"The res from CMM function is:"<<'\n';
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++){
            cout<<cres[i*SIDE_LEN+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<endl;
    cout<<"The res from sysArray is:"<<'\n';
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++){
            cout<<res[i*SIDE_LEN+j]<<'\t';
        }
        cout<<"\n";
    }
    cout<<std::setw(30)<<std::setfill('-')<<'-'<<'\n';

	cout << "\n" << (compare() ? "TEST PASSED!" : "TEST FAILED!") << "\n\n";

	if(compare()) return 0;
    else return 1;
}
