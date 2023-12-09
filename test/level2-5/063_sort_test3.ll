@n = global i32 0, align 4
define i32 @QuickSort(i32* %t1, i32 %t3, i32 %t5) {
B120:
  %t181 = alloca i32, align 4
  %t131 = alloca i32, align 4
  %t130 = alloca i32, align 4
  %t129 = alloca i32, align 4
  %t123 = alloca i32, align 4
  %t122 = alloca i32, align 4
  %t121 = alloca i32*, align 4
  store i32* %t1, i32** %t121, align 4
  store i32 %t3, i32* %t122, align 4
  store i32 %t5, i32* %t123, align 4
  %t7 = load i32, i32* %t122, align 4
  %t8 = load i32, i32* %t123, align 4
  %t9 = icmp slt i32 %t7, %t8
  br i1 %t9, label %B124, label %B128
B124:                               	; preds = %B120
  %t12 = load i32, i32* %t122, align 4
  store i32 %t12, i32* %t129, align 4
  %t15 = load i32, i32* %t123, align 4
  store i32 %t15, i32* %t130, align 4
  %t132 = load i32*, i32** %t121, align 4
  %t18 = load i32, i32* %t122, align 4
  %t19 = getelementptr inbounds i32, i32* %t132, i32 %t18
  %t133 = load i32, i32* %t19, align 4
  store i32 %t133, i32* %t131, align 4
  br label %B134
B128:                               	; preds = %B120
  br label %B125
B134:                               	; preds = %B124, %B173
  %t20 = load i32, i32* %t129, align 4
  %t21 = load i32, i32* %t130, align 4
  %t22 = icmp slt i32 %t20, %t21
  br i1 %t22, label %B135, label %B139
B125:                               	; preds = %B128, %B136
  ret i32 0
B135:                               	; preds = %B134
  br label %B140
B139:                               	; preds = %B134
  br label %B136
B140:                               	; preds = %B135, %B141
  %t23 = load i32, i32* %t129, align 4
  %t24 = load i32, i32* %t130, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B143, label %B146
B136:                               	; preds = %B139
  %t68 = load i32, i32* %t131, align 4
  %t180 = load i32*, i32** %t121, align 4
  %t66 = load i32, i32* %t129, align 4
  %t67 = getelementptr inbounds i32, i32* %t180, i32 %t66
  store i32 %t68, i32* %t67, align 4
  %t71 = load i32, i32* %t129, align 4
  %t72 = sub i32 %t71, 1
  store i32 %t72, i32* %t181, align 4
  %t182 = load i32*, i32** %t121, align 4
  %t75 = load i32, i32* %t122, align 4
  %t76 = load i32, i32* %t181, align 4
  %t77 = call i32 @QuickSort(i32* %t182, i32 %t75, i32 %t76)
  store i32 %t77, i32* %t181, align 4
  %t79 = load i32, i32* %t129, align 4
  %t80 = add i32 %t79, 1
  store i32 %t80, i32* %t181, align 4
  %t183 = load i32*, i32** %t121, align 4
  %t83 = load i32, i32* %t181, align 4
  %t84 = load i32, i32* %t123, align 4
  %t85 = call i32 @QuickSort(i32* %t183, i32 %t83, i32 %t84)
  store i32 %t85, i32* %t181, align 4
  br label %B125
B143:                               	; preds = %B140
  %t147 = load i32*, i32** %t121, align 4
  %t26 = load i32, i32* %t130, align 4
  %t27 = getelementptr inbounds i32, i32* %t147, i32 %t26
  %t148 = load i32, i32* %t27, align 4
  %t28 = load i32, i32* %t131, align 4
  %t29 = sub i32 %t28, 1
  %t30 = icmp sgt i32 %t148, %t29
  br i1 %t30, label %B141, label %B151
B146:                               	; preds = %B140
  br label %B142
B141:                               	; preds = %B143
  %t33 = load i32, i32* %t130, align 4
  %t34 = sub i32 %t33, 1
  store i32 %t34, i32* %t130, align 4
  br label %B140
B151:                               	; preds = %B143
  br label %B142
B142:                               	; preds = %B146, %B151
  %t35 = load i32, i32* %t129, align 4
  %t36 = load i32, i32* %t130, align 4
  %t37 = icmp slt i32 %t35, %t36
  br i1 %t37, label %B152, label %B156
B152:                               	; preds = %B142
  %t157 = load i32*, i32** %t121, align 4
  %t40 = load i32, i32* %t130, align 4
  %t41 = getelementptr inbounds i32, i32* %t157, i32 %t40
  %t158 = load i32, i32* %t41, align 4
  %t159 = load i32*, i32** %t121, align 4
  %t38 = load i32, i32* %t129, align 4
  %t39 = getelementptr inbounds i32, i32* %t159, i32 %t38
  store i32 %t158, i32* %t39, align 4
  %t43 = load i32, i32* %t129, align 4
  %t44 = add i32 %t43, 1
  store i32 %t44, i32* %t129, align 4
  br label %B153
B156:                               	; preds = %B142
  br label %B153
B153:                               	; preds = %B152, %B156
  br label %B160
B160:                               	; preds = %B153, %B161
  %t45 = load i32, i32* %t129, align 4
  %t46 = load i32, i32* %t130, align 4
  %t47 = icmp slt i32 %t45, %t46
  br i1 %t47, label %B163, label %B166
B163:                               	; preds = %B160
  %t167 = load i32*, i32** %t121, align 4
  %t48 = load i32, i32* %t129, align 4
  %t49 = getelementptr inbounds i32, i32* %t167, i32 %t48
  %t168 = load i32, i32* %t49, align 4
  %t50 = load i32, i32* %t131, align 4
  %t51 = icmp slt i32 %t168, %t50
  br i1 %t51, label %B161, label %B171
B166:                               	; preds = %B160
  br label %B162
B161:                               	; preds = %B163
  %t54 = load i32, i32* %t129, align 4
  %t55 = add i32 %t54, 1
  store i32 %t55, i32* %t129, align 4
  br label %B160
B171:                               	; preds = %B163
  br label %B162
B162:                               	; preds = %B166, %B171
  %t56 = load i32, i32* %t129, align 4
  %t57 = load i32, i32* %t130, align 4
  %t58 = icmp slt i32 %t56, %t57
  br i1 %t58, label %B172, label %B176
B172:                               	; preds = %B162
  %t177 = load i32*, i32** %t121, align 4
  %t61 = load i32, i32* %t129, align 4
  %t62 = getelementptr inbounds i32, i32* %t177, i32 %t61
  %t178 = load i32, i32* %t62, align 4
  %t179 = load i32*, i32** %t121, align 4
  %t59 = load i32, i32* %t130, align 4
  %t60 = getelementptr inbounds i32, i32* %t179, i32 %t59
  store i32 %t178, i32* %t60, align 4
  %t64 = load i32, i32* %t130, align 4
  %t65 = sub i32 %t64, 1
  store i32 %t65, i32* %t130, align 4
  br label %B173
B176:                               	; preds = %B162
  br label %B173
B173:                               	; preds = %B172, %B176
  br label %B134
}
define i32 @main() {
B184:
  %t194 = alloca i32, align 4
  %t187 = alloca i32, align 4
  %t186 = alloca i32, align 4
  %t185 = alloca [10 x i32], align 4
  store i32 10, i32* @n, align 4
  %t88 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 0
  store i32 4, i32* %t88, align 4
  %t89 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 1
  store i32 3, i32* %t89, align 4
  %t90 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 2
  store i32 9, i32* %t90, align 4
  %t91 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 3
  store i32 2, i32* %t91, align 4
  %t92 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 4
  store i32 0, i32* %t92, align 4
  %t93 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 5
  store i32 1, i32* %t93, align 4
  %t94 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 6
  store i32 6, i32* %t94, align 4
  %t95 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 7
  store i32 5, i32* %t95, align 4
  %t96 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 8
  store i32 7, i32* %t96, align 4
  %t97 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 9
  store i32 8, i32* %t97, align 4
  store i32 0, i32* %t186, align 4
  store i32 9, i32* %t187, align 4
  %t103 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 0
  %t104 = load i32, i32* %t186, align 4
  %t105 = load i32, i32* %t187, align 4
  %t106 = call i32 @QuickSort(i32* %t103, i32 %t104, i32 %t105)
  store i32 %t106, i32* %t186, align 4
  br label %B188
B188:                               	; preds = %B184, %B189
  %t107 = load i32, i32* %t186, align 4
  %t108 = load i32, i32* @n, align 4
  %t109 = icmp slt i32 %t107, %t108
  br i1 %t109, label %B189, label %B193
B189:                               	; preds = %B188
  %t112 = load i32, i32* %t186, align 4
  %t113 = getelementptr inbounds [10 x i32], [10 x i32]* %t185, i32 0, i32 %t112
  %t195 = load i32, i32* %t113, align 4
  store i32 %t195, i32* %t194, align 4
  %t114 = load i32, i32* %t194, align 4
  call void @putint(i32 %t114)
  store i32 10, i32* %t194, align 4
  %t116 = load i32, i32* %t194, align 4
  call void @putch(i32 %t116)
  %t118 = load i32, i32* %t186, align 4
  %t119 = add i32 %t118, 1
  store i32 %t119, i32* %t186, align 4
  br label %B188
B193:                               	; preds = %B188
  br label %B190
B190:                               	; preds = %B193
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
