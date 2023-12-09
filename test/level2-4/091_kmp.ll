define void @get_next(i32* %t0, i32* %t2) {
B99:
  %t104 = alloca i32, align 4
  %t103 = alloca i32, align 4
  %t101 = alloca i32*, align 4
  %t100 = alloca i32*, align 4
  store i32* %t0, i32** %t100, align 4
  store i32* %t2, i32** %t101, align 4
  %t5 = sub i32 0, 1
  %t102 = load i32*, i32** %t101, align 4
  %t4 = getelementptr inbounds i32, i32* %t102, i32 0
  store i32 %t5, i32* %t4, align 4
  store i32 0, i32* %t103, align 4
  %t7 = sub i32 0, 1
  store i32 %t7, i32* %t104, align 4
  br label %B105
B105:                               	; preds = %B99, %B115
  %t108 = load i32*, i32** %t100, align 4
  %t9 = load i32, i32* %t103, align 4
  %t10 = getelementptr inbounds i32, i32* %t108, i32 %t9
  %t109 = load i32, i32* %t10, align 4
  %t11 = icmp ne i32 %t109, 0
  br i1 %t11, label %B106, label %B111
B106:                               	; preds = %B105
  %t12 = load i32, i32* %t104, align 4
  %t13 = sub i32 0, 1
  %t14 = icmp eq i32 %t12, %t13
  br i1 %t14, label %B113, label %B119
B111:                               	; preds = %B105
  br label %B107
B113:                               	; preds = %B106, %B116
  %t22 = load i32, i32* %t104, align 4
  %t23 = add i32 %t22, 1
  store i32 %t23, i32* %t104, align 4
  %t25 = load i32, i32* %t103, align 4
  %t26 = add i32 %t25, 1
  store i32 %t26, i32* %t103, align 4
  %t29 = load i32, i32* %t104, align 4
  %t127 = load i32*, i32** %t101, align 4
  %t27 = load i32, i32* %t103, align 4
  %t28 = getelementptr inbounds i32, i32* %t127, i32 %t27
  store i32 %t29, i32* %t28, align 4
  br label %B115
B119:                               	; preds = %B106
  br label %B116
B107:                               	; preds = %B111
  ret void
B115:                               	; preds = %B113, %B114
  br label %B105
B116:                               	; preds = %B119
  %t120 = load i32*, i32** %t100, align 4
  %t15 = load i32, i32* %t103, align 4
  %t16 = getelementptr inbounds i32, i32* %t120, i32 %t15
  %t121 = load i32, i32* %t16, align 4
  %t122 = load i32*, i32** %t100, align 4
  %t17 = load i32, i32* %t104, align 4
  %t18 = getelementptr inbounds i32, i32* %t122, i32 %t17
  %t123 = load i32, i32* %t18, align 4
  %t19 = icmp eq i32 %t121, %t123
  br i1 %t19, label %B113, label %B126
B126:                               	; preds = %B116
  br label %B114
B114:                               	; preds = %B126
  %t128 = load i32*, i32** %t101, align 4
  %t31 = load i32, i32* %t104, align 4
  %t32 = getelementptr inbounds i32, i32* %t128, i32 %t31
  %t129 = load i32, i32* %t32, align 4
  store i32 %t129, i32* %t104, align 4
  br label %B115
}
define i32 @KMP(i32* %t33, i32* %t35) {
B130:
  %t136 = alloca i32, align 4
  %t135 = alloca i32, align 4
  %t133 = alloca [4096 x i32], align 4
  %t132 = alloca i32*, align 4
  %t131 = alloca i32*, align 4
  store i32* %t33, i32** %t131, align 4
  store i32* %t35, i32** %t132, align 4
  %t134 = load i32*, i32** %t131, align 4
  %t39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t133, i32 0, i32 0
  call void @get_next(i32* %t134, i32* %t39)
  store i32 0, i32* %t135, align 4
  store i32 0, i32* %t136, align 4
  br label %B137
B137:                               	; preds = %B130, %B147
  %t140 = load i32*, i32** %t132, align 4
  %t42 = load i32, i32* %t136, align 4
  %t43 = getelementptr inbounds i32, i32* %t140, i32 %t42
  %t141 = load i32, i32* %t43, align 4
  %t44 = icmp ne i32 %t141, 0
  br i1 %t44, label %B138, label %B143
B138:                               	; preds = %B137
  %t148 = load i32*, i32** %t131, align 4
  %t45 = load i32, i32* %t135, align 4
  %t46 = getelementptr inbounds i32, i32* %t148, i32 %t45
  %t149 = load i32, i32* %t46, align 4
  %t150 = load i32*, i32** %t132, align 4
  %t47 = load i32, i32* %t136, align 4
  %t48 = getelementptr inbounds i32, i32* %t150, i32 %t47
  %t151 = load i32, i32* %t48, align 4
  %t49 = icmp eq i32 %t149, %t151
  br i1 %t49, label %B145, label %B154
B143:                               	; preds = %B137
  br label %B139
B145:                               	; preds = %B138
  %t51 = load i32, i32* %t135, align 4
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* %t135, align 4
  %t54 = load i32, i32* %t136, align 4
  %t55 = add i32 %t54, 1
  store i32 %t55, i32* %t136, align 4
  %t157 = load i32*, i32** %t131, align 4
  %t56 = load i32, i32* %t135, align 4
  %t57 = getelementptr inbounds i32, i32* %t157, i32 %t56
  %t158 = load i32, i32* %t57, align 4
  %t159 = icmp ne i32 %t158, 0
  %t58 = xor i1 %t159, true
  %t60 = icmp ne i1 %t58, 0
  br i1 %t60, label %B155, label %B161
B154:                               	; preds = %B138
  br label %B146
B139:                               	; preds = %B143
  %t73 = sub i32 0, 1
  ret i32 %t73
B155:                               	; preds = %B145
  %t59 = load i32, i32* %t136, align 4
  ret i32 %t59
  br label %B156
B161:                               	; preds = %B145
  br label %B156
B146:                               	; preds = %B154
  %t62 = load i32, i32* %t135, align 4
  %t63 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t133, i32 0, i32 %t62
  %t163 = load i32, i32* %t63, align 4
  store i32 %t163, i32* %t135, align 4
  %t64 = load i32, i32* %t135, align 4
  %t65 = sub i32 0, 1
  %t66 = icmp eq i32 %t64, %t65
  br i1 %t66, label %B164, label %B168
B156:                               	; preds = %B155, %B161
  br label %B147
B164:                               	; preds = %B146
  %t68 = load i32, i32* %t135, align 4
  %t69 = add i32 %t68, 1
  store i32 %t69, i32* %t135, align 4
  %t71 = load i32, i32* %t136, align 4
  %t72 = add i32 %t71, 1
  store i32 %t72, i32* %t136, align 4
  br label %B165
B168:                               	; preds = %B146
  br label %B165
B147:                               	; preds = %B156, %B165
  br label %B137
B165:                               	; preds = %B164, %B168
  br label %B147
}
define i32 @read_str(i32* %t74) {
B169:
  %t171 = alloca i32, align 4
  %t170 = alloca i32*, align 4
  store i32* %t74, i32** %t170, align 4
  store i32 0, i32* %t171, align 4
  br label %B172
B172:                               	; preds = %B169, %B180
  %t77 = icmp ne i32 1, 0
  br i1 %t77, label %B173, label %B176
B173:                               	; preds = %B172
  %t80 = call i32 @getch()
  %t178 = load i32*, i32** %t170, align 4
  %t78 = load i32, i32* %t171, align 4
  %t79 = getelementptr inbounds i32, i32* %t178, i32 %t78
  store i32 %t80, i32* %t79, align 4
  %t181 = load i32*, i32** %t170, align 4
  %t81 = load i32, i32* %t171, align 4
  %t82 = getelementptr inbounds i32, i32* %t181, i32 %t81
  %t182 = load i32, i32* %t82, align 4
  %t83 = icmp eq i32 %t182, 10
  br i1 %t83, label %B179, label %B185
B176:                               	; preds = %B172
  br label %B174
B179:                               	; preds = %B173
  br label %B174
B185:                               	; preds = %B173
  br label %B180
B174:                               	; preds = %B176, %B179
  %t187 = load i32*, i32** %t170, align 4
  %t87 = load i32, i32* %t171, align 4
  %t88 = getelementptr inbounds i32, i32* %t187, i32 %t87
  store i32 0, i32* %t88, align 4
  %t89 = load i32, i32* %t171, align 4
  ret i32 %t89
B180:                               	; preds = %B185, %B186
  %t85 = load i32, i32* %t171, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t171, align 4
  br label %B172
}
define i32 @main() {
B188:
  %t190 = alloca [4096 x i32], align 4
  %t189 = alloca [4096 x i32], align 4
  %t92 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t189, i32 0, i32 0
  %t93 = call i32 @read_str(i32* %t92)
  %t94 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t190, i32 0, i32 0
  %t95 = call i32 @read_str(i32* %t94)
  %t96 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t189, i32 0, i32 0
  %t97 = getelementptr inbounds [4096 x i32], [4096 x i32]* %t190, i32 0, i32 0
  %t98 = call i32 @KMP(i32* %t96, i32* %t97)
  call void @putint(i32 %t98)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
