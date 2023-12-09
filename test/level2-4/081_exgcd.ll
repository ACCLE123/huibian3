define i32 @exgcd(i32 %t0, i32 %t2, i32* %t4, i32* %t6) {
B52:
  %t68 = alloca i32, align 4
  %t65 = alloca i32, align 4
  %t56 = alloca i32*, align 4
  %t55 = alloca i32*, align 4
  %t54 = alloca i32, align 4
  %t53 = alloca i32, align 4
  store i32 %t0, i32* %t53, align 4
  store i32 %t2, i32* %t54, align 4
  store i32* %t4, i32** %t55, align 4
  store i32* %t6, i32** %t56, align 4
  %t8 = load i32, i32* %t54, align 4
  %t9 = icmp eq i32 %t8, 0
  br i1 %t9, label %B57, label %B62
B57:                               	; preds = %B52
  %t63 = load i32*, i32** %t55, align 4
  %t10 = getelementptr inbounds i32, i32* %t63, i32 0
  store i32 1, i32* %t10, align 4
  %t64 = load i32*, i32** %t56, align 4
  %t11 = getelementptr inbounds i32, i32* %t64, i32 0
  store i32 0, i32* %t11, align 4
  %t12 = load i32, i32* %t53, align 4
  ret i32 %t12
  br label %B59
B62:                               	; preds = %B52
  br label %B58
B59:                               	; preds = %B57, %B58
  ret i32 0
B58:                               	; preds = %B62
  %t13 = load i32, i32* %t54, align 4
  %t14 = load i32, i32* %t53, align 4
  %t15 = load i32, i32* %t54, align 4
  %t16 = srem i32 %t14, %t15
  %t66 = load i32*, i32** %t55, align 4
  %t67 = load i32*, i32** %t56, align 4
  %t19 = call i32 @exgcd(i32 %t13, i32 %t16, i32* %t66, i32* %t67)
  store i32 %t19, i32* %t65, align 4
  %t69 = load i32*, i32** %t55, align 4
  %t21 = getelementptr inbounds i32, i32* %t69, i32 0
  %t70 = load i32, i32* %t21, align 4
  store i32 %t70, i32* %t68, align 4
  %t71 = load i32*, i32** %t56, align 4
  %t24 = getelementptr inbounds i32, i32* %t71, i32 0
  %t72 = load i32, i32* %t24, align 4
  %t73 = load i32*, i32** %t55, align 4
  %t23 = getelementptr inbounds i32, i32* %t73, i32 0
  store i32 %t72, i32* %t23, align 4
  %t26 = load i32, i32* %t68, align 4
  %t27 = load i32, i32* %t53, align 4
  %t28 = load i32, i32* %t54, align 4
  %t29 = sdiv i32 %t27, %t28
  %t74 = load i32*, i32** %t56, align 4
  %t30 = getelementptr inbounds i32, i32* %t74, i32 0
  %t75 = load i32, i32* %t30, align 4
  %t31 = mul i32 %t29, %t75
  %t32 = sub i32 %t26, %t31
  %t76 = load i32*, i32** %t56, align 4
  %t25 = getelementptr inbounds i32, i32* %t76, i32 0
  store i32 %t32, i32* %t25, align 4
  %t33 = load i32, i32* %t65, align 4
  ret i32 %t33
  br label %B59
}
define i32 @main() {
B77:
  %t82 = alloca [1 x i32], align 4
  %t80 = alloca [1 x i32], align 4
  %t79 = alloca i32, align 4
  %t78 = alloca i32, align 4
  store i32 7, i32* %t78, align 4
  store i32 15, i32* %t79, align 4
  %t81 = getelementptr inbounds [1 x i32], [1 x i32]* %t80, i32 0, i32 0
  store i32 1, i32* %t81, align 4
  %t83 = getelementptr inbounds [1 x i32], [1 x i32]* %t82, i32 0, i32 0
  store i32 1, i32* %t83, align 4
  %t38 = load i32, i32* %t78, align 4
  %t39 = load i32, i32* %t79, align 4
  %t40 = getelementptr inbounds [1 x i32], [1 x i32]* %t80, i32 0, i32 0
  %t41 = getelementptr inbounds [1 x i32], [1 x i32]* %t82, i32 0, i32 0
  %t42 = call i32 @exgcd(i32 %t38, i32 %t39, i32* %t40, i32* %t41)
  %t44 = getelementptr inbounds [1 x i32], [1 x i32]* %t80, i32 0, i32 0
  %t84 = load i32, i32* %t44, align 4
  %t45 = load i32, i32* %t79, align 4
  %t46 = srem i32 %t84, %t45
  %t47 = load i32, i32* %t79, align 4
  %t48 = add i32 %t46, %t47
  %t49 = load i32, i32* %t79, align 4
  %t50 = srem i32 %t48, %t49
  %t43 = getelementptr inbounds [1 x i32], [1 x i32]* %t80, i32 0, i32 0
  store i32 %t50, i32* %t43, align 4
  %t51 = getelementptr inbounds [1 x i32], [1 x i32]* %t80, i32 0, i32 0
  %t85 = load i32, i32* %t51, align 4
  call void @putint(i32 %t85)
  ret i32 0
}
declare void @putint(i32)
