define i32 @uniquePaths(i32 %t0, i32 %t2) {
B83:
  %t97 = alloca i32, align 4
  %t96 = alloca i32, align 4
  %t95 = alloca [9 x i32], align 4
  %t85 = alloca i32, align 4
  %t84 = alloca i32, align 4
  store i32 %t0, i32* %t84, align 4
  store i32 %t2, i32* %t85, align 4
  %t4 = load i32, i32* %t84, align 4
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %B86, label %B91
B86:                               	; preds = %B83, %B88
  ret i32 1
  br label %B87
B91:                               	; preds = %B83
  br label %B88
B87:                               	; preds = %B86, %B94
  store i32 0, i32* %t96, align 4
  br label %B98
B88:                               	; preds = %B91
  %t6 = load i32, i32* %t85, align 4
  %t7 = icmp eq i32 %t6, 1
  br i1 %t7, label %B86, label %B94
B98:                               	; preds = %B87, %B99
  %t13 = load i32, i32* %t96, align 4
  %t14 = load i32, i32* %t84, align 4
  %t15 = icmp slt i32 %t13, %t14
  br i1 %t15, label %B99, label %B103
B94:                               	; preds = %B88
  br label %B87
B99:                               	; preds = %B98
  %t16 = load i32, i32* %t96, align 4
  %t17 = mul i32 %t16, 3
  %t18 = load i32, i32* %t85, align 4
  %t19 = add i32 %t17, %t18
  %t20 = sub i32 %t19, 1
  %t21 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t20
  store i32 1, i32* %t21, align 4
  %t23 = load i32, i32* %t96, align 4
  %t24 = add i32 %t23, 1
  store i32 %t24, i32* %t96, align 4
  br label %B98
B103:                               	; preds = %B98
  br label %B100
B100:                               	; preds = %B103
  store i32 0, i32* %t96, align 4
  br label %B104
B104:                               	; preds = %B100, %B105
  %t26 = load i32, i32* %t96, align 4
  %t27 = load i32, i32* %t85, align 4
  %t28 = icmp slt i32 %t26, %t27
  br i1 %t28, label %B105, label %B109
B105:                               	; preds = %B104
  %t29 = load i32, i32* %t84, align 4
  %t30 = sub i32 %t29, 1
  %t31 = mul i32 %t30, 3
  %t32 = load i32, i32* %t96, align 4
  %t33 = add i32 %t31, %t32
  %t34 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t33
  store i32 1, i32* %t34, align 4
  %t36 = load i32, i32* %t96, align 4
  %t37 = add i32 %t36, 1
  store i32 %t37, i32* %t96, align 4
  br label %B104
B109:                               	; preds = %B104
  br label %B106
B106:                               	; preds = %B109
  %t39 = load i32, i32* %t84, align 4
  %t40 = sub i32 %t39, 2
  store i32 %t40, i32* %t96, align 4
  br label %B110
B110:                               	; preds = %B106, %B118
  %t41 = load i32, i32* %t96, align 4
  %t42 = sub i32 0, 1
  %t43 = icmp sgt i32 %t41, %t42
  br i1 %t43, label %B111, label %B115
B111:                               	; preds = %B110
  %t45 = load i32, i32* %t85, align 4
  %t46 = sub i32 %t45, 2
  store i32 %t46, i32* %t97, align 4
  br label %B116
B115:                               	; preds = %B110
  br label %B112
B116:                               	; preds = %B111, %B117
  %t47 = load i32, i32* %t97, align 4
  %t48 = sub i32 0, 1
  %t49 = icmp sgt i32 %t47, %t48
  br i1 %t49, label %B117, label %B121
B112:                               	; preds = %B115
  %t74 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 0
  %t124 = load i32, i32* %t74, align 4
  ret i32 %t124
B117:                               	; preds = %B116
  %t55 = load i32, i32* %t96, align 4
  %t56 = add i32 %t55, 1
  %t57 = mul i32 %t56, 3
  %t58 = load i32, i32* %t97, align 4
  %t59 = add i32 %t57, %t58
  %t60 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t59
  %t122 = load i32, i32* %t60, align 4
  %t61 = load i32, i32* %t96, align 4
  %t62 = mul i32 %t61, 3
  %t63 = load i32, i32* %t97, align 4
  %t64 = add i32 %t62, %t63
  %t65 = add i32 %t64, 1
  %t66 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t65
  %t123 = load i32, i32* %t66, align 4
  %t67 = add i32 %t122, %t123
  %t50 = load i32, i32* %t96, align 4
  %t51 = mul i32 %t50, 3
  %t52 = load i32, i32* %t97, align 4
  %t53 = add i32 %t51, %t52
  %t54 = getelementptr inbounds [9 x i32], [9 x i32]* %t95, i32 0, i32 %t53
  store i32 %t67, i32* %t54, align 4
  %t69 = load i32, i32* %t97, align 4
  %t70 = sub i32 %t69, 1
  store i32 %t70, i32* %t97, align 4
  br label %B116
B121:                               	; preds = %B116
  br label %B118
B118:                               	; preds = %B121
  %t72 = load i32, i32* %t96, align 4
  %t73 = sub i32 %t72, 1
  store i32 %t73, i32* %t96, align 4
  br label %B110
}
define i32 @main() {
B125:
  %t127 = alloca i32, align 4
  %t126 = alloca i32, align 4
  store i32 3, i32* %t127, align 4
  %t79 = load i32, i32* %t127, align 4
  %t80 = load i32, i32* %t127, align 4
  %t81 = call i32 @uniquePaths(i32 %t79, i32 %t80)
  store i32 %t81, i32* %t126, align 4
  %t82 = load i32, i32* %t126, align 4
  ret i32 %t82
}
