@TOKEN_NUM = global i32 0, align 4
@TOKEN_OTHER = global i32 1, align 4
@last_char = global i32 32, align 4
@num = global i32 0, align 4
@other = global i32 0, align 4
@cur_token = global i32 0, align 4
define i32 @next_char() {
B205:
  %t7 = call i32 @getch()
  store i32 %t7, i32* @last_char, align 4
  %t8 = load i32, i32* @last_char, align 4
  ret i32 %t8
}
define i32 @is_space(i32 %t9) {
B206:
  %t207 = alloca i32, align 4
  store i32 %t9, i32* %t207, align 4
  %t11 = load i32, i32* %t207, align 4
  %t12 = icmp eq i32 %t11, 32
  br i1 %t12, label %B208, label %B214
B208:                               	; preds = %B206, %B211
  ret i32 1
  br label %B210
B214:                               	; preds = %B206
  br label %B211
B210:                               	; preds = %B208, %B209
  ret i32 0
B211:                               	; preds = %B214
  %t13 = load i32, i32* %t207, align 4
  %t14 = icmp eq i32 %t13, 10
  br i1 %t14, label %B208, label %B217
B217:                               	; preds = %B211
  br label %B209
B209:                               	; preds = %B217
  ret i32 0
  br label %B210
}
define i32 @is_num(i32 %t16) {
B218:
  %t219 = alloca i32, align 4
  store i32 %t16, i32* %t219, align 4
  %t18 = load i32, i32* %t219, align 4
  %t19 = icmp sge i32 %t18, 48
  br i1 %t19, label %B223, label %B226
B223:                               	; preds = %B218
  %t20 = load i32, i32* %t219, align 4
  %t21 = icmp sle i32 %t20, 57
  br i1 %t21, label %B220, label %B229
B226:                               	; preds = %B218
  br label %B221
B220:                               	; preds = %B223
  ret i32 1
  br label %B222
B229:                               	; preds = %B223
  br label %B221
B221:                               	; preds = %B226, %B229
  ret i32 0
  br label %B222
B222:                               	; preds = %B220, %B221
  ret i32 0
}
define i32 @next_token() {
B230:
  br label %B231
B231:                               	; preds = %B230, %B232
  %t23 = load i32, i32* @last_char, align 4
  %t24 = call i32 @is_space(i32 %t23)
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %B232, label %B235
B232:                               	; preds = %B231
  %t26 = call i32 @next_char()
  br label %B231
B235:                               	; preds = %B231
  br label %B233
B233:                               	; preds = %B235
  %t27 = load i32, i32* @last_char, align 4
  %t28 = call i32 @is_num(i32 %t27)
  %t48 = icmp ne i32 %t28, 0
  br i1 %t48, label %B237, label %B241
B237:                               	; preds = %B233
  %t30 = load i32, i32* @last_char, align 4
  %t31 = sub i32 %t30, 48
  store i32 %t31, i32* @num, align 4
  br label %B243
B241:                               	; preds = %B233
  br label %B238
B243:                               	; preds = %B237, %B244
  %t32 = call i32 @next_char()
  %t33 = call i32 @is_num(i32 %t32)
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %B244, label %B247
B238:                               	; preds = %B241
  %t44 = load i32, i32* @last_char, align 4
  store i32 %t44, i32* @other, align 4
  %t45 = call i32 @next_char()
  %t47 = load i32, i32* @TOKEN_OTHER, align 4
  store i32 %t47, i32* @cur_token, align 4
  br label %B239
B244:                               	; preds = %B243
  %t36 = load i32, i32* @num, align 4
  %t37 = mul i32 %t36, 10
  %t38 = load i32, i32* @last_char, align 4
  %t39 = add i32 %t37, %t38
  %t40 = sub i32 %t39, 48
  store i32 %t40, i32* @num, align 4
  br label %B243
B247:                               	; preds = %B243
  br label %B245
B239:                               	; preds = %B238, %B245
  %t49 = load i32, i32* @cur_token, align 4
  ret i32 %t49
B245:                               	; preds = %B247
  %t42 = load i32, i32* @TOKEN_NUM, align 4
  store i32 %t42, i32* @cur_token, align 4
  br label %B239
}
define i32 @panic() {
B249:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %t50 = sub i32 0, 1
  ret i32 %t50
}
define i32 @get_op_prec(i32 %t51) {
B250:
  %t251 = alloca i32, align 4
  store i32 %t51, i32* %t251, align 4
  %t53 = load i32, i32* %t251, align 4
  %t54 = icmp eq i32 %t53, 43
  br i1 %t54, label %B252, label %B257
B252:                               	; preds = %B250, %B254
  ret i32 10
  br label %B253
B257:                               	; preds = %B250
  br label %B254
B253:                               	; preds = %B252, %B260
  %t58 = load i32, i32* %t251, align 4
  %t59 = icmp eq i32 %t58, 42
  br i1 %t59, label %B261, label %B267
B254:                               	; preds = %B257
  %t55 = load i32, i32* %t251, align 4
  %t56 = icmp eq i32 %t55, 45
  br i1 %t56, label %B252, label %B260
B261:                               	; preds = %B253, %B263, %B264
  ret i32 20
  br label %B262
B267:                               	; preds = %B253
  br label %B264
B260:                               	; preds = %B254
  br label %B253
B262:                               	; preds = %B261, %B273
  ret i32 0
B264:                               	; preds = %B267
  %t60 = load i32, i32* %t251, align 4
  %t61 = icmp eq i32 %t60, 47
  br i1 %t61, label %B261, label %B270
B270:                               	; preds = %B264
  br label %B263
B263:                               	; preds = %B270
  %t63 = load i32, i32* %t251, align 4
  %t64 = icmp eq i32 %t63, 37
  br i1 %t64, label %B261, label %B273
B273:                               	; preds = %B263
  br label %B262
}
define void @stack_push(i32* %t66, i32 %t68) {
B274:
  %t276 = alloca i32, align 4
  %t275 = alloca i32*, align 4
  store i32* %t66, i32** %t275, align 4
  store i32 %t68, i32* %t276, align 4
  %t277 = load i32*, i32** %t275, align 4
  %t71 = getelementptr inbounds i32, i32* %t277, i32 0
  %t278 = load i32, i32* %t71, align 4
  %t72 = add i32 %t278, 1
  %t279 = load i32*, i32** %t275, align 4
  %t70 = getelementptr inbounds i32, i32* %t279, i32 0
  store i32 %t72, i32* %t70, align 4
  %t75 = load i32, i32* %t276, align 4
  %t280 = load i32*, i32** %t275, align 4
  %t281 = load i32*, i32** %t275, align 4
  %t73 = getelementptr inbounds i32, i32* %t281, i32 0
  %t282 = load i32, i32* %t73, align 4
  %t74 = getelementptr inbounds i32, i32* %t280, i32 %t282
  store i32 %t75, i32* %t74, align 4
  ret void
}
define i32 @stack_pop(i32* %t76) {
B283:
  %t285 = alloca i32, align 4
  %t284 = alloca i32*, align 4
  store i32* %t76, i32** %t284, align 4
  %t286 = load i32*, i32** %t284, align 4
  %t287 = load i32*, i32** %t284, align 4
  %t78 = getelementptr inbounds i32, i32* %t287, i32 0
  %t288 = load i32, i32* %t78, align 4
  %t79 = getelementptr inbounds i32, i32* %t286, i32 %t288
  %t289 = load i32, i32* %t79, align 4
  store i32 %t289, i32* %t285, align 4
  %t290 = load i32*, i32** %t284, align 4
  %t82 = getelementptr inbounds i32, i32* %t290, i32 0
  %t291 = load i32, i32* %t82, align 4
  %t83 = sub i32 %t291, 1
  %t292 = load i32*, i32** %t284, align 4
  %t81 = getelementptr inbounds i32, i32* %t292, i32 0
  store i32 %t83, i32* %t81, align 4
  %t84 = load i32, i32* %t285, align 4
  ret i32 %t84
}
define i32 @stack_peek(i32* %t85) {
B293:
  %t294 = alloca i32*, align 4
  store i32* %t85, i32** %t294, align 4
  %t295 = load i32*, i32** %t294, align 4
  %t296 = load i32*, i32** %t294, align 4
  %t87 = getelementptr inbounds i32, i32* %t296, i32 0
  %t297 = load i32, i32* %t87, align 4
  %t88 = getelementptr inbounds i32, i32* %t295, i32 %t297
  %t298 = load i32, i32* %t88, align 4
  ret i32 %t298
}
define i32 @stack_size(i32* %t89) {
B299:
  %t300 = alloca i32*, align 4
  store i32* %t89, i32** %t300, align 4
  %t301 = load i32*, i32** %t300, align 4
  %t91 = getelementptr inbounds i32, i32* %t301, i32 0
  %t302 = load i32, i32* %t91, align 4
  ret i32 %t302
}
define i32 @eval_op(i32 %t92, i32 %t94, i32 %t96) {
B303:
  %t306 = alloca i32, align 4
  %t305 = alloca i32, align 4
  %t304 = alloca i32, align 4
  store i32 %t92, i32* %t304, align 4
  store i32 %t94, i32* %t305, align 4
  store i32 %t96, i32* %t306, align 4
  %t98 = load i32, i32* %t304, align 4
  %t99 = icmp eq i32 %t98, 43
  br i1 %t99, label %B307, label %B311
B307:                               	; preds = %B303
  %t100 = load i32, i32* %t305, align 4
  %t101 = load i32, i32* %t306, align 4
  %t102 = add i32 %t100, %t101
  ret i32 %t102
  br label %B308
B311:                               	; preds = %B303
  br label %B308
B308:                               	; preds = %B307, %B311
  %t103 = load i32, i32* %t304, align 4
  %t104 = icmp eq i32 %t103, 45
  br i1 %t104, label %B312, label %B316
B312:                               	; preds = %B308
  %t105 = load i32, i32* %t305, align 4
  %t106 = load i32, i32* %t306, align 4
  %t107 = sub i32 %t105, %t106
  ret i32 %t107
  br label %B313
B316:                               	; preds = %B308
  br label %B313
B313:                               	; preds = %B312, %B316
  %t108 = load i32, i32* %t304, align 4
  %t109 = icmp eq i32 %t108, 42
  br i1 %t109, label %B317, label %B321
B317:                               	; preds = %B313
  %t110 = load i32, i32* %t305, align 4
  %t111 = load i32, i32* %t306, align 4
  %t112 = mul i32 %t110, %t111
  ret i32 %t112
  br label %B318
B321:                               	; preds = %B313
  br label %B318
B318:                               	; preds = %B317, %B321
  %t113 = load i32, i32* %t304, align 4
  %t114 = icmp eq i32 %t113, 47
  br i1 %t114, label %B322, label %B326
B322:                               	; preds = %B318
  %t115 = load i32, i32* %t305, align 4
  %t116 = load i32, i32* %t306, align 4
  %t117 = sdiv i32 %t115, %t116
  ret i32 %t117
  br label %B323
B326:                               	; preds = %B318
  br label %B323
B323:                               	; preds = %B322, %B326
  %t118 = load i32, i32* %t304, align 4
  %t119 = icmp eq i32 %t118, 37
  br i1 %t119, label %B327, label %B331
B327:                               	; preds = %B323
  %t120 = load i32, i32* %t305, align 4
  %t121 = load i32, i32* %t306, align 4
  %t122 = srem i32 %t120, %t121
  ret i32 %t122
  br label %B328
B331:                               	; preds = %B323
  br label %B328
B328:                               	; preds = %B327, %B331
  ret i32 0
}
define i32 @eval() {
B332:
  %t892 = alloca i32, align 4
  %t891 = alloca i32, align 4
  %t890 = alloca i32, align 4
  %t878 = alloca i32, align 4
  %t877 = alloca i32, align 4
  %t876 = alloca i32, align 4
  %t858 = alloca i32, align 4
  %t590 = alloca [256 x i32], align 4
  %t333 = alloca [256 x i32], align 4
  %t334 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  store i32 0, i32* %t334, align 4
  %t335 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 1
  store i32 0, i32* %t335, align 4
  %t336 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 2
  store i32 0, i32* %t336, align 4
  %t337 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 3
  store i32 0, i32* %t337, align 4
  %t338 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 4
  store i32 0, i32* %t338, align 4
  %t339 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 5
  store i32 0, i32* %t339, align 4
  %t340 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 6
  store i32 0, i32* %t340, align 4
  %t341 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 7
  store i32 0, i32* %t341, align 4
  %t342 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 8
  store i32 0, i32* %t342, align 4
  %t343 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 9
  store i32 0, i32* %t343, align 4
  %t344 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 10
  store i32 0, i32* %t344, align 4
  %t345 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 11
  store i32 0, i32* %t345, align 4
  %t346 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 12
  store i32 0, i32* %t346, align 4
  %t347 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 13
  store i32 0, i32* %t347, align 4
  %t348 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 14
  store i32 0, i32* %t348, align 4
  %t349 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 15
  store i32 0, i32* %t349, align 4
  %t350 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 16
  store i32 0, i32* %t350, align 4
  %t351 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 17
  store i32 0, i32* %t351, align 4
  %t352 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 18
  store i32 0, i32* %t352, align 4
  %t353 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 19
  store i32 0, i32* %t353, align 4
  %t354 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 20
  store i32 0, i32* %t354, align 4
  %t355 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 21
  store i32 0, i32* %t355, align 4
  %t356 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 22
  store i32 0, i32* %t356, align 4
  %t357 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 23
  store i32 0, i32* %t357, align 4
  %t358 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 24
  store i32 0, i32* %t358, align 4
  %t359 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 25
  store i32 0, i32* %t359, align 4
  %t360 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 26
  store i32 0, i32* %t360, align 4
  %t361 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 27
  store i32 0, i32* %t361, align 4
  %t362 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 28
  store i32 0, i32* %t362, align 4
  %t363 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 29
  store i32 0, i32* %t363, align 4
  %t364 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 30
  store i32 0, i32* %t364, align 4
  %t365 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 31
  store i32 0, i32* %t365, align 4
  %t366 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 32
  store i32 0, i32* %t366, align 4
  %t367 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 33
  store i32 0, i32* %t367, align 4
  %t368 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 34
  store i32 0, i32* %t368, align 4
  %t369 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 35
  store i32 0, i32* %t369, align 4
  %t370 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 36
  store i32 0, i32* %t370, align 4
  %t371 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 37
  store i32 0, i32* %t371, align 4
  %t372 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 38
  store i32 0, i32* %t372, align 4
  %t373 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 39
  store i32 0, i32* %t373, align 4
  %t374 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 40
  store i32 0, i32* %t374, align 4
  %t375 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 41
  store i32 0, i32* %t375, align 4
  %t376 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 42
  store i32 0, i32* %t376, align 4
  %t377 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 43
  store i32 0, i32* %t377, align 4
  %t378 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 44
  store i32 0, i32* %t378, align 4
  %t379 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 45
  store i32 0, i32* %t379, align 4
  %t380 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 46
  store i32 0, i32* %t380, align 4
  %t381 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 47
  store i32 0, i32* %t381, align 4
  %t382 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 48
  store i32 0, i32* %t382, align 4
  %t383 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 49
  store i32 0, i32* %t383, align 4
  %t384 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 50
  store i32 0, i32* %t384, align 4
  %t385 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 51
  store i32 0, i32* %t385, align 4
  %t386 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 52
  store i32 0, i32* %t386, align 4
  %t387 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 53
  store i32 0, i32* %t387, align 4
  %t388 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 54
  store i32 0, i32* %t388, align 4
  %t389 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 55
  store i32 0, i32* %t389, align 4
  %t390 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 56
  store i32 0, i32* %t390, align 4
  %t391 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 57
  store i32 0, i32* %t391, align 4
  %t392 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 58
  store i32 0, i32* %t392, align 4
  %t393 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 59
  store i32 0, i32* %t393, align 4
  %t394 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 60
  store i32 0, i32* %t394, align 4
  %t395 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 61
  store i32 0, i32* %t395, align 4
  %t396 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 62
  store i32 0, i32* %t396, align 4
  %t397 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 63
  store i32 0, i32* %t397, align 4
  %t398 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 64
  store i32 0, i32* %t398, align 4
  %t399 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 65
  store i32 0, i32* %t399, align 4
  %t400 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 66
  store i32 0, i32* %t400, align 4
  %t401 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 67
  store i32 0, i32* %t401, align 4
  %t402 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 68
  store i32 0, i32* %t402, align 4
  %t403 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 69
  store i32 0, i32* %t403, align 4
  %t404 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 70
  store i32 0, i32* %t404, align 4
  %t405 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 71
  store i32 0, i32* %t405, align 4
  %t406 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 72
  store i32 0, i32* %t406, align 4
  %t407 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 73
  store i32 0, i32* %t407, align 4
  %t408 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 74
  store i32 0, i32* %t408, align 4
  %t409 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 75
  store i32 0, i32* %t409, align 4
  %t410 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 76
  store i32 0, i32* %t410, align 4
  %t411 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 77
  store i32 0, i32* %t411, align 4
  %t412 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 78
  store i32 0, i32* %t412, align 4
  %t413 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 79
  store i32 0, i32* %t413, align 4
  %t414 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 80
  store i32 0, i32* %t414, align 4
  %t415 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 81
  store i32 0, i32* %t415, align 4
  %t416 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 82
  store i32 0, i32* %t416, align 4
  %t417 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 83
  store i32 0, i32* %t417, align 4
  %t418 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 84
  store i32 0, i32* %t418, align 4
  %t419 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 85
  store i32 0, i32* %t419, align 4
  %t420 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 86
  store i32 0, i32* %t420, align 4
  %t421 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 87
  store i32 0, i32* %t421, align 4
  %t422 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 88
  store i32 0, i32* %t422, align 4
  %t423 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 89
  store i32 0, i32* %t423, align 4
  %t424 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 90
  store i32 0, i32* %t424, align 4
  %t425 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 91
  store i32 0, i32* %t425, align 4
  %t426 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 92
  store i32 0, i32* %t426, align 4
  %t427 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 93
  store i32 0, i32* %t427, align 4
  %t428 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 94
  store i32 0, i32* %t428, align 4
  %t429 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 95
  store i32 0, i32* %t429, align 4
  %t430 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 96
  store i32 0, i32* %t430, align 4
  %t431 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 97
  store i32 0, i32* %t431, align 4
  %t432 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 98
  store i32 0, i32* %t432, align 4
  %t433 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 99
  store i32 0, i32* %t433, align 4
  %t434 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 100
  store i32 0, i32* %t434, align 4
  %t435 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 101
  store i32 0, i32* %t435, align 4
  %t436 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 102
  store i32 0, i32* %t436, align 4
  %t437 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 103
  store i32 0, i32* %t437, align 4
  %t438 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 104
  store i32 0, i32* %t438, align 4
  %t439 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 105
  store i32 0, i32* %t439, align 4
  %t440 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 106
  store i32 0, i32* %t440, align 4
  %t441 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 107
  store i32 0, i32* %t441, align 4
  %t442 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 108
  store i32 0, i32* %t442, align 4
  %t443 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 109
  store i32 0, i32* %t443, align 4
  %t444 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 110
  store i32 0, i32* %t444, align 4
  %t445 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 111
  store i32 0, i32* %t445, align 4
  %t446 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 112
  store i32 0, i32* %t446, align 4
  %t447 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 113
  store i32 0, i32* %t447, align 4
  %t448 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 114
  store i32 0, i32* %t448, align 4
  %t449 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 115
  store i32 0, i32* %t449, align 4
  %t450 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 116
  store i32 0, i32* %t450, align 4
  %t451 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 117
  store i32 0, i32* %t451, align 4
  %t452 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 118
  store i32 0, i32* %t452, align 4
  %t453 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 119
  store i32 0, i32* %t453, align 4
  %t454 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 120
  store i32 0, i32* %t454, align 4
  %t455 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 121
  store i32 0, i32* %t455, align 4
  %t456 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 122
  store i32 0, i32* %t456, align 4
  %t457 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 123
  store i32 0, i32* %t457, align 4
  %t458 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 124
  store i32 0, i32* %t458, align 4
  %t459 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 125
  store i32 0, i32* %t459, align 4
  %t460 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 126
  store i32 0, i32* %t460, align 4
  %t461 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 127
  store i32 0, i32* %t461, align 4
  %t462 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 128
  store i32 0, i32* %t462, align 4
  %t463 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 129
  store i32 0, i32* %t463, align 4
  %t464 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 130
  store i32 0, i32* %t464, align 4
  %t465 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 131
  store i32 0, i32* %t465, align 4
  %t466 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 132
  store i32 0, i32* %t466, align 4
  %t467 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 133
  store i32 0, i32* %t467, align 4
  %t468 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 134
  store i32 0, i32* %t468, align 4
  %t469 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 135
  store i32 0, i32* %t469, align 4
  %t470 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 136
  store i32 0, i32* %t470, align 4
  %t471 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 137
  store i32 0, i32* %t471, align 4
  %t472 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 138
  store i32 0, i32* %t472, align 4
  %t473 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 139
  store i32 0, i32* %t473, align 4
  %t474 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 140
  store i32 0, i32* %t474, align 4
  %t475 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 141
  store i32 0, i32* %t475, align 4
  %t476 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 142
  store i32 0, i32* %t476, align 4
  %t477 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 143
  store i32 0, i32* %t477, align 4
  %t478 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 144
  store i32 0, i32* %t478, align 4
  %t479 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 145
  store i32 0, i32* %t479, align 4
  %t480 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 146
  store i32 0, i32* %t480, align 4
  %t481 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 147
  store i32 0, i32* %t481, align 4
  %t482 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 148
  store i32 0, i32* %t482, align 4
  %t483 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 149
  store i32 0, i32* %t483, align 4
  %t484 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 150
  store i32 0, i32* %t484, align 4
  %t485 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 151
  store i32 0, i32* %t485, align 4
  %t486 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 152
  store i32 0, i32* %t486, align 4
  %t487 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 153
  store i32 0, i32* %t487, align 4
  %t488 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 154
  store i32 0, i32* %t488, align 4
  %t489 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 155
  store i32 0, i32* %t489, align 4
  %t490 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 156
  store i32 0, i32* %t490, align 4
  %t491 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 157
  store i32 0, i32* %t491, align 4
  %t492 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 158
  store i32 0, i32* %t492, align 4
  %t493 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 159
  store i32 0, i32* %t493, align 4
  %t494 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 160
  store i32 0, i32* %t494, align 4
  %t495 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 161
  store i32 0, i32* %t495, align 4
  %t496 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 162
  store i32 0, i32* %t496, align 4
  %t497 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 163
  store i32 0, i32* %t497, align 4
  %t498 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 164
  store i32 0, i32* %t498, align 4
  %t499 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 165
  store i32 0, i32* %t499, align 4
  %t500 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 166
  store i32 0, i32* %t500, align 4
  %t501 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 167
  store i32 0, i32* %t501, align 4
  %t502 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 168
  store i32 0, i32* %t502, align 4
  %t503 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 169
  store i32 0, i32* %t503, align 4
  %t504 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 170
  store i32 0, i32* %t504, align 4
  %t505 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 171
  store i32 0, i32* %t505, align 4
  %t506 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 172
  store i32 0, i32* %t506, align 4
  %t507 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 173
  store i32 0, i32* %t507, align 4
  %t508 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 174
  store i32 0, i32* %t508, align 4
  %t509 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 175
  store i32 0, i32* %t509, align 4
  %t510 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 176
  store i32 0, i32* %t510, align 4
  %t511 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 177
  store i32 0, i32* %t511, align 4
  %t512 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 178
  store i32 0, i32* %t512, align 4
  %t513 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 179
  store i32 0, i32* %t513, align 4
  %t514 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 180
  store i32 0, i32* %t514, align 4
  %t515 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 181
  store i32 0, i32* %t515, align 4
  %t516 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 182
  store i32 0, i32* %t516, align 4
  %t517 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 183
  store i32 0, i32* %t517, align 4
  %t518 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 184
  store i32 0, i32* %t518, align 4
  %t519 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 185
  store i32 0, i32* %t519, align 4
  %t520 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 186
  store i32 0, i32* %t520, align 4
  %t521 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 187
  store i32 0, i32* %t521, align 4
  %t522 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 188
  store i32 0, i32* %t522, align 4
  %t523 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 189
  store i32 0, i32* %t523, align 4
  %t524 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 190
  store i32 0, i32* %t524, align 4
  %t525 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 191
  store i32 0, i32* %t525, align 4
  %t526 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 192
  store i32 0, i32* %t526, align 4
  %t527 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 193
  store i32 0, i32* %t527, align 4
  %t528 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 194
  store i32 0, i32* %t528, align 4
  %t529 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 195
  store i32 0, i32* %t529, align 4
  %t530 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 196
  store i32 0, i32* %t530, align 4
  %t531 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 197
  store i32 0, i32* %t531, align 4
  %t532 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 198
  store i32 0, i32* %t532, align 4
  %t533 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 199
  store i32 0, i32* %t533, align 4
  %t534 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 200
  store i32 0, i32* %t534, align 4
  %t535 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 201
  store i32 0, i32* %t535, align 4
  %t536 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 202
  store i32 0, i32* %t536, align 4
  %t537 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 203
  store i32 0, i32* %t537, align 4
  %t538 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 204
  store i32 0, i32* %t538, align 4
  %t539 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 205
  store i32 0, i32* %t539, align 4
  %t540 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 206
  store i32 0, i32* %t540, align 4
  %t541 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 207
  store i32 0, i32* %t541, align 4
  %t542 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 208
  store i32 0, i32* %t542, align 4
  %t543 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 209
  store i32 0, i32* %t543, align 4
  %t544 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 210
  store i32 0, i32* %t544, align 4
  %t545 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 211
  store i32 0, i32* %t545, align 4
  %t546 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 212
  store i32 0, i32* %t546, align 4
  %t547 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 213
  store i32 0, i32* %t547, align 4
  %t548 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 214
  store i32 0, i32* %t548, align 4
  %t549 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 215
  store i32 0, i32* %t549, align 4
  %t550 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 216
  store i32 0, i32* %t550, align 4
  %t551 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 217
  store i32 0, i32* %t551, align 4
  %t552 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 218
  store i32 0, i32* %t552, align 4
  %t553 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 219
  store i32 0, i32* %t553, align 4
  %t554 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 220
  store i32 0, i32* %t554, align 4
  %t555 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 221
  store i32 0, i32* %t555, align 4
  %t556 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 222
  store i32 0, i32* %t556, align 4
  %t557 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 223
  store i32 0, i32* %t557, align 4
  %t558 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 224
  store i32 0, i32* %t558, align 4
  %t559 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 225
  store i32 0, i32* %t559, align 4
  %t560 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 226
  store i32 0, i32* %t560, align 4
  %t561 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 227
  store i32 0, i32* %t561, align 4
  %t562 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 228
  store i32 0, i32* %t562, align 4
  %t563 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 229
  store i32 0, i32* %t563, align 4
  %t564 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 230
  store i32 0, i32* %t564, align 4
  %t565 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 231
  store i32 0, i32* %t565, align 4
  %t566 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 232
  store i32 0, i32* %t566, align 4
  %t567 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 233
  store i32 0, i32* %t567, align 4
  %t568 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 234
  store i32 0, i32* %t568, align 4
  %t569 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 235
  store i32 0, i32* %t569, align 4
  %t570 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 236
  store i32 0, i32* %t570, align 4
  %t571 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 237
  store i32 0, i32* %t571, align 4
  %t572 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 238
  store i32 0, i32* %t572, align 4
  %t573 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 239
  store i32 0, i32* %t573, align 4
  %t574 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 240
  store i32 0, i32* %t574, align 4
  %t575 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 241
  store i32 0, i32* %t575, align 4
  %t576 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 242
  store i32 0, i32* %t576, align 4
  %t577 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 243
  store i32 0, i32* %t577, align 4
  %t578 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 244
  store i32 0, i32* %t578, align 4
  %t579 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 245
  store i32 0, i32* %t579, align 4
  %t580 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 246
  store i32 0, i32* %t580, align 4
  %t581 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 247
  store i32 0, i32* %t581, align 4
  %t582 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 248
  store i32 0, i32* %t582, align 4
  %t583 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 249
  store i32 0, i32* %t583, align 4
  %t584 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 250
  store i32 0, i32* %t584, align 4
  %t585 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 251
  store i32 0, i32* %t585, align 4
  %t586 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 252
  store i32 0, i32* %t586, align 4
  %t587 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 253
  store i32 0, i32* %t587, align 4
  %t588 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 254
  store i32 0, i32* %t588, align 4
  %t589 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 255
  store i32 0, i32* %t589, align 4
  %t591 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  store i32 0, i32* %t591, align 4
  %t592 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 1
  store i32 0, i32* %t592, align 4
  %t593 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 2
  store i32 0, i32* %t593, align 4
  %t594 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 3
  store i32 0, i32* %t594, align 4
  %t595 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 4
  store i32 0, i32* %t595, align 4
  %t596 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 5
  store i32 0, i32* %t596, align 4
  %t597 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 6
  store i32 0, i32* %t597, align 4
  %t598 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 7
  store i32 0, i32* %t598, align 4
  %t599 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 8
  store i32 0, i32* %t599, align 4
  %t600 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 9
  store i32 0, i32* %t600, align 4
  %t601 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 10
  store i32 0, i32* %t601, align 4
  %t602 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 11
  store i32 0, i32* %t602, align 4
  %t603 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 12
  store i32 0, i32* %t603, align 4
  %t604 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 13
  store i32 0, i32* %t604, align 4
  %t605 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 14
  store i32 0, i32* %t605, align 4
  %t606 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 15
  store i32 0, i32* %t606, align 4
  %t607 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 16
  store i32 0, i32* %t607, align 4
  %t608 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 17
  store i32 0, i32* %t608, align 4
  %t609 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 18
  store i32 0, i32* %t609, align 4
  %t610 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 19
  store i32 0, i32* %t610, align 4
  %t611 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 20
  store i32 0, i32* %t611, align 4
  %t612 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 21
  store i32 0, i32* %t612, align 4
  %t613 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 22
  store i32 0, i32* %t613, align 4
  %t614 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 23
  store i32 0, i32* %t614, align 4
  %t615 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 24
  store i32 0, i32* %t615, align 4
  %t616 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 25
  store i32 0, i32* %t616, align 4
  %t617 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 26
  store i32 0, i32* %t617, align 4
  %t618 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 27
  store i32 0, i32* %t618, align 4
  %t619 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 28
  store i32 0, i32* %t619, align 4
  %t620 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 29
  store i32 0, i32* %t620, align 4
  %t621 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 30
  store i32 0, i32* %t621, align 4
  %t622 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 31
  store i32 0, i32* %t622, align 4
  %t623 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 32
  store i32 0, i32* %t623, align 4
  %t624 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 33
  store i32 0, i32* %t624, align 4
  %t625 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 34
  store i32 0, i32* %t625, align 4
  %t626 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 35
  store i32 0, i32* %t626, align 4
  %t627 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 36
  store i32 0, i32* %t627, align 4
  %t628 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 37
  store i32 0, i32* %t628, align 4
  %t629 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 38
  store i32 0, i32* %t629, align 4
  %t630 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 39
  store i32 0, i32* %t630, align 4
  %t631 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 40
  store i32 0, i32* %t631, align 4
  %t632 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 41
  store i32 0, i32* %t632, align 4
  %t633 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 42
  store i32 0, i32* %t633, align 4
  %t634 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 43
  store i32 0, i32* %t634, align 4
  %t635 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 44
  store i32 0, i32* %t635, align 4
  %t636 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 45
  store i32 0, i32* %t636, align 4
  %t637 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 46
  store i32 0, i32* %t637, align 4
  %t638 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 47
  store i32 0, i32* %t638, align 4
  %t639 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 48
  store i32 0, i32* %t639, align 4
  %t640 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 49
  store i32 0, i32* %t640, align 4
  %t641 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 50
  store i32 0, i32* %t641, align 4
  %t642 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 51
  store i32 0, i32* %t642, align 4
  %t643 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 52
  store i32 0, i32* %t643, align 4
  %t644 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 53
  store i32 0, i32* %t644, align 4
  %t645 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 54
  store i32 0, i32* %t645, align 4
  %t646 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 55
  store i32 0, i32* %t646, align 4
  %t647 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 56
  store i32 0, i32* %t647, align 4
  %t648 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 57
  store i32 0, i32* %t648, align 4
  %t649 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 58
  store i32 0, i32* %t649, align 4
  %t650 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 59
  store i32 0, i32* %t650, align 4
  %t651 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 60
  store i32 0, i32* %t651, align 4
  %t652 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 61
  store i32 0, i32* %t652, align 4
  %t653 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 62
  store i32 0, i32* %t653, align 4
  %t654 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 63
  store i32 0, i32* %t654, align 4
  %t655 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 64
  store i32 0, i32* %t655, align 4
  %t656 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 65
  store i32 0, i32* %t656, align 4
  %t657 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 66
  store i32 0, i32* %t657, align 4
  %t658 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 67
  store i32 0, i32* %t658, align 4
  %t659 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 68
  store i32 0, i32* %t659, align 4
  %t660 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 69
  store i32 0, i32* %t660, align 4
  %t661 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 70
  store i32 0, i32* %t661, align 4
  %t662 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 71
  store i32 0, i32* %t662, align 4
  %t663 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 72
  store i32 0, i32* %t663, align 4
  %t664 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 73
  store i32 0, i32* %t664, align 4
  %t665 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 74
  store i32 0, i32* %t665, align 4
  %t666 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 75
  store i32 0, i32* %t666, align 4
  %t667 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 76
  store i32 0, i32* %t667, align 4
  %t668 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 77
  store i32 0, i32* %t668, align 4
  %t669 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 78
  store i32 0, i32* %t669, align 4
  %t670 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 79
  store i32 0, i32* %t670, align 4
  %t671 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 80
  store i32 0, i32* %t671, align 4
  %t672 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 81
  store i32 0, i32* %t672, align 4
  %t673 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 82
  store i32 0, i32* %t673, align 4
  %t674 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 83
  store i32 0, i32* %t674, align 4
  %t675 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 84
  store i32 0, i32* %t675, align 4
  %t676 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 85
  store i32 0, i32* %t676, align 4
  %t677 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 86
  store i32 0, i32* %t677, align 4
  %t678 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 87
  store i32 0, i32* %t678, align 4
  %t679 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 88
  store i32 0, i32* %t679, align 4
  %t680 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 89
  store i32 0, i32* %t680, align 4
  %t681 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 90
  store i32 0, i32* %t681, align 4
  %t682 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 91
  store i32 0, i32* %t682, align 4
  %t683 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 92
  store i32 0, i32* %t683, align 4
  %t684 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 93
  store i32 0, i32* %t684, align 4
  %t685 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 94
  store i32 0, i32* %t685, align 4
  %t686 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 95
  store i32 0, i32* %t686, align 4
  %t687 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 96
  store i32 0, i32* %t687, align 4
  %t688 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 97
  store i32 0, i32* %t688, align 4
  %t689 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 98
  store i32 0, i32* %t689, align 4
  %t690 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 99
  store i32 0, i32* %t690, align 4
  %t691 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 100
  store i32 0, i32* %t691, align 4
  %t692 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 101
  store i32 0, i32* %t692, align 4
  %t693 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 102
  store i32 0, i32* %t693, align 4
  %t694 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 103
  store i32 0, i32* %t694, align 4
  %t695 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 104
  store i32 0, i32* %t695, align 4
  %t696 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 105
  store i32 0, i32* %t696, align 4
  %t697 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 106
  store i32 0, i32* %t697, align 4
  %t698 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 107
  store i32 0, i32* %t698, align 4
  %t699 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 108
  store i32 0, i32* %t699, align 4
  %t700 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 109
  store i32 0, i32* %t700, align 4
  %t701 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 110
  store i32 0, i32* %t701, align 4
  %t702 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 111
  store i32 0, i32* %t702, align 4
  %t703 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 112
  store i32 0, i32* %t703, align 4
  %t704 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 113
  store i32 0, i32* %t704, align 4
  %t705 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 114
  store i32 0, i32* %t705, align 4
  %t706 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 115
  store i32 0, i32* %t706, align 4
  %t707 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 116
  store i32 0, i32* %t707, align 4
  %t708 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 117
  store i32 0, i32* %t708, align 4
  %t709 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 118
  store i32 0, i32* %t709, align 4
  %t710 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 119
  store i32 0, i32* %t710, align 4
  %t711 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 120
  store i32 0, i32* %t711, align 4
  %t712 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 121
  store i32 0, i32* %t712, align 4
  %t713 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 122
  store i32 0, i32* %t713, align 4
  %t714 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 123
  store i32 0, i32* %t714, align 4
  %t715 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 124
  store i32 0, i32* %t715, align 4
  %t716 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 125
  store i32 0, i32* %t716, align 4
  %t717 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 126
  store i32 0, i32* %t717, align 4
  %t718 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 127
  store i32 0, i32* %t718, align 4
  %t719 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 128
  store i32 0, i32* %t719, align 4
  %t720 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 129
  store i32 0, i32* %t720, align 4
  %t721 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 130
  store i32 0, i32* %t721, align 4
  %t722 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 131
  store i32 0, i32* %t722, align 4
  %t723 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 132
  store i32 0, i32* %t723, align 4
  %t724 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 133
  store i32 0, i32* %t724, align 4
  %t725 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 134
  store i32 0, i32* %t725, align 4
  %t726 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 135
  store i32 0, i32* %t726, align 4
  %t727 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 136
  store i32 0, i32* %t727, align 4
  %t728 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 137
  store i32 0, i32* %t728, align 4
  %t729 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 138
  store i32 0, i32* %t729, align 4
  %t730 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 139
  store i32 0, i32* %t730, align 4
  %t731 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 140
  store i32 0, i32* %t731, align 4
  %t732 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 141
  store i32 0, i32* %t732, align 4
  %t733 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 142
  store i32 0, i32* %t733, align 4
  %t734 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 143
  store i32 0, i32* %t734, align 4
  %t735 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 144
  store i32 0, i32* %t735, align 4
  %t736 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 145
  store i32 0, i32* %t736, align 4
  %t737 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 146
  store i32 0, i32* %t737, align 4
  %t738 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 147
  store i32 0, i32* %t738, align 4
  %t739 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 148
  store i32 0, i32* %t739, align 4
  %t740 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 149
  store i32 0, i32* %t740, align 4
  %t741 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 150
  store i32 0, i32* %t741, align 4
  %t742 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 151
  store i32 0, i32* %t742, align 4
  %t743 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 152
  store i32 0, i32* %t743, align 4
  %t744 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 153
  store i32 0, i32* %t744, align 4
  %t745 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 154
  store i32 0, i32* %t745, align 4
  %t746 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 155
  store i32 0, i32* %t746, align 4
  %t747 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 156
  store i32 0, i32* %t747, align 4
  %t748 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 157
  store i32 0, i32* %t748, align 4
  %t749 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 158
  store i32 0, i32* %t749, align 4
  %t750 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 159
  store i32 0, i32* %t750, align 4
  %t751 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 160
  store i32 0, i32* %t751, align 4
  %t752 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 161
  store i32 0, i32* %t752, align 4
  %t753 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 162
  store i32 0, i32* %t753, align 4
  %t754 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 163
  store i32 0, i32* %t754, align 4
  %t755 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 164
  store i32 0, i32* %t755, align 4
  %t756 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 165
  store i32 0, i32* %t756, align 4
  %t757 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 166
  store i32 0, i32* %t757, align 4
  %t758 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 167
  store i32 0, i32* %t758, align 4
  %t759 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 168
  store i32 0, i32* %t759, align 4
  %t760 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 169
  store i32 0, i32* %t760, align 4
  %t761 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 170
  store i32 0, i32* %t761, align 4
  %t762 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 171
  store i32 0, i32* %t762, align 4
  %t763 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 172
  store i32 0, i32* %t763, align 4
  %t764 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 173
  store i32 0, i32* %t764, align 4
  %t765 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 174
  store i32 0, i32* %t765, align 4
  %t766 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 175
  store i32 0, i32* %t766, align 4
  %t767 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 176
  store i32 0, i32* %t767, align 4
  %t768 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 177
  store i32 0, i32* %t768, align 4
  %t769 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 178
  store i32 0, i32* %t769, align 4
  %t770 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 179
  store i32 0, i32* %t770, align 4
  %t771 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 180
  store i32 0, i32* %t771, align 4
  %t772 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 181
  store i32 0, i32* %t772, align 4
  %t773 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 182
  store i32 0, i32* %t773, align 4
  %t774 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 183
  store i32 0, i32* %t774, align 4
  %t775 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 184
  store i32 0, i32* %t775, align 4
  %t776 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 185
  store i32 0, i32* %t776, align 4
  %t777 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 186
  store i32 0, i32* %t777, align 4
  %t778 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 187
  store i32 0, i32* %t778, align 4
  %t779 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 188
  store i32 0, i32* %t779, align 4
  %t780 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 189
  store i32 0, i32* %t780, align 4
  %t781 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 190
  store i32 0, i32* %t781, align 4
  %t782 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 191
  store i32 0, i32* %t782, align 4
  %t783 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 192
  store i32 0, i32* %t783, align 4
  %t784 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 193
  store i32 0, i32* %t784, align 4
  %t785 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 194
  store i32 0, i32* %t785, align 4
  %t786 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 195
  store i32 0, i32* %t786, align 4
  %t787 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 196
  store i32 0, i32* %t787, align 4
  %t788 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 197
  store i32 0, i32* %t788, align 4
  %t789 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 198
  store i32 0, i32* %t789, align 4
  %t790 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 199
  store i32 0, i32* %t790, align 4
  %t791 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 200
  store i32 0, i32* %t791, align 4
  %t792 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 201
  store i32 0, i32* %t792, align 4
  %t793 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 202
  store i32 0, i32* %t793, align 4
  %t794 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 203
  store i32 0, i32* %t794, align 4
  %t795 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 204
  store i32 0, i32* %t795, align 4
  %t796 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 205
  store i32 0, i32* %t796, align 4
  %t797 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 206
  store i32 0, i32* %t797, align 4
  %t798 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 207
  store i32 0, i32* %t798, align 4
  %t799 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 208
  store i32 0, i32* %t799, align 4
  %t800 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 209
  store i32 0, i32* %t800, align 4
  %t801 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 210
  store i32 0, i32* %t801, align 4
  %t802 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 211
  store i32 0, i32* %t802, align 4
  %t803 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 212
  store i32 0, i32* %t803, align 4
  %t804 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 213
  store i32 0, i32* %t804, align 4
  %t805 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 214
  store i32 0, i32* %t805, align 4
  %t806 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 215
  store i32 0, i32* %t806, align 4
  %t807 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 216
  store i32 0, i32* %t807, align 4
  %t808 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 217
  store i32 0, i32* %t808, align 4
  %t809 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 218
  store i32 0, i32* %t809, align 4
  %t810 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 219
  store i32 0, i32* %t810, align 4
  %t811 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 220
  store i32 0, i32* %t811, align 4
  %t812 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 221
  store i32 0, i32* %t812, align 4
  %t813 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 222
  store i32 0, i32* %t813, align 4
  %t814 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 223
  store i32 0, i32* %t814, align 4
  %t815 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 224
  store i32 0, i32* %t815, align 4
  %t816 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 225
  store i32 0, i32* %t816, align 4
  %t817 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 226
  store i32 0, i32* %t817, align 4
  %t818 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 227
  store i32 0, i32* %t818, align 4
  %t819 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 228
  store i32 0, i32* %t819, align 4
  %t820 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 229
  store i32 0, i32* %t820, align 4
  %t821 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 230
  store i32 0, i32* %t821, align 4
  %t822 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 231
  store i32 0, i32* %t822, align 4
  %t823 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 232
  store i32 0, i32* %t823, align 4
  %t824 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 233
  store i32 0, i32* %t824, align 4
  %t825 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 234
  store i32 0, i32* %t825, align 4
  %t826 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 235
  store i32 0, i32* %t826, align 4
  %t827 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 236
  store i32 0, i32* %t827, align 4
  %t828 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 237
  store i32 0, i32* %t828, align 4
  %t829 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 238
  store i32 0, i32* %t829, align 4
  %t830 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 239
  store i32 0, i32* %t830, align 4
  %t831 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 240
  store i32 0, i32* %t831, align 4
  %t832 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 241
  store i32 0, i32* %t832, align 4
  %t833 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 242
  store i32 0, i32* %t833, align 4
  %t834 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 243
  store i32 0, i32* %t834, align 4
  %t835 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 244
  store i32 0, i32* %t835, align 4
  %t836 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 245
  store i32 0, i32* %t836, align 4
  %t837 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 246
  store i32 0, i32* %t837, align 4
  %t838 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 247
  store i32 0, i32* %t838, align 4
  %t839 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 248
  store i32 0, i32* %t839, align 4
  %t840 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 249
  store i32 0, i32* %t840, align 4
  %t841 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 250
  store i32 0, i32* %t841, align 4
  %t842 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 251
  store i32 0, i32* %t842, align 4
  %t843 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 252
  store i32 0, i32* %t843, align 4
  %t844 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 253
  store i32 0, i32* %t844, align 4
  %t845 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 254
  store i32 0, i32* %t845, align 4
  %t846 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 255
  store i32 0, i32* %t846, align 4
  %t125 = load i32, i32* @cur_token, align 4
  %t126 = load i32, i32* @TOKEN_NUM, align 4
  %t127 = icmp ne i32 %t125, %t126
  br i1 %t127, label %B847, label %B851
B847:                               	; preds = %B332
  %t128 = call i32 @panic()
  ret i32 %t128
  br label %B848
B851:                               	; preds = %B332
  br label %B848
B848:                               	; preds = %B847, %B851
  %t129 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t130 = load i32, i32* @num, align 4
  call void @stack_push(i32* %t129, i32 %t130)
  %t131 = call i32 @next_token()
  br label %B852
B852:                               	; preds = %B848, %B880
  %t132 = load i32, i32* @cur_token, align 4
  %t133 = load i32, i32* @TOKEN_OTHER, align 4
  %t134 = icmp eq i32 %t132, %t133
  br i1 %t134, label %B853, label %B857
B853:                               	; preds = %B852
  %t135 = load i32, i32* @other, align 4
  store i32 %t135, i32* %t858, align 4
  %t137 = load i32, i32* %t858, align 4
  %t138 = call i32 @get_op_prec(i32 %t137)
  %t861 = icmp ne i32 %t138, 0
  %t139 = xor i1 %t861, true
  %t140 = icmp ne i1 %t139, 0
  br i1 %t140, label %B859, label %B863
B857:                               	; preds = %B852
  br label %B854
B859:                               	; preds = %B853
  br label %B854
B863:                               	; preds = %B853
  br label %B860
B854:                               	; preds = %B857, %B859
  %t175 = call i32 @next_token()
  br label %B884
B860:                               	; preds = %B863, %B865
  %t141 = call i32 @next_token()
  br label %B866
B884:                               	; preds = %B854, %B885
  %t176 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t177 = call i32 @stack_size(i32* %t176)
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %B885, label %B888
B866:                               	; preds = %B860, %B867
  %t142 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t143 = call i32 @stack_size(i32* %t142)
  %t151 = icmp ne i32 %t143, 0
  br i1 %t151, label %B869, label %B871
B885:                               	; preds = %B884
  %t179 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t180 = call i32 @stack_pop(i32* %t179)
  store i32 %t180, i32* %t890, align 4
  %t182 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t183 = call i32 @stack_pop(i32* %t182)
  store i32 %t183, i32* %t891, align 4
  %t185 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t186 = call i32 @stack_pop(i32* %t185)
  store i32 %t186, i32* %t892, align 4
  %t188 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t189 = load i32, i32* %t890, align 4
  %t190 = load i32, i32* %t892, align 4
  %t191 = load i32, i32* %t891, align 4
  %t192 = call i32 @eval_op(i32 %t189, i32 %t190, i32 %t191)
  call void @stack_push(i32* %t188, i32 %t192)
  br label %B884
B888:                               	; preds = %B884
  br label %B886
B869:                               	; preds = %B866
  %t144 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t145 = call i32 @stack_peek(i32* %t144)
  %t146 = call i32 @get_op_prec(i32 %t145)
  %t147 = load i32, i32* %t858, align 4
  %t148 = call i32 @get_op_prec(i32 %t147)
  %t149 = icmp sge i32 %t146, %t148
  br i1 %t149, label %B867, label %B875
B871:                               	; preds = %B866
  br label %B868
B886:                               	; preds = %B888
  %t193 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t194 = call i32 @stack_peek(i32* %t193)
  ret i32 %t194
B867:                               	; preds = %B869
  %t152 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t153 = call i32 @stack_pop(i32* %t152)
  store i32 %t153, i32* %t876, align 4
  %t155 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t156 = call i32 @stack_pop(i32* %t155)
  store i32 %t156, i32* %t877, align 4
  %t158 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t159 = call i32 @stack_pop(i32* %t158)
  store i32 %t159, i32* %t878, align 4
  %t161 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t162 = load i32, i32* %t876, align 4
  %t163 = load i32, i32* %t878, align 4
  %t164 = load i32, i32* %t877, align 4
  %t165 = call i32 @eval_op(i32 %t162, i32 %t163, i32 %t164)
  call void @stack_push(i32* %t161, i32 %t165)
  br label %B866
B875:                               	; preds = %B869
  br label %B868
B868:                               	; preds = %B871, %B875
  %t166 = getelementptr inbounds [256 x i32], [256 x i32]* %t590, i32 0, i32 0
  %t167 = load i32, i32* %t858, align 4
  call void @stack_push(i32* %t166, i32 %t167)
  %t168 = load i32, i32* @cur_token, align 4
  %t169 = load i32, i32* @TOKEN_NUM, align 4
  %t170 = icmp ne i32 %t168, %t169
  br i1 %t170, label %B879, label %B883
B879:                               	; preds = %B868
  %t171 = call i32 @panic()
  ret i32 %t171
  br label %B880
B883:                               	; preds = %B868
  br label %B880
B880:                               	; preds = %B879, %B883
  %t172 = getelementptr inbounds [256 x i32], [256 x i32]* %t333, i32 0, i32 0
  %t173 = load i32, i32* @num, align 4
  call void @stack_push(i32* %t172, i32 %t173)
  %t174 = call i32 @next_token()
  br label %B852
}
define i32 @main() {
B893:
  %t894 = alloca i32, align 4
  %t195 = call i32 @getint()
  store i32 %t195, i32* %t894, align 4
  %t197 = call i32 @getch()
  %t198 = call i32 @next_token()
  br label %B895
B895:                               	; preds = %B893, %B896
  %t199 = load i32, i32* %t894, align 4
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %B896, label %B899
B896:                               	; preds = %B895
  %t201 = call i32 @eval()
  call void @putint(i32 %t201)
  call void @putch(i32 10)
  %t203 = load i32, i32* %t894, align 4
  %t204 = sub i32 %t203, 1
  store i32 %t204, i32* %t894, align 4
  br label %B895
B899:                               	; preds = %B895
  br label %B897
B897:                               	; preds = %B899
  ret i32 0
}
declare i32 @getch()
declare void @putch(i32)
declare i32 @getint()
declare void @putint(i32)
