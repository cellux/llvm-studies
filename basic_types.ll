; ModuleID = 'basic_types.c'
source_filename = "basic_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"c1=%c, c2=%c, c3=%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"s1=%hd, s2=%hd, s3=%hu\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"i1=%d, i2=%d, i3=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"l1=%ld, l2=%ld, l3=%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ll1=%lld, ll2=%lld, ll3=%llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"size=%zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"f=%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"d=%g\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ld=%Lg\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ptr=%p\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %s1 = alloca i16, align 2
  %s2 = alloca i16, align 2
  %s3 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %l3 = alloca i64, align 8
  %ll1 = alloca i64, align 8
  %ll2 = alloca i64, align 8
  %ll3 = alloca i64, align 8
  %size = alloca i64, align 8
  %f = alloca float, align 4
  %d = alloca double, align 8
  %ld = alloca x86_fp80, align 16
  %ptr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 120, i8* %c1, align 1
  store i8 65, i8* %c2, align 1
  store i8 -56, i8* %c3, align 1
  %0 = load i8, i8* %c1, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %c2, align 1
  %conv1 = sext i8 %1 to i32
  %2 = load i8, i8* %c3, align 1
  %conv2 = zext i8 %2 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %conv, i32 %conv1, i32 %conv2)
  store i16 1234, i16* %s1, align 2
  store i16 5678, i16* %s2, align 2
  store i16 -1330, i16* %s3, align 2
  %3 = load i16, i16* %s1, align 2
  %conv3 = sext i16 %3 to i32
  %4 = load i16, i16* %s2, align 2
  %conv4 = sext i16 %4 to i32
  %5 = load i16, i16* %s3, align 2
  %conv5 = zext i16 %5 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv3, i32 %conv4, i32 %conv5)
  store i32 1234, i32* %i1, align 4
  store i32 5678, i32* %i2, align 4
  store i32 -87097619, i32* %i3, align 4
  %6 = load i32, i32* %i1, align 4
  %7 = load i32, i32* %i2, align 4
  %8 = load i32, i32* %i3, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  store i64 1234, i64* %l1, align 8
  store i64 5678, i64* %l2, align 8
  store i64 4207869677, i64* %l3, align 8
  %9 = load i64, i64* %l1, align 8
  %10 = load i64, i64* %l2, align 8
  %11 = load i64, i64* %l3, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %9, i64 %10, i64 %11)
  store i64 1234, i64* %ll1, align 8
  store i64 5678, i64* %ll2, align 8
  store i64 4207869677, i64* %ll3, align 8
  %12 = load i64, i64* %ll1, align 8
  %13 = load i64, i64* %ll2, align 8
  %14 = load i64, i64* %ll3, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %12, i64 %13, i64 %14)
  store i64 4207869677, i64* %size, align 8
  %15 = load i64, i64* %size, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %15)
  store float 1.250000e+00, float* %f, align 4
  %16 = load float, float* %f, align 4
  %conv11 = fpext float %16 to double
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double %conv11)
  store double 1.250000e+00, double* %d, align 8
  %17 = load double, double* %d, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %17)
  store x86_fp80 0xK3FFFA000000000000000, x86_fp80* %ld, align 16
  %18 = load x86_fp80, x86_fp80* %ld, align 16
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), x86_fp80 %18)
  store i8* null, i8** %ptr, align 8
  %19 = load i8*, i8** %ptr, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %19)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 11.0.0"}
