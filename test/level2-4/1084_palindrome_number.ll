define i32 @palindrome(i32 %t0) {
B41:
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca [4 x i32], align 4
  %t42 = alloca i32, align 4
  store i32 %t0, i32* %t42, align 4
  store i32 0, i32* %t44, align 4
  br label %B46
B46:                               	; preds = %B41, %B47
  %t6 = load i32, i32* %t44, align 4
  %t7 = icmp slt i32 %t6, 4
  br i1 %t7, label %B47, label %B51
B47:                               	; preds = %B46
  %t10 = load i32, i32* %t42, align 4
  %t11 = srem i32 %t10, 10
  %t8 = load i32, i32* %t44, align 4
  %t9 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 %t8
  store i32 %t11, i32* %t9, align 4
  %t13 = load i32, i32* %t42, align 4
  %t14 = sdiv i32 %t13, 10
  store i32 %t14, i32* %t42, align 4
  %t16 = load i32, i32* %t44, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t44, align 4
  br label %B46
B51:                               	; preds = %B46
  br label %B48
B48:                               	; preds = %B51
  %t18 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 0
  %t56 = load i32, i32* %t18, align 4
  %t19 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 3
  %t57 = load i32, i32* %t19, align 4
  %t20 = icmp eq i32 %t56, %t57
  br i1 %t20, label %B55, label %B60
B55:                               	; preds = %B48
  %t21 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 1
  %t61 = load i32, i32* %t21, align 4
  %t22 = getelementptr inbounds [4 x i32], [4 x i32]* %t43, i32 0, i32 2
  %t62 = load i32, i32* %t22, align 4
  %t23 = icmp eq i32 %t61, %t62
  br i1 %t23, label %B52, label %B65
B60:                               	; preds = %B48
  br label %B53
B52:                               	; preds = %B55
  store i32 1, i32* %t45, align 4
  br label %B54
B65:                               	; preds = %B55
  br label %B53
B53:                               	; preds = %B60, %B65
  store i32 0, i32* %t45, align 4
  br label %B54
B54:                               	; preds = %B52, %B53
  %t27 = load i32, i32* %t45, align 4
  ret i32 %t27
}
define i32 @main() {
B66:
  %t68 = alloca i32, align 4
  %t67 = alloca i32, align 4
  store i32 1221, i32* %t67, align 4
  %t32 = load i32, i32* %t67, align 4
  %t33 = call i32 @palindrome(i32 %t32)
  store i32 %t33, i32* %t68, align 4
  %t34 = load i32, i32* %t68, align 4
  %t35 = icmp eq i32 %t34, 1
  br i1 %t35, label %B69, label %B74
B69:                               	; preds = %B66
  %t36 = load i32, i32* %t67, align 4
  call void @putint(i32 %t36)
  br label %B71
B74:                               	; preds = %B66
  br label %B70
B71:                               	; preds = %B69, %B70
  store i32 10, i32* %t68, align 4
  %t40 = load i32, i32* %t68, align 4
  call void @putch(i32 %t40)
  ret i32 0
B70:                               	; preds = %B74
  store i32 0, i32* %t68, align 4
  %t38 = load i32, i32* %t68, align 4
  call void @putint(i32 %t38)
  br label %B71
}
declare void @putint(i32)
declare void @putch(i32)
