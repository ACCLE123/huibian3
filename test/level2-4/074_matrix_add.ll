@M = global i32 0, align 4
@L = global i32 0, align 4
@N = global i32 0, align 4
define i32 @add(i32* %t3, i32* %t5, i32* %t7, i32* %t9, i32* %t11, i32* %t13, i32* %t15, i32* %t17, i32* %t19) {
B138:
  %t148 = alloca i32, align 4
  %t147 = alloca i32*, align 4
  %t146 = alloca i32*, align 4
  %t145 = alloca i32*, align 4
  %t144 = alloca i32*, align 4
  %t143 = alloca i32*, align 4
  %t142 = alloca i32*, align 4
  %t141 = alloca i32*, align 4
  %t140 = alloca i32*, align 4
  %t139 = alloca i32*, align 4
  store i32* %t3, i32** %t139, align 4
  store i32* %t5, i32** %t140, align 4
  store i32* %t7, i32** %t141, align 4
  store i32* %t9, i32** %t142, align 4
  store i32* %t11, i32** %t143, align 4
  store i32* %t13, i32** %t144, align 4
  store i32* %t15, i32** %t145, align 4
  store i32* %t17, i32** %t146, align 4
  store i32* %t19, i32** %t147, align 4
  store i32 0, i32* %t148, align 4
  br label %B149
B149:                               	; preds = %B138, %B150
  %t23 = load i32, i32* %t148, align 4
  %t24 = load i32, i32* @M, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B150, label %B154
B150:                               	; preds = %B149
  %t155 = load i32*, i32** %t139, align 4
  %t28 = load i32, i32* %t148, align 4
  %t29 = getelementptr inbounds i32, i32* %t155, i32 %t28
  %t156 = load i32, i32* %t29, align 4
  %t157 = load i32*, i32** %t142, align 4
  %t30 = load i32, i32* %t148, align 4
  %t31 = getelementptr inbounds i32, i32* %t157, i32 %t30
  %t158 = load i32, i32* %t31, align 4
  %t32 = add i32 %t156, %t158
  %t159 = load i32*, i32** %t145, align 4
  %t26 = load i32, i32* %t148, align 4
  %t27 = getelementptr inbounds i32, i32* %t159, i32 %t26
  store i32 %t32, i32* %t27, align 4
  %t160 = load i32*, i32** %t140, align 4
  %t35 = load i32, i32* %t148, align 4
  %t36 = getelementptr inbounds i32, i32* %t160, i32 %t35
  %t161 = load i32, i32* %t36, align 4
  %t162 = load i32*, i32** %t143, align 4
  %t37 = load i32, i32* %t148, align 4
  %t38 = getelementptr inbounds i32, i32* %t162, i32 %t37
  %t163 = load i32, i32* %t38, align 4
  %t39 = add i32 %t161, %t163
  %t164 = load i32*, i32** %t146, align 4
  %t33 = load i32, i32* %t148, align 4
  %t34 = getelementptr inbounds i32, i32* %t164, i32 %t33
  store i32 %t39, i32* %t34, align 4
  %t165 = load i32*, i32** %t141, align 4
  %t42 = load i32, i32* %t148, align 4
  %t43 = getelementptr inbounds i32, i32* %t165, i32 %t42
  %t166 = load i32, i32* %t43, align 4
  %t167 = load i32*, i32** %t144, align 4
  %t44 = load i32, i32* %t148, align 4
  %t45 = getelementptr inbounds i32, i32* %t167, i32 %t44
  %t168 = load i32, i32* %t45, align 4
  %t46 = add i32 %t166, %t168
  %t169 = load i32*, i32** %t147, align 4
  %t40 = load i32, i32* %t148, align 4
  %t41 = getelementptr inbounds i32, i32* %t169, i32 %t40
  store i32 %t46, i32* %t41, align 4
  %t48 = load i32, i32* %t148, align 4
  %t49 = add i32 %t48, 1
  store i32 %t49, i32* %t148, align 4
  br label %B149
B154:                               	; preds = %B149
  br label %B151
B151:                               	; preds = %B154
  ret i32 0
}
define i32 @main() {
B170:
  %t187 = alloca i32, align 4
  %t180 = alloca i32, align 4
  %t179 = alloca [3 x i32], align 4
  %t178 = alloca [3 x i32], align 4
  %t177 = alloca [6 x i32], align 4
  %t176 = alloca [3 x i32], align 4
  %t175 = alloca [3 x i32], align 4
  %t174 = alloca [3 x i32], align 4
  %t173 = alloca [3 x i32], align 4
  %t172 = alloca [3 x i32], align 4
  %t171 = alloca [3 x i32], align 4
  store i32 3, i32* @N, align 4
  store i32 3, i32* @M, align 4
  store i32 3, i32* @L, align 4
  store i32 0, i32* %t180, align 4
  br label %B181
B181:                               	; preds = %B170, %B182
  %t64 = load i32, i32* %t180, align 4
  %t65 = load i32, i32* @M, align 4
  %t66 = icmp slt i32 %t64, %t65
  br i1 %t66, label %B182, label %B186
B182:                               	; preds = %B181
  %t69 = load i32, i32* %t180, align 4
  %t67 = load i32, i32* %t180, align 4
  %t68 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 %t67
  store i32 %t69, i32* %t68, align 4
  %t72 = load i32, i32* %t180, align 4
  %t70 = load i32, i32* %t180, align 4
  %t71 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 %t70
  store i32 %t72, i32* %t71, align 4
  %t75 = load i32, i32* %t180, align 4
  %t73 = load i32, i32* %t180, align 4
  %t74 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 %t73
  store i32 %t75, i32* %t74, align 4
  %t78 = load i32, i32* %t180, align 4
  %t76 = load i32, i32* %t180, align 4
  %t77 = getelementptr inbounds [3 x i32], [3 x i32]* %t174, i32 0, i32 %t76
  store i32 %t78, i32* %t77, align 4
  %t81 = load i32, i32* %t180, align 4
  %t79 = load i32, i32* %t180, align 4
  %t80 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 %t79
  store i32 %t81, i32* %t80, align 4
  %t84 = load i32, i32* %t180, align 4
  %t82 = load i32, i32* %t180, align 4
  %t83 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 %t82
  store i32 %t84, i32* %t83, align 4
  %t86 = load i32, i32* %t180, align 4
  %t87 = add i32 %t86, 1
  store i32 %t87, i32* %t180, align 4
  br label %B181
B186:                               	; preds = %B181
  br label %B183
B183:                               	; preds = %B186
  %t89 = getelementptr inbounds [3 x i32], [3 x i32]* %t171, i32 0, i32 0
  %t90 = getelementptr inbounds [3 x i32], [3 x i32]* %t172, i32 0, i32 0
  %t91 = getelementptr inbounds [3 x i32], [3 x i32]* %t173, i32 0, i32 0
  %t92 = getelementptr inbounds [3 x i32], [3 x i32]* %t174, i32 0, i32 0
  %t93 = getelementptr inbounds [3 x i32], [3 x i32]* %t175, i32 0, i32 0
  %t94 = getelementptr inbounds [3 x i32], [3 x i32]* %t176, i32 0, i32 0
  %t95 = getelementptr inbounds [6 x i32], [6 x i32]* %t177, i32 0, i32 0
  %t96 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 0
  %t97 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 0
  %t98 = call i32 @add(i32* %t89, i32* %t90, i32* %t91, i32* %t92, i32* %t93, i32* %t94, i32* %t95, i32* %t96, i32* %t97)
  store i32 %t98, i32* %t180, align 4
  br label %B188
B188:                               	; preds = %B183, %B189
  %t100 = load i32, i32* %t180, align 4
  %t101 = load i32, i32* @N, align 4
  %t102 = icmp slt i32 %t100, %t101
  br i1 %t102, label %B189, label %B193
B189:                               	; preds = %B188
  %t104 = load i32, i32* %t180, align 4
  %t105 = getelementptr inbounds [6 x i32], [6 x i32]* %t177, i32 0, i32 %t104
  %t194 = load i32, i32* %t105, align 4
  store i32 %t194, i32* %t187, align 4
  %t106 = load i32, i32* %t187, align 4
  call void @putint(i32 %t106)
  %t108 = load i32, i32* %t180, align 4
  %t109 = add i32 %t108, 1
  store i32 %t109, i32* %t180, align 4
  br label %B188
B193:                               	; preds = %B188
  br label %B190
B190:                               	; preds = %B193
  store i32 10, i32* %t187, align 4
  %t111 = load i32, i32* %t187, align 4
  call void @putch(i32 %t111)
  store i32 0, i32* %t180, align 4
  br label %B195
B195:                               	; preds = %B190, %B196
  %t113 = load i32, i32* %t180, align 4
  %t114 = load i32, i32* @N, align 4
  %t115 = icmp slt i32 %t113, %t114
  br i1 %t115, label %B196, label %B200
B196:                               	; preds = %B195
  %t117 = load i32, i32* %t180, align 4
  %t118 = getelementptr inbounds [3 x i32], [3 x i32]* %t178, i32 0, i32 %t117
  %t201 = load i32, i32* %t118, align 4
  store i32 %t201, i32* %t187, align 4
  %t119 = load i32, i32* %t187, align 4
  call void @putint(i32 %t119)
  %t121 = load i32, i32* %t180, align 4
  %t122 = add i32 %t121, 1
  store i32 %t122, i32* %t180, align 4
  br label %B195
B200:                               	; preds = %B195
  br label %B197
B197:                               	; preds = %B200
  store i32 10, i32* %t187, align 4
  %t124 = load i32, i32* %t187, align 4
  call void @putch(i32 %t124)
  store i32 0, i32* %t180, align 4
  br label %B202
B202:                               	; preds = %B197, %B203
  %t126 = load i32, i32* %t180, align 4
  %t127 = load i32, i32* @N, align 4
  %t128 = icmp slt i32 %t126, %t127
  br i1 %t128, label %B203, label %B207
B203:                               	; preds = %B202
  %t130 = load i32, i32* %t180, align 4
  %t131 = getelementptr inbounds [3 x i32], [3 x i32]* %t179, i32 0, i32 %t130
  %t208 = load i32, i32* %t131, align 4
  store i32 %t208, i32* %t187, align 4
  %t132 = load i32, i32* %t187, align 4
  call void @putint(i32 %t132)
  %t134 = load i32, i32* %t180, align 4
  %t135 = add i32 %t134, 1
  store i32 %t135, i32* %t180, align 4
  br label %B202
B207:                               	; preds = %B202
  br label %B204
B204:                               	; preds = %B207
  store i32 10, i32* %t187, align 4
  %t137 = load i32, i32* %t187, align 4
  call void @putch(i32 %t137)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
