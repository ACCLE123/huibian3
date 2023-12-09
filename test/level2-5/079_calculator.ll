@ints = global [10000 x i32] zeroinitializer, align 4
@intt = global i32 0, align 4
@chas = global [10000 x i32] zeroinitializer, align 4
@chat = global i32 0, align 4
@i = global i32 0, align 4
@ii = global i32 1, align 4
@c = global i32 0, align 4
@get = global [10000 x i32] zeroinitializer, align 4
@get2 = global [10000 x i32] zeroinitializer, align 4
define i32 @isdigit(i32 %t9) {
B390:
  %t391 = alloca i32, align 4
  store i32 %t9, i32* %t391, align 4
  %t11 = load i32, i32* %t391, align 4
  %t12 = icmp sge i32 %t11, 48
  br i1 %t12, label %B394, label %B397
B394:                               	; preds = %B390
  %t13 = load i32, i32* %t391, align 4
  %t14 = icmp sle i32 %t13, 57
  br i1 %t14, label %B392, label %B400
B397:                               	; preds = %B390
  br label %B393
B392:                               	; preds = %B394
  ret i32 1
  br label %B393
B400:                               	; preds = %B394
  br label %B393
B393:                               	; preds = %B392, %B397, %B400
  ret i32 0
}
define i32 @power(i32 %t16, i32 %t18) {
B401:
  %t404 = alloca i32, align 4
  %t403 = alloca i32, align 4
  %t402 = alloca i32, align 4
  store i32 %t16, i32* %t402, align 4
  store i32 %t18, i32* %t403, align 4
  store i32 1, i32* %t404, align 4
  br label %B405
B405:                               	; preds = %B401, %B406
  %t21 = load i32, i32* %t403, align 4
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %B406, label %B410
B406:                               	; preds = %B405
  %t24 = load i32, i32* %t404, align 4
  %t25 = load i32, i32* %t402, align 4
  %t26 = mul i32 %t24, %t25
  store i32 %t26, i32* %t404, align 4
  %t28 = load i32, i32* %t403, align 4
  %t29 = sub i32 %t28, 1
  store i32 %t29, i32* %t403, align 4
  br label %B405
B410:                               	; preds = %B405
  br label %B407
B407:                               	; preds = %B410
  %t30 = load i32, i32* %t404, align 4
  ret i32 %t30
}
define i32 @getstr(i32* %t31) {
B411:
  %t414 = alloca i32, align 4
  %t413 = alloca i32, align 4
  %t412 = alloca i32*, align 4
  store i32* %t31, i32** %t412, align 4
  %t33 = call i32 @getch()
  store i32 %t33, i32* %t413, align 4
  store i32 0, i32* %t414, align 4
  br label %B415
B415:                               	; preds = %B411, %B416
  %t36 = load i32, i32* %t413, align 4
  %t37 = icmp ne i32 %t36, 13
  br i1 %t37, label %B418, label %B421
B418:                               	; preds = %B415
  %t38 = load i32, i32* %t413, align 4
  %t39 = icmp ne i32 %t38, 10
  br i1 %t39, label %B416, label %B424
B421:                               	; preds = %B415
  br label %B417
B416:                               	; preds = %B418
  %t43 = load i32, i32* %t413, align 4
  %t425 = load i32*, i32** %t412, align 4
  %t41 = load i32, i32* %t414, align 4
  %t42 = getelementptr inbounds i32, i32* %t425, i32 %t41
  store i32 %t43, i32* %t42, align 4
  %t45 = load i32, i32* %t414, align 4
  %t46 = add i32 %t45, 1
  store i32 %t46, i32* %t414, align 4
  %t48 = call i32 @getch()
  store i32 %t48, i32* %t413, align 4
  br label %B415
B424:                               	; preds = %B418
  br label %B417
B417:                               	; preds = %B421, %B424
  %t49 = load i32, i32* %t414, align 4
  ret i32 %t49
}
define void @intpush(i32 %t50) {
B426:
  %t427 = alloca i32, align 4
  store i32 %t50, i32* %t427, align 4
  %t53 = load i32, i32* @intt, align 4
  %t54 = add i32 %t53, 1
  store i32 %t54, i32* @intt, align 4
  %t57 = load i32, i32* %t427, align 4
  %t55 = load i32, i32* @intt, align 4
  %t56 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t55
  store i32 %t57, i32* %t56, align 4
  ret void
}
define void @chapush(i32 %t58) {
B428:
  %t429 = alloca i32, align 4
  store i32 %t58, i32* %t429, align 4
  %t61 = load i32, i32* @chat, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* @chat, align 4
  %t65 = load i32, i32* %t429, align 4
  %t63 = load i32, i32* @chat, align 4
  %t64 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t63
  store i32 %t65, i32* %t64, align 4
  ret void
}
define i32 @intpop() {
B430:
  %t67 = load i32, i32* @intt, align 4
  %t68 = sub i32 %t67, 1
  store i32 %t68, i32* @intt, align 4
  %t69 = load i32, i32* @intt, align 4
  %t70 = add i32 %t69, 1
  %t71 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t70
  %t431 = load i32, i32* %t71, align 4
  ret i32 %t431
}
define i32 @chapop() {
B432:
  %t73 = load i32, i32* @chat, align 4
  %t74 = sub i32 %t73, 1
  store i32 %t74, i32* @chat, align 4
  %t75 = load i32, i32* @chat, align 4
  %t76 = add i32 %t75, 1
  %t77 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t76
  %t433 = load i32, i32* %t77, align 4
  ret i32 %t433
}
define void @intadd(i32 %t78) {
B434:
  %t435 = alloca i32, align 4
  store i32 %t78, i32* %t435, align 4
  %t82 = load i32, i32* @intt, align 4
  %t83 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t82
  %t436 = load i32, i32* %t83, align 4
  %t84 = mul i32 %t436, 10
  %t80 = load i32, i32* @intt, align 4
  %t81 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t80
  store i32 %t84, i32* %t81, align 4
  %t87 = load i32, i32* @intt, align 4
  %t88 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t87
  %t437 = load i32, i32* %t88, align 4
  %t89 = load i32, i32* %t435, align 4
  %t90 = add i32 %t437, %t89
  %t85 = load i32, i32* @intt, align 4
  %t86 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %t85
  store i32 %t90, i32* %t86, align 4
  ret void
}
define i32 @find() {
B438:
  %t92 = call i32 @chapop()
  store i32 %t92, i32* @c, align 4
  %t93 = load i32, i32* @ii, align 4
  %t94 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t93
  store i32 32, i32* %t94, align 4
  %t98 = load i32, i32* @c, align 4
  %t95 = load i32, i32* @ii, align 4
  %t96 = add i32 %t95, 1
  %t97 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t96
  store i32 %t98, i32* %t97, align 4
  %t100 = load i32, i32* @ii, align 4
  %t101 = add i32 %t100, 2
  store i32 %t101, i32* @ii, align 4
  %t102 = load i32, i32* @chat, align 4
  %t103 = icmp eq i32 %t102, 0
  br i1 %t103, label %B439, label %B443
B439:                               	; preds = %B438
  ret i32 0
  br label %B440
B443:                               	; preds = %B438
  br label %B440
B440:                               	; preds = %B439, %B443
  ret i32 1
}
define i32 @main() {
B444:
  %t722 = alloca i32, align 4
  %t721 = alloca i32, align 4
  %t720 = alloca i32, align 4
  %t680 = alloca i32, align 4
  %t445 = alloca i32, align 4
  store i32 0, i32* @intt, align 4
  store i32 0, i32* @chat, align 4
  %t106 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 0
  %t107 = call i32 @getstr(i32* %t106)
  store i32 %t107, i32* %t445, align 4
  br label %B446
B446:                               	; preds = %B444, %B454
  %t109 = load i32, i32* @i, align 4
  %t110 = load i32, i32* %t445, align 4
  %t111 = icmp slt i32 %t109, %t110
  br i1 %t111, label %B447, label %B451
B447:                               	; preds = %B446
  %t112 = load i32, i32* @i, align 4
  %t113 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t112
  %t455 = load i32, i32* %t113, align 4
  %t114 = call i32 @isdigit(i32 %t455)
  %t115 = icmp eq i32 %t114, 1
  br i1 %t115, label %B452, label %B458
B451:                               	; preds = %B446
  br label %B448
B452:                               	; preds = %B447
  %t118 = load i32, i32* @i, align 4
  %t119 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t118
  %t459 = load i32, i32* %t119, align 4
  %t116 = load i32, i32* @ii, align 4
  %t117 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t116
  store i32 %t459, i32* %t117, align 4
  %t121 = load i32, i32* @ii, align 4
  %t122 = add i32 %t121, 1
  store i32 %t122, i32* @ii, align 4
  br label %B454
B458:                               	; preds = %B447
  br label %B453
B448:                               	; preds = %B451
  br label %B674
B454:                               	; preds = %B452, %B641
  %t269 = load i32, i32* @i, align 4
  %t270 = add i32 %t269, 1
  store i32 %t270, i32* @i, align 4
  br label %B446
B453:                               	; preds = %B458
  %t123 = load i32, i32* @i, align 4
  %t124 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t123
  %t462 = load i32, i32* %t124, align 4
  %t125 = icmp eq i32 %t462, 40
  br i1 %t125, label %B460, label %B465
B674:                               	; preds = %B448, %B675
  %t271 = load i32, i32* @chat, align 4
  %t272 = icmp sgt i32 %t271, 0
  br i1 %t272, label %B675, label %B679
B460:                               	; preds = %B453
  call void @chapush(i32 40)
  br label %B461
B465:                               	; preds = %B453
  br label %B461
B675:                               	; preds = %B674
  %t273 = call i32 @chapop()
  store i32 %t273, i32* %t680, align 4
  %t275 = load i32, i32* @ii, align 4
  %t276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t275
  store i32 32, i32* %t276, align 4
  %t280 = load i32, i32* %t680, align 4
  %t277 = load i32, i32* @ii, align 4
  %t278 = add i32 %t277, 1
  %t279 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t278
  store i32 %t280, i32* %t279, align 4
  %t282 = load i32, i32* @ii, align 4
  %t283 = add i32 %t282, 2
  store i32 %t283, i32* @ii, align 4
  br label %B674
B679:                               	; preds = %B674
  br label %B676
B461:                               	; preds = %B460, %B465
  %t126 = load i32, i32* @i, align 4
  %t127 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t126
  %t468 = load i32, i32* %t127, align 4
  %t128 = icmp eq i32 %t468, 94
  br i1 %t128, label %B466, label %B471
B676:                               	; preds = %B679
  %t284 = load i32, i32* @ii, align 4
  %t285 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t284
  store i32 64, i32* %t285, align 4
  store i32 1, i32* @i, align 4
  br label %B681
B466:                               	; preds = %B461
  call void @chapush(i32 94)
  br label %B467
B471:                               	; preds = %B461
  br label %B467
B681:                               	; preds = %B676, %B690
  %t287 = load i32, i32* @i, align 4
  %t288 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t287
  %t684 = load i32, i32* %t288, align 4
  %t289 = icmp ne i32 %t684, 64
  br i1 %t289, label %B682, label %B687
B467:                               	; preds = %B466, %B471
  %t129 = load i32, i32* @i, align 4
  %t130 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t129
  %t474 = load i32, i32* %t130, align 4
  %t131 = icmp eq i32 %t474, 41
  br i1 %t131, label %B472, label %B477
B682:                               	; preds = %B681
  %t290 = load i32, i32* @i, align 4
  %t291 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t290
  %t696 = load i32, i32* %t291, align 4
  %t292 = icmp eq i32 %t696, 43
  br i1 %t292, label %B688, label %B699
B687:                               	; preds = %B681
  br label %B683
B472:                               	; preds = %B467
  %t133 = call i32 @chapop()
  store i32 %t133, i32* @c, align 4
  br label %B478
B477:                               	; preds = %B467
  br label %B473
B688:                               	; preds = %B682, %B691, %B692, %B693, %B694, %B695
  %t313 = call i32 @intpop()
  store i32 %t313, i32* %t720, align 4
  %t315 = call i32 @intpop()
  store i32 %t315, i32* %t721, align 4
  %t318 = load i32, i32* @i, align 4
  %t319 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t318
  %t725 = load i32, i32* %t319, align 4
  %t320 = icmp eq i32 %t725, 43
  br i1 %t320, label %B723, label %B728
B699:                               	; preds = %B682
  br label %B695
B683:                               	; preds = %B687
  %t389 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i32 0, i32 1
  %t774 = load i32, i32* %t389, align 4
  call void @putint(i32 %t774)
  ret i32 0
B478:                               	; preds = %B472, %B479
  %t134 = load i32, i32* @c, align 4
  %t135 = icmp ne i32 %t134, 40
  br i1 %t135, label %B479, label %B483
B473:                               	; preds = %B477, %B480
  %t147 = load i32, i32* @i, align 4
  %t148 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t147
  %t486 = load i32, i32* %t148, align 4
  %t149 = icmp eq i32 %t486, 43
  br i1 %t149, label %B484, label %B489
B723:                               	; preds = %B688
  %t322 = load i32, i32* %t720, align 4
  %t323 = load i32, i32* %t721, align 4
  %t324 = add i32 %t322, %t323
  store i32 %t324, i32* %t722, align 4
  br label %B724
B728:                               	; preds = %B688
  br label %B724
B695:                               	; preds = %B699
  %t293 = load i32, i32* @i, align 4
  %t294 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t293
  %t700 = load i32, i32* %t294, align 4
  %t295 = icmp eq i32 %t700, 45
  br i1 %t295, label %B688, label %B703
B479:                               	; preds = %B478
  %t136 = load i32, i32* @ii, align 4
  %t137 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t136
  store i32 32, i32* %t137, align 4
  %t141 = load i32, i32* @c, align 4
  %t138 = load i32, i32* @ii, align 4
  %t139 = add i32 %t138, 1
  %t140 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t139
  store i32 %t141, i32* %t140, align 4
  %t143 = load i32, i32* @ii, align 4
  %t144 = add i32 %t143, 2
  store i32 %t144, i32* @ii, align 4
  %t146 = call i32 @chapop()
  store i32 %t146, i32* @c, align 4
  br label %B478
B483:                               	; preds = %B478
  br label %B480
B484:                               	; preds = %B473
  br label %B490
B489:                               	; preds = %B473
  br label %B485
B724:                               	; preds = %B723, %B728
  %t325 = load i32, i32* @i, align 4
  %t326 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t325
  %t731 = load i32, i32* %t326, align 4
  %t327 = icmp eq i32 %t731, 45
  br i1 %t327, label %B729, label %B734
B703:                               	; preds = %B695
  br label %B694
B480:                               	; preds = %B483
  br label %B473
B490:                               	; preds = %B484, %B523
  %t150 = load i32, i32* @chat, align 4
  %t151 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t150
  %t498 = load i32, i32* %t151, align 4
  %t152 = icmp eq i32 %t498, 43
  br i1 %t152, label %B491, label %B501
B485:                               	; preds = %B489, %B492
  %t175 = load i32, i32* @i, align 4
  %t176 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t175
  %t530 = load i32, i32* %t176, align 4
  %t177 = icmp eq i32 %t530, 45
  br i1 %t177, label %B528, label %B533
B729:                               	; preds = %B724
  %t329 = load i32, i32* %t721, align 4
  %t330 = load i32, i32* %t720, align 4
  %t331 = sub i32 %t329, %t330
  store i32 %t331, i32* %t722, align 4
  br label %B730
B734:                               	; preds = %B724
  br label %B730
B694:                               	; preds = %B703
  %t297 = load i32, i32* @i, align 4
  %t298 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t297
  %t704 = load i32, i32* %t298, align 4
  %t299 = icmp eq i32 %t704, 42
  br i1 %t299, label %B688, label %B707
B491:                               	; preds = %B490, %B493, %B494, %B495, %B496, %B497
  %t173 = call i32 @find()
  %t174 = icmp eq i32 %t173, 0
  br i1 %t174, label %B522, label %B526
B501:                               	; preds = %B490
  br label %B497
B528:                               	; preds = %B485
  br label %B534
B533:                               	; preds = %B485
  br label %B529
B730:                               	; preds = %B729, %B734
  %t332 = load i32, i32* @i, align 4
  %t333 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t332
  %t737 = load i32, i32* %t333, align 4
  %t334 = icmp eq i32 %t737, 42
  br i1 %t334, label %B735, label %B740
B707:                               	; preds = %B694
  br label %B693
B522:                               	; preds = %B491
  br label %B492
B526:                               	; preds = %B491
  br label %B523
B497:                               	; preds = %B501
  %t153 = load i32, i32* @chat, align 4
  %t154 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t153
  %t502 = load i32, i32* %t154, align 4
  %t155 = icmp eq i32 %t502, 45
  br i1 %t155, label %B491, label %B505
B534:                               	; preds = %B528, %B567
  %t178 = load i32, i32* @chat, align 4
  %t179 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t178
  %t542 = load i32, i32* %t179, align 4
  %t180 = icmp eq i32 %t542, 43
  br i1 %t180, label %B535, label %B545
B529:                               	; preds = %B533, %B536
  %t203 = load i32, i32* @i, align 4
  %t204 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t203
  %t574 = load i32, i32* %t204, align 4
  %t205 = icmp eq i32 %t574, 42
  br i1 %t205, label %B572, label %B577
B735:                               	; preds = %B730
  %t336 = load i32, i32* %t720, align 4
  %t337 = load i32, i32* %t721, align 4
  %t338 = mul i32 %t336, %t337
  store i32 %t338, i32* %t722, align 4
  br label %B736
B740:                               	; preds = %B730
  br label %B736
B693:                               	; preds = %B707
  %t301 = load i32, i32* @i, align 4
  %t302 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t301
  %t708 = load i32, i32* %t302, align 4
  %t303 = icmp eq i32 %t708, 47
  br i1 %t303, label %B688, label %B711
B492:                               	; preds = %B521, %B522
  call void @chapush(i32 43)
  br label %B485
B523:                               	; preds = %B526, %B527
  br label %B490
B505:                               	; preds = %B497
  br label %B496
B535:                               	; preds = %B534, %B537, %B538, %B539, %B540, %B541
  %t201 = call i32 @find()
  %t202 = icmp eq i32 %t201, 0
  br i1 %t202, label %B566, label %B570
B545:                               	; preds = %B534
  br label %B541
B572:                               	; preds = %B529
  br label %B578
B577:                               	; preds = %B529
  br label %B573
B736:                               	; preds = %B735, %B740
  %t339 = load i32, i32* @i, align 4
  %t340 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t339
  %t743 = load i32, i32* %t340, align 4
  %t341 = icmp eq i32 %t743, 47
  br i1 %t341, label %B741, label %B746
B711:                               	; preds = %B693
  br label %B692
B496:                               	; preds = %B505
  %t157 = load i32, i32* @chat, align 4
  %t158 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t157
  %t506 = load i32, i32* %t158, align 4
  %t159 = icmp eq i32 %t506, 42
  br i1 %t159, label %B491, label %B509
B566:                               	; preds = %B535
  br label %B536
B570:                               	; preds = %B535
  br label %B567
B541:                               	; preds = %B545
  %t181 = load i32, i32* @chat, align 4
  %t182 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t181
  %t546 = load i32, i32* %t182, align 4
  %t183 = icmp eq i32 %t546, 45
  br i1 %t183, label %B535, label %B549
B578:                               	; preds = %B572, %B601
  %t206 = load i32, i32* @chat, align 4
  %t207 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t206
  %t584 = load i32, i32* %t207, align 4
  %t208 = icmp eq i32 %t584, 42
  br i1 %t208, label %B579, label %B587
B573:                               	; preds = %B577, %B580
  %t223 = load i32, i32* @i, align 4
  %t224 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t223
  %t608 = load i32, i32* %t224, align 4
  %t225 = icmp eq i32 %t608, 47
  br i1 %t225, label %B606, label %B611
B741:                               	; preds = %B736
  %t343 = load i32, i32* %t721, align 4
  %t344 = load i32, i32* %t720, align 4
  %t345 = sdiv i32 %t343, %t344
  store i32 %t345, i32* %t722, align 4
  br label %B742
B746:                               	; preds = %B736
  br label %B742
B692:                               	; preds = %B711
  %t305 = load i32, i32* @i, align 4
  %t306 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t305
  %t712 = load i32, i32* %t306, align 4
  %t307 = icmp eq i32 %t712, 37
  br i1 %t307, label %B688, label %B715
B509:                               	; preds = %B496
  br label %B495
B536:                               	; preds = %B565, %B566
  call void @chapush(i32 45)
  br label %B529
B567:                               	; preds = %B570, %B571
  br label %B534
B549:                               	; preds = %B541
  br label %B540
B579:                               	; preds = %B578, %B581, %B582, %B583
  %t221 = call i32 @find()
  %t222 = icmp eq i32 %t221, 0
  br i1 %t222, label %B600, label %B604
B587:                               	; preds = %B578
  br label %B583
B606:                               	; preds = %B573
  br label %B612
B611:                               	; preds = %B573
  br label %B607
B742:                               	; preds = %B741, %B746
  %t346 = load i32, i32* @i, align 4
  %t347 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t346
  %t749 = load i32, i32* %t347, align 4
  %t348 = icmp eq i32 %t749, 37
  br i1 %t348, label %B747, label %B752
B715:                               	; preds = %B692
  br label %B691
B495:                               	; preds = %B509
  %t161 = load i32, i32* @chat, align 4
  %t162 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t161
  %t510 = load i32, i32* %t162, align 4
  %t163 = icmp eq i32 %t510, 47
  br i1 %t163, label %B491, label %B513
B540:                               	; preds = %B549
  %t185 = load i32, i32* @chat, align 4
  %t186 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t185
  %t550 = load i32, i32* %t186, align 4
  %t187 = icmp eq i32 %t550, 42
  br i1 %t187, label %B535, label %B553
B600:                               	; preds = %B579
  br label %B580
B604:                               	; preds = %B579
  br label %B601
B583:                               	; preds = %B587
  %t209 = load i32, i32* @chat, align 4
  %t210 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t209
  %t588 = load i32, i32* %t210, align 4
  %t211 = icmp eq i32 %t588, 47
  br i1 %t211, label %B579, label %B591
B612:                               	; preds = %B606, %B635
  %t226 = load i32, i32* @chat, align 4
  %t227 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t226
  %t618 = load i32, i32* %t227, align 4
  %t228 = icmp eq i32 %t618, 42
  br i1 %t228, label %B613, label %B621
B607:                               	; preds = %B611, %B614
  %t243 = load i32, i32* @i, align 4
  %t244 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i32 0, i32 %t243
  %t642 = load i32, i32* %t244, align 4
  %t245 = icmp eq i32 %t642, 37
  br i1 %t245, label %B640, label %B645
B747:                               	; preds = %B742
  %t350 = load i32, i32* %t721, align 4
  %t351 = load i32, i32* %t720, align 4
  %t352 = srem i32 %t350, %t351
  store i32 %t352, i32* %t722, align 4
  br label %B748
B752:                               	; preds = %B742
  br label %B748
B691:                               	; preds = %B715
  %t309 = load i32, i32* @i, align 4
  %t310 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t309
  %t716 = load i32, i32* %t310, align 4
  %t311 = icmp eq i32 %t716, 94
  br i1 %t311, label %B688, label %B719
B513:                               	; preds = %B495
  br label %B494
B553:                               	; preds = %B540
  br label %B539
B580:                               	; preds = %B599, %B600
  call void @chapush(i32 42)
  br label %B573
B601:                               	; preds = %B604, %B605
  br label %B578
B591:                               	; preds = %B583
  br label %B582
B613:                               	; preds = %B612, %B615, %B616, %B617
  %t241 = call i32 @find()
  %t242 = icmp eq i32 %t241, 0
  br i1 %t242, label %B634, label %B638
B621:                               	; preds = %B612
  br label %B617
B640:                               	; preds = %B607
  br label %B646
B645:                               	; preds = %B607
  br label %B641
B748:                               	; preds = %B747, %B752
  %t353 = load i32, i32* @i, align 4
  %t354 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t353
  %t755 = load i32, i32* %t354, align 4
  %t355 = icmp eq i32 %t755, 94
  br i1 %t355, label %B753, label %B758
B719:                               	; preds = %B691
  br label %B689
B494:                               	; preds = %B513
  %t165 = load i32, i32* @chat, align 4
  %t166 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t165
  %t514 = load i32, i32* %t166, align 4
  %t167 = icmp eq i32 %t514, 37
  br i1 %t167, label %B491, label %B517
B539:                               	; preds = %B553
  %t189 = load i32, i32* @chat, align 4
  %t190 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t189
  %t554 = load i32, i32* %t190, align 4
  %t191 = icmp eq i32 %t554, 47
  br i1 %t191, label %B535, label %B557
B582:                               	; preds = %B591
  %t213 = load i32, i32* @chat, align 4
  %t214 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t213
  %t592 = load i32, i32* %t214, align 4
  %t215 = icmp eq i32 %t592, 37
  br i1 %t215, label %B579, label %B595
B634:                               	; preds = %B613
  br label %B614
B638:                               	; preds = %B613
  br label %B635
B617:                               	; preds = %B621
  %t229 = load i32, i32* @chat, align 4
  %t230 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t229
  %t622 = load i32, i32* %t230, align 4
  %t231 = icmp eq i32 %t622, 47
  br i1 %t231, label %B613, label %B625
B646:                               	; preds = %B640, %B669
  %t246 = load i32, i32* @chat, align 4
  %t247 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t246
  %t652 = load i32, i32* %t247, align 4
  %t248 = icmp eq i32 %t652, 42
  br i1 %t248, label %B647, label %B655
B641:                               	; preds = %B645, %B648
  %t263 = load i32, i32* @ii, align 4
  %t264 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t263
  store i32 32, i32* %t264, align 4
  %t266 = load i32, i32* @ii, align 4
  %t267 = add i32 %t266, 1
  store i32 %t267, i32* @ii, align 4
  br label %B454
B753:                               	; preds = %B748
  %t357 = load i32, i32* %t721, align 4
  %t358 = load i32, i32* %t720, align 4
  %t359 = call i32 @power(i32 %t357, i32 %t358)
  store i32 %t359, i32* %t722, align 4
  br label %B754
B758:                               	; preds = %B748
  br label %B754
B689:                               	; preds = %B719
  %t361 = load i32, i32* @i, align 4
  %t362 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t361
  %t761 = load i32, i32* %t362, align 4
  %t363 = icmp ne i32 %t761, 32
  br i1 %t363, label %B759, label %B764
B517:                               	; preds = %B494
  br label %B493
B557:                               	; preds = %B539
  br label %B538
B595:                               	; preds = %B582
  br label %B581
B614:                               	; preds = %B633, %B634
  call void @chapush(i32 47)
  br label %B607
B635:                               	; preds = %B638, %B639
  br label %B612
B625:                               	; preds = %B617
  br label %B616
B647:                               	; preds = %B646, %B649, %B650, %B651
  %t261 = call i32 @find()
  %t262 = icmp eq i32 %t261, 0
  br i1 %t262, label %B668, label %B672
B655:                               	; preds = %B646
  br label %B651
B754:                               	; preds = %B753, %B758
  %t360 = load i32, i32* %t722, align 4
  call void @intpush(i32 %t360)
  br label %B690
B759:                               	; preds = %B689
  %t364 = load i32, i32* @i, align 4
  %t365 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t364
  %t765 = load i32, i32* %t365, align 4
  %t366 = sub i32 %t765, 48
  call void @intpush(i32 %t366)
  store i32 1, i32* @ii, align 4
  br label %B766
B764:                               	; preds = %B689
  br label %B760
B493:                               	; preds = %B517
  %t169 = load i32, i32* @chat, align 4
  %t170 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t169
  %t518 = load i32, i32* %t170, align 4
  %t171 = icmp eq i32 %t518, 94
  br i1 %t171, label %B491, label %B521
B538:                               	; preds = %B557
  %t193 = load i32, i32* @chat, align 4
  %t194 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t193
  %t558 = load i32, i32* %t194, align 4
  %t195 = icmp eq i32 %t558, 37
  br i1 %t195, label %B535, label %B561
B581:                               	; preds = %B595
  %t217 = load i32, i32* @chat, align 4
  %t218 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t217
  %t596 = load i32, i32* %t218, align 4
  %t219 = icmp eq i32 %t596, 94
  br i1 %t219, label %B579, label %B599
B616:                               	; preds = %B625
  %t233 = load i32, i32* @chat, align 4
  %t234 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t233
  %t626 = load i32, i32* %t234, align 4
  %t235 = icmp eq i32 %t626, 37
  br i1 %t235, label %B613, label %B629
B668:                               	; preds = %B647
  br label %B648
B672:                               	; preds = %B647
  br label %B669
B651:                               	; preds = %B655
  %t249 = load i32, i32* @chat, align 4
  %t250 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t249
  %t656 = load i32, i32* %t250, align 4
  %t251 = icmp eq i32 %t656, 47
  br i1 %t251, label %B647, label %B659
B690:                               	; preds = %B754, %B760
  %t387 = load i32, i32* @i, align 4
  %t388 = add i32 %t387, 1
  store i32 %t388, i32* @i, align 4
  br label %B681
B766:                               	; preds = %B759, %B767
  %t368 = load i32, i32* @i, align 4
  %t369 = load i32, i32* @ii, align 4
  %t370 = add i32 %t368, %t369
  %t371 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t370
  %t769 = load i32, i32* %t371, align 4
  %t372 = icmp ne i32 %t769, 32
  br i1 %t372, label %B767, label %B772
B760:                               	; preds = %B764, %B768
  br label %B690
B521:                               	; preds = %B493
  br label %B492
B561:                               	; preds = %B538
  br label %B537
B599:                               	; preds = %B581
  br label %B580
B629:                               	; preds = %B616
  br label %B615
B648:                               	; preds = %B667, %B668
  call void @chapush(i32 37)
  br label %B641
B669:                               	; preds = %B672, %B673
  br label %B646
B659:                               	; preds = %B651
  br label %B650
B767:                               	; preds = %B766
  %t373 = load i32, i32* @i, align 4
  %t374 = load i32, i32* @ii, align 4
  %t375 = add i32 %t373, %t374
  %t376 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %t375
  %t773 = load i32, i32* %t376, align 4
  %t377 = sub i32 %t773, 48
  call void @intadd(i32 %t377)
  %t379 = load i32, i32* @ii, align 4
  %t380 = add i32 %t379, 1
  store i32 %t380, i32* @ii, align 4
  br label %B766
B772:                               	; preds = %B766
  br label %B768
B537:                               	; preds = %B561
  %t197 = load i32, i32* @chat, align 4
  %t198 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t197
  %t562 = load i32, i32* %t198, align 4
  %t199 = icmp eq i32 %t562, 94
  br i1 %t199, label %B535, label %B565
B615:                               	; preds = %B629
  %t237 = load i32, i32* @chat, align 4
  %t238 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t237
  %t630 = load i32, i32* %t238, align 4
  %t239 = icmp eq i32 %t630, 94
  br i1 %t239, label %B613, label %B633
B650:                               	; preds = %B659
  %t253 = load i32, i32* @chat, align 4
  %t254 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t253
  %t660 = load i32, i32* %t254, align 4
  %t255 = icmp eq i32 %t660, 37
  br i1 %t255, label %B647, label %B663
B768:                               	; preds = %B772
  %t382 = load i32, i32* @i, align 4
  %t383 = load i32, i32* @ii, align 4
  %t384 = add i32 %t382, %t383
  %t385 = sub i32 %t384, 1
  store i32 %t385, i32* @i, align 4
  br label %B760
B565:                               	; preds = %B537
  br label %B536
B633:                               	; preds = %B615
  br label %B614
B663:                               	; preds = %B650
  br label %B649
B649:                               	; preds = %B663
  %t257 = load i32, i32* @chat, align 4
  %t258 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %t257
  %t664 = load i32, i32* %t258, align 4
  %t259 = icmp eq i32 %t664, 94
  br i1 %t259, label %B647, label %B667
B667:                               	; preds = %B649
  br label %B648
}
declare i32 @getch()
declare void @putint(i32)
