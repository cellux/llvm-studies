; ModuleID = 'pointer.c'
source_filename = "pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.t = type { i8, i32, i8*, float }
%struct.t2 = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @p(%struct.t* %t) #0 {
entry:
  %t.addr = alloca %struct.t*, align 8
  %tmp2 = alloca %struct.t2, align 4
  store %struct.t* %t, %struct.t** %t.addr, align 8
  %0 = load %struct.t*, %struct.t** %t.addr, align 8
  %a = getelementptr inbounds %struct.t, %struct.t* %0, i32 0, i32 1
  %1 = load i32, i32* %a, align 4
  %x = getelementptr inbounds %struct.t2, %struct.t2* %tmp2, i32 0, i32 0
  store i32 %1, i32* %x, align 4
  %2 = load %struct.t*, %struct.t** %t.addr, align 8
  %f = getelementptr inbounds %struct.t, %struct.t* %2, i32 0, i32 3
  %3 = load float, float* %f, align 8
  %conv = fptosi float %3 to i32
  %y = getelementptr inbounds %struct.t2, %struct.t2* %tmp2, i32 0, i32 1
  store i32 %conv, i32* %y, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca %struct.t, align 8
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
  call void @p(%struct.t* %tmp)
  ret i32 0
}

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 11.0.0"}
