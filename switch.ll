; ModuleID = 'switch.c'
source_filename = "switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %what = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %1) #2
  store i32 %call, i32* %what, align 4
  store i32 0, i32* %result, align 4
  %2 = load i32, i32* %what, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %result, align 4
  %add = add nsw i32 %3, 16711680
  store i32 %add, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load i32, i32* %result, align 4
  %add2 = add nsw i32 %4, 65280
  store i32 %add2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load i32, i32* %result, align 4
  %add4 = add nsw i32 %5, 255
  store i32 %add4, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 16777215, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
