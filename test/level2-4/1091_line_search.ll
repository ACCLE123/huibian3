define i32 @main() {
B58:
  %t74 = alloca i32, align 4
  %t73 = alloca i32, align 4
  %t72 = alloca i32, align 4
  %t71 = alloca i32, align 4
  %t70 = alloca i32, align 4
  %t69 = alloca i32, align 4
  %t68 = alloca i32, align 4
  %t61 = alloca [10 x i32], align 4
  %t60 = alloca i32, align 4
  %t59 = alloca i32, align 4
  store i32 0, i32* %t60, align 4
  store i32 0, i32* %t59, align 4
  br label %B62
B62:                               	; preds = %B58, %B63
  %t5 = load i32, i32* %t59, align 4
  %t6 = icmp slt i32 %t5, 10
  br i1 %t6, label %B63, label %B67
B63:                               	; preds = %B62
  %t9 = load i32, i32* %t59, align 4
  %t10 = add i32 %t9, 1
  %t7 = load i32, i32* %t59, align 4
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t7
  store i32 %t10, i32* %t8, align 4
  %t12 = load i32, i32* %t59, align 4
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t59, align 4
  br label %B62
B67:                               	; preds = %B62
  br label %B64
B64:                               	; preds = %B67
  store i32 10, i32* %t72, align 4
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t68, align 4
  %t23 = load i32, i32* %t72, align 4
  %t24 = sub i32 %t23, 1
  store i32 %t24, i32* %t69, align 4
  store i32 0, i32* %t70, align 4
  %t27 = load i32, i32* %t69, align 4
  %t28 = load i32, i32* %t70, align 4
  %t29 = add i32 %t27, %t28
  %t30 = sdiv i32 %t29, 2
  store i32 %t30, i32* %t71, align 4
  store i32 0, i32* %t73, align 4
  store i32 0, i32* %t59, align 4
  store i32 0, i32* %t74, align 4
  br label %B75
B75:                               	; preds = %B64, %B86
  %t36 = load i32, i32* %t59, align 4
  %t37 = icmp slt i32 %t36, 10
  br i1 %t37, label %B78, label %B81
B78:                               	; preds = %B75
  %t38 = load i32, i32* %t73, align 4
  %t39 = icmp eq i32 %t38, 0
  br i1 %t39, label %B76, label %B84
B81:                               	; preds = %B75
  br label %B77
B76:                               	; preds = %B78
  %t41 = load i32, i32* %t59, align 4
  %t42 = getelementptr inbounds [10 x i32], [10 x i32]* %t61, i32 0, i32 %t41
  %t87 = load i32, i32* %t42, align 4
  %t43 = load i32, i32* %t68, align 4
  %t44 = icmp eq i32 %t87, %t43
  br i1 %t44, label %B85, label %B90
B84:                               	; preds = %B78
  br label %B77
B77:                               	; preds = %B81, %B84
  %t51 = load i32, i32* %t73, align 4
  %t52 = icmp eq i32 %t51, 1
  br i1 %t52, label %B91, label %B96
B85:                               	; preds = %B76
  store i32 1, i32* %t73, align 4
  %t47 = load i32, i32* %t59, align 4
  store i32 %t47, i32* %t74, align 4
  br label %B86
B90:                               	; preds = %B76
  br label %B86
B91:                               	; preds = %B77
  %t53 = load i32, i32* %t74, align 4
  call void @putint(i32 %t53)
  br label %B93
B96:                               	; preds = %B77
  br label %B92
B86:                               	; preds = %B85, %B90
  %t49 = load i32, i32* %t59, align 4
  %t50 = add i32 %t49, 1
  store i32 %t50, i32* %t59, align 4
  br label %B75
B93:                               	; preds = %B91, %B92
  store i32 10, i32* %t68, align 4
  %t57 = load i32, i32* %t68, align 4
  call void @putch(i32 %t57)
  ret i32 0
B92:                               	; preds = %B96
  store i32 0, i32* %t68, align 4
  %t55 = load i32, i32* %t68, align 4
  call void @putint(i32 %t55)
  br label %B93
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
