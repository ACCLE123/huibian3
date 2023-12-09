@N = global i32 10000, align 4
define i32 @long_array(i32 %t1) {
B136:
  %t200 = alloca i32, align 4
  %t185 = alloca i32, align 4
  %t165 = alloca i32, align 4
  %t141 = alloca i32, align 4
  %t140 = alloca [10000 x i32], align 4
  %t139 = alloca [10000 x i32], align 4
  %t138 = alloca [10000 x i32], align 4
  %t137 = alloca i32, align 4
  store i32 %t1, i32* %t137, align 4
  store i32 0, i32* %t141, align 4
  br label %B142
B142:                               	; preds = %B136, %B143
  %t10 = load i32, i32* %t141, align 4
  %t11 = load i32, i32* @N, align 4
  %t12 = icmp slt i32 %t10, %t11
  br i1 %t12, label %B143, label %B147
B143:                               	; preds = %B142
  %t15 = load i32, i32* %t141, align 4
  %t16 = load i32, i32* %t141, align 4
  %t17 = mul i32 %t15, %t16
  %t18 = srem i32 %t17, 10
  %t13 = load i32, i32* %t141, align 4
  %t14 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t13
  store i32 %t18, i32* %t14, align 4
  %t20 = load i32, i32* %t141, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t141, align 4
  br label %B142
B147:                               	; preds = %B142
  br label %B144
B144:                               	; preds = %B147
  store i32 0, i32* %t141, align 4
  br label %B148
B148:                               	; preds = %B144, %B149
  %t23 = load i32, i32* %t141, align 4
  %t24 = load i32, i32* @N, align 4
  %t25 = icmp slt i32 %t23, %t24
  br i1 %t25, label %B149, label %B153
B149:                               	; preds = %B148
  %t28 = load i32, i32* %t141, align 4
  %t29 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t28
  %t154 = load i32, i32* %t29, align 4
  %t30 = load i32, i32* %t141, align 4
  %t31 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t30
  %t155 = load i32, i32* %t31, align 4
  %t32 = mul i32 %t154, %t155
  %t33 = srem i32 %t32, 10
  %t26 = load i32, i32* %t141, align 4
  %t27 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t26
  store i32 %t33, i32* %t27, align 4
  %t35 = load i32, i32* %t141, align 4
  %t36 = add i32 %t35, 1
  store i32 %t36, i32* %t141, align 4
  br label %B148
B153:                               	; preds = %B148
  br label %B150
B150:                               	; preds = %B153
  store i32 0, i32* %t141, align 4
  br label %B156
B156:                               	; preds = %B150, %B157
  %t38 = load i32, i32* %t141, align 4
  %t39 = load i32, i32* @N, align 4
  %t40 = icmp slt i32 %t38, %t39
  br i1 %t40, label %B157, label %B161
B157:                               	; preds = %B156
  %t43 = load i32, i32* %t141, align 4
  %t44 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t43
  %t162 = load i32, i32* %t44, align 4
  %t45 = load i32, i32* %t141, align 4
  %t46 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t45
  %t163 = load i32, i32* %t46, align 4
  %t47 = mul i32 %t162, %t163
  %t48 = srem i32 %t47, 100
  %t49 = load i32, i32* %t141, align 4
  %t50 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t49
  %t164 = load i32, i32* %t50, align 4
  %t51 = add i32 %t48, %t164
  %t41 = load i32, i32* %t141, align 4
  %t42 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t41
  store i32 %t51, i32* %t42, align 4
  %t53 = load i32, i32* %t141, align 4
  %t54 = add i32 %t53, 1
  store i32 %t54, i32* %t141, align 4
  br label %B156
B161:                               	; preds = %B156
  br label %B158
B158:                               	; preds = %B161
  store i32 0, i32* %t165, align 4
  store i32 0, i32* %t141, align 4
  br label %B166
B166:                               	; preds = %B158, %B174
  %t57 = load i32, i32* %t141, align 4
  %t58 = load i32, i32* @N, align 4
  %t59 = icmp slt i32 %t57, %t58
  br i1 %t59, label %B167, label %B171
B167:                               	; preds = %B166
  %t60 = load i32, i32* %t141, align 4
  %t61 = icmp slt i32 %t60, 10
  br i1 %t61, label %B172, label %B177
B171:                               	; preds = %B166
  br label %B168
B172:                               	; preds = %B167
  %t63 = load i32, i32* %t165, align 4
  %t64 = load i32, i32* %t141, align 4
  %t65 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t64
  %t178 = load i32, i32* %t65, align 4
  %t66 = add i32 %t63, %t178
  %t67 = srem i32 %t66, 1333
  store i32 %t67, i32* %t165, align 4
  %t68 = load i32, i32* %t165, align 4
  call void @putint(i32 %t68)
  br label %B174
B177:                               	; preds = %B167
  br label %B173
B168:                               	; preds = %B171
  %t134 = load i32, i32* %t165, align 4
  ret i32 %t134
B174:                               	; preds = %B172, %B181
  %t132 = load i32, i32* %t141, align 4
  %t133 = add i32 %t132, 1
  store i32 %t133, i32* %t141, align 4
  br label %B166
B173:                               	; preds = %B177
  %t69 = load i32, i32* %t141, align 4
  %t70 = icmp slt i32 %t69, 20
  br i1 %t70, label %B179, label %B184
B179:                               	; preds = %B173
  %t71 = load i32, i32* @N, align 4
  %t72 = sdiv i32 %t71, 2
  store i32 %t72, i32* %t185, align 4
  br label %B186
B184:                               	; preds = %B173
  br label %B180
B186:                               	; preds = %B179, %B187
  %t74 = load i32, i32* %t185, align 4
  %t75 = load i32, i32* @N, align 4
  %t76 = icmp slt i32 %t74, %t75
  br i1 %t76, label %B187, label %B191
B180:                               	; preds = %B184
  %t89 = load i32, i32* %t141, align 4
  %t90 = icmp slt i32 %t89, 30
  br i1 %t90, label %B194, label %B199
B187:                               	; preds = %B186
  %t78 = load i32, i32* %t165, align 4
  %t79 = load i32, i32* %t141, align 4
  %t80 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t79
  %t192 = load i32, i32* %t80, align 4
  %t81 = add i32 %t78, %t192
  %t82 = load i32, i32* %t185, align 4
  %t83 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t82
  %t193 = load i32, i32* %t83, align 4
  %t84 = sub i32 %t81, %t193
  store i32 %t84, i32* %t165, align 4
  %t86 = load i32, i32* %t185, align 4
  %t87 = add i32 %t86, 1
  store i32 %t87, i32* %t185, align 4
  br label %B186
B191:                               	; preds = %B186
  br label %B188
B194:                               	; preds = %B180
  %t91 = load i32, i32* @N, align 4
  %t92 = sdiv i32 %t91, 2
  store i32 %t92, i32* %t200, align 4
  br label %B201
B199:                               	; preds = %B180
  br label %B195
B188:                               	; preds = %B191
  %t88 = load i32, i32* %t165, align 4
  call void @putint(i32 %t88)
  br label %B181
B201:                               	; preds = %B194, %B209
  %t94 = load i32, i32* %t200, align 4
  %t95 = load i32, i32* @N, align 4
  %t96 = icmp slt i32 %t94, %t95
  br i1 %t96, label %B202, label %B206
B195:                               	; preds = %B199
  %t124 = load i32, i32* %t165, align 4
  %t125 = load i32, i32* %t141, align 4
  %t126 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t125
  %t217 = load i32, i32* %t126, align 4
  %t127 = load i32, i32* %t137, align 4
  %t128 = mul i32 %t217, %t127
  %t129 = add i32 %t124, %t128
  %t130 = srem i32 %t129, 99988
  store i32 %t130, i32* %t165, align 4
  br label %B196
B181:                               	; preds = %B188, %B196
  br label %B174
B202:                               	; preds = %B201
  %t97 = load i32, i32* %t200, align 4
  %t98 = icmp sgt i32 %t97, 2233
  br i1 %t98, label %B207, label %B212
B206:                               	; preds = %B201
  br label %B203
B196:                               	; preds = %B195, %B203
  br label %B181
B207:                               	; preds = %B202
  %t100 = load i32, i32* %t165, align 4
  %t101 = load i32, i32* %t141, align 4
  %t102 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t139, i32 0, i32 %t101
  %t213 = load i32, i32* %t102, align 4
  %t103 = add i32 %t100, %t213
  %t104 = load i32, i32* %t200, align 4
  %t105 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t104
  %t214 = load i32, i32* %t105, align 4
  %t106 = sub i32 %t103, %t214
  store i32 %t106, i32* %t165, align 4
  %t108 = load i32, i32* %t200, align 4
  %t109 = add i32 %t108, 1
  store i32 %t109, i32* %t200, align 4
  br label %B209
B212:                               	; preds = %B202
  br label %B208
B203:                               	; preds = %B206
  %t122 = load i32, i32* %t165, align 4
  call void @putint(i32 %t122)
  br label %B196
B209:                               	; preds = %B207, %B208
  br label %B201
B208:                               	; preds = %B212
  %t111 = load i32, i32* %t165, align 4
  %t112 = load i32, i32* %t141, align 4
  %t113 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t138, i32 0, i32 %t112
  %t215 = load i32, i32* %t113, align 4
  %t114 = add i32 %t111, %t215
  %t115 = load i32, i32* %t200, align 4
  %t116 = getelementptr inbounds [10000 x i32], [10000 x i32]* %t140, i32 0, i32 %t115
  %t216 = load i32, i32* %t116, align 4
  %t117 = add i32 %t114, %t216
  %t118 = srem i32 %t117, 13333
  store i32 %t118, i32* %t165, align 4
  %t120 = load i32, i32* %t200, align 4
  %t121 = add i32 %t120, 2
  store i32 %t121, i32* %t200, align 4
  br label %B209
}
define i32 @main() {
B218:
  %t135 = call i32 @long_array(i32 9)
  ret i32 %t135
}
declare void @putint(i32)
