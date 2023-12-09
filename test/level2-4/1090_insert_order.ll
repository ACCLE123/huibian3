@N = global i32 0, align 4
define i32 @insert(i32* %t1, i32 %t3) {
B68:
  %t72 = alloca i32, align 4
  %t71 = alloca i32, align 4
  %t70 = alloca i32, align 4
  %t69 = alloca i32*, align 4
  store i32* %t1, i32** %t69, align 4
  store i32 %t3, i32* %t70, align 4
  store i32 0, i32* %t71, align 4
  br label %B73
B73:                               	; preds = %B68, %B74
  %t8 = load i32, i32* %t70, align 4
  %t77 = load i32*, i32** %t69, align 4
  %t9 = load i32, i32* %t71, align 4
  %t10 = getelementptr inbounds i32, i32* %t77, i32 %t9
  %t78 = load i32, i32* %t10, align 4
  %t11 = icmp sgt i32 %t8, %t78
  br i1 %t11, label %B76, label %B81
B76:                               	; preds = %B73
  %t12 = load i32, i32* %t71, align 4
  %t13 = load i32, i32* @N, align 4
  %t14 = icmp slt i32 %t12, %t13
  br i1 %t14, label %B74, label %B84
B81:                               	; preds = %B73
  br label %B75
B74:                               	; preds = %B76
  %t17 = load i32, i32* %t71, align 4
  %t18 = add i32 %t17, 1
  store i32 %t18, i32* %t71, align 4
  br label %B73
B84:                               	; preds = %B76
  br label %B75
B75:                               	; preds = %B81, %B84
  %t20 = load i32, i32* @N, align 4
  store i32 %t20, i32* %t72, align 4
  br label %B85
B85:                               	; preds = %B75, %B86
  %t21 = load i32, i32* %t72, align 4
  %t22 = load i32, i32* %t71, align 4
  %t23 = icmp sgt i32 %t21, %t22
  br i1 %t23, label %B86, label %B90
B86:                               	; preds = %B85
  %t91 = load i32*, i32** %t69, align 4
  %t26 = load i32, i32* %t72, align 4
  %t27 = sub i32 %t26, 1
  %t28 = getelementptr inbounds i32, i32* %t91, i32 %t27
  %t92 = load i32, i32* %t28, align 4
  %t93 = load i32*, i32** %t69, align 4
  %t24 = load i32, i32* %t72, align 4
  %t25 = getelementptr inbounds i32, i32* %t93, i32 %t24
  store i32 %t92, i32* %t25, align 4
  %t31 = load i32, i32* %t70, align 4
  %t94 = load i32*, i32** %t69, align 4
  %t29 = load i32, i32* %t71, align 4
  %t30 = getelementptr inbounds i32, i32* %t94, i32 %t29
  store i32 %t31, i32* %t30, align 4
  %t33 = load i32, i32* %t72, align 4
  %t34 = sub i32 %t33, 1
  store i32 %t34, i32* %t72, align 4
  br label %B85
B90:                               	; preds = %B85
  br label %B87
B87:                               	; preds = %B90
  ret i32 0
}
define i32 @main() {
B95:
  %t98 = alloca i32, align 4
  %t97 = alloca i32, align 4
  %t96 = alloca [11 x i32], align 4
  store i32 10, i32* @N, align 4
  %t37 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 0
  store i32 1, i32* %t37, align 4
  %t38 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 1
  store i32 3, i32* %t38, align 4
  %t39 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 2
  store i32 4, i32* %t39, align 4
  %t40 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 3
  store i32 7, i32* %t40, align 4
  %t41 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 4
  store i32 8, i32* %t41, align 4
  %t42 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 5
  store i32 11, i32* %t42, align 4
  %t43 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 6
  store i32 13, i32* %t43, align 4
  %t44 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 7
  store i32 18, i32* %t44, align 4
  %t45 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 8
  store i32 56, i32* %t45, align 4
  %t46 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 9
  store i32 78, i32* %t46, align 4
  store i32 0, i32* %t98, align 4
  %t51 = call i32 @getint()
  store i32 %t51, i32* %t97, align 4
  %t53 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 0
  %t54 = load i32, i32* %t97, align 4
  %t55 = call i32 @insert(i32* %t53, i32 %t54)
  store i32 %t55, i32* %t97, align 4
  br label %B99
B99:                               	; preds = %B95, %B100
  %t56 = load i32, i32* %t98, align 4
  %t57 = load i32, i32* @N, align 4
  %t58 = icmp slt i32 %t56, %t57
  br i1 %t58, label %B100, label %B104
B100:                               	; preds = %B99
  %t60 = load i32, i32* %t98, align 4
  %t61 = getelementptr inbounds [11 x i32], [11 x i32]* %t96, i32 0, i32 %t60
  %t105 = load i32, i32* %t61, align 4
  store i32 %t105, i32* %t97, align 4
  %t62 = load i32, i32* %t97, align 4
  call void @putint(i32 %t62)
  store i32 10, i32* %t97, align 4
  %t64 = load i32, i32* %t97, align 4
  call void @putch(i32 %t64)
  %t66 = load i32, i32* %t98, align 4
  %t67 = add i32 %t66, 1
  store i32 %t67, i32* %t98, align 4
  br label %B99
B104:                               	; preds = %B99
  br label %B101
B101:                               	; preds = %B104
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
