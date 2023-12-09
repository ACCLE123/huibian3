define i32 @canJump(i32* %t0, i32 %t2) {
B82:
  %t111 = alloca i32, align 4
  %t98 = alloca i32, align 4
  %t97 = alloca [10 x i32], align 4
  %t84 = alloca i32, align 4
  %t83 = alloca i32*, align 4
  store i32* %t0, i32** %t83, align 4
  store i32 %t2, i32* %t84, align 4
  %t4 = load i32, i32* %t84, align 4
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %B85, label %B89
B85:                               	; preds = %B82
  ret i32 1
  br label %B86
B89:                               	; preds = %B82
  br label %B86
B86:                               	; preds = %B85, %B89
  %t92 = load i32*, i32** %t83, align 4
  %t6 = getelementptr inbounds i32, i32* %t92, i32 0
  %t93 = load i32, i32* %t6, align 4
  %t7 = load i32, i32* %t84, align 4
  %t8 = sub i32 %t7, 2
  %t9 = icmp sgt i32 %t93, %t8
  br i1 %t9, label %B90, label %B96
B90:                               	; preds = %B86
  ret i32 1
  br label %B91
B96:                               	; preds = %B86
  br label %B91
B91:                               	; preds = %B90, %B96
  store i32 0, i32* %t98, align 4
  br label %B99
B99:                               	; preds = %B91, %B100
  %t13 = load i32, i32* %t98, align 4
  %t14 = load i32, i32* %t84, align 4
  %t15 = sub i32 %t14, 1
  %t16 = icmp slt i32 %t13, %t15
  br i1 %t16, label %B100, label %B104
B100:                               	; preds = %B99
  %t17 = load i32, i32* %t98, align 4
  %t18 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t17
  store i32 0, i32* %t18, align 4
  %t20 = load i32, i32* %t98, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t98, align 4
  br label %B99
B104:                               	; preds = %B99
  br label %B101
B101:                               	; preds = %B104
  %t22 = load i32, i32* %t84, align 4
  %t23 = sub i32 %t22, 1
  %t24 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t23
  store i32 1, i32* %t24, align 4
  %t26 = load i32, i32* %t84, align 4
  %t27 = sub i32 %t26, 2
  store i32 %t27, i32* %t98, align 4
  br label %B105
B105:                               	; preds = %B101, %B124
  %t28 = load i32, i32* %t98, align 4
  %t29 = sub i32 0, 1
  %t30 = icmp sgt i32 %t28, %t29
  br i1 %t30, label %B106, label %B110
B106:                               	; preds = %B105
  %t115 = load i32*, i32** %t83, align 4
  %t32 = load i32, i32* %t98, align 4
  %t33 = getelementptr inbounds i32, i32* %t115, i32 %t32
  %t116 = load i32, i32* %t33, align 4
  %t34 = load i32, i32* %t84, align 4
  %t35 = sub i32 %t34, 1
  %t36 = load i32, i32* %t98, align 4
  %t37 = sub i32 %t35, %t36
  %t38 = icmp slt i32 %t116, %t37
  br i1 %t38, label %B112, label %B119
B110:                               	; preds = %B105
  br label %B107
B112:                               	; preds = %B106
  %t120 = load i32*, i32** %t83, align 4
  %t40 = load i32, i32* %t98, align 4
  %t41 = getelementptr inbounds i32, i32* %t120, i32 %t40
  %t121 = load i32, i32* %t41, align 4
  store i32 %t121, i32* %t111, align 4
  br label %B114
B119:                               	; preds = %B106
  br label %B113
B107:                               	; preds = %B110
  %t63 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 0
  %t134 = load i32, i32* %t63, align 4
  ret i32 %t134
B114:                               	; preds = %B112, %B113
  br label %B122
B113:                               	; preds = %B119
  %t43 = load i32, i32* %t84, align 4
  %t44 = sub i32 %t43, 1
  %t45 = load i32, i32* %t98, align 4
  %t46 = sub i32 %t44, %t45
  store i32 %t46, i32* %t111, align 4
  br label %B114
B122:                               	; preds = %B114, %B129
  %t47 = load i32, i32* %t111, align 4
  %t48 = sub i32 0, 1
  %t49 = icmp sgt i32 %t47, %t48
  br i1 %t49, label %B123, label %B127
B123:                               	; preds = %B122
  %t50 = load i32, i32* %t98, align 4
  %t51 = load i32, i32* %t111, align 4
  %t52 = add i32 %t50, %t51
  %t53 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t52
  %t130 = load i32, i32* %t53, align 4
  %t54 = icmp ne i32 %t130, 0
  br i1 %t54, label %B128, label %B133
B127:                               	; preds = %B122
  br label %B124
B128:                               	; preds = %B123
  %t55 = load i32, i32* %t98, align 4
  %t56 = getelementptr inbounds [10 x i32], [10 x i32]* %t97, i32 0, i32 %t55
  store i32 1, i32* %t56, align 4
  br label %B129
B133:                               	; preds = %B123
  br label %B129
B124:                               	; preds = %B127
  %t61 = load i32, i32* %t98, align 4
  %t62 = sub i32 %t61, 1
  store i32 %t62, i32* %t98, align 4
  br label %B105
B129:                               	; preds = %B128, %B133
  %t58 = load i32, i32* %t111, align 4
  %t59 = sub i32 %t58, 1
  store i32 %t59, i32* %t111, align 4
  br label %B122
}
define i32 @main() {
B135:
  %t137 = alloca [10 x i32], align 4
  %t136 = alloca i32, align 4
  %t66 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 0
  store i32 3, i32* %t66, align 4
  %t67 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 1
  store i32 3, i32* %t67, align 4
  %t68 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 2
  store i32 9, i32* %t68, align 4
  %t69 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 3
  store i32 0, i32* %t69, align 4
  %t70 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 4
  store i32 0, i32* %t70, align 4
  %t71 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 5
  store i32 1, i32* %t71, align 4
  %t72 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 6
  store i32 1, i32* %t72, align 4
  %t73 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 7
  store i32 5, i32* %t73, align 4
  %t74 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 8
  store i32 7, i32* %t74, align 4
  %t75 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 9
  store i32 8, i32* %t75, align 4
  store i32 10, i32* %t136, align 4
  %t78 = getelementptr inbounds [10 x i32], [10 x i32]* %t137, i32 0, i32 0
  %t79 = load i32, i32* %t136, align 4
  %t80 = call i32 @canJump(i32* %t78, i32 %t79)
  store i32 %t80, i32* %t136, align 4
  %t81 = load i32, i32* %t136, align 4
  ret i32 %t81
}
