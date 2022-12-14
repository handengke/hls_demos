; ModuleID = '/home/handengke/HLS/simdArray_simple/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.v_datatype = type { [32 x float] }

; Function Attrs: noinline
define void @apatb_simd_array_ir(%struct.v_datatype* %din_a, %struct.v_datatype* %din_b, %struct.v_datatype* %out, i32 %size, i32 %opcode) local_unnamed_addr #0 {
entry:
  %din_a_copy = alloca %struct.v_datatype, align 512
  %din_b_copy = alloca %struct.v_datatype, align 512
  %out_copy = alloca %struct.v_datatype, align 512
  call fastcc void @copy_in(%struct.v_datatype* %din_a, %struct.v_datatype* nonnull align 512 %din_a_copy, %struct.v_datatype* %din_b, %struct.v_datatype* nonnull align 512 %din_b_copy, %struct.v_datatype* %out, %struct.v_datatype* nonnull align 512 %out_copy)
  call void @apatb_simd_array_hw(%struct.v_datatype* %din_a_copy, %struct.v_datatype* %din_b_copy, %struct.v_datatype* %out_copy, i32 %size, i32 %opcode)
  call fastcc void @copy_out(%struct.v_datatype* %din_a, %struct.v_datatype* nonnull align 512 %din_a_copy, %struct.v_datatype* %din_b, %struct.v_datatype* nonnull align 512 %din_b_copy, %struct.v_datatype* %out, %struct.v_datatype* nonnull align 512 %out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.v_datatype* readonly, %struct.v_datatype* noalias align 512, %struct.v_datatype* readonly, %struct.v_datatype* noalias align 512, %struct.v_datatype* readonly, %struct.v_datatype* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* align 512 %1, %struct.v_datatype* %0)
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* align 512 %3, %struct.v_datatype* %2)
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* align 512 %5, %struct.v_datatype* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* noalias align 512, %struct.v_datatype* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.v_datatype* %0, null
  %3 = icmp eq %struct.v_datatype* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx6 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr2.gep4 = getelementptr %struct.v_datatype, %struct.v_datatype* %0, i32 0, i32 0, i64 %for.loop.idx6
  %5 = bitcast float* %dst.addr2.gep4 to i8*
  %src.addr3.gep5 = getelementptr %struct.v_datatype, %struct.v_datatype* %1, i32 0, i32 0, i64 %for.loop.idx6
  %6 = bitcast float* %src.addr3.gep5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.v_datatype*, %struct.v_datatype* noalias readonly align 512, %struct.v_datatype*, %struct.v_datatype* noalias readonly align 512, %struct.v_datatype*, %struct.v_datatype* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* %0, %struct.v_datatype* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* %2, %struct.v_datatype* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.v_datatype(%struct.v_datatype* %4, %struct.v_datatype* align 512 %5)
  ret void
}

declare void @apatb_simd_array_hw(%struct.v_datatype*, %struct.v_datatype*, %struct.v_datatype*, i32, i32)

define void @simd_array_hw_stub_wrapper(%struct.v_datatype*, %struct.v_datatype*, %struct.v_datatype*, i32, i32) #5 {
entry:
  call void @copy_out(%struct.v_datatype* null, %struct.v_datatype* %0, %struct.v_datatype* null, %struct.v_datatype* %1, %struct.v_datatype* null, %struct.v_datatype* %2)
  call void @simd_array_hw_stub(%struct.v_datatype* %0, %struct.v_datatype* %1, %struct.v_datatype* %2, i32 %3, i32 %4)
  call void @copy_in(%struct.v_datatype* null, %struct.v_datatype* %0, %struct.v_datatype* null, %struct.v_datatype* %1, %struct.v_datatype* null, %struct.v_datatype* %2)
  ret void
}

declare void @simd_array_hw_stub(%struct.v_datatype*, %struct.v_datatype*, %struct.v_datatype*, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
