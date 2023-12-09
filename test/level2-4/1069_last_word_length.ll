define i32 @lengthOfLastWord(i32* %t0, i32 %t2) {
B68:
  %t94 = alloca i32, align 4
  %t76 = alloca i32, align 4
  %t70 = alloca i32, align 4
  %t69 = alloca i32*, align 4
  store i32* %t0, i32** %t69, align 4
  store i32 %t2, i32* %t70, align 4
  %t4 = load i32, i32* %t70, align 4
  %t5 = icmp eq i32 %t4, 0
  br i1 %t5, label %B71, label %B75
B71:                               	; preds = %B68
  ret i32 0
  br label %B72
B75:                               	; preds = %B68
  br label %B72
B72:                               	; preds = %B71, %B75
  %t8 = load i32, i32* %t70, align 4
  %t9 = sub i32 %t8, 1
  store i32 %t9, i32* %t76, align 4
  br label %B77
B77:                               	; preds = %B72, %B78
  %t10 = load i32, i32* %t76, align 4
  %t11 = sub i32 0, 1
  %t12 = icmp sgt i32 %t10, %t11
  br i1 %t12, label %B80, label %B83
B80:                               	; preds = %B77
  %t84 = load i32*, i32** %t69, align 4
  %t13 = load i32, i32* %t76, align 4
  %t14 = getelementptr inbounds i32, i32* %t84, i32 %t13
  %t85 = load i32, i32* %t14, align 4
  %t15 = icmp eq i32 %t85, 0
  br i1 %t15, label %B78, label %B88
B83:                               	; preds = %B77
  br label %B79
B78:                               	; preds = %B80
  %t18 = load i32, i32* %t76, align 4
  %t19 = sub i32 %t18, 1
  store i32 %t19, i32* %t76, align 4
  br label %B77
B88:                               	; preds = %B80
  br label %B79
B79:                               	; preds = %B83, %B88
  %t20 = load i32, i32* %t76, align 4
  %t21 = sub i32 0, 1
  %t22 = icmp eq i32 %t20, %t21
  br i1 %t22, label %B89, label %B93
B89:                               	; preds = %B79
  ret i32 0
  br label %B90
B93:                               	; preds = %B79
  br label %B90
B90:                               	; preds = %B89, %B93
  %t25 = load i32, i32* %t76, align 4
  store i32 %t25, i32* %t94, align 4
  br label %B95
B95:                               	; preds = %B90, %B102
  %t26 = load i32, i32* %t94, align 4
  %t27 = sub i32 0, 1
  %t28 = icmp sgt i32 %t26, %t27
  br i1 %t28, label %B96, label %B100
B96:                               	; preds = %B95
  %t103 = load i32*, i32** %t69, align 4
  %t29 = load i32, i32* %t94, align 4
  %t30 = getelementptr inbounds i32, i32* %t103, i32 %t29
  %t104 = load i32, i32* %t30, align 4
  %t31 = icmp eq i32 %t104, 0
  br i1 %t31, label %B101, label %B107
B100:                               	; preds = %B95
  br label %B97
B101:                               	; preds = %B96
  %t32 = load i32, i32* %t70, align 4
  %t33 = load i32, i32* %t94, align 4
  %t34 = sub i32 %t32, %t33
  %t35 = sub i32 %t34, 1
  %t36 = load i32, i32* %t70, align 4
  %t37 = sub i32 %t36, 1
  %t38 = load i32, i32* %t76, align 4
  %t39 = sub i32 %t37, %t38
  %t40 = sub i32 %t35, %t39
  ret i32 %t40
  br label %B102
B107:                               	; preds = %B96
  br label %B102
B97:                               	; preds = %B100
  %t44 = load i32, i32* %t76, align 4
  %t45 = load i32, i32* %t94, align 4
  %t46 = sub i32 %t44, %t45
  ret i32 %t46
B102:                               	; preds = %B101, %B107
  %t42 = load i32, i32* %t94, align 4
  %t43 = sub i32 %t42, 1
  store i32 %t43, i32* %t94, align 4
  br label %B95
}
define i32 @main() {
B108:
  %t110 = alloca [10 x i32], align 4
  %t109 = alloca i32, align 4
  %t50 = sub i32 0, 4
  %t49 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 0
  store i32 %t50, i32* %t49, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 1
  store i32 3, i32* %t51, align 4
  %t52 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 2
  store i32 9, i32* %t52, align 4
  %t54 = sub i32 0, 2
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 3
  store i32 %t54, i32* %t53, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 4
  store i32 0, i32* %t55, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 5
  store i32 1, i32* %t56, align 4
  %t58 = sub i32 0, 6
  %t57 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 6
  store i32 %t58, i32* %t57, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 7
  store i32 5, i32* %t59, align 4
  %t60 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 8
  store i32 7, i32* %t60, align 4
  %t61 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 9
  store i32 8, i32* %t61, align 4
  store i32 10, i32* %t109, align 4
  %t64 = getelementptr inbounds [10 x i32], [10 x i32]* %t110, i32 0, i32 0
  %t65 = load i32, i32* %t109, align 4
  %t66 = call i32 @lengthOfLastWord(i32* %t64, i32 %t65)
  store i32 %t66, i32* %t109, align 4
  %t67 = load i32, i32* %t109, align 4
  ret i32 %t67
}
