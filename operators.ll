; ModuleID = 'operators.c'
source_filename = "operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %res_add = alloca i32, align 4
  %res_sub = alloca i32, align 4
  %res_mul = alloca i32, align 4
  %res_div = alloca i32, align 4
  %res_mod = alloca i32, align 4
  %res_postinc = alloca i32, align 4
  %res_preinc = alloca i32, align 4
  %res_postdec = alloca i32, align 4
  %res_predec = alloca i32, align 4
  %res_band = alloca i32, align 4
  %res_bor = alloca i32, align 4
  %res_bxor = alloca i32, align 4
  %res_bneg = alloca i32, align 4
  %res_lshift = alloca i32, align 4
  %res_rshift = alloca i32, align 4
  %res_and = alloca i32, align 4
  %res_or = alloca i32, align 4
  %res_neg = alloca i32, align 4
  %res_eq = alloca i32, align 4
  %res_ne = alloca i32, align 4
  %res_lt = alloca i32, align 4
  %res_le = alloca i32, align 4
  %res_ge = alloca i32, align 4
  %res_gt = alloca i32, align 4
  %res_ternary = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %x, align 4
  store i32 5, i32* %y, align 4
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %y, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %res_add, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %res_sub, align 4
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %res_mul, align 4
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %y, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, i32* %res_div, align 4
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %y, align 4
  %rem = srem i32 %8, %9
  store i32 %rem, i32* %res_mod, align 4
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  store i32 %10, i32* %res_postinc, align 4
  %11 = load i32, i32* %x, align 4
  %inc1 = add nsw i32 %11, 1
  store i32 %inc1, i32* %x, align 4
  store i32 %inc1, i32* %res_preinc, align 4
  %12 = load i32, i32* %y, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %y, align 4
  store i32 %12, i32* %res_postdec, align 4
  %13 = load i32, i32* %y, align 4
  %dec2 = add nsw i32 %13, -1
  store i32 %dec2, i32* %y, align 4
  store i32 %dec2, i32* %res_predec, align 4
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %and = and i32 %14, %15
  store i32 %and, i32* %res_band, align 4
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %or = or i32 %16, %17
  store i32 %or, i32* %res_bor, align 4
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %xor = xor i32 %18, %19
  store i32 %xor, i32* %res_bxor, align 4
  %20 = load i32, i32* %x, align 4
  %neg = xor i32 %20, -1
  store i32 %neg, i32* %res_bneg, align 4
  %21 = load i32, i32* %x, align 4
  %shl = shl i32 %21, 3
  store i32 %shl, i32* %res_lshift, align 4
  %22 = load i32, i32* %x, align 4
  %shr = ashr i32 %22, 3
  store i32 %shr, i32* %res_rshift, align 4
  %23 = load i32, i32* %x, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %24 = load i32, i32* %y, align 4
  %tobool3 = icmp ne i32 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %25 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %res_and, align 4
  %26 = load i32, i32* %x, align 4
  %tobool4 = icmp ne i32 %26, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %27 = load i32, i32* %y, align 4
  %tobool5 = icmp ne i32 %27, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %28 = phi i1 [ true, %land.end ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  store i32 %lor.ext, i32* %res_or, align 4
  %29 = load i32, i32* %x, align 4
  %tobool6 = icmp ne i32 %29, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %res_neg, align 4
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %y, align 4
  %cmp = icmp eq i32 %30, %31
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %res_eq, align 4
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %y, align 4
  %cmp7 = icmp ne i32 %32, %33
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %res_ne, align 4
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %y, align 4
  %cmp9 = icmp slt i32 %34, %35
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %res_lt, align 4
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %cmp11 = icmp sle i32 %36, %37
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %res_le, align 4
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %y, align 4
  %cmp13 = icmp sge i32 %38, %39
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %res_ge, align 4
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %cmp15 = icmp sgt i32 %40, %41
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, i32* %res_gt, align 4
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %cmp17 = icmp eq i32 %42, %43
  %44 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 1, i32 0
  store i32 %cond, i32* %res_ternary, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 11.0.0"}
