; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.t = type { i8, i32, i8*, float }
%struct.t2 = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca %struct.t, align 8
  %tmp2 = alloca %struct.t2, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %c = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 0
  store i8 97, i8* %c, align 8
  %a = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 1
  store i32 1234, i32* %a, align 4
  %s = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %s, align 8
  %f = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 3
  store float 1.250000e+00, float* %f, align 8
  %a1 = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 1
  %0 = load i32, i32* %a1, align 4
  %x = getelementptr inbounds %struct.t2, %struct.t2* %tmp2, i32 0, i32 0
  store i32 %0, i32* %x, align 4
  %f2 = getelementptr inbounds %struct.t, %struct.t* %tmp, i32 0, i32 3
  %1 = load float, float* %f2, align 8
  %conv = fptosi float %1 to i32
  %y = getelementptr inbounds %struct.t2, %struct.t2* %tmp2, i32 0, i32 1
  store i32 %conv, i32* %y, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
