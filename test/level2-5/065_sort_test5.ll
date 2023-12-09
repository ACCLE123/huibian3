@n = global i32 0, align 4
define i32 @swap(i32* %t1, i32 %t3, i32 %t5) {
B143:
  %t147 = alloca i32, align 4
  %t146 = alloca i32, align 4
  %t145 = alloca i32, align 4
  %t144 = alloca i32*, align 4
  store i32* %t1, i32** %t144, align 4
  store i32 %t3, i32* %t145, align 4
  store i32 %t5, i32* %t146, align 4
  %t148 = load i32*, i32** %t144, align 4
  %t9 = load i32, i32* %t145, align 4
  %t10 = getelementptr inbounds i32, i32* %t148, i32 %t9
  %t149 = load i32, i32* %t10, align 4
  store i32 %t149, i32* %t147, align 4
  %t150 = load i32*, i32** %t144, align 4
  %t13 = load i32, i32* %t146, align 4
  %t14 = getelementptr inbounds i32, i32* %t150, i32 %t13
  %t151 = load i32, i32* %t14, align 4
  %t152 = load i32*, i32** %t144, align 4
  %t11 = load i32, i32* %t145, align 4
  %t12 = getelementptr inbounds i32, i32* %t152, i32 %t11
  store i32 %t151, i32* %t12, align 4
  %t17 = load i32, i32* %t147, align 4
  %t153 = load i32*, i32** %t144, align 4
  %t15 = load i32, i32* %t146, align 4
  %t16 = getelementptr inbounds i32, i32* %t153, i32 %t15
  store i32 %t17, i32* %t16, align 4
  ret i32 0
}
define i32 @heap_ajust(i32* %t18, i32 %t20, i32 %t22) {
B154:
  %t159 = alloca i32, align 4
  %t158 = alloca i32, align 4
  %t157 = alloca i32, align 4
  %t156 = alloca i32, align 4
  %t155 = alloca i32*, align 4
  store i32* %t18, i32** %t155, align 4
  store i32 %t20, i32* %t156, align 4
  store i32 %t22, i32* %t157, align 4
  %t26 = load i32, i32* %t156, align 4
  store i32 %t26, i32* %t158, align 4
  %t29 = load i32, i32* %t158, align 4
  %t30 = mul i32 %t29, 2
  %t31 = add i32 %t30, 1
  store i32 %t31, i32* %t159, align 4
  br label %B160
B160:                               	; preds = %B154, %B181
  %t32 = load i32, i32* %t159, align 4
  %t33 = load i32, i32* %t157, align 4
  %t34 = add i32 %t33, 1
  %t35 = icmp slt i32 %t32, %t34
  br i1 %t35, label %B161, label %B165
B161:                               	; preds = %B160
  %t36 = load i32, i32* %t159, align 4
  %t37 = load i32, i32* %t157, align 4
  %t38 = icmp slt i32 %t36, %t37
  br i1 %t38, label %B168, label %B171
B165:                               	; preds = %B160
  br label %B162
B168:                               	; preds = %B161
  %t172 = load i32*, i32** %t155, align 4
  %t39 = load i32, i32* %t159, align 4
  %t40 = getelementptr inbounds i32, i32* %t172, i32 %t39
  %t173 = load i32, i32* %t40, align 4
  %t174 = load i32*, i32** %t155, align 4
  %t41 = load i32, i32* %t159, align 4
  %t42 = add i32 %t41, 1
  %t43 = getelementptr inbounds i32, i32* %t174, i32 %t42
  %t175 = load i32, i32* %t43, align 4
  %t44 = icmp slt i32 %t173, %t175
  br i1 %t44, label %B166, label %B178
B171:                               	; preds = %B161
  br label %B167
B162:                               	; preds = %B165
  ret i32 0
B166:                               	; preds = %B168
  %t47 = load i32, i32* %t159, align 4
  %t48 = add i32 %t47, 1
  store i32 %t48, i32* %t159, align 4
  br label %B167
B178:                               	; preds = %B168
  br label %B167
B167:                               	; preds = %B166, %B171, %B178
  %t182 = load i32*, i32** %t155, align 4
  %t49 = load i32, i32* %t158, align 4
  %t50 = getelementptr inbounds i32, i32* %t182, i32 %t49
  %t183 = load i32, i32* %t50, align 4
  %t184 = load i32*, i32** %t155, align 4
  %t51 = load i32, i32* %t159, align 4
  %t52 = getelementptr inbounds i32, i32* %t184, i32 %t51
  %t185 = load i32, i32* %t52, align 4
  %t53 = icmp sgt i32 %t183, %t185
  br i1 %t53, label %B179, label %B188
B179:                               	; preds = %B167
  ret i32 0
  br label %B181
B188:                               	; preds = %B167
  br label %B180
B181:                               	; preds = %B179, %B180
  br label %B160
B180:                               	; preds = %B188
  %t189 = load i32*, i32** %t155, align 4
  %t56 = load i32, i32* %t158, align 4
  %t57 = load i32, i32* %t159, align 4
  %t58 = call i32 @swap(i32* %t189, i32 %t56, i32 %t57)
  store i32 %t58, i32* %t158, align 4
  %t60 = load i32, i32* %t159, align 4
  store i32 %t60, i32* %t158, align 4
  %t62 = load i32, i32* %t158, align 4
  %t63 = mul i32 %t62, 2
  %t64 = add i32 %t63, 1
  store i32 %t64, i32* %t159, align 4
  br label %B181
}
define i32 @heap_sort(i32* %t65, i32 %t67) {
B190:
  %t208 = alloca i32, align 4
  %t194 = alloca i32, align 4
  %t193 = alloca i32, align 4
  %t192 = alloca i32, align 4
  %t191 = alloca i32*, align 4
  store i32* %t65, i32** %t191, align 4
  store i32 %t67, i32* %t192, align 4
  %t72 = load i32, i32* %t192, align 4
  %t73 = sdiv i32 %t72, 2
  %t74 = sub i32 %t73, 1
  store i32 %t74, i32* %t193, align 4
  br label %B195
B195:                               	; preds = %B190, %B196
  %t75 = load i32, i32* %t193, align 4
  %t76 = sub i32 0, 1
  %t77 = icmp sgt i32 %t75, %t76
  br i1 %t77, label %B196, label %B200
B196:                               	; preds = %B195
  %t79 = load i32, i32* %t192, align 4
  %t80 = sub i32 %t79, 1
  store i32 %t80, i32* %t194, align 4
  %t201 = load i32*, i32** %t191, align 4
  %t83 = load i32, i32* %t193, align 4
  %t84 = load i32, i32* %t194, align 4
  %t85 = call i32 @heap_ajust(i32* %t201, i32 %t83, i32 %t84)
  store i32 %t85, i32* %t194, align 4
  %t87 = load i32, i32* %t193, align 4
  %t88 = sub i32 %t87, 1
  store i32 %t88, i32* %t193, align 4
  br label %B195
B200:                               	; preds = %B195
  br label %B197
B197:                               	; preds = %B200
  %t90 = load i32, i32* %t192, align 4
  %t91 = sub i32 %t90, 1
  store i32 %t91, i32* %t193, align 4
  br label %B202
B202:                               	; preds = %B197, %B203
  %t92 = load i32, i32* %t193, align 4
  %t93 = icmp sgt i32 %t92, 0
  br i1 %t93, label %B203, label %B207
B203:                               	; preds = %B202
  store i32 0, i32* %t208, align 4
  %t209 = load i32*, i32** %t191, align 4
  %t98 = load i32, i32* %t208, align 4
  %t99 = load i32, i32* %t193, align 4
  %t100 = call i32 @swap(i32* %t209, i32 %t98, i32 %t99)
  store i32 %t100, i32* %t194, align 4
  %t102 = load i32, i32* %t193, align 4
  %t103 = sub i32 %t102, 1
  store i32 %t103, i32* %t194, align 4
  %t210 = load i32*, i32** %t191, align 4
  %t106 = load i32, i32* %t208, align 4
  %t107 = load i32, i32* %t194, align 4
  %t108 = call i32 @heap_ajust(i32* %t210, i32 %t106, i32 %t107)
  store i32 %t108, i32* %t194, align 4
  %t110 = load i32, i32* %t193, align 4
  %t111 = sub i32 %t110, 1
  store i32 %t111, i32* %t193, align 4
  br label %B202
B207:                               	; preds = %B202
  br label %B204
B204:                               	; preds = %B207
  ret i32 0
}
define i32 @main() {
B211:
  %t220 = alloca i32, align 4
  %t213 = alloca i32, align 4
  %t212 = alloca [10 x i32], align 4
  store i32 10, i32* @n, align 4
  %t114 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 0
  store i32 4, i32* %t114, align 4
  %t115 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 1
  store i32 3, i32* %t115, align 4
  %t116 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 2
  store i32 9, i32* %t116, align 4
  %t117 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 3
  store i32 2, i32* %t117, align 4
  %t118 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 4
  store i32 0, i32* %t118, align 4
  %t119 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 5
  store i32 1, i32* %t119, align 4
  %t120 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 6
  store i32 6, i32* %t120, align 4
  %t121 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 7
  store i32 5, i32* %t121, align 4
  %t122 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 8
  store i32 7, i32* %t122, align 4
  %t123 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 9
  store i32 8, i32* %t123, align 4
  store i32 0, i32* %t213, align 4
  %t127 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 0
  %t128 = load i32, i32* @n, align 4
  %t129 = call i32 @heap_sort(i32* %t127, i32 %t128)
  store i32 %t129, i32* %t213, align 4
  br label %B214
B214:                               	; preds = %B211, %B215
  %t130 = load i32, i32* %t213, align 4
  %t131 = load i32, i32* @n, align 4
  %t132 = icmp slt i32 %t130, %t131
  br i1 %t132, label %B215, label %B219
B215:                               	; preds = %B214
  %t135 = load i32, i32* %t213, align 4
  %t136 = getelementptr inbounds [10 x i32], [10 x i32]* %t212, i32 0, i32 %t135
  %t221 = load i32, i32* %t136, align 4
  store i32 %t221, i32* %t220, align 4
  %t137 = load i32, i32* %t220, align 4
  call void @putint(i32 %t137)
  store i32 10, i32* %t220, align 4
  %t139 = load i32, i32* %t220, align 4
  call void @putch(i32 %t139)
  %t141 = load i32, i32* %t213, align 4
  %t142 = add i32 %t141, 1
  store i32 %t142, i32* %t213, align 4
  br label %B214
B219:                               	; preds = %B214
  br label %B216
B216:                               	; preds = %B219
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
