define i32 @main() {
B63:
  %t77 = alloca i32, align 4
  %t76 = alloca i32, align 4
  %t75 = alloca i32, align 4
  %t74 = alloca i32, align 4
  %t73 = alloca i32, align 4
  %t66 = alloca [10 x i32], align 4
  %t65 = alloca i32, align 4
  %t64 = alloca i32, align 4
  store i32 0, i32* %t65, align 4
  store i32 0, i32* %t64, align 4
  br label %B67
B67:                               	; preds = %B63, %B68
  %t5 = load i32, i32* %t64, align 4
  %t6 = icmp slt i32 %t5, 10
  br i1 %t6, label %B68, label %B72
B68:                               	; preds = %B67
  %t9 = load i32, i32* %t64, align 4
  %t10 = add i32 %t9, 1
  %t7 = load i32, i32* %t64, align 4
  %t8 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t7
  store i32 %t10, i32* %t8, align 4
  %t12 = load i32, i32* %t64, align 4
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t64, align 4
  br label %B67
B72:                               	; preds = %B67
  br label %B69
B69:                               	; preds = %B72
  store i32 10, i32* %t77, align 4
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t73, align 4
  %t23 = load i32, i32* %t77, align 4
  %t24 = sub i32 %t23, 1
  store i32 %t24, i32* %t74, align 4
  store i32 0, i32* %t75, align 4
  %t27 = load i32, i32* %t74, align 4
  %t28 = load i32, i32* %t75, align 4
  %t29 = add i32 %t27, %t28
  %t30 = sdiv i32 %t29, 2
  store i32 %t30, i32* %t76, align 4
  br label %B78
B78:                               	; preds = %B69, %B91
  %t31 = load i32, i32* %t76, align 4
  %t32 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t31
  %t82 = load i32, i32* %t32, align 4
  %t33 = load i32, i32* %t73, align 4
  %t34 = icmp ne i32 %t82, %t33
  br i1 %t34, label %B81, label %B85
B81:                               	; preds = %B78
  %t35 = load i32, i32* %t75, align 4
  %t36 = load i32, i32* %t74, align 4
  %t37 = icmp slt i32 %t35, %t36
  br i1 %t37, label %B79, label %B88
B85:                               	; preds = %B78
  br label %B80
B79:                               	; preds = %B81
  %t40 = load i32, i32* %t74, align 4
  %t41 = load i32, i32* %t75, align 4
  %t42 = add i32 %t40, %t41
  %t43 = sdiv i32 %t42, 2
  store i32 %t43, i32* %t76, align 4
  %t44 = load i32, i32* %t73, align 4
  %t45 = load i32, i32* %t76, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t45
  %t92 = load i32, i32* %t46, align 4
  %t47 = icmp slt i32 %t44, %t92
  br i1 %t47, label %B89, label %B95
B88:                               	; preds = %B81
  br label %B80
B80:                               	; preds = %B85, %B88
  %t54 = load i32, i32* %t73, align 4
  %t55 = load i32, i32* %t76, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t66, i32 0, i32 %t55
  %t99 = load i32, i32* %t56, align 4
  %t57 = icmp eq i32 %t54, %t99
  br i1 %t57, label %B96, label %B102
B89:                               	; preds = %B79
  %t49 = load i32, i32* %t76, align 4
  %t50 = sub i32 %t49, 1
  store i32 %t50, i32* %t74, align 4
  br label %B91
B95:                               	; preds = %B79
  br label %B90
B96:                               	; preds = %B80
  %t58 = load i32, i32* %t73, align 4
  call void @putint(i32 %t58)
  br label %B98
B102:                               	; preds = %B80
  br label %B97
B91:                               	; preds = %B89, %B90
  br label %B78
B90:                               	; preds = %B95
  %t52 = load i32, i32* %t76, align 4
  %t53 = add i32 %t52, 1
  store i32 %t53, i32* %t75, align 4
  br label %B91
B98:                               	; preds = %B96, %B97
  store i32 10, i32* %t73, align 4
  %t62 = load i32, i32* %t73, align 4
  call void @putch(i32 %t62)
  ret i32 0
B97:                               	; preds = %B102
  store i32 0, i32* %t73, align 4
  %t60 = load i32, i32* %t73, align 4
  call void @putint(i32 %t60)
  br label %B98
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
