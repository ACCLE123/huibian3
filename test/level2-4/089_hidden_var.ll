@b = global i32 5, align 4
@c = global [4 x i32] [i32 6, i32 7, i32 8, i32 9], align 4
define i32 @main() {
B36:
  %t92 = alloca [7 x [1 x [5 x i32]]], align 4
  %t85 = alloca i32, align 4
  %t52 = alloca [2 x [8 x i32]], align 4
  %t45 = alloca i32, align 4
  %t38 = alloca i32, align 4
  %t37 = alloca i32, align 4
  store i32 1, i32* %t37, align 4
  store i32 2, i32* %t38, align 4
  store i32 3, i32* %t38, align 4
  %t7 = load i32, i32* %t38, align 4
  call void @putint(i32 %t7)
  %t8 = load i32, i32* %t38, align 4
  call void @putint(i32 %t8)
  %t9 = load i32, i32* %t37, align 4
  call void @putint(i32 %t9)
  call void @putch(i32 10)
  br label %B39
B39:                               	; preds = %B36, %B47
  %t10 = load i32, i32* %t37, align 4
  %t11 = icmp slt i32 %t10, 5
  br i1 %t11, label %B40, label %B44
B40:                               	; preds = %B39
  store i32 0, i32* %t45, align 4
  %t14 = load i32, i32* %t45, align 4
  %t15 = add i32 %t14, 1
  store i32 %t15, i32* %t45, align 4
  %t16 = load i32, i32* %t45, align 4
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %B46, label %B49
B44:                               	; preds = %B39
  br label %B41
B46:                               	; preds = %B40
  br label %B41
B49:                               	; preds = %B40
  br label %B47
B41:                               	; preds = %B44, %B46
  %t18 = load i32, i32* %t37, align 4
  call void @putint(i32 %t18)
  call void @putch(i32 10)
  %t19 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  store i32 1, i32* %t19, align 4
  %t53 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t54 = getelementptr inbounds [8 x i32], [8 x i32]* %t53, i32 0, i32 0
  store i32 0, i32* %t54, align 4
  %t55 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t56 = getelementptr inbounds [8 x i32], [8 x i32]* %t55, i32 0, i32 1
  store i32 9, i32* %t56, align 4
  %t57 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t58 = getelementptr inbounds [8 x i32], [8 x i32]* %t57, i32 0, i32 2
  store i32 0, i32* %t58, align 4
  %t59 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t60 = getelementptr inbounds [8 x i32], [8 x i32]* %t59, i32 0, i32 3
  store i32 0, i32* %t60, align 4
  %t61 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t62 = getelementptr inbounds [8 x i32], [8 x i32]* %t61, i32 0, i32 4
  store i32 0, i32* %t62, align 4
  %t63 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t64 = getelementptr inbounds [8 x i32], [8 x i32]* %t63, i32 0, i32 5
  store i32 0, i32* %t64, align 4
  %t65 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t66 = getelementptr inbounds [8 x i32], [8 x i32]* %t65, i32 0, i32 6
  store i32 0, i32* %t66, align 4
  %t67 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 0
  %t68 = getelementptr inbounds [8 x i32], [8 x i32]* %t67, i32 0, i32 7
  store i32 0, i32* %t68, align 4
  %t69 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t70 = getelementptr inbounds [8 x i32], [8 x i32]* %t69, i32 0, i32 0
  store i32 8, i32* %t70, align 4
  %t71 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t72 = getelementptr inbounds [8 x i32], [8 x i32]* %t71, i32 0, i32 1
  store i32 3, i32* %t72, align 4
  %t73 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t74 = getelementptr inbounds [8 x i32], [8 x i32]* %t73, i32 0, i32 2
  store i32 0, i32* %t74, align 4
  %t75 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t76 = getelementptr inbounds [8 x i32], [8 x i32]* %t75, i32 0, i32 3
  store i32 0, i32* %t76, align 4
  %t77 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t78 = getelementptr inbounds [8 x i32], [8 x i32]* %t77, i32 0, i32 4
  store i32 0, i32* %t78, align 4
  %t79 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t80 = getelementptr inbounds [8 x i32], [8 x i32]* %t79, i32 0, i32 5
  store i32 0, i32* %t80, align 4
  %t81 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t82 = getelementptr inbounds [8 x i32], [8 x i32]* %t81, i32 0, i32 6
  store i32 0, i32* %t82, align 4
  %t83 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %t52, i32 0, i32 1
  %t84 = getelementptr inbounds [8 x i32], [8 x i32]* %t83, i32 0, i32 7
  store i32 0, i32* %t84, align 4
  store i32 2, i32* %t85, align 4
  %t22 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  %t88 = load i32, i32* %t22, align 4
  %t30 = icmp ne i32 %t88, 0
  br i1 %t30, label %B86, label %B90
B47:                               	; preds = %B49, %B51
  br label %B39
B86:                               	; preds = %B41
  %t93 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 0
  %t94 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t93, i32 0, i32 0
  %t95 = getelementptr inbounds [5 x i32], [5 x i32]* %t94, i32 0, i32 0
  store i32 0, i32* %t95, align 4
  %t96 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 0
  %t97 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t96, i32 0, i32 0
  %t98 = getelementptr inbounds [5 x i32], [5 x i32]* %t97, i32 0, i32 1
  store i32 0, i32* %t98, align 4
  %t99 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 0
  %t100 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t99, i32 0, i32 0
  %t101 = getelementptr inbounds [5 x i32], [5 x i32]* %t100, i32 0, i32 2
  store i32 0, i32* %t101, align 4
  %t102 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 0
  %t103 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t102, i32 0, i32 0
  %t104 = getelementptr inbounds [5 x i32], [5 x i32]* %t103, i32 0, i32 3
  store i32 0, i32* %t104, align 4
  %t105 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 0
  %t106 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t105, i32 0, i32 0
  %t107 = getelementptr inbounds [5 x i32], [5 x i32]* %t106, i32 0, i32 4
  store i32 0, i32* %t107, align 4
  %t108 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 1
  %t109 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t108, i32 0, i32 0
  %t110 = getelementptr inbounds [5 x i32], [5 x i32]* %t109, i32 0, i32 0
  store i32 0, i32* %t110, align 4
  %t111 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 1
  %t112 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t111, i32 0, i32 0
  %t113 = getelementptr inbounds [5 x i32], [5 x i32]* %t112, i32 0, i32 1
  store i32 0, i32* %t113, align 4
  %t114 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 1
  %t115 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t114, i32 0, i32 0
  %t116 = getelementptr inbounds [5 x i32], [5 x i32]* %t115, i32 0, i32 2
  store i32 0, i32* %t116, align 4
  %t117 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 1
  %t118 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t117, i32 0, i32 0
  %t119 = getelementptr inbounds [5 x i32], [5 x i32]* %t118, i32 0, i32 3
  store i32 0, i32* %t119, align 4
  %t120 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 1
  %t121 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t120, i32 0, i32 0
  %t122 = getelementptr inbounds [5 x i32], [5 x i32]* %t121, i32 0, i32 4
  store i32 0, i32* %t122, align 4
  %t123 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 2
  %t124 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t123, i32 0, i32 0
  %t125 = getelementptr inbounds [5 x i32], [5 x i32]* %t124, i32 0, i32 0
  store i32 2, i32* %t125, align 4
  %t126 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 2
  %t127 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t126, i32 0, i32 0
  %t128 = getelementptr inbounds [5 x i32], [5 x i32]* %t127, i32 0, i32 1
  store i32 1, i32* %t128, align 4
  %t129 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 2
  %t130 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t129, i32 0, i32 0
  %t131 = getelementptr inbounds [5 x i32], [5 x i32]* %t130, i32 0, i32 2
  store i32 8, i32* %t131, align 4
  %t132 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 2
  %t133 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t132, i32 0, i32 0
  %t134 = getelementptr inbounds [5 x i32], [5 x i32]* %t133, i32 0, i32 3
  store i32 0, i32* %t134, align 4
  %t135 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 2
  %t136 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t135, i32 0, i32 0
  %t137 = getelementptr inbounds [5 x i32], [5 x i32]* %t136, i32 0, i32 4
  store i32 0, i32* %t137, align 4
  %t138 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 3
  %t139 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t138, i32 0, i32 0
  %t140 = getelementptr inbounds [5 x i32], [5 x i32]* %t139, i32 0, i32 0
  store i32 0, i32* %t140, align 4
  %t141 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 3
  %t142 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t141, i32 0, i32 0
  %t143 = getelementptr inbounds [5 x i32], [5 x i32]* %t142, i32 0, i32 1
  store i32 0, i32* %t143, align 4
  %t144 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 3
  %t145 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t144, i32 0, i32 0
  %t146 = getelementptr inbounds [5 x i32], [5 x i32]* %t145, i32 0, i32 2
  store i32 0, i32* %t146, align 4
  %t147 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 3
  %t148 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t147, i32 0, i32 0
  %t149 = getelementptr inbounds [5 x i32], [5 x i32]* %t148, i32 0, i32 3
  store i32 0, i32* %t149, align 4
  %t150 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 3
  %t151 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t150, i32 0, i32 0
  %t152 = getelementptr inbounds [5 x i32], [5 x i32]* %t151, i32 0, i32 4
  store i32 0, i32* %t152, align 4
  %t153 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 4
  %t154 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t153, i32 0, i32 0
  %t155 = getelementptr inbounds [5 x i32], [5 x i32]* %t154, i32 0, i32 0
  store i32 0, i32* %t155, align 4
  %t156 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 4
  %t157 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t156, i32 0, i32 0
  %t158 = getelementptr inbounds [5 x i32], [5 x i32]* %t157, i32 0, i32 1
  store i32 0, i32* %t158, align 4
  %t159 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 4
  %t160 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t159, i32 0, i32 0
  %t161 = getelementptr inbounds [5 x i32], [5 x i32]* %t160, i32 0, i32 2
  store i32 0, i32* %t161, align 4
  %t162 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 4
  %t163 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t162, i32 0, i32 0
  %t164 = getelementptr inbounds [5 x i32], [5 x i32]* %t163, i32 0, i32 3
  store i32 0, i32* %t164, align 4
  %t165 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 4
  %t166 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t165, i32 0, i32 0
  %t167 = getelementptr inbounds [5 x i32], [5 x i32]* %t166, i32 0, i32 4
  store i32 0, i32* %t167, align 4
  %t168 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 5
  %t169 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t168, i32 0, i32 0
  %t170 = getelementptr inbounds [5 x i32], [5 x i32]* %t169, i32 0, i32 0
  store i32 0, i32* %t170, align 4
  %t171 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 5
  %t172 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t171, i32 0, i32 0
  %t173 = getelementptr inbounds [5 x i32], [5 x i32]* %t172, i32 0, i32 1
  store i32 0, i32* %t173, align 4
  %t174 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 5
  %t175 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t174, i32 0, i32 0
  %t176 = getelementptr inbounds [5 x i32], [5 x i32]* %t175, i32 0, i32 2
  store i32 0, i32* %t176, align 4
  %t177 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 5
  %t178 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t177, i32 0, i32 0
  %t179 = getelementptr inbounds [5 x i32], [5 x i32]* %t178, i32 0, i32 3
  store i32 0, i32* %t179, align 4
  %t180 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 5
  %t181 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t180, i32 0, i32 0
  %t182 = getelementptr inbounds [5 x i32], [5 x i32]* %t181, i32 0, i32 4
  store i32 0, i32* %t182, align 4
  %t183 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 6
  %t184 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t183, i32 0, i32 0
  %t185 = getelementptr inbounds [5 x i32], [5 x i32]* %t184, i32 0, i32 0
  store i32 0, i32* %t185, align 4
  %t186 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 6
  %t187 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t186, i32 0, i32 0
  %t188 = getelementptr inbounds [5 x i32], [5 x i32]* %t187, i32 0, i32 1
  store i32 0, i32* %t188, align 4
  %t189 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 6
  %t190 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t189, i32 0, i32 0
  %t191 = getelementptr inbounds [5 x i32], [5 x i32]* %t190, i32 0, i32 2
  store i32 0, i32* %t191, align 4
  %t192 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 6
  %t193 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t192, i32 0, i32 0
  %t194 = getelementptr inbounds [5 x i32], [5 x i32]* %t193, i32 0, i32 3
  store i32 0, i32* %t194, align 4
  %t195 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 6
  %t196 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t195, i32 0, i32 0
  %t197 = getelementptr inbounds [5 x i32], [5 x i32]* %t196, i32 0, i32 4
  store i32 0, i32* %t197, align 4
  %t24 = load i32, i32* %t85, align 4
  %t25 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 %t24
  %t198 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t25, i32 0, i32 0
  %t199 = getelementptr inbounds [5 x i32], [5 x i32]* %t198, i32 0, i32 0
  %t200 = load i32, i32* %t199, align 4
  call void @putint(i32 %t200)
  %t26 = load i32, i32* %t85, align 4
  %t27 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 %t26
  %t201 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t27, i32 0, i32 0
  %t202 = getelementptr inbounds [5 x i32], [5 x i32]* %t201, i32 0, i32 1
  %t203 = load i32, i32* %t202, align 4
  call void @putint(i32 %t203)
  %t28 = load i32, i32* %t85, align 4
  %t29 = getelementptr inbounds [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %t92, i32 0, i32 %t28
  %t204 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %t29, i32 0, i32 0
  %t205 = getelementptr inbounds [5 x i32], [5 x i32]* %t204, i32 0, i32 2
  %t206 = load i32, i32* %t205, align 4
  call void @putint(i32 %t206)
  br label %B87
B90:                               	; preds = %B41
  br label %B87
B87:                               	; preds = %B86, %B90
  call void @putch(i32 10)
  %t31 = load i32, i32* @b, align 4
  call void @putint(i32 %t31)
  call void @putch(i32 10)
  %t32 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 0
  %t207 = load i32, i32* %t32, align 4
  call void @putint(i32 %t207)
  %t33 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 1
  %t208 = load i32, i32* %t33, align 4
  call void @putint(i32 %t208)
  %t34 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 2
  %t209 = load i32, i32* %t34, align 4
  call void @putint(i32 %t209)
  %t35 = getelementptr inbounds [4 x i32], [4 x i32]* @c, i32 0, i32 3
  %t210 = load i32, i32* %t35, align 4
  call void @putint(i32 %t210)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
