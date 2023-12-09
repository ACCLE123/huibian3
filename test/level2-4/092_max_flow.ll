@INF = global i32 1879048192, align 4
@size = global [10 x i32] zeroinitializer, align 4
@to = global [10 x [10 x i32]] zeroinitializer, align 4
@cap = global [10 x [10 x i32]] zeroinitializer, align 4
@rev = global [10 x [10 x i32]] zeroinitializer, align 4
@used = global [10 x i32] zeroinitializer, align 4
define void @my_memset(i32* %t6, i32 %t8, i32 %t10) {
B194:
  %t198 = alloca i32, align 4
  %t197 = alloca i32, align 4
  %t196 = alloca i32, align 4
  %t195 = alloca i32*, align 4
  store i32* %t6, i32** %t195, align 4
  store i32 %t8, i32* %t196, align 4
  store i32 %t10, i32* %t197, align 4
  store i32 0, i32* %t198, align 4
  br label %B199
B199:                               	; preds = %B194, %B200
  %t13 = load i32, i32* %t198, align 4
  %t14 = load i32, i32* %t197, align 4
  %t15 = icmp slt i32 %t13, %t14
  br i1 %t15, label %B200, label %B204
B200:                               	; preds = %B199
  %t18 = load i32, i32* %t196, align 4
  %t205 = load i32*, i32** %t195, align 4
  %t16 = load i32, i32* %t198, align 4
  %t17 = getelementptr inbounds i32, i32* %t205, i32 %t16
  store i32 %t18, i32* %t17, align 4
  %t20 = load i32, i32* %t198, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t198, align 4
  br label %B199
B204:                               	; preds = %B199
  br label %B201
B201:                               	; preds = %B204
  ret void
}
define void @add_node(i32 %t22, i32 %t24, i32 %t26) {
B206:
  %t209 = alloca i32, align 4
  %t208 = alloca i32, align 4
  %t207 = alloca i32, align 4
  store i32 %t22, i32* %t207, align 4
  store i32 %t24, i32* %t208, align 4
  store i32 %t26, i32* %t209, align 4
  %t32 = load i32, i32* %t208, align 4
  %t28 = load i32, i32* %t207, align 4
  %t31 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t28
  %t29 = load i32, i32* %t207, align 4
  %t30 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t29
  %t211 = load i32, i32* %t30, align 4
  %t210 = getelementptr inbounds [10 x i32], [10 x i32]* %t31, i32 0, i32 %t211
  store i32 %t32, i32* %t210, align 4
  %t37 = load i32, i32* %t209, align 4
  %t33 = load i32, i32* %t207, align 4
  %t36 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t33
  %t34 = load i32, i32* %t207, align 4
  %t35 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t34
  %t213 = load i32, i32* %t35, align 4
  %t212 = getelementptr inbounds [10 x i32], [10 x i32]* %t36, i32 0, i32 %t213
  store i32 %t37, i32* %t212, align 4
  %t42 = load i32, i32* %t208, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t42
  %t214 = load i32, i32* %t43, align 4
  %t38 = load i32, i32* %t207, align 4
  %t41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t38
  %t39 = load i32, i32* %t207, align 4
  %t40 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t39
  %t216 = load i32, i32* %t40, align 4
  %t215 = getelementptr inbounds [10 x i32], [10 x i32]* %t41, i32 0, i32 %t216
  store i32 %t214, i32* %t215, align 4
  %t48 = load i32, i32* %t207, align 4
  %t44 = load i32, i32* %t208, align 4
  %t47 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t44
  %t45 = load i32, i32* %t208, align 4
  %t46 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t45
  %t218 = load i32, i32* %t46, align 4
  %t217 = getelementptr inbounds [10 x i32], [10 x i32]* %t47, i32 0, i32 %t218
  store i32 %t48, i32* %t217, align 4
  %t49 = load i32, i32* %t208, align 4
  %t52 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t49
  %t50 = load i32, i32* %t208, align 4
  %t51 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t50
  %t220 = load i32, i32* %t51, align 4
  %t219 = getelementptr inbounds [10 x i32], [10 x i32]* %t52, i32 0, i32 %t220
  store i32 0, i32* %t219, align 4
  %t57 = load i32, i32* %t207, align 4
  %t58 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t57
  %t221 = load i32, i32* %t58, align 4
  %t53 = load i32, i32* %t208, align 4
  %t56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t53
  %t54 = load i32, i32* %t208, align 4
  %t55 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t54
  %t223 = load i32, i32* %t55, align 4
  %t222 = getelementptr inbounds [10 x i32], [10 x i32]* %t56, i32 0, i32 %t223
  store i32 %t221, i32* %t222, align 4
  %t61 = load i32, i32* %t207, align 4
  %t62 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t61
  %t224 = load i32, i32* %t62, align 4
  %t63 = add i32 %t224, 1
  %t59 = load i32, i32* %t207, align 4
  %t60 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t59
  store i32 %t63, i32* %t60, align 4
  %t66 = load i32, i32* %t208, align 4
  %t67 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t66
  %t225 = load i32, i32* %t67, align 4
  %t68 = add i32 %t225, 1
  %t64 = load i32, i32* %t208, align 4
  %t65 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t64
  store i32 %t68, i32* %t65, align 4
  ret void
}
define i32 @dfs(i32 %t69, i32 %t71, i32 %t73) {
B226:
  %t271 = alloca i32, align 4
  %t260 = alloca i32, align 4
  %t235 = alloca i32, align 4
  %t229 = alloca i32, align 4
  %t228 = alloca i32, align 4
  %t227 = alloca i32, align 4
  store i32 %t69, i32* %t227, align 4
  store i32 %t71, i32* %t228, align 4
  store i32 %t73, i32* %t229, align 4
  %t75 = load i32, i32* %t227, align 4
  %t76 = load i32, i32* %t228, align 4
  %t77 = icmp eq i32 %t75, %t76
  br i1 %t77, label %B230, label %B234
B230:                               	; preds = %B226
  %t78 = load i32, i32* %t229, align 4
  ret i32 %t78
  br label %B231
B234:                               	; preds = %B226
  br label %B231
B231:                               	; preds = %B230, %B234
  %t79 = load i32, i32* %t227, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 %t79
  store i32 1, i32* %t80, align 4
  store i32 0, i32* %t235, align 4
  br label %B236
B236:                               	; preds = %B231, %B243, %B252, %B275
  %t82 = load i32, i32* %t235, align 4
  %t83 = load i32, i32* %t227, align 4
  %t84 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 %t83
  %t239 = load i32, i32* %t84, align 4
  %t85 = icmp slt i32 %t82, %t239
  br i1 %t85, label %B237, label %B242
B237:                               	; preds = %B236
  %t86 = load i32, i32* %t227, align 4
  %t88 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t86
  %t87 = load i32, i32* %t235, align 4
  %t245 = getelementptr inbounds [10 x i32], [10 x i32]* %t88, i32 0, i32 %t87
  %t246 = load i32, i32* %t245, align 4
  %t89 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 %t246
  %t247 = load i32, i32* %t89, align 4
  %t93 = icmp ne i32 %t247, 0
  br i1 %t93, label %B243, label %B249
B242:                               	; preds = %B236
  br label %B238
B243:                               	; preds = %B237
  %t91 = load i32, i32* %t235, align 4
  %t92 = add i32 %t91, 1
  store i32 %t92, i32* %t235, align 4
  br label %B236
B249:                               	; preds = %B237
  br label %B244
B238:                               	; preds = %B242
  ret i32 0
B244:                               	; preds = %B249, %B251
  %t94 = load i32, i32* %t227, align 4
  %t96 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t94
  %t95 = load i32, i32* %t235, align 4
  %t254 = getelementptr inbounds [10 x i32], [10 x i32]* %t96, i32 0, i32 %t95
  %t255 = load i32, i32* %t254, align 4
  %t97 = icmp sle i32 %t255, 0
  br i1 %t97, label %B252, label %B258
B252:                               	; preds = %B244
  %t99 = load i32, i32* %t235, align 4
  %t100 = add i32 %t99, 1
  store i32 %t100, i32* %t235, align 4
  br label %B236
B258:                               	; preds = %B244
  br label %B253
B253:                               	; preds = %B258, %B259
  %t102 = load i32, i32* %t229, align 4
  %t103 = load i32, i32* %t227, align 4
  %t105 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t103
  %t104 = load i32, i32* %t235, align 4
  %t264 = getelementptr inbounds [10 x i32], [10 x i32]* %t105, i32 0, i32 %t104
  %t265 = load i32, i32* %t264, align 4
  %t106 = icmp slt i32 %t102, %t265
  br i1 %t106, label %B261, label %B268
B261:                               	; preds = %B253
  %t108 = load i32, i32* %t229, align 4
  store i32 %t108, i32* %t260, align 4
  br label %B263
B268:                               	; preds = %B253
  br label %B262
B263:                               	; preds = %B261, %B262
  %t113 = load i32, i32* %t227, align 4
  %t115 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t113
  %t114 = load i32, i32* %t235, align 4
  %t272 = getelementptr inbounds [10 x i32], [10 x i32]* %t115, i32 0, i32 %t114
  %t273 = load i32, i32* %t272, align 4
  %t116 = load i32, i32* %t228, align 4
  %t117 = load i32, i32* %t260, align 4
  %t118 = call i32 @dfs(i32 %t273, i32 %t116, i32 %t117)
  store i32 %t118, i32* %t271, align 4
  %t120 = load i32, i32* %t271, align 4
  %t121 = icmp sgt i32 %t120, 0
  br i1 %t121, label %B274, label %B278
B262:                               	; preds = %B268
  %t110 = load i32, i32* %t227, align 4
  %t112 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t110
  %t111 = load i32, i32* %t235, align 4
  %t269 = getelementptr inbounds [10 x i32], [10 x i32]* %t112, i32 0, i32 %t111
  %t270 = load i32, i32* %t269, align 4
  store i32 %t270, i32* %t260, align 4
  br label %B263
B274:                               	; preds = %B263
  %t125 = load i32, i32* %t227, align 4
  %t127 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t125
  %t126 = load i32, i32* %t235, align 4
  %t279 = getelementptr inbounds [10 x i32], [10 x i32]* %t127, i32 0, i32 %t126
  %t280 = load i32, i32* %t279, align 4
  %t128 = load i32, i32* %t271, align 4
  %t129 = sub i32 %t280, %t128
  %t122 = load i32, i32* %t227, align 4
  %t124 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t122
  %t123 = load i32, i32* %t235, align 4
  %t281 = getelementptr inbounds [10 x i32], [10 x i32]* %t124, i32 0, i32 %t123
  store i32 %t129, i32* %t281, align 4
  %t137 = load i32, i32* %t227, align 4
  %t139 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t137
  %t138 = load i32, i32* %t235, align 4
  %t282 = getelementptr inbounds [10 x i32], [10 x i32]* %t139, i32 0, i32 %t138
  %t283 = load i32, i32* %t282, align 4
  %t143 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t283
  %t140 = load i32, i32* %t227, align 4
  %t142 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t140
  %t141 = load i32, i32* %t235, align 4
  %t285 = getelementptr inbounds [10 x i32], [10 x i32]* %t142, i32 0, i32 %t141
  %t286 = load i32, i32* %t285, align 4
  %t284 = getelementptr inbounds [10 x i32], [10 x i32]* %t143, i32 0, i32 %t286
  %t287 = load i32, i32* %t284, align 4
  %t144 = load i32, i32* %t271, align 4
  %t145 = add i32 %t287, %t144
  %t130 = load i32, i32* %t227, align 4
  %t132 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %t130
  %t131 = load i32, i32* %t235, align 4
  %t288 = getelementptr inbounds [10 x i32], [10 x i32]* %t132, i32 0, i32 %t131
  %t289 = load i32, i32* %t288, align 4
  %t136 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %t289
  %t133 = load i32, i32* %t227, align 4
  %t135 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %t133
  %t134 = load i32, i32* %t235, align 4
  %t291 = getelementptr inbounds [10 x i32], [10 x i32]* %t135, i32 0, i32 %t134
  %t292 = load i32, i32* %t291, align 4
  %t290 = getelementptr inbounds [10 x i32], [10 x i32]* %t136, i32 0, i32 %t292
  store i32 %t145, i32* %t290, align 4
  %t146 = load i32, i32* %t271, align 4
  ret i32 %t146
  br label %B275
B278:                               	; preds = %B263
  br label %B275
B275:                               	; preds = %B274, %B278
  %t148 = load i32, i32* %t235, align 4
  %t149 = add i32 %t148, 1
  store i32 %t149, i32* %t235, align 4
  br label %B236
}
define i32 @max_flow(i32 %t150, i32 %t152) {
B293:
  %t303 = alloca i32, align 4
  %t296 = alloca i32, align 4
  %t295 = alloca i32, align 4
  %t294 = alloca i32, align 4
  store i32 %t150, i32* %t294, align 4
  store i32 %t152, i32* %t295, align 4
  store i32 0, i32* %t296, align 4
  br label %B297
B297:                               	; preds = %B293, %B305
  %t155 = icmp ne i32 1, 0
  br i1 %t155, label %B298, label %B301
B298:                               	; preds = %B297
  %t156 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i32 0, i32 0
  call void @my_memset(i32* %t156, i32 0, i32 10)
  %t157 = load i32, i32* %t294, align 4
  %t158 = load i32, i32* %t295, align 4
  %t159 = load i32, i32* @INF, align 4
  %t160 = call i32 @dfs(i32 %t157, i32 %t158, i32 %t159)
  store i32 %t160, i32* %t303, align 4
  %t162 = load i32, i32* %t303, align 4
  %t163 = icmp eq i32 %t162, 0
  br i1 %t163, label %B304, label %B308
B301:                               	; preds = %B297
  br label %B299
B304:                               	; preds = %B298
  %t164 = load i32, i32* %t296, align 4
  ret i32 %t164
  br label %B305
B308:                               	; preds = %B298
  br label %B305
B299:                               	; preds = %B301
  ret i32 0
B305:                               	; preds = %B304, %B308
  %t166 = load i32, i32* %t296, align 4
  %t167 = load i32, i32* %t303, align 4
  %t168 = add i32 %t166, %t167
  store i32 %t168, i32* %t296, align 4
  br label %B297
}
define i32 @main() {
B309:
  %t320 = alloca i32, align 4
  %t319 = alloca i32, align 4
  %t318 = alloca i32, align 4
  %t311 = alloca i32, align 4
  %t310 = alloca i32, align 4
  %t172 = call i32 @getint()
  store i32 %t172, i32* %t310, align 4
  %t174 = call i32 @getint()
  store i32 %t174, i32* %t311, align 4
  %t175 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i32 0, i32 0
  call void @my_memset(i32* %t175, i32 0, i32 10)
  br label %B312
B312:                               	; preds = %B309, %B313
  %t176 = load i32, i32* %t311, align 4
  %t177 = icmp sgt i32 %t176, 0
  br i1 %t177, label %B313, label %B317
B313:                               	; preds = %B312
  %t181 = call i32 @getint()
  store i32 %t181, i32* %t318, align 4
  %t183 = call i32 @getint()
  store i32 %t183, i32* %t319, align 4
  %t184 = call i32 @getint()
  store i32 %t184, i32* %t320, align 4
  %t186 = load i32, i32* %t318, align 4
  %t187 = load i32, i32* %t319, align 4
  %t188 = load i32, i32* %t320, align 4
  call void @add_node(i32 %t186, i32 %t187, i32 %t188)
  %t190 = load i32, i32* %t311, align 4
  %t191 = sub i32 %t190, 1
  store i32 %t191, i32* %t311, align 4
  br label %B312
B317:                               	; preds = %B312
  br label %B314
B314:                               	; preds = %B317
  %t192 = load i32, i32* %t310, align 4
  %t193 = call i32 @max_flow(i32 1, i32 %t192)
  call void @putint(i32 %t193)
  call void @putch(i32 10)
  ret i32 0
}
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
