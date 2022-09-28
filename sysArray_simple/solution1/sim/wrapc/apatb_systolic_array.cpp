#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.systolic_array.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.systolic_array.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_din_a "../tv/cdatafile/c.systolic_array.autotvin_din_a.dat"
#define AUTOTB_TVOUT_din_a "../tv/cdatafile/c.systolic_array.autotvout_din_a.dat"
// wrapc file define:
#define AUTOTB_TVIN_din_b "../tv/cdatafile/c.systolic_array.autotvin_din_b.dat"
#define AUTOTB_TVOUT_din_b "../tv/cdatafile/c.systolic_array.autotvout_din_b.dat"
// wrapc file define:
#define AUTOTB_TVIN_out "../tv/cdatafile/c.systolic_array.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out "../tv/cdatafile/c.systolic_array.autotvout_out_r.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.systolic_array.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_din_a "../tv/rtldatafile/rtl.systolic_array.autotvout_din_a.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_din_b "../tv/rtldatafile/rtl.systolic_array.autotvout_din_b.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out "../tv/rtldatafile/rtl.systolic_array.autotvout_out_r.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  din_a_depth = 0;
  din_b_depth = 0;
  out_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{din_a " << din_a_depth << "}\n";
  total_list << "{din_b " << din_b_depth << "}\n";
  total_list << "{out_r " << out_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int din_a_depth;
    int din_b_depth;
    int out_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void systolic_array_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_systolic_array_hw(volatile void * __xlx_apatb_param_din_a, volatile void * __xlx_apatb_param_din_b, volatile void * __xlx_apatb_param_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > gmem_pc_buffer(96);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 32; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_din_a)[j*4+0] = gmem_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_din_a)[j*4+1] = gmem_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_din_a)[j*4+2] = gmem_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_din_a)[j*4+3] = gmem_pc_buffer[i].range(31, 24).to_int64();
}
            for (int j = 0, e = 32; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_din_b)[j*4+0] = gmem_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_din_b)[j*4+1] = gmem_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_din_b)[j*4+2] = gmem_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_din_b)[j*4+3] = gmem_pc_buffer[i].range(31, 24).to_int64();
}
            for (int j = 0, e = 32; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_out)[j*4+0] = gmem_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_out)[j*4+1] = gmem_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_out)[j*4+2] = gmem_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_out)[j*4+3] = gmem_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem
aesl_fh.touch(AUTOTB_TVIN_gmem);
aesl_fh.touch(AUTOTB_TVOUT_gmem);
//din_a
aesl_fh.touch(AUTOTB_TVIN_din_a);
aesl_fh.touch(AUTOTB_TVOUT_din_a);
//din_b
aesl_fh.touch(AUTOTB_TVIN_din_b);
aesl_fh.touch(AUTOTB_TVOUT_din_b);
//out
aesl_fh.touch(AUTOTB_TVIN_out);
aesl_fh.touch(AUTOTB_TVOUT_out);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_din_a = 0;
unsigned __xlx_offset_byte_param_din_b = 0;
unsigned __xlx_offset_byte_param_out = 0;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_din_a = 0*4;
  if (__xlx_apatb_param_din_a) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_din_a)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_din_b = 32*4;
  if (__xlx_apatb_param_din_b) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_din_b)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 64*4;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_out)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(96, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_sprintf_buffer.data());
}
// print din_a Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_din_a, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_din_a;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_din_a, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.din_a_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_din_a, __xlx_sprintf_buffer.data());
}
// print din_b Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_din_b, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_din_b;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_din_b, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.din_b_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_din_b, __xlx_sprintf_buffer.data());
}
// print out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_out;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_out, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
systolic_array_hw_stub_wrapper(__xlx_apatb_param_din_a, __xlx_apatb_param_din_b, __xlx_apatb_param_out);
CodeState = DUMP_OUTPUTS;
// print gmem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_din_a = 0*4;
  if (__xlx_apatb_param_din_a) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_din_a)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_din_b = 32*4;
  if (__xlx_apatb_param_din_b) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_din_b)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
  __xlx_offset_byte_param_out = 64*4;
  if (__xlx_apatb_param_out) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_out)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_gmem, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(96, &tcl_file.gmem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
