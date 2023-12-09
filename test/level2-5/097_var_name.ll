define i32 @main() {
B31:
  %t55 = alloca i32, align 4
  %t34 = alloca [20 x i32], align 4
  %t33 = alloca i32, align 4
  %t32 = alloca i32, align 4
  store i32 2, i32* %t32, align 4
  store i32 20, i32* %t33, align 4
  %t35 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 0
  store i32 1, i32* %t35, align 4
  %t36 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 1
  store i32 2, i32* %t36, align 4
  %t37 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 2
  store i32 0, i32* %t37, align 4
  %t38 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 3
  store i32 0, i32* %t38, align 4
  %t39 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 4
  store i32 0, i32* %t39, align 4
  %t40 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 5
  store i32 0, i32* %t40, align 4
  %t41 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 6
  store i32 0, i32* %t41, align 4
  %t42 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 7
  store i32 0, i32* %t42, align 4
  %t43 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 8
  store i32 0, i32* %t43, align 4
  %t44 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 9
  store i32 0, i32* %t44, align 4
  %t45 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 10
  store i32 0, i32* %t45, align 4
  %t46 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 11
  store i32 0, i32* %t46, align 4
  %t47 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 12
  store i32 0, i32* %t47, align 4
  %t48 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 13
  store i32 0, i32* %t48, align 4
  %t49 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 14
  store i32 0, i32* %t49, align 4
  %t50 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 15
  store i32 0, i32* %t50, align 4
  %t51 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 16
  store i32 0, i32* %t51, align 4
  %t52 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 17
  store i32 0, i32* %t52, align 4
  %t53 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 18
  store i32 0, i32* %t53, align 4
  %t54 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 19
  store i32 0, i32* %t54, align 4
  store i32 0, i32* %t55, align 4
  br label %B56
B56:                               	; preds = %B31, %B57
  %t5 = load i32, i32* %t32, align 4
  %t6 = load i32, i32* %t33, align 4
  %t7 = icmp slt i32 %t5, %t6
  br i1 %t7, label %B57, label %B61
B57:                               	; preds = %B56
  %t10 = load i32, i32* %t32, align 4
  %t11 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t10
  %t62 = load i32, i32* %t11, align 4
  %t12 = load i32, i32* %t32, align 4
  %t13 = sub i32 %t12, 1
  %t14 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t13
  %t63 = load i32, i32* %t14, align 4
  %t15 = add i32 %t62, %t63
  %t16 = load i32, i32* %t32, align 4
  %t17 = sub i32 %t16, 2
  %t18 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t17
  %t64 = load i32, i32* %t18, align 4
  %t19 = add i32 %t15, %t64
  %t8 = load i32, i32* %t32, align 4
  %t9 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t8
  store i32 %t19, i32* %t9, align 4
  %t21 = load i32, i32* %t55, align 4
  %t22 = load i32, i32* %t32, align 4
  %t23 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t22
  %t65 = load i32, i32* %t23, align 4
  %t24 = add i32 %t21, %t65
  store i32 %t24, i32* %t55, align 4
  %t25 = load i32, i32* %t32, align 4
  %t26 = getelementptr inbounds [20 x i32], [20 x i32]* %t34, i32 0, i32 %t25
  %t66 = load i32, i32* %t26, align 4
  call void @putint(i32 %t66)
  call void @putch(i32 10)
  %t28 = load i32, i32* %t32, align 4
  %t29 = add i32 %t28, 1
  store i32 %t29, i32* %t32, align 4
  br label %B56
B61:                               	; preds = %B56
  br label %B58
B58:                               	; preds = %B61
  %t30 = load i32, i32* %t55, align 4
  ret i32 %t30
}
declare void @putint(i32)
declare void @putch(i32)
