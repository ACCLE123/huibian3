@INF = global i32 65535, align 4
@e = global [16 x [16 x i32]] zeroinitializer, align 4
@book = global [16 x i32] zeroinitializer, align 4
@dis = global [16 x i32] zeroinitializer, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@v1 = global i32 0, align 4
@v2 = global i32 0, align 4
@w = global i32 0, align 4
define void @Dijkstra() {
B140:
  %t178 = alloca i32, align 4
  %t159 = alloca i32, align 4
  %t158 = alloca i32, align 4
  %t157 = alloca i32, align 4
  %t142 = alloca i32, align 4
  %t141 = alloca i32, align 4
  store i32 1, i32* %t141, align 4
  br label %B143
B143:                               	; preds = %B140, %B144
  %t12 = load i32, i32* %t141, align 4
  %t13 = load i32, i32* @n, align 4
  %t14 = icmp sle i32 %t12, %t13
  br i1 %t14, label %B144, label %B148
B144:                               	; preds = %B143
  %t18 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 1
  %t17 = load i32, i32* %t141, align 4
  %t149 = getelementptr inbounds [16 x i32], [16 x i32]* %t18, i32 0, i32 %t17
  %t150 = load i32, i32* %t149, align 4
  %t15 = load i32, i32* %t141, align 4
  %t16 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t15
  store i32 %t150, i32* %t16, align 4
  %t19 = load i32, i32* %t141, align 4
  %t20 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t19
  store i32 0, i32* %t20, align 4
  %t22 = load i32, i32* %t141, align 4
  %t23 = add i32 %t22, 1
  store i32 %t23, i32* %t141, align 4
  br label %B143
B148:                               	; preds = %B143
  br label %B145
B145:                               	; preds = %B148
  %t24 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 1
  store i32 1, i32* %t24, align 4
  store i32 1, i32* %t141, align 4
  br label %B151
B151:                               	; preds = %B145, %B181
  %t26 = load i32, i32* %t141, align 4
  %t27 = load i32, i32* @n, align 4
  %t28 = sub i32 %t27, 1
  %t29 = icmp sle i32 %t26, %t28
  br i1 %t29, label %B152, label %B156
B152:                               	; preds = %B151
  %t30 = load i32, i32* @INF, align 4
  store i32 %t30, i32* %t157, align 4
  store i32 0, i32* %t158, align 4
  store i32 1, i32* %t159, align 4
  br label %B160
B156:                               	; preds = %B151
  br label %B153
B160:                               	; preds = %B152, %B167
  %t34 = load i32, i32* %t159, align 4
  %t35 = load i32, i32* @n, align 4
  %t36 = icmp sle i32 %t34, %t35
  br i1 %t36, label %B161, label %B165
B153:                               	; preds = %B156
  ret void
B161:                               	; preds = %B160
  %t37 = load i32, i32* %t157, align 4
  %t38 = load i32, i32* %t159, align 4
  %t39 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t38
  %t169 = load i32, i32* %t39, align 4
  %t40 = icmp sgt i32 %t37, %t169
  br i1 %t40, label %B168, label %B172
B165:                               	; preds = %B160
  br label %B162
B168:                               	; preds = %B161
  %t41 = load i32, i32* %t159, align 4
  %t42 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t41
  %t173 = load i32, i32* %t42, align 4
  %t43 = icmp eq i32 %t173, 0
  br i1 %t43, label %B166, label %B176
B172:                               	; preds = %B161
  br label %B167
B162:                               	; preds = %B165
  %t53 = load i32, i32* %t158, align 4
  %t54 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i32 0, i32 %t53
  store i32 1, i32* %t54, align 4
  store i32 1, i32* %t178, align 4
  br label %B179
B166:                               	; preds = %B168
  %t46 = load i32, i32* %t159, align 4
  %t47 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t46
  %t177 = load i32, i32* %t47, align 4
  store i32 %t177, i32* %t157, align 4
  %t49 = load i32, i32* %t159, align 4
  store i32 %t49, i32* %t158, align 4
  br label %B167
B176:                               	; preds = %B168
  br label %B167
B167:                               	; preds = %B166, %B172, %B176
  %t51 = load i32, i32* %t159, align 4
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* %t159, align 4
  br label %B160
B179:                               	; preds = %B162, %B186
  %t56 = load i32, i32* %t178, align 4
  %t57 = load i32, i32* @n, align 4
  %t58 = icmp sle i32 %t56, %t57
  br i1 %t58, label %B180, label %B184
B180:                               	; preds = %B179
  %t59 = load i32, i32* %t158, align 4
  %t61 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t59
  %t60 = load i32, i32* %t178, align 4
  %t187 = getelementptr inbounds [16 x i32], [16 x i32]* %t61, i32 0, i32 %t60
  %t188 = load i32, i32* %t187, align 4
  %t62 = load i32, i32* @INF, align 4
  %t63 = icmp slt i32 %t188, %t62
  br i1 %t63, label %B185, label %B191
B184:                               	; preds = %B179
  br label %B181
B185:                               	; preds = %B180
  %t64 = load i32, i32* %t178, align 4
  %t65 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t64
  %t194 = load i32, i32* %t65, align 4
  %t66 = load i32, i32* %t158, align 4
  %t67 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t66
  %t195 = load i32, i32* %t67, align 4
  %t68 = load i32, i32* %t158, align 4
  %t70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t68
  %t69 = load i32, i32* %t178, align 4
  %t196 = getelementptr inbounds [16 x i32], [16 x i32]* %t70, i32 0, i32 %t69
  %t197 = load i32, i32* %t196, align 4
  %t71 = add i32 %t195, %t197
  %t72 = icmp sgt i32 %t194, %t71
  br i1 %t72, label %B192, label %B200
B191:                               	; preds = %B180
  br label %B186
B181:                               	; preds = %B184
  %t85 = load i32, i32* %t141, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t141, align 4
  br label %B151
B192:                               	; preds = %B185
  %t75 = load i32, i32* %t158, align 4
  %t76 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t75
  %t201 = load i32, i32* %t76, align 4
  %t77 = load i32, i32* %t158, align 4
  %t79 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t77
  %t78 = load i32, i32* %t178, align 4
  %t202 = getelementptr inbounds [16 x i32], [16 x i32]* %t79, i32 0, i32 %t78
  %t203 = load i32, i32* %t202, align 4
  %t80 = add i32 %t201, %t203
  %t73 = load i32, i32* %t178, align 4
  %t74 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t73
  store i32 %t80, i32* %t74, align 4
  br label %B193
B200:                               	; preds = %B185
  br label %B193
B186:                               	; preds = %B191, %B193
  %t82 = load i32, i32* %t178, align 4
  %t83 = add i32 %t82, 1
  store i32 %t83, i32* %t178, align 4
  br label %B179
B193:                               	; preds = %B192, %B200
  br label %B186
}
define i32 @main() {
B204:
  %t234 = alloca i32, align 4
  %t233 = alloca i32, align 4
  %t212 = alloca i32, align 4
  %t205 = alloca i32, align 4
  %t89 = call i32 @getint()
  store i32 %t89, i32* @n, align 4
  %t91 = call i32 @getint()
  store i32 %t91, i32* @m, align 4
  store i32 1, i32* %t205, align 4
  br label %B206
B206:                               	; preds = %B204, %B215
  %t93 = load i32, i32* %t205, align 4
  %t94 = load i32, i32* @n, align 4
  %t95 = icmp sle i32 %t93, %t94
  br i1 %t95, label %B207, label %B211
B207:                               	; preds = %B206
  store i32 1, i32* %t212, align 4
  br label %B213
B211:                               	; preds = %B206
  br label %B208
B213:                               	; preds = %B207, %B221
  %t97 = load i32, i32* %t212, align 4
  %t98 = load i32, i32* @n, align 4
  %t99 = icmp sle i32 %t97, %t98
  br i1 %t99, label %B214, label %B218
B208:                               	; preds = %B211
  store i32 1, i32* %t205, align 4
  br label %B227
B214:                               	; preds = %B213
  %t100 = load i32, i32* %t205, align 4
  %t101 = load i32, i32* %t212, align 4
  %t102 = icmp eq i32 %t100, %t101
  br i1 %t102, label %B219, label %B224
B218:                               	; preds = %B213
  br label %B215
B227:                               	; preds = %B208, %B228
  %t117 = load i32, i32* %t205, align 4
  %t118 = load i32, i32* @m, align 4
  %t119 = icmp sle i32 %t117, %t118
  br i1 %t119, label %B228, label %B232
B219:                               	; preds = %B214
  %t103 = load i32, i32* %t205, align 4
  %t105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t103
  %t104 = load i32, i32* %t212, align 4
  %t225 = getelementptr inbounds [16 x i32], [16 x i32]* %t105, i32 0, i32 %t104
  store i32 0, i32* %t225, align 4
  br label %B221
B224:                               	; preds = %B214
  br label %B220
B215:                               	; preds = %B218
  %t114 = load i32, i32* %t205, align 4
  %t115 = add i32 %t114, 1
  store i32 %t115, i32* %t205, align 4
  br label %B206
B228:                               	; preds = %B227
  %t120 = call i32 @getint()
  store i32 %t120, i32* %t233, align 4
  %t122 = call i32 @getint()
  store i32 %t122, i32* %t234, align 4
  %t127 = call i32 @getint()
  %t124 = load i32, i32* %t233, align 4
  %t126 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t124
  %t125 = load i32, i32* %t234, align 4
  %t235 = getelementptr inbounds [16 x i32], [16 x i32]* %t126, i32 0, i32 %t125
  store i32 %t127, i32* %t235, align 4
  %t129 = load i32, i32* %t205, align 4
  %t130 = add i32 %t129, 1
  store i32 %t130, i32* %t205, align 4
  br label %B227
B232:                               	; preds = %B227
  br label %B229
B221:                               	; preds = %B219, %B220
  %t111 = load i32, i32* %t212, align 4
  %t112 = add i32 %t111, 1
  store i32 %t112, i32* %t212, align 4
  br label %B213
B220:                               	; preds = %B224
  %t109 = load i32, i32* @INF, align 4
  %t106 = load i32, i32* %t205, align 4
  %t108 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %t106
  %t107 = load i32, i32* %t212, align 4
  %t226 = getelementptr inbounds [16 x i32], [16 x i32]* %t108, i32 0, i32 %t107
  store i32 %t109, i32* %t226, align 4
  br label %B221
B229:                               	; preds = %B232
  call void @Dijkstra()
  store i32 1, i32* %t205, align 4
  br label %B236
B236:                               	; preds = %B229, %B237
  %t132 = load i32, i32* %t205, align 4
  %t133 = load i32, i32* @n, align 4
  %t134 = icmp sle i32 %t132, %t133
  br i1 %t134, label %B237, label %B241
B237:                               	; preds = %B236
  %t135 = load i32, i32* %t205, align 4
  %t136 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i32 0, i32 %t135
  %t242 = load i32, i32* %t136, align 4
  call void @putint(i32 %t242)
  call void @putch(i32 32)
  %t138 = load i32, i32* %t205, align 4
  %t139 = add i32 %t138, 1
  store i32 %t139, i32* %t205, align 4
  br label %B236
B241:                               	; preds = %B236
  br label %B238
B238:                               	; preds = %B241
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
