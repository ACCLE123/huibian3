define i32 @removeElement(i32* %t0, i32 %t2, i32 %t4) {
B48:
  %t52 = alloca i32, align 4
  %t51 = alloca i32, align 4
  %t50 = alloca i32, align 4
  %t49 = alloca i32*, align 4
  store i32* %t0, i32** %t49, align 4
  store i32 %t2, i32* %t50, align 4
  store i32 %t4, i32* %t51, align 4
  store i32 0, i32* %t52, align 4
  br label %B53
B53:                               	; preds = %B48, %B61
  %t8 = load i32, i32* %t52, align 4
  %t9 = load i32, i32* %t50, align 4
  %t10 = icmp slt i32 %t8, %t9
  br i1 %t10, label %B54, label %B58
B54:                               	; preds = %B53
  %t62 = load i32*, i32** %t49, align 4
  %t11 = load i32, i32* %t52, align 4
  %t12 = getelementptr inbounds i32, i32* %t62, i32 %t11
  %t63 = load i32, i32* %t12, align 4
  %t13 = load i32, i32* %t51, align 4
  %t14 = icmp eq i32 %t63, %t13
  br i1 %t14, label %B59, label %B66
B58:                               	; preds = %B53
  br label %B55
B59:                               	; preds = %B54
  %t67 = load i32*, i32** %t49, align 4
  %t17 = load i32, i32* %t50, align 4
  %t18 = sub i32 %t17, 1
  %t19 = getelementptr inbounds i32, i32* %t67, i32 %t18
  %t68 = load i32, i32* %t19, align 4
  %t69 = load i32*, i32** %t49, align 4
  %t15 = load i32, i32* %t52, align 4
  %t16 = getelementptr inbounds i32, i32* %t69, i32 %t15
  store i32 %t68, i32* %t16, align 4
  %t21 = load i32, i32* %t50, align 4
  %t22 = sub i32 %t21, 1
  store i32 %t22, i32* %t50, align 4
  br label %B61
B66:                               	; preds = %B54
  br label %B60
B55:                               	; preds = %B58
  %t26 = load i32, i32* %t50, align 4
  ret i32 %t26
B61:                               	; preds = %B59, %B60
  br label %B53
B60:                               	; preds = %B66
  %t24 = load i32, i32* %t52, align 4
  %t25 = add i32 %t24, 1
  store i32 %t25, i32* %t52, align 4
  br label %B61
}
define i32 @main() {
B70:
  %t73 = alloca i32, align 4
  %t72 = alloca [10 x i32], align 4
  %t71 = alloca i32, align 4
  %t29 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 0
  store i32 3, i32* %t29, align 4
  %t30 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 1
  store i32 3, i32* %t30, align 4
  %t31 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 2
  store i32 9, i32* %t31, align 4
  %t32 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 3
  store i32 0, i32* %t32, align 4
  %t33 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 4
  store i32 0, i32* %t33, align 4
  %t34 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 5
  store i32 1, i32* %t34, align 4
  %t35 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 6
  store i32 1, i32* %t35, align 4
  %t36 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 7
  store i32 5, i32* %t36, align 4
  %t37 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 8
  store i32 7, i32* %t37, align 4
  %t38 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 9
  store i32 8, i32* %t38, align 4
  store i32 10, i32* %t71, align 4
  store i32 3, i32* %t73, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* %t72, i32 0, i32 0
  %t44 = load i32, i32* %t71, align 4
  %t45 = load i32, i32* %t73, align 4
  %t46 = call i32 @removeElement(i32* %t43, i32 %t44, i32 %t45)
  store i32 %t46, i32* %t71, align 4
  %t47 = load i32, i32* %t71, align 4
  ret i32 %t47
}
