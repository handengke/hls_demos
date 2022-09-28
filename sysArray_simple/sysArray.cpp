#include "sysArray.h"

template<typename T> struct Process_Element{
	T a_pass, b_pass, a_tmp,b_tmp,val;

	Process_Element(){
		reset();
	}

    //to reset all member to zero
	void reset(){
		a_pass=0,a_tmp=0;
		b_pass=0,b_tmp=0;
		val=0;
	}

    //to record the input from both horizontal direction and vertical direction
    //meanwhile perform an MAC operation
	void process(T a_i, T b_i){
		a_tmp= a_i;	
		b_tmp= b_i;	
		val += a_i*b_i;
	}

    //to pass the input in last cycle to neighbor
    void pass(){
        a_pass=a_tmp;
        b_pass=b_tmp;
    }
};

template<typename T, int LEN> struct PE_Array{
	Process_Element<T> pe[LEN][LEN];

    PE_Array(){
        reset();
    }

	void reset()
	{
		for (int r = 0; r < LEN; r++)
			for (int c = 0; c < LEN; c++)
				pe[r][c].reset();
	}

	//to pulse in every cycle
    //@param a_vec is the input from horizontal direction
    //@param b_vec is the input from vertical directi
	void pulse(T a_vec[LEN], T b_vec[LEN])
	{
        pe_array_outer_loop:
        for(int i=0;i<LEN;i++){
            pe_array_inner_loop:
            for(int j=0;j<LEN;j++){
                int opa=0,opb=0;
                //the pe in the first row and first column
                if(i==0 && j==0){
                    opa=a_vec[0];
                    opb=b_vec[0];
                }//pes in the first row but not the first column
                else if(i==0){
                    opa=pe[i][j-1].a_pass;
                    opb=b_vec[j];
                }//pes in the first column but not the first row
                else if(j==0){
                    opa=a_vec[i];
                    opb=pe[i-1][j].b_pass;
                }//other pes left
                else{
                    opa=pe[i][j-1].a_pass;
                    opb=pe[i-1][j].b_pass;
                }
                //calculate first, then pass the input to record register
                pe[i][j].process(opa,opb);
            }
        }

        //pass the input in last cycle to their neighbors in both two direction
        for(int i=0;i<LEN;i++)
            for(int j=0;j<LEN;j++)
                pe[i][j].pass();
	}
};

// top level design to synthesis
void systolic_array(DataType din_a[], DataType din_b[], DataType out[]){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=32 port=din_a offset=slave
#pragma HLS INTERFACE m_axi depth=32 port=din_b offset=slave
#pragma HLS INTERFACE m_axi depth=32 port=out   offset=slave

    PE_Array<DataType, SIDE_LEN> pe_array;
#pragma HLS ARRAY_PARTITION variable=pe_array.pe complete

    //to temporarily store the input two operating matrices,i.e. the input buffer of systolic array
    DataType M1[SIDE_LEN*SIDE_LEN],M2[SIDE_LEN*SIDE_LEN];
#pragma HLS array_partition variable=M1 dim=1
#pragma HLS array_partition variable=M2 dim=1

    //read the matrices to local memory
#pragma HLS loop_merge
    for(int i=0;i<SIDE_LEN;i++)
    	for(int j=0;j<SIDE_LEN;j++){
    		int idx=i*SIDE_LEN+j;
    		M1[idx]=din_a[idx];
    	}
    for(int i=0;i<SIDE_LEN;i++)
    	for(int j=0;j<SIDE_LEN;j++){
    		int idx=i*SIDE_LEN+j;
    		M2[idx]=din_b[idx];
    	}

	// a_vec is the input vec from horizontal direction
    //b_vec is the input vec from vertical direction
	DataType a_vec[SIDE_LEN], b_vec[SIDE_LEN];
// #pragma HLS ARRAY_PARTITION variable=a_vec complete
// #pragma HLS ARRAY_PARTITION variable=b_vec complete

	// total number of cycles to perform the operation
	int total_pulse = (2*SIDE_LEN-1)+(SIDE_LEN-1);

	top_outer_loop1:
	for (int i = 0; i < total_pulse; i++){
		#pragma HLS pipeline
		top_inner_loop1:
		for (int j = 0; j < SIDE_LEN; j++)
		{
            //to get the index of the next element which will be sent to corresponding pe
            int a_index=j*SIDE_LEN+(i-j);
            int b_index=(i-j)*SIDE_LEN+j;

            //get the actual element sent to pe
            if(a_index<SIDE_LEN*SIDE_LEN && b_index<SIDE_LEN*SIDE_LEN){
                a_vec[j] = (i-j>=0) ? M1[a_index] : 0;
                b_vec[j] = (i-j>=0) ? M2[b_index] : 0;
            }
            else{ //when the index exceeds the legal scope
                a_vec[j]=0;
                b_vec[j]=0;
            }
		}
		//to pulse all pes
		pe_array.pulse(a_vec, b_vec);

        //for debugging
        #ifndef __SYNTHESIS__
        std::cout<<std::setw(30)<<std::setfill('*')<<'*'<<'\n';
        std::cout<<"cycle "<<i<<":"<<'\n';
        std::cout<<"a_vec is:";
        for(int i=0;i<SIDE_LEN;i++)
            std::cout<<a_vec[i]<<'\t';
        std::cout<<std::endl;
        std::cout<<"b_vec is:";
        for(int i=0;i<SIDE_LEN;i++)
            std::cout<<b_vec[i]<<'\t';
        std::cout<<std::endl;
        std::cout<<"current pe val:"<<'\n';
        for(int i=0;i<SIDE_LEN;i++){
            for(int j=0;j<SIDE_LEN;j++)
                std::cout<<pe_array.pe[i][j].val<<'\t';
            std::cout<<'\n';
        }
        std::cout<<std::setw(30)<<std::setfill('*')<<'*'<<'\n';
        #endif
	}

	//read out all the calculated results in every pe
    for(int i=0;i<SIDE_LEN;i++){
        for(int j=0;j<SIDE_LEN;j++)
            out[i*SIDE_LEN+j]=pe_array.pe[i][j].val;
    }
}
