@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @split(i32 %t2, i32* %t4) {
B45:
  %t48 = alloca i32, align 4
  %t47 = alloca i32*, align 4
  %t46 = alloca i32, align 4
  store i32 %t2, i32* %t46, align 4
  store i32* %t4, i32** %t47, align 4
  %t8 = load i32, i32* @N, align 4
  %t9 = sub i32 %t8, 1
  store i32 %t9, i32* %t48, align 4
  br label %B49
B49:                               	; preds = %B45, %B50
  %t10 = load i32, i32* %t48, align 4
  %t11 = sub i32 0, 1
  %t12 = icmp ne i32 %t10, %t11
  br i1 %t12, label %B50, label %B54
B50:                               	; preds = %B49
  %t15 = load i32, i32* %t46, align 4
  %t16 = srem i32 %t15, 10
  %t55 = load i32*, i32** %t47, align 4
  %t13 = load i32, i32* %t48, align 4
  %t14 = getelementptr inbounds i32, i32* %t55, i32 %t13
  store i32 %t16, i32* %t14, align 4
  %t18 = load i32, i32* %t46, align 4
  %t19 = sdiv i32 %t18, 10
  store i32 %t19, i32* %t46, align 4
  %t21 = load i32, i32* %t48, align 4
  %t22 = sub i32 %t21, 1
  store i32 %t22, i32* %t48, align 4
  br label %B49
B54:                               	; preds = %B49
  br label %B51
B51:                               	; preds = %B54
  ret i32 0
}
define i32 @main() {
B56:
  %t60 = alloca i32, align 4
  %t59 = alloca [4 x i32], align 4
  %t58 = alloca i32, align 4
  %t57 = alloca i32, align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  store i32 1478, i32* %t58, align 4
  %t30 = load i32, i32* %t58, align 4
  %t31 = getelementptr inbounds [4 x i32], [4 x i32]* %t59, i32 0, i32 0
  %t32 = call i32 @split(i32 %t30, i32* %t31)
  store i32 %t32, i32* %t58, align 4
  store i32 0, i32* %t57, align 4
  br label %B61
B61:                               	; preds = %B56, %B62
  %t35 = load i32, i32* %t57, align 4
  %t36 = icmp slt i32 %t35, 4
  br i1 %t36, label %B62, label %B66
B62:                               	; preds = %B61
  %t38 = load i32, i32* %t57, align 4
  %t39 = getelementptr inbounds [4 x i32], [4 x i32]* %t59, i32 0, i32 %t38
  %t67 = load i32, i32* %t39, align 4
  store i32 %t67, i32* %t60, align 4
  %t40 = load i32, i32* %t60, align 4
  call void @putint(i32 %t40)
  %t41 = load i32, i32* @newline, align 4
  call void @putch(i32 %t41)
  %t43 = load i32, i32* %t57, align 4
  %t44 = add i32 %t43, 1
  store i32 %t44, i32* %t57, align 4
  br label %B61
B66:                               	; preds = %B61
  br label %B63
B63:                               	; preds = %B66
  ret i32 0
}
declare void @putint(i32)
declare void @putch(i32)
