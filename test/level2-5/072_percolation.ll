@array = global [110 x i32] zeroinitializer, align 4
@n = global i32 0, align 4
define void @init(i32 %t2) {
B174:
  %t176 = alloca i32, align 4
  %t175 = alloca i32, align 4
  store i32 %t2, i32* %t175, align 4
  store i32 1, i32* %t176, align 4
  br label %B177
B177:                               	; preds = %B174, %B178
  %t5 = load i32, i32* %t176, align 4
  %t6 = load i32, i32* %t175, align 4
  %t7 = load i32, i32* %t175, align 4
  %t8 = mul i32 %t6, %t7
  %t9 = add i32 %t8, 1
  %t10 = icmp sle i32 %t5, %t9
  br i1 %t10, label %B178, label %B182
B178:                               	; preds = %B177
  %t13 = sub i32 0, 1
  %t11 = load i32, i32* %t176, align 4
  %t12 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t11
  store i32 %t13, i32* %t12, align 4
  %t15 = load i32, i32* %t176, align 4
  %t16 = add i32 %t15, 1
  store i32 %t16, i32* %t176, align 4
  br label %B177
B182:                               	; preds = %B177
  br label %B179
B179:                               	; preds = %B182
  ret void
}
define i32 @findfa(i32 %t17) {
B183:
  %t184 = alloca i32, align 4
  store i32 %t17, i32* %t184, align 4
  %t19 = load i32, i32* %t184, align 4
  %t20 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t19
  %t188 = load i32, i32* %t20, align 4
  %t21 = load i32, i32* %t184, align 4
  %t22 = icmp eq i32 %t188, %t21
  br i1 %t22, label %B185, label %B191
B185:                               	; preds = %B183
  %t23 = load i32, i32* %t184, align 4
  ret i32 %t23
  br label %B187
B191:                               	; preds = %B183
  br label %B186
B187:                               	; preds = %B185, %B186
  ret i32 0
B186:                               	; preds = %B191
  %t26 = load i32, i32* %t184, align 4
  %t27 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t26
  %t192 = load i32, i32* %t27, align 4
  %t28 = call i32 @findfa(i32 %t192)
  %t24 = load i32, i32* %t184, align 4
  %t25 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t24
  store i32 %t28, i32* %t25, align 4
  %t29 = load i32, i32* %t184, align 4
  %t30 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t29
  %t193 = load i32, i32* %t30, align 4
  ret i32 %t193
  br label %B187
}
define void @mmerge(i32 %t31, i32 %t33) {
B194:
  %t198 = alloca i32, align 4
  %t197 = alloca i32, align 4
  %t196 = alloca i32, align 4
  %t195 = alloca i32, align 4
  store i32 %t31, i32* %t195, align 4
  store i32 %t33, i32* %t196, align 4
  %t35 = load i32, i32* %t195, align 4
  %t36 = call i32 @findfa(i32 %t35)
  store i32 %t36, i32* %t197, align 4
  %t38 = load i32, i32* %t196, align 4
  %t39 = call i32 @findfa(i32 %t38)
  store i32 %t39, i32* %t198, align 4
  %t41 = load i32, i32* %t197, align 4
  %t42 = load i32, i32* %t198, align 4
  %t43 = icmp ne i32 %t41, %t42
  br i1 %t43, label %B199, label %B203
B199:                               	; preds = %B194
  %t46 = load i32, i32* %t198, align 4
  %t44 = load i32, i32* %t197, align 4
  %t45 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t44
  store i32 %t46, i32* %t45, align 4
  br label %B200
B203:                               	; preds = %B194
  br label %B200
B200:                               	; preds = %B199, %B203
  ret void
}
define i32 @main() {
B204:
  %t296 = alloca i32, align 4
  %t230 = alloca i32, align 4
  %t217 = alloca i32, align 4
  %t216 = alloca i32, align 4
  %t215 = alloca i32, align 4
  %t208 = alloca i32, align 4
  %t207 = alloca i32, align 4
  %t206 = alloca i32, align 4
  %t205 = alloca i32, align 4
  store i32 1, i32* %t205, align 4
  br label %B209
B209:                               	; preds = %B204, %B298
  %t52 = load i32, i32* %t205, align 4
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %B210, label %B213
B210:                               	; preds = %B209
  %t55 = load i32, i32* %t205, align 4
  %t56 = sub i32 %t55, 1
  store i32 %t56, i32* %t205, align 4
  store i32 4, i32* @n, align 4
  store i32 10, i32* %t206, align 4
  store i32 0, i32* %t215, align 4
  store i32 0, i32* %t216, align 4
  %t61 = load i32, i32* @n, align 4
  call void @init(i32 %t61)
  %t62 = load i32, i32* @n, align 4
  %t63 = load i32, i32* @n, align 4
  %t64 = mul i32 %t62, %t63
  %t65 = add i32 %t64, 1
  store i32 %t65, i32* %t217, align 4
  br label %B218
B213:                               	; preds = %B209
  br label %B211
B218:                               	; preds = %B210, %B225
  %t67 = load i32, i32* %t215, align 4
  %t68 = load i32, i32* %t206, align 4
  %t69 = icmp slt i32 %t67, %t68
  br i1 %t69, label %B219, label %B223
B211:                               	; preds = %B213
  ret i32 0
B219:                               	; preds = %B218
  %t71 = call i32 @getint()
  store i32 %t71, i32* %t207, align 4
  %t73 = call i32 @getint()
  store i32 %t73, i32* %t208, align 4
  %t74 = load i32, i32* %t216, align 4
  %t226 = icmp ne i32 %t74, 0
  %t75 = xor i1 %t226, true
  %t166 = icmp ne i1 %t75, 0
  br i1 %t166, label %B224, label %B228
B223:                               	; preds = %B218
  br label %B220
B224:                               	; preds = %B219
  %t76 = load i32, i32* @n, align 4
  %t77 = load i32, i32* %t207, align 4
  %t78 = sub i32 %t77, 1
  %t79 = mul i32 %t76, %t78
  %t80 = load i32, i32* %t208, align 4
  %t81 = add i32 %t79, %t80
  store i32 %t81, i32* %t230, align 4
  %t85 = load i32, i32* %t230, align 4
  %t83 = load i32, i32* %t230, align 4
  %t84 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t83
  store i32 %t85, i32* %t84, align 4
  %t86 = load i32, i32* %t207, align 4
  %t87 = icmp eq i32 %t86, 1
  br i1 %t87, label %B231, label %B235
B228:                               	; preds = %B219
  br label %B225
B220:                               	; preds = %B223
  %t170 = load i32, i32* %t216, align 4
  %t299 = icmp ne i32 %t170, 0
  %t171 = xor i1 %t299, true
  %t173 = icmp ne i1 %t171, 0
  br i1 %t173, label %B297, label %B301
B231:                               	; preds = %B224
  %t88 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 0
  store i32 0, i32* %t88, align 4
  %t89 = load i32, i32* %t230, align 4
  call void @mmerge(i32 %t89, i32 0)
  br label %B232
B235:                               	; preds = %B224
  br label %B232
B225:                               	; preds = %B228, %B282
  %t168 = load i32, i32* %t215, align 4
  %t169 = add i32 %t168, 1
  store i32 %t169, i32* %t215, align 4
  br label %B218
B297:                               	; preds = %B220
  %t172 = sub i32 0, 1
  call void @putint(i32 %t172)
  call void @putch(i32 10)
  br label %B298
B301:                               	; preds = %B220
  br label %B298
B232:                               	; preds = %B231, %B235
  %t90 = load i32, i32* %t207, align 4
  %t91 = load i32, i32* @n, align 4
  %t92 = icmp eq i32 %t90, %t91
  br i1 %t92, label %B236, label %B240
B298:                               	; preds = %B297, %B301
  br label %B209
B236:                               	; preds = %B232
  %t95 = load i32, i32* %t217, align 4
  %t93 = load i32, i32* %t217, align 4
  %t94 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t93
  store i32 %t95, i32* %t94, align 4
  %t96 = load i32, i32* %t230, align 4
  %t97 = load i32, i32* %t217, align 4
  call void @mmerge(i32 %t96, i32 %t97)
  br label %B237
B240:                               	; preds = %B232
  br label %B237
B237:                               	; preds = %B236, %B240
  %t98 = load i32, i32* %t208, align 4
  %t99 = load i32, i32* @n, align 4
  %t100 = icmp slt i32 %t98, %t99
  br i1 %t100, label %B243, label %B246
B243:                               	; preds = %B237
  %t101 = load i32, i32* %t230, align 4
  %t102 = add i32 %t101, 1
  %t103 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t102
  %t247 = load i32, i32* %t103, align 4
  %t104 = sub i32 0, 1
  %t105 = icmp ne i32 %t247, %t104
  br i1 %t105, label %B241, label %B250
B246:                               	; preds = %B237
  br label %B242
B241:                               	; preds = %B243
  %t107 = load i32, i32* %t230, align 4
  %t108 = load i32, i32* %t230, align 4
  %t109 = add i32 %t108, 1
  call void @mmerge(i32 %t107, i32 %t109)
  br label %B242
B250:                               	; preds = %B243
  br label %B242
B242:                               	; preds = %B241, %B246, %B250
  %t110 = load i32, i32* %t208, align 4
  %t111 = icmp sgt i32 %t110, 1
  br i1 %t111, label %B253, label %B256
B253:                               	; preds = %B242
  %t112 = load i32, i32* %t230, align 4
  %t113 = sub i32 %t112, 1
  %t114 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t113
  %t257 = load i32, i32* %t114, align 4
  %t115 = sub i32 0, 1
  %t116 = icmp ne i32 %t257, %t115
  br i1 %t116, label %B251, label %B260
B256:                               	; preds = %B242
  br label %B252
B251:                               	; preds = %B253
  %t118 = load i32, i32* %t230, align 4
  %t119 = load i32, i32* %t230, align 4
  %t120 = sub i32 %t119, 1
  call void @mmerge(i32 %t118, i32 %t120)
  br label %B252
B260:                               	; preds = %B253
  br label %B252
B252:                               	; preds = %B251, %B256, %B260
  %t121 = load i32, i32* %t207, align 4
  %t122 = load i32, i32* @n, align 4
  %t123 = icmp slt i32 %t121, %t122
  br i1 %t123, label %B263, label %B266
B263:                               	; preds = %B252
  %t124 = load i32, i32* %t230, align 4
  %t125 = load i32, i32* @n, align 4
  %t126 = add i32 %t124, %t125
  %t127 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t126
  %t267 = load i32, i32* %t127, align 4
  %t128 = sub i32 0, 1
  %t129 = icmp ne i32 %t267, %t128
  br i1 %t129, label %B261, label %B270
B266:                               	; preds = %B252
  br label %B262
B261:                               	; preds = %B263
  %t131 = load i32, i32* %t230, align 4
  %t132 = load i32, i32* %t230, align 4
  %t133 = load i32, i32* @n, align 4
  %t134 = add i32 %t132, %t133
  call void @mmerge(i32 %t131, i32 %t134)
  br label %B262
B270:                               	; preds = %B263
  br label %B262
B262:                               	; preds = %B261, %B266, %B270
  %t135 = load i32, i32* %t207, align 4
  %t136 = icmp sgt i32 %t135, 1
  br i1 %t136, label %B273, label %B276
B273:                               	; preds = %B262
  %t137 = load i32, i32* %t230, align 4
  %t138 = load i32, i32* @n, align 4
  %t139 = sub i32 %t137, %t138
  %t140 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t139
  %t277 = load i32, i32* %t140, align 4
  %t141 = sub i32 0, 1
  %t142 = icmp ne i32 %t277, %t141
  br i1 %t142, label %B271, label %B280
B276:                               	; preds = %B262
  br label %B272
B271:                               	; preds = %B273
  %t144 = load i32, i32* %t230, align 4
  %t145 = load i32, i32* %t230, align 4
  %t146 = load i32, i32* @n, align 4
  %t147 = sub i32 %t145, %t146
  call void @mmerge(i32 %t144, i32 %t147)
  br label %B272
B280:                               	; preds = %B273
  br label %B272
B272:                               	; preds = %B271, %B276, %B280
  %t148 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 0
  %t285 = load i32, i32* %t148, align 4
  %t149 = sub i32 0, 1
  %t150 = icmp ne i32 %t285, %t149
  br i1 %t150, label %B284, label %B288
B284:                               	; preds = %B272
  %t151 = load i32, i32* %t217, align 4
  %t152 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i32 0, i32 %t151
  %t289 = load i32, i32* %t152, align 4
  %t153 = sub i32 0, 1
  %t154 = icmp ne i32 %t289, %t153
  br i1 %t154, label %B283, label %B292
B288:                               	; preds = %B272
  br label %B282
B283:                               	; preds = %B284
  %t156 = call i32 @findfa(i32 0)
  %t157 = load i32, i32* %t217, align 4
  %t158 = call i32 @findfa(i32 %t157)
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %B281, label %B295
B292:                               	; preds = %B284
  br label %B282
B282:                               	; preds = %B281, %B288, %B292, %B295
  br label %B225
B281:                               	; preds = %B283
  store i32 1, i32* %t216, align 4
  %t162 = load i32, i32* %t215, align 4
  %t163 = add i32 %t162, 1
  store i32 %t163, i32* %t296, align 4
  %t165 = load i32, i32* %t296, align 4
  call void @putint(i32 %t165)
  call void @putch(i32 10)
  br label %B282
B295:                               	; preds = %B283
  br label %B282
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
