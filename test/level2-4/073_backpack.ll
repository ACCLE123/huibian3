@V = global [200 x [200 x i32]] zeroinitializer, align 4
define i32 @KnapSack(i32 %t1, i32* %t3, i32* %t5, i32* %t7, i32 %t9) {
B109:
  %t143 = alloca i32, align 4
  %t140 = alloca i32, align 4
  %t116 = alloca i32, align 4
  %t115 = alloca i32, align 4
  %t114 = alloca i32, align 4
  %t113 = alloca i32*, align 4
  %t112 = alloca i32*, align 4
  %t111 = alloca i32*, align 4
  %t110 = alloca i32, align 4
  store i32 %t1, i32* %t110, align 4
  store i32* %t3, i32** %t111, align 4
  store i32* %t5, i32** %t112, align 4
  store i32* %t7, i32** %t113, align 4
  store i32 %t9, i32* %t114, align 4
  store i32 1, i32* %t115, align 4
  br label %B117
B117:                               	; preds = %B109, %B125
  %t14 = load i32, i32* %t115, align 4
  %t15 = load i32, i32* %t110, align 4
  %t16 = icmp sle i32 %t14, %t15
  br i1 %t16, label %B118, label %B122
B118:                               	; preds = %B117
  store i32 0, i32* %t116, align 4
  br label %B123
B122:                               	; preds = %B117
  br label %B119
B123:                               	; preds = %B118, %B131
  %t18 = load i32, i32* %t116, align 4
  %t19 = load i32, i32* %t114, align 4
  %t20 = add i32 %t19, 1
  %t21 = icmp slt i32 %t18, %t20
  br i1 %t21, label %B124, label %B128
B119:                               	; preds = %B122
  %t67 = load i32, i32* %t114, align 4
  store i32 %t67, i32* %t116, align 4
  %t69 = load i32, i32* %t110, align 4
  store i32 %t69, i32* %t115, align 4
  br label %B158
B124:                               	; preds = %B123
  %t22 = load i32, i32* %t116, align 4
  %t132 = load i32*, i32** %t111, align 4
  %t23 = load i32, i32* %t115, align 4
  %t24 = getelementptr inbounds i32, i32* %t132, i32 %t23
  %t133 = load i32, i32* %t24, align 4
  %t25 = icmp slt i32 %t22, %t133
  br i1 %t25, label %B129, label %B136
B128:                               	; preds = %B123
  br label %B125
B158:                               	; preds = %B119, %B166
  %t70 = load i32, i32* %t115, align 4
  %t71 = icmp sge i32 %t70, 1
  br i1 %t71, label %B159, label %B163
B129:                               	; preds = %B124
  %t29 = load i32, i32* %t115, align 4
  %t30 = sub i32 %t29, 1
  %t32 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t30
  %t31 = load i32, i32* %t116, align 4
  %t137 = getelementptr inbounds [200 x i32], [200 x i32]* %t32, i32 0, i32 %t31
  %t138 = load i32, i32* %t137, align 4
  %t26 = load i32, i32* %t115, align 4
  %t28 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t26
  %t27 = load i32, i32* %t116, align 4
  %t139 = getelementptr inbounds [200 x i32], [200 x i32]* %t28, i32 0, i32 %t27
  store i32 %t138, i32* %t139, align 4
  br label %B131
B136:                               	; preds = %B124
  br label %B130
B125:                               	; preds = %B128
  %t64 = load i32, i32* %t115, align 4
  %t65 = add i32 %t64, 1
  store i32 %t65, i32* %t115, align 4
  br label %B117
B159:                               	; preds = %B158
  %t72 = load i32, i32* %t115, align 4
  %t74 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t72
  %t73 = load i32, i32* %t116, align 4
  %t167 = getelementptr inbounds [200 x i32], [200 x i32]* %t74, i32 0, i32 %t73
  %t168 = load i32, i32* %t167, align 4
  %t75 = load i32, i32* %t115, align 4
  %t76 = sub i32 %t75, 1
  %t78 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t76
  %t77 = load i32, i32* %t116, align 4
  %t169 = getelementptr inbounds [200 x i32], [200 x i32]* %t78, i32 0, i32 %t77
  %t170 = load i32, i32* %t169, align 4
  %t79 = icmp sgt i32 %t168, %t170
  br i1 %t79, label %B164, label %B173
B163:                               	; preds = %B158
  br label %B160
B131:                               	; preds = %B129, %B152
  %t61 = load i32, i32* %t116, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* %t116, align 4
  br label %B123
B130:                               	; preds = %B136
  %t33 = load i32, i32* %t115, align 4
  %t34 = sub i32 %t33, 1
  %t36 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t34
  %t35 = load i32, i32* %t116, align 4
  %t141 = getelementptr inbounds [200 x i32], [200 x i32]* %t36, i32 0, i32 %t35
  %t142 = load i32, i32* %t141, align 4
  store i32 %t142, i32* %t140, align 4
  %t38 = load i32, i32* %t115, align 4
  %t39 = sub i32 %t38, 1
  %t44 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t39
  %t40 = load i32, i32* %t116, align 4
  %t145 = load i32*, i32** %t111, align 4
  %t41 = load i32, i32* %t115, align 4
  %t42 = getelementptr inbounds i32, i32* %t145, i32 %t41
  %t146 = load i32, i32* %t42, align 4
  %t43 = sub i32 %t40, %t146
  %t144 = getelementptr inbounds [200 x i32], [200 x i32]* %t44, i32 0, i32 %t43
  %t147 = load i32, i32* %t144, align 4
  %t148 = load i32*, i32** %t112, align 4
  %t45 = load i32, i32* %t115, align 4
  %t46 = getelementptr inbounds i32, i32* %t148, i32 %t45
  %t149 = load i32, i32* %t46, align 4
  %t47 = add i32 %t147, %t149
  store i32 %t47, i32* %t143, align 4
  %t49 = load i32, i32* %t140, align 4
  %t50 = load i32, i32* %t143, align 4
  %t51 = icmp sgt i32 %t49, %t50
  br i1 %t51, label %B150, label %B155
B164:                               	; preds = %B159
  %t174 = load i32*, i32** %t113, align 4
  %t80 = load i32, i32* %t115, align 4
  %t81 = getelementptr inbounds i32, i32* %t174, i32 %t80
  store i32 1, i32* %t81, align 4
  %t83 = load i32, i32* %t116, align 4
  %t175 = load i32*, i32** %t111, align 4
  %t84 = load i32, i32* %t115, align 4
  %t85 = getelementptr inbounds i32, i32* %t175, i32 %t84
  %t176 = load i32, i32* %t85, align 4
  %t86 = sub i32 %t83, %t176
  store i32 %t86, i32* %t116, align 4
  br label %B166
B173:                               	; preds = %B159
  br label %B165
B160:                               	; preds = %B163
  %t92 = load i32, i32* %t110, align 4
  %t94 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t92
  %t93 = load i32, i32* %t114, align 4
  %t178 = getelementptr inbounds [200 x i32], [200 x i32]* %t94, i32 0, i32 %t93
  %t179 = load i32, i32* %t178, align 4
  ret i32 %t179
B150:                               	; preds = %B130
  %t55 = load i32, i32* %t140, align 4
  %t52 = load i32, i32* %t115, align 4
  %t54 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t52
  %t53 = load i32, i32* %t116, align 4
  %t156 = getelementptr inbounds [200 x i32], [200 x i32]* %t54, i32 0, i32 %t53
  store i32 %t55, i32* %t156, align 4
  br label %B152
B155:                               	; preds = %B130
  br label %B151
B166:                               	; preds = %B164, %B165
  %t90 = load i32, i32* %t115, align 4
  %t91 = sub i32 %t90, 1
  store i32 %t91, i32* %t115, align 4
  br label %B158
B165:                               	; preds = %B173
  %t177 = load i32*, i32** %t113, align 4
  %t87 = load i32, i32* %t115, align 4
  %t88 = getelementptr inbounds i32, i32* %t177, i32 %t87
  store i32 0, i32* %t88, align 4
  br label %B166
B152:                               	; preds = %B150, %B151
  br label %B131
B151:                               	; preds = %B155
  %t59 = load i32, i32* %t143, align 4
  %t56 = load i32, i32* %t115, align 4
  %t58 = getelementptr inbounds [200 x [200 x i32]], [200 x [200 x i32]]* @V, i32 0, i32 %t56
  %t57 = load i32, i32* %t116, align 4
  %t157 = getelementptr inbounds [200 x i32], [200 x i32]* %t58, i32 0, i32 %t57
  store i32 %t59, i32* %t157, align 4
  br label %B152
}
define i32 @main() {
B180:
  %t198 = alloca i32, align 4
  %t197 = alloca i32, align 4
  %t196 = alloca [6 x i32], align 4
  %t189 = alloca [6 x i32], align 4
  %t182 = alloca [6 x i32], align 4
  %t181 = alloca i32, align 4
  %t183 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 0
  store i32 0, i32* %t183, align 4
  %t184 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 1
  store i32 2, i32* %t184, align 4
  %t185 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 2
  store i32 2, i32* %t185, align 4
  %t186 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 3
  store i32 6, i32* %t186, align 4
  %t187 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 4
  store i32 5, i32* %t187, align 4
  %t188 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 5
  store i32 4, i32* %t188, align 4
  %t190 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 0
  store i32 0, i32* %t190, align 4
  %t191 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 1
  store i32 6, i32* %t191, align 4
  %t192 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 2
  store i32 3, i32* %t192, align 4
  %t193 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 3
  store i32 5, i32* %t193, align 4
  %t194 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 4
  store i32 4, i32* %t194, align 4
  %t195 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 5
  store i32 6, i32* %t195, align 4
  store i32 5, i32* %t197, align 4
  store i32 10, i32* %t198, align 4
  %t102 = load i32, i32* %t197, align 4
  %t103 = getelementptr inbounds [6 x i32], [6 x i32]* %t182, i32 0, i32 0
  %t104 = getelementptr inbounds [6 x i32], [6 x i32]* %t189, i32 0, i32 0
  %t105 = getelementptr inbounds [6 x i32], [6 x i32]* %t196, i32 0, i32 0
  %t106 = load i32, i32* %t198, align 4
  %t107 = call i32 @KnapSack(i32 %t102, i32* %t103, i32* %t104, i32* %t105, i32 %t106)
  store i32 %t107, i32* %t181, align 4
  %t108 = load i32, i32* %t181, align 4
  call void @putint(i32 %t108)
  ret i32 0
}
declare void @putint(i32)
