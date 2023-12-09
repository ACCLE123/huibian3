define i32 @main() {
B18:
  %t90 = alloca [4 x [2 x [1 x i32]]], align 4
  %t71 = alloca [4 x [2 x i32]], align 4
  %t54 = alloca [4 x [2 x i32]], align 4
  %t37 = alloca [4 x [2 x i32]], align 4
  %t36 = alloca i32, align 4
  %t19 = alloca [4 x [2 x i32]], align 4
  %t20 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 0
  %t21 = getelementptr inbounds [2 x i32], [2 x i32]* %t20, i32 0, i32 0
  store i32 1, i32* %t21, align 4
  %t22 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 0
  %t23 = getelementptr inbounds [2 x i32], [2 x i32]* %t22, i32 0, i32 1
  store i32 2, i32* %t23, align 4
  %t24 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 1
  %t25 = getelementptr inbounds [2 x i32], [2 x i32]* %t24, i32 0, i32 0
  store i32 3, i32* %t25, align 4
  %t26 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 1
  %t27 = getelementptr inbounds [2 x i32], [2 x i32]* %t26, i32 0, i32 1
  store i32 4, i32* %t27, align 4
  %t28 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 2
  %t29 = getelementptr inbounds [2 x i32], [2 x i32]* %t28, i32 0, i32 0
  store i32 0, i32* %t29, align 4
  %t30 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 2
  %t31 = getelementptr inbounds [2 x i32], [2 x i32]* %t30, i32 0, i32 1
  store i32 0, i32* %t31, align 4
  %t32 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 3
  %t33 = getelementptr inbounds [2 x i32], [2 x i32]* %t32, i32 0, i32 0
  store i32 7, i32* %t33, align 4
  %t34 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 3
  %t35 = getelementptr inbounds [2 x i32], [2 x i32]* %t34, i32 0, i32 1
  store i32 0, i32* %t35, align 4
  store i32 3, i32* %t36, align 4
  %t38 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 0
  %t39 = getelementptr inbounds [2 x i32], [2 x i32]* %t38, i32 0, i32 0
  store i32 0, i32* %t39, align 4
  %t40 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 0
  %t41 = getelementptr inbounds [2 x i32], [2 x i32]* %t40, i32 0, i32 1
  store i32 0, i32* %t41, align 4
  %t42 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 1
  %t43 = getelementptr inbounds [2 x i32], [2 x i32]* %t42, i32 0, i32 0
  store i32 0, i32* %t43, align 4
  %t44 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 1
  %t45 = getelementptr inbounds [2 x i32], [2 x i32]* %t44, i32 0, i32 1
  store i32 0, i32* %t45, align 4
  %t46 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 2
  %t47 = getelementptr inbounds [2 x i32], [2 x i32]* %t46, i32 0, i32 0
  store i32 0, i32* %t47, align 4
  %t48 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 2
  %t49 = getelementptr inbounds [2 x i32], [2 x i32]* %t48, i32 0, i32 1
  store i32 0, i32* %t49, align 4
  %t50 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 3
  %t51 = getelementptr inbounds [2 x i32], [2 x i32]* %t50, i32 0, i32 0
  store i32 0, i32* %t51, align 4
  %t52 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t37, i32 0, i32 3
  %t53 = getelementptr inbounds [2 x i32], [2 x i32]* %t52, i32 0, i32 1
  store i32 0, i32* %t53, align 4
  %t55 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 0
  %t56 = getelementptr inbounds [2 x i32], [2 x i32]* %t55, i32 0, i32 0
  store i32 1, i32* %t56, align 4
  %t57 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 0
  %t58 = getelementptr inbounds [2 x i32], [2 x i32]* %t57, i32 0, i32 1
  store i32 2, i32* %t58, align 4
  %t59 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 1
  %t60 = getelementptr inbounds [2 x i32], [2 x i32]* %t59, i32 0, i32 0
  store i32 3, i32* %t60, align 4
  %t61 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 1
  %t62 = getelementptr inbounds [2 x i32], [2 x i32]* %t61, i32 0, i32 1
  store i32 4, i32* %t62, align 4
  %t63 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 2
  %t64 = getelementptr inbounds [2 x i32], [2 x i32]* %t63, i32 0, i32 0
  store i32 5, i32* %t64, align 4
  %t65 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 2
  %t66 = getelementptr inbounds [2 x i32], [2 x i32]* %t65, i32 0, i32 1
  store i32 6, i32* %t66, align 4
  %t67 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 3
  %t68 = getelementptr inbounds [2 x i32], [2 x i32]* %t67, i32 0, i32 0
  store i32 7, i32* %t68, align 4
  %t69 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 3
  %t70 = getelementptr inbounds [2 x i32], [2 x i32]* %t69, i32 0, i32 1
  store i32 8, i32* %t70, align 4
  %t72 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 0
  %t73 = getelementptr inbounds [2 x i32], [2 x i32]* %t72, i32 0, i32 0
  store i32 1, i32* %t73, align 4
  %t74 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 0
  %t75 = getelementptr inbounds [2 x i32], [2 x i32]* %t74, i32 0, i32 1
  store i32 2, i32* %t75, align 4
  %t76 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 1
  %t77 = getelementptr inbounds [2 x i32], [2 x i32]* %t76, i32 0, i32 0
  store i32 3, i32* %t77, align 4
  %t78 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 1
  %t79 = getelementptr inbounds [2 x i32], [2 x i32]* %t78, i32 0, i32 1
  store i32 0, i32* %t79, align 4
  %t80 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 2
  %t81 = getelementptr inbounds [2 x i32], [2 x i32]* %t80, i32 0, i32 0
  store i32 5, i32* %t81, align 4
  %t82 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 2
  %t83 = getelementptr inbounds [2 x i32], [2 x i32]* %t82, i32 0, i32 1
  store i32 0, i32* %t83, align 4
  %t6 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t19, i32 0, i32 3
  %t84 = getelementptr inbounds [2 x i32], [2 x i32]* %t6, i32 0, i32 0
  %t85 = load i32, i32* %t84, align 4
  %t86 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 3
  %t87 = getelementptr inbounds [2 x i32], [2 x i32]* %t86, i32 0, i32 0
  store i32 %t85, i32* %t87, align 4
  %t88 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 3
  %t89 = getelementptr inbounds [2 x i32], [2 x i32]* %t88, i32 0, i32 1
  store i32 8, i32* %t89, align 4
  %t8 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 2
  %t91 = getelementptr inbounds [2 x i32], [2 x i32]* %t8, i32 0, i32 1
  %t92 = load i32, i32* %t91, align 4
  %t93 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 0
  %t94 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t93, i32 0, i32 0
  %t95 = getelementptr inbounds [1 x i32], [1 x i32]* %t94, i32 0, i32 0
  store i32 %t92, i32* %t95, align 4
  %t9 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t54, i32 0, i32 2
  %t96 = getelementptr inbounds [2 x i32], [2 x i32]* %t9, i32 0, i32 1
  %t97 = load i32, i32* %t96, align 4
  %t98 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 0
  %t99 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t98, i32 0, i32 1
  %t100 = getelementptr inbounds [1 x i32], [1 x i32]* %t99, i32 0, i32 0
  store i32 %t97, i32* %t100, align 4
  %t101 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 1
  %t102 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t101, i32 0, i32 0
  %t103 = getelementptr inbounds [1 x i32], [1 x i32]* %t102, i32 0, i32 0
  store i32 3, i32* %t103, align 4
  %t104 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 1
  %t105 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t104, i32 0, i32 1
  %t106 = getelementptr inbounds [1 x i32], [1 x i32]* %t105, i32 0, i32 0
  store i32 4, i32* %t106, align 4
  %t107 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 2
  %t108 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t107, i32 0, i32 0
  %t109 = getelementptr inbounds [1 x i32], [1 x i32]* %t108, i32 0, i32 0
  store i32 5, i32* %t109, align 4
  %t110 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 2
  %t111 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t110, i32 0, i32 1
  %t112 = getelementptr inbounds [1 x i32], [1 x i32]* %t111, i32 0, i32 0
  store i32 6, i32* %t112, align 4
  %t113 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 3
  %t114 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t113, i32 0, i32 0
  %t115 = getelementptr inbounds [1 x i32], [1 x i32]* %t114, i32 0, i32 0
  store i32 7, i32* %t115, align 4
  %t116 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 3
  %t117 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t116, i32 0, i32 1
  %t118 = getelementptr inbounds [1 x i32], [1 x i32]* %t117, i32 0, i32 0
  store i32 8, i32* %t118, align 4
  %t11 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 3
  %t119 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t11, i32 0, i32 1
  %t120 = getelementptr inbounds [1 x i32], [1 x i32]* %t119, i32 0, i32 0
  %t121 = load i32, i32* %t120, align 4
  %t12 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 0
  %t122 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t12, i32 0, i32 0
  %t123 = getelementptr inbounds [1 x i32], [1 x i32]* %t122, i32 0, i32 0
  %t124 = load i32, i32* %t123, align 4
  %t13 = add i32 %t121, %t124
  %t14 = getelementptr inbounds [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %t90, i32 0, i32 0
  %t125 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %t14, i32 0, i32 1
  %t126 = getelementptr inbounds [1 x i32], [1 x i32]* %t125, i32 0, i32 0
  %t127 = load i32, i32* %t126, align 4
  %t15 = add i32 %t13, %t127
  %t16 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %t71, i32 0, i32 3
  %t128 = getelementptr inbounds [2 x i32], [2 x i32]* %t16, i32 0, i32 0
  %t129 = load i32, i32* %t128, align 4
  %t17 = add i32 %t15, %t129
  ret i32 %t17
}
