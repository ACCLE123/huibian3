@ans = global [50 x i32] zeroinitializer, align 4
@sum = global i32 0, align 4
@n = global i32 0, align 4
@row = global [50 x i32] zeroinitializer, align 4
@line1 = global [50 x i32] zeroinitializer, align 4
@line2 = global [100 x i32] zeroinitializer, align 4
define void @printans() {
B90:
  %t91 = alloca i32, align 4
  %t7 = load i32, i32* @sum, align 4
  %t8 = add i32 %t7, 1
  store i32 %t8, i32* @sum, align 4
  store i32 1, i32* %t91, align 4
  br label %B92
B92:                               	; preds = %B90, %B101
  %t10 = load i32, i32* %t91, align 4
  %t11 = load i32, i32* @n, align 4
  %t12 = icmp sle i32 %t10, %t11
  br i1 %t12, label %B93, label %B97
B93:                               	; preds = %B92
  %t13 = load i32, i32* %t91, align 4
  %t14 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i32 0, i32 %t13
  %t98 = load i32, i32* %t14, align 4
  call void @putint(i32 %t98)
  %t15 = load i32, i32* %t91, align 4
  %t16 = load i32, i32* @n, align 4
  %t17 = icmp eq i32 %t15, %t16
  br i1 %t17, label %B99, label %B104
B97:                               	; preds = %B92
  br label %B94
B99:                               	; preds = %B93
  call void @putch(i32 10)
  ret void
  br label %B101
B104:                               	; preds = %B93
  br label %B100
B94:                               	; preds = %B97
  ret void
B101:                               	; preds = %B99, %B100
  %t19 = load i32, i32* %t91, align 4
  %t20 = add i32 %t19, 1
  store i32 %t20, i32* %t91, align 4
  br label %B92
B100:                               	; preds = %B104
  call void @putch(i32 32)
  br label %B101
}
define void @f(i32 %t21) {
B105:
  %t107 = alloca i32, align 4
  %t106 = alloca i32, align 4
  store i32 %t21, i32* %t106, align 4
  store i32 1, i32* %t107, align 4
  br label %B108
B108:                               	; preds = %B105, %B115
  %t24 = load i32, i32* %t107, align 4
  %t25 = load i32, i32* @n, align 4
  %t26 = icmp sle i32 %t24, %t25
  br i1 %t26, label %B109, label %B113
B109:                               	; preds = %B108
  %t27 = load i32, i32* %t107, align 4
  %t28 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t27
  %t118 = load i32, i32* %t28, align 4
  %t29 = icmp ne i32 %t118, 1
  br i1 %t29, label %B117, label %B121
B113:                               	; preds = %B108
  br label %B110
B117:                               	; preds = %B109
  %t30 = load i32, i32* %t106, align 4
  %t31 = load i32, i32* %t107, align 4
  %t32 = add i32 %t30, %t31
  %t33 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t32
  %t122 = load i32, i32* %t33, align 4
  %t34 = icmp eq i32 %t122, 0
  br i1 %t34, label %B116, label %B125
B121:                               	; preds = %B109
  br label %B115
B110:                               	; preds = %B113
  ret void
B116:                               	; preds = %B117
  %t36 = load i32, i32* @n, align 4
  %t37 = load i32, i32* %t106, align 4
  %t38 = add i32 %t36, %t37
  %t39 = load i32, i32* %t107, align 4
  %t40 = sub i32 %t38, %t39
  %t41 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t40
  %t126 = load i32, i32* %t41, align 4
  %t127 = icmp ne i32 %t126, 0
  %t42 = xor i1 %t127, true
  %t44 = icmp ne i1 %t42, 0
  br i1 %t44, label %B114, label %B129
B125:                               	; preds = %B117
  br label %B115
B115:                               	; preds = %B121, %B125, %B129, %B132
  %t78 = load i32, i32* %t107, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t107, align 4
  br label %B108
B114:                               	; preds = %B116
  %t47 = load i32, i32* %t107, align 4
  %t45 = load i32, i32* %t106, align 4
  %t46 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i32 0, i32 %t45
  store i32 %t47, i32* %t46, align 4
  %t48 = load i32, i32* %t106, align 4
  %t49 = load i32, i32* @n, align 4
  %t50 = icmp eq i32 %t48, %t49
  br i1 %t50, label %B131, label %B135
B129:                               	; preds = %B116
  br label %B115
B131:                               	; preds = %B114
  call void @printans()
  br label %B132
B135:                               	; preds = %B114
  br label %B132
B132:                               	; preds = %B131, %B135
  %t51 = load i32, i32* %t107, align 4
  %t52 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t51
  store i32 1, i32* %t52, align 4
  %t53 = load i32, i32* %t106, align 4
  %t54 = load i32, i32* %t107, align 4
  %t55 = add i32 %t53, %t54
  %t56 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t55
  store i32 1, i32* %t56, align 4
  %t57 = load i32, i32* @n, align 4
  %t58 = load i32, i32* %t106, align 4
  %t59 = add i32 %t57, %t58
  %t60 = load i32, i32* %t107, align 4
  %t61 = sub i32 %t59, %t60
  %t62 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t61
  store i32 1, i32* %t62, align 4
  %t63 = load i32, i32* %t106, align 4
  %t64 = add i32 %t63, 1
  call void @f(i32 %t64)
  %t65 = load i32, i32* %t107, align 4
  %t66 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i32 0, i32 %t65
  store i32 0, i32* %t66, align 4
  %t67 = load i32, i32* %t106, align 4
  %t68 = load i32, i32* %t107, align 4
  %t69 = add i32 %t67, %t68
  %t70 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i32 0, i32 %t69
  store i32 0, i32* %t70, align 4
  %t71 = load i32, i32* @n, align 4
  %t72 = load i32, i32* %t106, align 4
  %t73 = add i32 %t71, %t72
  %t74 = load i32, i32* %t107, align 4
  %t75 = sub i32 %t73, %t74
  %t76 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i32 0, i32 %t75
  store i32 0, i32* %t76, align 4
  br label %B115
}
define i32 @main() {
B136:
  %t137 = alloca i32, align 4
  %t80 = call i32 @getint()
  store i32 %t80, i32* %t137, align 4
  br label %B138
B138:                               	; preds = %B136, %B139
  %t82 = load i32, i32* %t137, align 4
  %t83 = icmp sgt i32 %t82, 0
  br i1 %t83, label %B139, label %B143
B139:                               	; preds = %B138
  %t85 = call i32 @getint()
  store i32 %t85, i32* @n, align 4
  call void @f(i32 1)
  %t87 = load i32, i32* %t137, align 4
  %t88 = sub i32 %t87, 1
  store i32 %t88, i32* %t137, align 4
  br label %B138
B143:                               	; preds = %B138
  br label %B140
B140:                               	; preds = %B143
  %t89 = load i32, i32* @sum, align 4
  ret i32 %t89
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
