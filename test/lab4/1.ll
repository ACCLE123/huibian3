@a = global i32 0, align 4
define i32 @main() {
B6:
  %t7 = alloca i32, align 4
  %t3 = add i32 1, 2
  store i32 %t3, i32* %t7, align 4
  %t4 = load i32, i32* %t7, align 4
  %t5 = icmp slt i32 %t4, 5
  br i1 %t5, label %B8, label %B12
B8:                               	; preds = %B6
  ret i32 1
  br label %B9
B12:                               	; preds = %B6
  br label %B9
B9:                               	; preds = %B8, %B12
  ret i32 0
}
