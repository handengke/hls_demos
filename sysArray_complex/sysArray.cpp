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
//@param din_a,din_b,out are the input matrices and output result respectively
//@param ra is row number of din_a, ca is column number of din_a, also the row number of din_b, cb just as the same
//workload: [ra,ca] * [ca,cb] ---> [ra,cb]
void systolic_array(DataType din_a[], DataType din_b[], unsigned int ra, unsigned int ca, unsigned int cb, DataType out[]){
    //here to define the port interfaces
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=ra
#pragma HLS INTERFACE s_axilite port=ca
#pragma HLS INTERFACE s_axilite port=cb

#pragma HLS INTERFACE m_axi depth=64 port=din_a offset=slave
#pragma HLS INTERFACE m_axi depth=64 port=din_b offset=slave
#pragma HLS INTERFACE m_axi depth=64 port=out   offset=slave

    //not necessary, just to remove the II violation warning
    PE_Array<DataType, SIDE_LEN> pe_array;
#pragma HLS ARRAY_PARTITION variable=pe_array.pe complete

    //to temporarily store the input two operating matrices,i.e. the input buffer of systolic array
    DataType M1[MAX_BUFFER_SIZE],M2[MAX_BUFFER_SIZE];
#pragma HLS array_partition variable=M1 dim=1
#pragma HLS array_partition variable=M2 dim=1

    //read the matrices into local buffer
#pragma HLS loop_merge
    for(int i=0;i<ra;i++)
    	for(int j=0;j<ca;j++){
    		int idx=i*ca+j;
    		M1[idx]=din_a[idx];
    	}
    for(int i=0;i<ca;i++)
    	for(int j=0;j<cb;j++){
    		int idx=i*ca+j;
    		M2[idx]=din_b[idx];
    	}

    //to partition the original input matrices
    int piece_a = ra/SIDE_LEN + (ra%SIDE_LEN > 0);
	int piece_b = cb/SIDE_LEN + (cb%SIDE_LEN > 0);

    //to locate the area under processing in original matrices
    int piece_a_base_row,piece_b_base_col;
    int piece_a_max_off,piece_b_max_off;

	// a_vec is the input vec from horizontal direction
    //b_vec is the input vec from vertical direction
	DataType a_vec[SIDE_LEN], b_vec[SIDE_LEN];
// #pragma HLS ARRAY_PARTITION variable=a_vec complete
// #pragma HLS ARRAY_PARTITION variable=b_vec complete


#pragma HLS DATAFLOW
top_outer_loop1:
    for(int i=0;i<piece_a;i++){
        for(int j=0;j<piece_b;j++){
            //the base address of the piece which is being processed
            piece_a_base_row=i*SIDE_LEN;
            piece_b_base_col=j*SIDE_LEN;
            piece_a_max_off=(i+1)*(SIDE_LEN*ca);
            piece_b_max_off=(ca-1)*cb+(j+1)*SIDE_LEN;

            //for debugging
            #ifndef __SYNTHESIS__
            std::cout<<std::setw(30)<<std::setfill('^')<<'^'<<'\n';
            std::cout<<"Current processing piece (a_piece,b_piece):("<<i<<','<<j<<')'<<'\n';
            std::cout<<"a_pieces max offset is "<<piece_a_max_off<<','<<"and b_piece max offset is "<<piece_b_max_off<<'.'<<'\n';
            std::cout<<std::setw(30)<<std::setfill('^')<<'^'<<'\n';
            #endif

            // total number of cycles to perform the operation
            int total_pulse = (2*SIDE_LEN-1)+(ca-1);

            sysarray_outer_loop1:
            for (int clk = 0; clk < total_pulse; clk++){
                #pragma HLS pipeline
                sysarray_inner_loop1:
                for (int idx = 0; idx < SIDE_LEN; idx++)
                {
                    //to get the index of the next element which will be sent to corresponding pe

                    //for square matrices
                    // int a_index=piece_base+(j*SIDE_LEN+(i-j));
                    // int b_index=piece_base+((i-j)*SIDE_LEN+j);

                    //for non-square matrices
                    int a_index=(piece_a_base_row+idx)*ca+(clk-idx);
                    int b_index=(clk-idx)*cb+(piece_b_base_col+idx);

                    //get the actual element sent to pe
                    if(a_index<piece_a_max_off && b_index<piece_b_max_off){
                        a_vec[idx] = (clk-idx>=0) ? M1[a_index] : 0;
                        b_vec[idx] = (clk-idx>=0) ? M2[b_index] : 0;
                    }
                    else{ //when the index exceeds the legal scope
                        a_vec[idx]=0;
                        b_vec[idx]=0;
                    }
                }
                //to pulse all pes
                pe_array.pulse(a_vec, b_vec);

                //for debugging
                #ifndef __SYNTHESIS__
                std::cout<<std::setw(30)<<std::setfill('*')<<'*'<<'\n';
                std::cout<<"cycle "<<clk<<":"<<'\n';
                std::cout<<"a_vec is:";
                for(int k=0;k<SIDE_LEN;k++)
                    std::cout<<a_vec[k]<<'\t';
                std::cout<<std::endl;
                std::cout<<"b_vec is:";
                for(int l=0;l<SIDE_LEN;l++)
                    std::cout<<b_vec[l]<<'\t';
                std::cout<<std::endl;
                std::cout<<"current pe val:"<<'\n';
                for(int m=0;m<SIDE_LEN;m++){
                    for(int n=0;n<SIDE_LEN;n++)
                        std::cout<<pe_array.pe[m][n].val<<'\t';
                    std::cout<<'\n';
                }
                std::cout<<std::setw(30)<<std::setfill('*')<<'*'<<'\n';
                #endif
            }

            //read out all the calculated results in every pe
            for(int r=0;r<SIDE_LEN;r++){
                for(int c=0;c<SIDE_LEN;c++){
                    int outr=i*SIDE_LEN+r,outc=j*SIDE_LEN+c;
                    out[outr*cb+outc]=pe_array.pe[r][c].val;
                }
            }

            //set the val of all pes to zero, prepare to calculate other pieces
            pe_array.reset();

        }
    }
}
