define i32 @concat(i32* %t0, i32* %t2, i32* %t4) {
B82:
  %t96 = alloca i32, align 4
  %t86 = alloca i32, align 4
  %t85 = alloca i32*, align 4
  %t84 = alloca i32*, align 4
  %t83 = alloca i32*, align 4
  store i32* %t0, i32** %t83, align 4
  store i32* %t2, i32** %t84, align 4
  store i32* %t4, i32** %t85, align 4
  store i32 0, i32* %t86, align 4
  br label %B87
B87:                               	; preds = %B82, %B88
  %t8 = load i32, i32* %t86, align 4
  %t9 = icmp slt i32 %t8, 3
  br i1 %t9, label %B88, label %B92
B88:                               	; preds = %B87
  %t93 = load i32*, i32** %t83, align 4
  %t12 = load i32, i32* %t86, align 4
  %t13 = getelementptr inbounds i32, i32* %t93, i32 %t12
  %t94 = load i32, i32* %t13, align 4
  %t95 = load i32*, i32** %t85, align 4
  %t10 = load i32, i32* %t86, align 4
  %t11 = getelementptr inbounds i32, i32* %t95, i32 %t10
  store i32 %t94, i32* %t11, align 4
  %t15 = load i32, i32* %t86, align 4
  %t16 = add i32 %t15, 1
  store i32 %t16, i32* %t86, align 4
  br label %B87
B92:                               	; preds = %B87
  br label %B89
B89:                               	; preds = %B92
  store i32 0, i32* %t96, align 4
  br label %B97
B97:                               	; preds = %B89, %B98
  %t19 = load i32, i32* %t96, align 4
  %t20 = icmp slt i32 %t19, 3
  br i1 %t20, label %B98, label %B102
B98:                               	; preds = %B97
  %t103 = load i32*, i32** %t84, align 4
  %t23 = load i32, i32* %t96, align 4
  %t24 = getelementptr inbounds i32, i32* %t103, i32 %t23
  %t104 = load i32, i32* %t24, align 4
  %t105 = load i32*, i32** %t85, align 4
  %t21 = load i32, i32* %t86, align 4
  %t22 = getelementptr inbounds i32, i32* %t105, i32 %t21
  store i32 %t104, i32* %t22, align 4
  %t26 = load i32, i32* %t86, align 4
  %t27 = add i32 %t26, 1
  store i32 %t27, i32* %t86, align 4
  %t29 = load i32, i32* %t96, align 4
  %t30 = add i32 %t29, 1
  store i32 %t30, i32* %t96, align 4
  br label %B97
B102:                               	; preds = %B97
  br label %B99
B99:                               	; preds = %B102
  ret i32 0
}
define i32 @main() {
B106:
  %t123 = alloca i32, align 4
  %t116 = alloca i32, align 4
  %t115 = alloca [3 x i32], align 4
  %t114 = alloca [3 x i32], align 4
  %t113 = alloca [6 x i32], align 4
  %t112 = alloca [3 x i32], align 4
  %t111 = alloca [3 x i32], align 4
  %t110 = alloca [3 x i32], align 4
  %t109 = alloca [3 x i32], align 4
  %t108 = alloca [3 x i32], align 4
  %t107 = alloca [3 x i32], align 4
  store i32 0, i32* %t116, align 4
  br label %B117
B117:                               	; preds = %B106, %B118
  %t42 = load i32, i32* %t116, align 4
  %t43 = icmp slt i32 %t42, 3
  br i1 %t43, label %B118, label %B122
B118:                               	; preds = %B117
  %t46 = load i32, i32* %t116, align 4
  %t44 = load i32, i32* %t116, align 4
  %t45 = getelementptr inbounds [3 x i32], [3 x i32]* %t107, i32 0, i32 %t44
  store i32 %t46, i32* %t45, align 4
  %t49 = load i32, i32* %t116, align 4
  %t47 = load i32, i32* %t116, align 4
  %t48 = getelementptr inbounds [3 x i32], [3 x i32]* %t108, i32 0, i32 %t47
  store i32 %t49, i32* %t48, align 4
  %t52 = load i32, i32* %t116, align 4
  %t50 = load i32, i32* %t116, align 4
  %t51 = getelementptr inbounds [3 x i32], [3 x i32]* %t109, i32 0, i32 %t50
  store i32 %t52, i32* %t51, align 4
  %t55 = load i32, i32* %t116, align 4
  %t53 = load i32, i32* %t116, align 4
  %t54 = getelementptr inbounds [3 x i32], [3 x i32]* %t110, i32 0, i32 %t53
  store i32 %t55, i32* %t54, align 4
  %t58 = load i32, i32* %t116, align 4
  %t56 = load i32, i32* %t116, align 4
  %t57 = getelementptr inbounds [3 x i32], [3 x i32]* %t111, i32 0, i32 %t56
  store i32 %t58, i32* %t57, align 4
  %t61 = load i32, i32* %t116, align 4
  %t59 = load i32, i32* %t116, align 4
  %t60 = getelementptr inbounds [3 x i32], [3 x i32]* %t112, i32 0, i32 %t59
  store i32 %t61, i32* %t60, align 4
  %t63 = load i32, i32* %t116, align 4
  %t64 = add i32 %t63, 1
  store i32 %t64, i32* %t116, align 4
  br label %B117
B122:                               	; preds = %B117
  br label %B119
B119:                               	; preds = %B122
  %t66 = getelementptr inbounds [3 x i32], [3 x i32]* %t107, i32 0, i32 0
  %t67 = getelementptr inbounds [3 x i32], [3 x i32]* %t110, i32 0, i32 0
  %t68 = getelementptr inbounds [6 x i32], [6 x i32]* %t113, i32 0, i32 0
  %t69 = call i32 @concat(i32* %t66, i32* %t67, i32* %t68)
  store i32 %t69, i32* %t116, align 4
  br label %B124
B124:                               	; preds = %B119, %B125
  %t71 = load i32, i32* %t116, align 4
  %t72 = icmp slt i32 %t71, 6
  br i1 %t72, label %B125, label %B129
B125:                               	; preds = %B124
  %t74 = load i32, i32* %t116, align 4
  %t75 = getelementptr inbounds [6 x i32], [6 x i32]* %t113, i32 0, i32 %t74
  %t130 = load i32, i32* %t75, align 4
  store i32 %t130, i32* %t123, align 4
  %t76 = load i32, i32* %t123, align 4
  call void @putint(i32 %t76)
  %t78 = load i32, i32* %t116, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t116, align 4
  br label %B124
B129:                               	; preds = %B124
  br label %B126
B126:                               	; preds = %B129
  store i32 10, i32* %t123, align 4
  %t81 = load i32, i32* %t123, align 4
  call void @putch(i32 %t81)
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
