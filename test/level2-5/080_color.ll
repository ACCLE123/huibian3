@maxn = global i32 18, align 4
@mod = global i32 1000000007, align 4
@dp = global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer, align 4
@list = global [200 x i32] zeroinitializer, align 4
@cns = global [20 x i32] zeroinitializer, align 4
define i32 @equal(i32 %t9, i32 %t11) {
B246:
  %t248 = alloca i32, align 4
  %t247 = alloca i32, align 4
  store i32 %t9, i32* %t247, align 4
  store i32 %t11, i32* %t248, align 4
  %t13 = load i32, i32* %t247, align 4
  %t14 = load i32, i32* %t248, align 4
  %t15 = icmp eq i32 %t13, %t14
  br i1 %t15, label %B249, label %B253
B249:                               	; preds = %B246
  ret i32 1
  br label %B250
B253:                               	; preds = %B246
  br label %B250
B250:                               	; preds = %B249, %B253
  ret i32 0
}
define i32 @dfs(i32 %t16, i32 %t18, i32 %t20, i32 %t22, i32 %t24, i32 %t26) {
B254:
  %t283 = alloca i32, align 4
  %t260 = alloca i32, align 4
  %t259 = alloca i32, align 4
  %t258 = alloca i32, align 4
  %t257 = alloca i32, align 4
  %t256 = alloca i32, align 4
  %t255 = alloca i32, align 4
  store i32 %t16, i32* %t255, align 4
  store i32 %t18, i32* %t256, align 4
  store i32 %t20, i32* %t257, align 4
  store i32 %t22, i32* %t258, align 4
  store i32 %t24, i32* %t259, align 4
  store i32 %t26, i32* %t260, align 4
  %t28 = load i32, i32* %t255, align 4
  %t34 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t28
  %t29 = load i32, i32* %t256, align 4
  %t263 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t34, i32 0, i32 %t29
  %t30 = load i32, i32* %t257, align 4
  %t264 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t263, i32 0, i32 %t30
  %t31 = load i32, i32* %t258, align 4
  %t265 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t264, i32 0, i32 %t31
  %t32 = load i32, i32* %t259, align 4
  %t266 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t265, i32 0, i32 %t32
  %t33 = load i32, i32* %t260, align 4
  %t267 = getelementptr inbounds [7 x i32], [7 x i32]* %t266, i32 0, i32 %t33
  %t268 = load i32, i32* %t267, align 4
  %t35 = sub i32 0, 1
  %t36 = icmp ne i32 %t268, %t35
  br i1 %t36, label %B261, label %B271
B261:                               	; preds = %B254
  %t37 = load i32, i32* %t255, align 4
  %t43 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t37
  %t38 = load i32, i32* %t256, align 4
  %t272 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t43, i32 0, i32 %t38
  %t39 = load i32, i32* %t257, align 4
  %t273 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t272, i32 0, i32 %t39
  %t40 = load i32, i32* %t258, align 4
  %t274 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t273, i32 0, i32 %t40
  %t41 = load i32, i32* %t259, align 4
  %t275 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t274, i32 0, i32 %t41
  %t42 = load i32, i32* %t260, align 4
  %t276 = getelementptr inbounds [7 x i32], [7 x i32]* %t275, i32 0, i32 %t42
  %t277 = load i32, i32* %t276, align 4
  ret i32 %t277
  br label %B262
B271:                               	; preds = %B254
  br label %B262
B262:                               	; preds = %B261, %B271
  %t44 = load i32, i32* %t255, align 4
  %t45 = load i32, i32* %t256, align 4
  %t46 = add i32 %t44, %t45
  %t47 = load i32, i32* %t257, align 4
  %t48 = add i32 %t46, %t47
  %t49 = load i32, i32* %t258, align 4
  %t50 = add i32 %t48, %t49
  %t51 = load i32, i32* %t259, align 4
  %t52 = add i32 %t50, %t51
  %t53 = icmp eq i32 %t52, 0
  br i1 %t53, label %B278, label %B282
B278:                               	; preds = %B262
  ret i32 1
  br label %B279
B282:                               	; preds = %B262
  br label %B279
B279:                               	; preds = %B278, %B282
  store i32 0, i32* %t283, align 4
  %t55 = load i32, i32* %t255, align 4
  %t73 = icmp ne i32 %t55, 0
  br i1 %t73, label %B284, label %B287
B284:                               	; preds = %B279
  %t57 = load i32, i32* %t283, align 4
  %t58 = load i32, i32* %t255, align 4
  %t59 = load i32, i32* %t260, align 4
  %t60 = call i32 @equal(i32 %t59, i32 2)
  %t61 = sub i32 %t58, %t60
  %t62 = load i32, i32* %t255, align 4
  %t63 = sub i32 %t62, 1
  %t64 = load i32, i32* %t256, align 4
  %t65 = load i32, i32* %t257, align 4
  %t66 = load i32, i32* %t258, align 4
  %t67 = load i32, i32* %t259, align 4
  %t68 = call i32 @dfs(i32 %t63, i32 %t64, i32 %t65, i32 %t66, i32 %t67, i32 1)
  %t69 = mul i32 %t61, %t68
  %t70 = add i32 %t57, %t69
  %t71 = load i32, i32* @mod, align 4
  %t72 = srem i32 %t70, %t71
  store i32 %t72, i32* %t283, align 4
  br label %B285
B287:                               	; preds = %B279
  br label %B285
B285:                               	; preds = %B284, %B287
  %t74 = load i32, i32* %t256, align 4
  %t93 = icmp ne i32 %t74, 0
  br i1 %t93, label %B289, label %B292
B289:                               	; preds = %B285
  %t76 = load i32, i32* %t283, align 4
  %t77 = load i32, i32* %t256, align 4
  %t78 = load i32, i32* %t260, align 4
  %t79 = call i32 @equal(i32 %t78, i32 3)
  %t80 = sub i32 %t77, %t79
  %t81 = load i32, i32* %t255, align 4
  %t82 = add i32 %t81, 1
  %t83 = load i32, i32* %t256, align 4
  %t84 = sub i32 %t83, 1
  %t85 = load i32, i32* %t257, align 4
  %t86 = load i32, i32* %t258, align 4
  %t87 = load i32, i32* %t259, align 4
  %t88 = call i32 @dfs(i32 %t82, i32 %t84, i32 %t85, i32 %t86, i32 %t87, i32 2)
  %t89 = mul i32 %t80, %t88
  %t90 = add i32 %t76, %t89
  %t91 = load i32, i32* @mod, align 4
  %t92 = srem i32 %t90, %t91
  store i32 %t92, i32* %t283, align 4
  br label %B290
B292:                               	; preds = %B285
  br label %B290
B290:                               	; preds = %B289, %B292
  %t94 = load i32, i32* %t257, align 4
  %t113 = icmp ne i32 %t94, 0
  br i1 %t113, label %B294, label %B297
B294:                               	; preds = %B290
  %t96 = load i32, i32* %t283, align 4
  %t97 = load i32, i32* %t257, align 4
  %t98 = load i32, i32* %t260, align 4
  %t99 = call i32 @equal(i32 %t98, i32 4)
  %t100 = sub i32 %t97, %t99
  %t101 = load i32, i32* %t255, align 4
  %t102 = load i32, i32* %t256, align 4
  %t103 = add i32 %t102, 1
  %t104 = load i32, i32* %t257, align 4
  %t105 = sub i32 %t104, 1
  %t106 = load i32, i32* %t258, align 4
  %t107 = load i32, i32* %t259, align 4
  %t108 = call i32 @dfs(i32 %t101, i32 %t103, i32 %t105, i32 %t106, i32 %t107, i32 3)
  %t109 = mul i32 %t100, %t108
  %t110 = add i32 %t96, %t109
  %t111 = load i32, i32* @mod, align 4
  %t112 = srem i32 %t110, %t111
  store i32 %t112, i32* %t283, align 4
  br label %B295
B297:                               	; preds = %B290
  br label %B295
B295:                               	; preds = %B294, %B297
  %t114 = load i32, i32* %t258, align 4
  %t133 = icmp ne i32 %t114, 0
  br i1 %t133, label %B299, label %B302
B299:                               	; preds = %B295
  %t116 = load i32, i32* %t283, align 4
  %t117 = load i32, i32* %t258, align 4
  %t118 = load i32, i32* %t260, align 4
  %t119 = call i32 @equal(i32 %t118, i32 5)
  %t120 = sub i32 %t117, %t119
  %t121 = load i32, i32* %t255, align 4
  %t122 = load i32, i32* %t256, align 4
  %t123 = load i32, i32* %t257, align 4
  %t124 = add i32 %t123, 1
  %t125 = load i32, i32* %t258, align 4
  %t126 = sub i32 %t125, 1
  %t127 = load i32, i32* %t259, align 4
  %t128 = call i32 @dfs(i32 %t121, i32 %t122, i32 %t124, i32 %t126, i32 %t127, i32 4)
  %t129 = mul i32 %t120, %t128
  %t130 = add i32 %t116, %t129
  %t131 = load i32, i32* @mod, align 4
  %t132 = srem i32 %t130, %t131
  store i32 %t132, i32* %t283, align 4
  br label %B300
B302:                               	; preds = %B295
  br label %B300
B300:                               	; preds = %B299, %B302
  %t134 = load i32, i32* %t259, align 4
  %t150 = icmp ne i32 %t134, 0
  br i1 %t150, label %B304, label %B307
B304:                               	; preds = %B300
  %t136 = load i32, i32* %t283, align 4
  %t137 = load i32, i32* %t259, align 4
  %t138 = load i32, i32* %t255, align 4
  %t139 = load i32, i32* %t256, align 4
  %t140 = load i32, i32* %t257, align 4
  %t141 = load i32, i32* %t258, align 4
  %t142 = add i32 %t141, 1
  %t143 = load i32, i32* %t259, align 4
  %t144 = sub i32 %t143, 1
  %t145 = call i32 @dfs(i32 %t138, i32 %t139, i32 %t140, i32 %t142, i32 %t144, i32 5)
  %t146 = mul i32 %t137, %t145
  %t147 = add i32 %t136, %t146
  %t148 = load i32, i32* @mod, align 4
  %t149 = srem i32 %t147, %t148
  store i32 %t149, i32* %t283, align 4
  br label %B305
B307:                               	; preds = %B300
  br label %B305
B305:                               	; preds = %B304, %B307
  %t158 = load i32, i32* %t283, align 4
  %t159 = load i32, i32* @mod, align 4
  %t160 = srem i32 %t158, %t159
  %t151 = load i32, i32* %t255, align 4
  %t157 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t151
  %t152 = load i32, i32* %t256, align 4
  %t309 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t157, i32 0, i32 %t152
  %t153 = load i32, i32* %t257, align 4
  %t310 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t309, i32 0, i32 %t153
  %t154 = load i32, i32* %t258, align 4
  %t311 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t310, i32 0, i32 %t154
  %t155 = load i32, i32* %t259, align 4
  %t312 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t311, i32 0, i32 %t155
  %t156 = load i32, i32* %t260, align 4
  %t313 = getelementptr inbounds [7 x i32], [7 x i32]* %t312, i32 0, i32 %t156
  store i32 %t160, i32* %t313, align 4
  %t161 = load i32, i32* %t255, align 4
  %t167 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t161
  %t162 = load i32, i32* %t256, align 4
  %t314 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t167, i32 0, i32 %t162
  %t163 = load i32, i32* %t257, align 4
  %t315 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t314, i32 0, i32 %t163
  %t164 = load i32, i32* %t258, align 4
  %t316 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t315, i32 0, i32 %t164
  %t165 = load i32, i32* %t259, align 4
  %t317 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t316, i32 0, i32 %t165
  %t166 = load i32, i32* %t260, align 4
  %t318 = getelementptr inbounds [7 x i32], [7 x i32]* %t317, i32 0, i32 %t166
  %t319 = load i32, i32* %t318, align 4
  ret i32 %t319
}
define i32 @main() {
B320:
  %t378 = alloca i32, align 4
  %t357 = alloca i32, align 4
  %t350 = alloca i32, align 4
  %t343 = alloca i32, align 4
  %t336 = alloca i32, align 4
  %t329 = alloca i32, align 4
  %t322 = alloca i32, align 4
  %t321 = alloca i32, align 4
  %t169 = call i32 @getint()
  store i32 %t169, i32* %t321, align 4
  store i32 0, i32* %t322, align 4
  br label %B323
B323:                               	; preds = %B320, %B332
  %t172 = load i32, i32* %t322, align 4
  %t173 = load i32, i32* @maxn, align 4
  %t174 = icmp slt i32 %t172, %t173
  br i1 %t174, label %B324, label %B328
B324:                               	; preds = %B323
  store i32 0, i32* %t329, align 4
  br label %B330
B328:                               	; preds = %B323
  br label %B325
B330:                               	; preds = %B324, %B339
  %t176 = load i32, i32* %t329, align 4
  %t177 = load i32, i32* @maxn, align 4
  %t178 = icmp slt i32 %t176, %t177
  br i1 %t178, label %B331, label %B335
B325:                               	; preds = %B328
  store i32 0, i32* %t322, align 4
  br label %B369
B331:                               	; preds = %B330
  store i32 0, i32* %t336, align 4
  br label %B337
B335:                               	; preds = %B330
  br label %B332
B369:                               	; preds = %B325, %B370
  %t221 = load i32, i32* %t322, align 4
  %t222 = load i32, i32* %t321, align 4
  %t223 = icmp slt i32 %t221, %t222
  br i1 %t223, label %B370, label %B374
B337:                               	; preds = %B331, %B346
  %t180 = load i32, i32* %t336, align 4
  %t181 = load i32, i32* @maxn, align 4
  %t182 = icmp slt i32 %t180, %t181
  br i1 %t182, label %B338, label %B342
B332:                               	; preds = %B335
  %t218 = load i32, i32* %t322, align 4
  %t219 = add i32 %t218, 1
  store i32 %t219, i32* %t322, align 4
  br label %B323
B370:                               	; preds = %B369
  %t226 = call i32 @getint()
  %t224 = load i32, i32* %t322, align 4
  %t225 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t224
  store i32 %t226, i32* %t225, align 4
  %t230 = load i32, i32* %t322, align 4
  %t231 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t230
  %t375 = load i32, i32* %t231, align 4
  %t232 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 %t375
  %t376 = load i32, i32* %t232, align 4
  %t233 = add i32 %t376, 1
  %t227 = load i32, i32* %t322, align 4
  %t228 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i32 0, i32 %t227
  %t377 = load i32, i32* %t228, align 4
  %t229 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 %t377
  store i32 %t233, i32* %t229, align 4
  %t235 = load i32, i32* %t322, align 4
  %t236 = add i32 %t235, 1
  store i32 %t236, i32* %t322, align 4
  br label %B369
B374:                               	; preds = %B369
  br label %B371
B338:                               	; preds = %B337
  store i32 0, i32* %t343, align 4
  br label %B344
B342:                               	; preds = %B337
  br label %B339
B371:                               	; preds = %B374
  %t237 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 1
  %t379 = load i32, i32* %t237, align 4
  %t238 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 2
  %t380 = load i32, i32* %t238, align 4
  %t239 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 3
  %t381 = load i32, i32* %t239, align 4
  %t240 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 4
  %t382 = load i32, i32* %t240, align 4
  %t241 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i32 0, i32 5
  %t383 = load i32, i32* %t241, align 4
  %t242 = call i32 @dfs(i32 %t379, i32 %t380, i32 %t381, i32 %t382, i32 %t383, i32 0)
  store i32 %t242, i32* %t378, align 4
  %t244 = load i32, i32* %t378, align 4
  call void @putint(i32 %t244)
  %t245 = load i32, i32* %t378, align 4
  ret i32 %t245
B344:                               	; preds = %B338, %B353
  %t184 = load i32, i32* %t343, align 4
  %t185 = load i32, i32* @maxn, align 4
  %t186 = icmp slt i32 %t184, %t185
  br i1 %t186, label %B345, label %B349
B339:                               	; preds = %B342
  %t215 = load i32, i32* %t329, align 4
  %t216 = add i32 %t215, 1
  store i32 %t216, i32* %t329, align 4
  br label %B330
B345:                               	; preds = %B344
  store i32 0, i32* %t350, align 4
  br label %B351
B349:                               	; preds = %B344
  br label %B346
B351:                               	; preds = %B345, %B360
  %t188 = load i32, i32* %t350, align 4
  %t189 = load i32, i32* @maxn, align 4
  %t190 = icmp slt i32 %t188, %t189
  br i1 %t190, label %B352, label %B356
B346:                               	; preds = %B349
  %t212 = load i32, i32* %t336, align 4
  %t213 = add i32 %t212, 1
  store i32 %t213, i32* %t336, align 4
  br label %B337
B352:                               	; preds = %B351
  store i32 0, i32* %t357, align 4
  br label %B358
B356:                               	; preds = %B351
  br label %B353
B358:                               	; preds = %B352, %B359
  %t192 = load i32, i32* %t357, align 4
  %t193 = icmp slt i32 %t192, 7
  br i1 %t193, label %B359, label %B363
B353:                               	; preds = %B356
  %t209 = load i32, i32* %t343, align 4
  %t210 = add i32 %t209, 1
  store i32 %t210, i32* %t343, align 4
  br label %B344
B359:                               	; preds = %B358
  %t201 = sub i32 0, 1
  %t194 = load i32, i32* %t322, align 4
  %t200 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %t194
  %t195 = load i32, i32* %t329, align 4
  %t364 = getelementptr inbounds [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t200, i32 0, i32 %t195
  %t196 = load i32, i32* %t336, align 4
  %t365 = getelementptr inbounds [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t364, i32 0, i32 %t196
  %t197 = load i32, i32* %t343, align 4
  %t366 = getelementptr inbounds [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t365, i32 0, i32 %t197
  %t198 = load i32, i32* %t350, align 4
  %t367 = getelementptr inbounds [18 x [7 x i32]], [18 x [7 x i32]]* %t366, i32 0, i32 %t198
  %t199 = load i32, i32* %t357, align 4
  %t368 = getelementptr inbounds [7 x i32], [7 x i32]* %t367, i32 0, i32 %t199
  store i32 %t201, i32* %t368, align 4
  %t203 = load i32, i32* %t357, align 4
  %t204 = add i32 %t203, 1
  store i32 %t204, i32* %t357, align 4
  br label %B358
B363:                               	; preds = %B358
  br label %B360
B360:                               	; preds = %B363
  %t206 = load i32, i32* %t350, align 4
  %t207 = add i32 %t206, 1
  store i32 %t207, i32* %t350, align 4
  br label %B351
}
declare i32 @getint()
declare void @putint(i32)
