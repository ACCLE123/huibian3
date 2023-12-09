@TAPE_LEN = global i32 65536, align 4
@BUFFER_LEN = global i32 32768, align 4
@tape = global [65536 x i32] zeroinitializer, align 4
@program = global [32768 x i32] zeroinitializer, align 4
@ptr = global i32 0, align 4
define void @read_program() {
B94:
  %t96 = alloca i32, align 4
  %t95 = alloca i32, align 4
  store i32 0, i32* %t95, align 4
  %t8 = call i32 @getint()
  store i32 %t8, i32* %t96, align 4
  br label %B97
B97:                               	; preds = %B94, %B98
  %t10 = load i32, i32* %t95, align 4
  %t11 = load i32, i32* %t96, align 4
  %t12 = icmp slt i32 %t10, %t11
  br i1 %t12, label %B98, label %B102
B98:                               	; preds = %B97
  %t15 = call i32 @getch()
  %t13 = load i32, i32* %t95, align 4
  %t14 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t13
  store i32 %t15, i32* %t14, align 4
  %t17 = load i32, i32* %t95, align 4
  %t18 = add i32 %t17, 1
  store i32 %t18, i32* %t95, align 4
  br label %B97
B102:                               	; preds = %B97
  br label %B99
B99:                               	; preds = %B102
  %t19 = load i32, i32* %t95, align 4
  %t20 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 %t19
  store i32 0, i32* %t20, align 4
  ret void
}
define void @interpret(i32* %t21) {
B103:
  %t107 = alloca i32, align 4
  %t106 = alloca i32, align 4
  %t105 = alloca i32, align 4
  %t104 = alloca i32*, align 4
  store i32* %t21, i32** %t104, align 4
  store i32 0, i32* %t107, align 4
  br label %B108
B108:                               	; preds = %B103, %B120
  %t111 = load i32*, i32** %t104, align 4
  %t26 = load i32, i32* %t107, align 4
  %t27 = getelementptr inbounds i32, i32* %t111, i32 %t26
  %t112 = load i32, i32* %t27, align 4
  %t28 = icmp ne i32 %t112, 0
  br i1 %t28, label %B109, label %B114
B109:                               	; preds = %B108
  %t116 = load i32*, i32** %t104, align 4
  %t30 = load i32, i32* %t107, align 4
  %t31 = getelementptr inbounds i32, i32* %t116, i32 %t30
  %t117 = load i32, i32* %t31, align 4
  store i32 %t117, i32* %t105, align 4
  %t32 = load i32, i32* %t105, align 4
  %t33 = icmp eq i32 %t32, 62
  br i1 %t33, label %B118, label %B123
B114:                               	; preds = %B108
  br label %B110
B118:                               	; preds = %B109
  %t35 = load i32, i32* @ptr, align 4
  %t36 = add i32 %t35, 1
  store i32 %t36, i32* @ptr, align 4
  br label %B120
B123:                               	; preds = %B109
  br label %B119
B110:                               	; preds = %B114
  ret void
B120:                               	; preds = %B118, %B126
  %t91 = load i32, i32* %t107, align 4
  %t92 = add i32 %t91, 1
  store i32 %t92, i32* %t107, align 4
  br label %B108
B119:                               	; preds = %B123
  %t37 = load i32, i32* %t105, align 4
  %t38 = icmp eq i32 %t37, 60
  br i1 %t38, label %B124, label %B129
B124:                               	; preds = %B119
  %t40 = load i32, i32* @ptr, align 4
  %t41 = sub i32 %t40, 1
  store i32 %t41, i32* @ptr, align 4
  br label %B126
B129:                               	; preds = %B119
  br label %B125
B126:                               	; preds = %B124, %B132
  br label %B120
B125:                               	; preds = %B129
  %t42 = load i32, i32* %t105, align 4
  %t43 = icmp eq i32 %t42, 43
  br i1 %t43, label %B130, label %B135
B130:                               	; preds = %B125
  %t46 = load i32, i32* @ptr, align 4
  %t47 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t46
  %t136 = load i32, i32* %t47, align 4
  %t48 = add i32 %t136, 1
  %t44 = load i32, i32* @ptr, align 4
  %t45 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t44
  store i32 %t48, i32* %t45, align 4
  br label %B132
B135:                               	; preds = %B125
  br label %B131
B132:                               	; preds = %B130, %B139
  br label %B126
B131:                               	; preds = %B135
  %t49 = load i32, i32* %t105, align 4
  %t50 = icmp eq i32 %t49, 45
  br i1 %t50, label %B137, label %B142
B137:                               	; preds = %B131
  %t53 = load i32, i32* @ptr, align 4
  %t54 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t53
  %t143 = load i32, i32* %t54, align 4
  %t55 = sub i32 %t143, 1
  %t51 = load i32, i32* @ptr, align 4
  %t52 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t51
  store i32 %t55, i32* %t52, align 4
  br label %B139
B142:                               	; preds = %B131
  br label %B138
B139:                               	; preds = %B137, %B146
  br label %B132
B138:                               	; preds = %B142
  %t56 = load i32, i32* %t105, align 4
  %t57 = icmp eq i32 %t56, 46
  br i1 %t57, label %B144, label %B149
B144:                               	; preds = %B138
  %t58 = load i32, i32* @ptr, align 4
  %t59 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t58
  %t150 = load i32, i32* %t59, align 4
  call void @putch(i32 %t150)
  br label %B146
B149:                               	; preds = %B138
  br label %B145
B146:                               	; preds = %B144, %B153
  br label %B139
B145:                               	; preds = %B149
  %t60 = load i32, i32* %t105, align 4
  %t61 = icmp eq i32 %t60, 44
  br i1 %t61, label %B151, label %B156
B151:                               	; preds = %B145
  %t64 = call i32 @getch()
  %t62 = load i32, i32* @ptr, align 4
  %t63 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t62
  store i32 %t64, i32* %t63, align 4
  br label %B153
B156:                               	; preds = %B145
  br label %B152
B153:                               	; preds = %B151, %B158
  br label %B146
B152:                               	; preds = %B156
  %t65 = load i32, i32* %t105, align 4
  %t66 = icmp eq i32 %t65, 93
  br i1 %t66, label %B159, label %B162
B159:                               	; preds = %B152
  %t67 = load i32, i32* @ptr, align 4
  %t68 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %t67
  %t163 = load i32, i32* %t68, align 4
  %t70 = icmp ne i32 %t163, 0
  br i1 %t70, label %B157, label %B165
B162:                               	; preds = %B152
  br label %B158
B157:                               	; preds = %B159
  store i32 1, i32* %t106, align 4
  br label %B167
B165:                               	; preds = %B159
  br label %B158
B158:                               	; preds = %B162, %B165, %B169
  br label %B153
B167:                               	; preds = %B157, %B177
  %t72 = load i32, i32* %t106, align 4
  %t73 = icmp sgt i32 %t72, 0
  br i1 %t73, label %B168, label %B172
B168:                               	; preds = %B167
  %t75 = load i32, i32* %t107, align 4
  %t76 = sub i32 %t75, 1
  store i32 %t76, i32* %t107, align 4
  %t173 = load i32*, i32** %t104, align 4
  %t78 = load i32, i32* %t107, align 4
  %t79 = getelementptr inbounds i32, i32* %t173, i32 %t78
  %t174 = load i32, i32* %t79, align 4
  store i32 %t174, i32* %t105, align 4
  %t80 = load i32, i32* %t105, align 4
  %t81 = icmp eq i32 %t80, 91
  br i1 %t81, label %B175, label %B180
B172:                               	; preds = %B167
  br label %B169
B175:                               	; preds = %B168
  %t83 = load i32, i32* %t106, align 4
  %t84 = sub i32 %t83, 1
  store i32 %t84, i32* %t106, align 4
  br label %B177
B180:                               	; preds = %B168
  br label %B176
B169:                               	; preds = %B172
  br label %B158
B177:                               	; preds = %B175, %B182
  br label %B167
B176:                               	; preds = %B180
  %t85 = load i32, i32* %t105, align 4
  %t86 = icmp eq i32 %t85, 93
  br i1 %t86, label %B181, label %B185
B181:                               	; preds = %B176
  %t88 = load i32, i32* %t106, align 4
  %t89 = add i32 %t88, 1
  store i32 %t89, i32* %t106, align 4
  br label %B182
B185:                               	; preds = %B176
  br label %B182
B182:                               	; preds = %B181, %B185
  br label %B177
}
define i32 @main() {
B186:
  call void @read_program()
  %t93 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i32 0, i32 0
  call void @interpret(i32* %t93)
  ret i32 0
}
declare i32 @getint()
declare i32 @getch()
declare void @putch(i32)
