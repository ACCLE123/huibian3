define i32 @get_one(i32 %t0) {
B40:
  %t41 = alloca i32, align 4
  store i32 %t0, i32* %t41, align 4
  ret i32 1
}
define i32 @deepWhileBr(i32 %t2, i32 %t4) {
B42:
  %t63 = alloca i32, align 4
  %t52 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  store i32 %t2, i32* %t43, align 4
  store i32 %t4, i32* %t44, align 4
  %t8 = load i32, i32* %t43, align 4
  %t9 = load i32, i32* %t44, align 4
  %t10 = add i32 %t8, %t9
  store i32 %t10, i32* %t45, align 4
  br label %B46
B46:                               	; preds = %B42, %B54
  %t11 = load i32, i32* %t45, align 4
  %t12 = icmp slt i32 %t11, 75
  br i1 %t12, label %B47, label %B51
B47:                               	; preds = %B46
  store i32 42, i32* %t52, align 4
  %t15 = load i32, i32* %t45, align 4
  %t16 = icmp slt i32 %t15, 100
  br i1 %t16, label %B53, label %B57
B51:                               	; preds = %B46
  br label %B48
B53:                               	; preds = %B47
  %t18 = load i32, i32* %t45, align 4
  %t19 = load i32, i32* %t52, align 4
  %t20 = add i32 %t18, %t19
  store i32 %t20, i32* %t45, align 4
  %t21 = load i32, i32* %t45, align 4
  %t22 = icmp sgt i32 %t21, 99
  br i1 %t22, label %B58, label %B62
B57:                               	; preds = %B47
  br label %B54
B48:                               	; preds = %B51
  %t32 = load i32, i32* %t45, align 4
  ret i32 %t32
B58:                               	; preds = %B53
  %t25 = load i32, i32* %t52, align 4
  %t26 = mul i32 %t25, 2
  store i32 %t26, i32* %t63, align 4
  %t27 = call i32 @get_one(i32 0)
  %t28 = icmp eq i32 %t27, 1
  br i1 %t28, label %B64, label %B68
B62:                               	; preds = %B53
  br label %B59
B54:                               	; preds = %B57, %B59
  br label %B46
B64:                               	; preds = %B58
  %t30 = load i32, i32* %t63, align 4
  %t31 = mul i32 %t30, 2
  store i32 %t31, i32* %t45, align 4
  br label %B65
B68:                               	; preds = %B58
  br label %B65
B59:                               	; preds = %B62, %B65
  br label %B54
B65:                               	; preds = %B64, %B68
  br label %B59
}
define i32 @main() {
B69:
  %t70 = alloca i32, align 4
  store i32 2, i32* %t70, align 4
  %t36 = load i32, i32* %t70, align 4
  %t37 = load i32, i32* %t70, align 4
  %t38 = call i32 @deepWhileBr(i32 %t36, i32 %t37)
  store i32 %t38, i32* %t70, align 4
  %t39 = load i32, i32* %t70, align 4
  call void @putint(i32 %t39)
  ret i32 0
}
declare void @putint(i32)
