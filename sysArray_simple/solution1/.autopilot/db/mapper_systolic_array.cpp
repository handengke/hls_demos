#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void systolic_array(int*, int, int, int);
extern "C" void apatb_systolic_array_hw(volatile void * __xlx_apatb_param_din_a, volatile void * __xlx_apatb_param_din_b, volatile void * __xlx_apatb_param_out) {
  // Collect __xlx_din_a_din_b_out__tmp_vec
  vector<sc_bv<32> >__xlx_din_a_din_b_out__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_din_a)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_din_a)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_din_a)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_din_a)[j*4+3];
    __xlx_din_a_din_b_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_din_a = 32;
  int __xlx_offset_param_din_a = 0;
  int __xlx_offset_byte_param_din_a = 0*4;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_din_b)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_din_b)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_din_b)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_din_b)[j*4+3];
    __xlx_din_a_din_b_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_din_b = 32;
  int __xlx_offset_param_din_b = 32;
  int __xlx_offset_byte_param_din_b = 32*4;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_out)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_out)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_out)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_out)[j*4+3];
    __xlx_din_a_din_b_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_out = 32;
  int __xlx_offset_param_out = 64;
  int __xlx_offset_byte_param_out = 64*4;
  int* __xlx_din_a_din_b_out__input_buffer= new int[__xlx_din_a_din_b_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_din_a_din_b_out__tmp_vec.size(); ++i) {
    __xlx_din_a_din_b_out__input_buffer[i] = __xlx_din_a_din_b_out__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  systolic_array(__xlx_din_a_din_b_out__input_buffer, __xlx_offset_byte_param_din_a, __xlx_offset_byte_param_din_b, __xlx_offset_byte_param_out);
// print __xlx_apatb_param_din_a
  sc_bv<32>*__xlx_din_a_output_buffer = new sc_bv<32>[__xlx_size_param_din_a];
  for (int i = 0; i < __xlx_size_param_din_a; ++i) {
    __xlx_din_a_output_buffer[i] = __xlx_din_a_din_b_out__input_buffer[i+__xlx_offset_param_din_a];
  }
  for (int i = 0; i < __xlx_size_param_din_a; ++i) {
    ((char*)__xlx_apatb_param_din_a)[i*4+0] = __xlx_din_a_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_din_a)[i*4+1] = __xlx_din_a_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_din_a)[i*4+2] = __xlx_din_a_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_din_a)[i*4+3] = __xlx_din_a_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_din_b
  sc_bv<32>*__xlx_din_b_output_buffer = new sc_bv<32>[__xlx_size_param_din_b];
  for (int i = 0; i < __xlx_size_param_din_b; ++i) {
    __xlx_din_b_output_buffer[i] = __xlx_din_a_din_b_out__input_buffer[i+__xlx_offset_param_din_b];
  }
  for (int i = 0; i < __xlx_size_param_din_b; ++i) {
    ((char*)__xlx_apatb_param_din_b)[i*4+0] = __xlx_din_b_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_din_b)[i*4+1] = __xlx_din_b_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_din_b)[i*4+2] = __xlx_din_b_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_din_b)[i*4+3] = __xlx_din_b_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_out
  sc_bv<32>*__xlx_out_output_buffer = new sc_bv<32>[__xlx_size_param_out];
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    __xlx_out_output_buffer[i] = __xlx_din_a_din_b_out__input_buffer[i+__xlx_offset_param_out];
  }
  for (int i = 0; i < __xlx_size_param_out; ++i) {
    ((char*)__xlx_apatb_param_out)[i*4+0] = __xlx_out_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+1] = __xlx_out_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+2] = __xlx_out_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_out)[i*4+3] = __xlx_out_output_buffer[i].range(31, 24).to_uint();
  }
}
