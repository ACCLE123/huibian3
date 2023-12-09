@n = global i32 0, align 4
define i32 @bubblesort(i32* %t1) {
B531:
  %t556 = alloca i32, align 4
  %t534 = alloca i32, align 4
  %t533 = alloca i32, align 4
  %t532 = alloca i32*, align 4
  store i32* %t1, i32** %t532, align 4
  store i32 0, i32* %t533, align 4
  br label %B535
B535:                               	; preds = %B531, %B543
  %t6 = load i32, i32* %t533, align 4
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t9 = icmp slt i32 %t6, %t8
  br i1 %t9, label %B536, label %B540
B536:                               	; preds = %B535
  store i32 0, i32* %t534, align 4
  br label %B541
B540:                               	; preds = %B535
  br label %B537
B541:                               	; preds = %B536, %B548
  %t11 = load i32, i32* %t534, align 4
  %t12 = load i32, i32* @n, align 4
  %t13 = load i32, i32* %t533, align 4
  %t14 = sub i32 %t12, %t13
  %t15 = sub i32 %t14, 1
  %t16 = icmp slt i32 %t11, %t15
  br i1 %t16, label %B542, label %B546
B537:                               	; preds = %B540
  ret i32 0
B542:                               	; preds = %B541
  %t549 = load i32*, i32** %t532, align 4
  %t17 = load i32, i32* %t534, align 4
  %t18 = getelementptr inbounds i32, i32* %t549, i32 %t17
  %t550 = load i32, i32* %t18, align 4
  %t551 = load i32*, i32** %t532, align 4
  %t19 = load i32, i32* %t534, align 4
  %t20 = add i32 %t19, 1
  %t21 = getelementptr inbounds i32, i32* %t551, i32 %t20
  %t552 = load i32, i32* %t21, align 4
  %t22 = icmp sgt i32 %t550, %t552
  br i1 %t22, label %B547, label %B555
B546:                               	; preds = %B541
  br label %B543
B547:                               	; preds = %B542
  %t557 = load i32*, i32** %t532, align 4
  %t25 = load i32, i32* %t534, align 4
  %t26 = add i32 %t25, 1
  %t27 = getelementptr inbounds i32, i32* %t557, i32 %t26
  %t558 = load i32, i32* %t27, align 4
  store i32 %t558, i32* %t556, align 4
  %t559 = load i32*, i32** %t532, align 4
  %t31 = load i32, i32* %t534, align 4
  %t32 = getelementptr inbounds i32, i32* %t559, i32 %t31
  %t560 = load i32, i32* %t32, align 4
  %t561 = load i32*, i32** %t532, align 4
  %t28 = load i32, i32* %t534, align 4
  %t29 = add i32 %t28, 1
  %t30 = getelementptr inbounds i32, i32* %t561, i32 %t29
  store i32 %t560, i32* %t30, align 4
  %t35 = load i32, i32* %t556, align 4
  %t562 = load i32*, i32** %t532, align 4
  %t33 = load i32, i32* %t534, align 4
  %t34 = getelementptr inbounds i32, i32* %t562, i32 %t33
  store i32 %t35, i32* %t34, align 4
  br label %B548
B555:                               	; preds = %B542
  br label %B548
B543:                               	; preds = %B546
  %t40 = load i32, i32* %t533, align 4
  %t41 = add i32 %t40, 1
  store i32 %t41, i32* %t533, align 4
  br label %B535
B548:                               	; preds = %B547, %B555
  %t37 = load i32, i32* %t534, align 4
  %t38 = add i32 %t37, 1
  store i32 %t38, i32* %t534, align 4
  br label %B541
}
define i32 @insertsort(i32* %t42) {
B563:
  %t575 = alloca i32, align 4
  %t572 = alloca i32, align 4
  %t565 = alloca i32, align 4
  %t564 = alloca i32*, align 4
  store i32* %t42, i32** %t564, align 4
  store i32 1, i32* %t565, align 4
  br label %B566
B566:                               	; preds = %B563, %B578
  %t46 = load i32, i32* %t565, align 4
  %t47 = load i32, i32* @n, align 4
  %t48 = icmp slt i32 %t46, %t47
  br i1 %t48, label %B567, label %B571
B567:                               	; preds = %B566
  %t573 = load i32*, i32** %t564, align 4
  %t51 = load i32, i32* %t565, align 4
  %t52 = getelementptr inbounds i32, i32* %t573, i32 %t51
  %t574 = load i32, i32* %t52, align 4
  store i32 %t574, i32* %t572, align 4
  %t55 = load i32, i32* %t565, align 4
  %t56 = sub i32 %t55, 1
  store i32 %t56, i32* %t575, align 4
  br label %B576
B571:                               	; preds = %B566
  br label %B568
B576:                               	; preds = %B567, %B577
  %t57 = load i32, i32* %t575, align 4
  %t58 = sub i32 0, 1
  %t59 = icmp sgt i32 %t57, %t58
  br i1 %t59, label %B579, label %B582
B568:                               	; preds = %B571
  ret i32 0
B579:                               	; preds = %B576
  %t60 = load i32, i32* %t572, align 4
  %t583 = load i32*, i32** %t564, align 4
  %t61 = load i32, i32* %t575, align 4
  %t62 = getelementptr inbounds i32, i32* %t583, i32 %t61
  %t584 = load i32, i32* %t62, align 4
  %t63 = icmp slt i32 %t60, %t584
  br i1 %t63, label %B577, label %B587
B582:                               	; preds = %B576
  br label %B578
B577:                               	; preds = %B579
  %t588 = load i32*, i32** %t564, align 4
  %t68 = load i32, i32* %t575, align 4
  %t69 = getelementptr inbounds i32, i32* %t588, i32 %t68
  %t589 = load i32, i32* %t69, align 4
  %t590 = load i32*, i32** %t564, align 4
  %t65 = load i32, i32* %t575, align 4
  %t66 = add i32 %t65, 1
  %t67 = getelementptr inbounds i32, i32* %t590, i32 %t66
  store i32 %t589, i32* %t67, align 4
  %t71 = load i32, i32* %t575, align 4
  %t72 = sub i32 %t71, 1
  store i32 %t72, i32* %t575, align 4
  br label %B576
B587:                               	; preds = %B579
  br label %B578
B578:                               	; preds = %B582, %B587
  %t76 = load i32, i32* %t572, align 4
  %t591 = load i32*, i32** %t564, align 4
  %t73 = load i32, i32* %t575, align 4
  %t74 = add i32 %t73, 1
  %t75 = getelementptr inbounds i32, i32* %t591, i32 %t74
  store i32 %t76, i32* %t75, align 4
  %t78 = load i32, i32* %t565, align 4
  %t79 = add i32 %t78, 1
  store i32 %t79, i32* %t565, align 4
  br label %B566
}
define i32 @QuickSort(i32* %t80, i32 %t82, i32 %t84) {
B592:
  %t653 = alloca i32, align 4
  %t603 = alloca i32, align 4
  %t602 = alloca i32, align 4
  %t601 = alloca i32, align 4
  %t595 = alloca i32, align 4
  %t594 = alloca i32, align 4
  %t593 = alloca i32*, align 4
  store i32* %t80, i32** %t593, align 4
  store i32 %t82, i32* %t594, align 4
  store i32 %t84, i32* %t595, align 4
  %t86 = load i32, i32* %t594, align 4
  %t87 = load i32, i32* %t595, align 4
  %t88 = icmp slt i32 %t86, %t87
  br i1 %t88, label %B596, label %B600
B596:                               	; preds = %B592
  %t91 = load i32, i32* %t594, align 4
  store i32 %t91, i32* %t601, align 4
  %t94 = load i32, i32* %t595, align 4
  store i32 %t94, i32* %t602, align 4
  %t604 = load i32*, i32** %t593, align 4
  %t97 = load i32, i32* %t594, align 4
  %t98 = getelementptr inbounds i32, i32* %t604, i32 %t97
  %t605 = load i32, i32* %t98, align 4
  store i32 %t605, i32* %t603, align 4
  br label %B606
B600:                               	; preds = %B592
  br label %B597
B606:                               	; preds = %B596, %B645
  %t99 = load i32, i32* %t601, align 4
  %t100 = load i32, i32* %t602, align 4
  %t101 = icmp slt i32 %t99, %t100
  br i1 %t101, label %B607, label %B611
B597:                               	; preds = %B600, %B608
  ret i32 0
B607:                               	; preds = %B606
  br label %B612
B611:                               	; preds = %B606
  br label %B608
B612:                               	; preds = %B607, %B613
  %t102 = load i32, i32* %t601, align 4
  %t103 = load i32, i32* %t602, align 4
  %t104 = icmp slt i32 %t102, %t103
  br i1 %t104, label %B615, label %B618
B608:                               	; preds = %B611
  %t147 = load i32, i32* %t603, align 4
  %t652 = load i32*, i32** %t593, align 4
  %t145 = load i32, i32* %t601, align 4
  %t146 = getelementptr inbounds i32, i32* %t652, i32 %t145
  store i32 %t147, i32* %t146, align 4
  %t150 = load i32, i32* %t601, align 4
  %t151 = sub i32 %t150, 1
  store i32 %t151, i32* %t653, align 4
  %t654 = load i32*, i32** %t593, align 4
  %t154 = load i32, i32* %t594, align 4
  %t155 = load i32, i32* %t653, align 4
  %t156 = call i32 @QuickSort(i32* %t654, i32 %t154, i32 %t155)
  store i32 %t156, i32* %t653, align 4
  %t158 = load i32, i32* %t601, align 4
  %t159 = add i32 %t158, 1
  store i32 %t159, i32* %t653, align 4
  %t655 = load i32*, i32** %t593, align 4
  %t162 = load i32, i32* %t653, align 4
  %t163 = load i32, i32* %t595, align 4
  %t164 = call i32 @QuickSort(i32* %t655, i32 %t162, i32 %t163)
  store i32 %t164, i32* %t653, align 4
  br label %B597
B615:                               	; preds = %B612
  %t619 = load i32*, i32** %t593, align 4
  %t105 = load i32, i32* %t602, align 4
  %t106 = getelementptr inbounds i32, i32* %t619, i32 %t105
  %t620 = load i32, i32* %t106, align 4
  %t107 = load i32, i32* %t603, align 4
  %t108 = sub i32 %t107, 1
  %t109 = icmp sgt i32 %t620, %t108
  br i1 %t109, label %B613, label %B623
B618:                               	; preds = %B612
  br label %B614
B613:                               	; preds = %B615
  %t112 = load i32, i32* %t602, align 4
  %t113 = sub i32 %t112, 1
  store i32 %t113, i32* %t602, align 4
  br label %B612
B623:                               	; preds = %B615
  br label %B614
B614:                               	; preds = %B618, %B623
  %t114 = load i32, i32* %t601, align 4
  %t115 = load i32, i32* %t602, align 4
  %t116 = icmp slt i32 %t114, %t115
  br i1 %t116, label %B624, label %B628
B624:                               	; preds = %B614
  %t629 = load i32*, i32** %t593, align 4
  %t119 = load i32, i32* %t602, align 4
  %t120 = getelementptr inbounds i32, i32* %t629, i32 %t119
  %t630 = load i32, i32* %t120, align 4
  %t631 = load i32*, i32** %t593, align 4
  %t117 = load i32, i32* %t601, align 4
  %t118 = getelementptr inbounds i32, i32* %t631, i32 %t117
  store i32 %t630, i32* %t118, align 4
  %t122 = load i32, i32* %t601, align 4
  %t123 = add i32 %t122, 1
  store i32 %t123, i32* %t601, align 4
  br label %B625
B628:                               	; preds = %B614
  br label %B625
B625:                               	; preds = %B624, %B628
  br label %B632
B632:                               	; preds = %B625, %B633
  %t124 = load i32, i32* %t601, align 4
  %t125 = load i32, i32* %t602, align 4
  %t126 = icmp slt i32 %t124, %t125
  br i1 %t126, label %B635, label %B638
B635:                               	; preds = %B632
  %t639 = load i32*, i32** %t593, align 4
  %t127 = load i32, i32* %t601, align 4
  %t128 = getelementptr inbounds i32, i32* %t639, i32 %t127
  %t640 = load i32, i32* %t128, align 4
  %t129 = load i32, i32* %t603, align 4
  %t130 = icmp slt i32 %t640, %t129
  br i1 %t130, label %B633, label %B643
B638:                               	; preds = %B632
  br label %B634
B633:                               	; preds = %B635
  %t133 = load i32, i32* %t601, align 4
  %t134 = add i32 %t133, 1
  store i32 %t134, i32* %t601, align 4
  br label %B632
B643:                               	; preds = %B635
  br label %B634
B634:                               	; preds = %B638, %B643
  %t135 = load i32, i32* %t601, align 4
  %t136 = load i32, i32* %t602, align 4
  %t137 = icmp slt i32 %t135, %t136
  br i1 %t137, label %B644, label %B648
B644:                               	; preds = %B634
  %t649 = load i32*, i32** %t593, align 4
  %t140 = load i32, i32* %t601, align 4
  %t141 = getelementptr inbounds i32, i32* %t649, i32 %t140
  %t650 = load i32, i32* %t141, align 4
  %t651 = load i32*, i32** %t593, align 4
  %t138 = load i32, i32* %t602, align 4
  %t139 = getelementptr inbounds i32, i32* %t651, i32 %t138
  store i32 %t650, i32* %t139, align 4
  %t143 = load i32, i32* %t602, align 4
  %t144 = sub i32 %t143, 1
  store i32 %t144, i32* %t602, align 4
  br label %B645
B648:                               	; preds = %B634
  br label %B645
B645:                               	; preds = %B644, %B648
  br label %B606
}
define i32 @getMid(i32* %t165) {
B656:
  %t658 = alloca i32, align 4
  %t657 = alloca i32*, align 4
  store i32* %t165, i32** %t657, align 4
  %t168 = load i32, i32* @n, align 4
  %t169 = srem i32 %t168, 2
  %t170 = icmp eq i32 %t169, 0
  br i1 %t170, label %B659, label %B664
B659:                               	; preds = %B656
  %t172 = load i32, i32* @n, align 4
  %t173 = sdiv i32 %t172, 2
  store i32 %t173, i32* %t658, align 4
  %t665 = load i32*, i32** %t657, align 4
  %t174 = load i32, i32* %t658, align 4
  %t175 = getelementptr inbounds i32, i32* %t665, i32 %t174
  %t666 = load i32, i32* %t175, align 4
  %t667 = load i32*, i32** %t657, align 4
  %t176 = load i32, i32* %t658, align 4
  %t177 = sub i32 %t176, 1
  %t178 = getelementptr inbounds i32, i32* %t667, i32 %t177
  %t668 = load i32, i32* %t178, align 4
  %t179 = add i32 %t666, %t668
  %t180 = sdiv i32 %t179, 2
  ret i32 %t180
  br label %B661
B664:                               	; preds = %B656
  br label %B660
B661:                               	; preds = %B659, %B660
  ret i32 0
B660:                               	; preds = %B664
  %t182 = load i32, i32* @n, align 4
  %t183 = sdiv i32 %t182, 2
  store i32 %t183, i32* %t658, align 4
  %t669 = load i32*, i32** %t657, align 4
  %t184 = load i32, i32* %t658, align 4
  %t185 = getelementptr inbounds i32, i32* %t669, i32 %t184
  %t670 = load i32, i32* %t185, align 4
  ret i32 %t670
  br label %B661
}
define i32 @getMost(i32* %t186) {
B671:
  %t689 = alloca i32, align 4
  %t682 = alloca i32, align 4
  %t681 = alloca i32, align 4
  %t674 = alloca i32, align 4
  %t673 = alloca [1000 x i32], align 4
  %t672 = alloca i32*, align 4
  store i32* %t186, i32** %t672, align 4
  store i32 0, i32* %t674, align 4
  br label %B675
B675:                               	; preds = %B671, %B676
  %t191 = load i32, i32* %t674, align 4
  %t192 = icmp slt i32 %t191, 1000
  br i1 %t192, label %B676, label %B680
B676:                               	; preds = %B675
  %t193 = load i32, i32* %t674, align 4
  %t194 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t673, i32 0, i32 %t193
  store i32 0, i32* %t194, align 4
  %t196 = load i32, i32* %t674, align 4
  %t197 = add i32 %t196, 1
  store i32 %t197, i32* %t674, align 4
  br label %B675
B680:                               	; preds = %B675
  br label %B677
B677:                               	; preds = %B680
  store i32 0, i32* %t674, align 4
  store i32 0, i32* %t681, align 4
  br label %B683
B683:                               	; preds = %B677, %B694
  %t202 = load i32, i32* %t674, align 4
  %t203 = load i32, i32* @n, align 4
  %t204 = icmp slt i32 %t202, %t203
  br i1 %t204, label %B684, label %B688
B684:                               	; preds = %B683
  %t690 = load i32*, i32** %t672, align 4
  %t207 = load i32, i32* %t674, align 4
  %t208 = getelementptr inbounds i32, i32* %t690, i32 %t207
  %t691 = load i32, i32* %t208, align 4
  store i32 %t691, i32* %t689, align 4
  %t211 = load i32, i32* %t689, align 4
  %t212 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t673, i32 0, i32 %t211
  %t692 = load i32, i32* %t212, align 4
  %t213 = add i32 %t692, 1
  %t209 = load i32, i32* %t689, align 4
  %t210 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t673, i32 0, i32 %t209
  store i32 %t213, i32* %t210, align 4
  %t214 = load i32, i32* %t689, align 4
  %t215 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t673, i32 0, i32 %t214
  %t695 = load i32, i32* %t215, align 4
  %t216 = load i32, i32* %t681, align 4
  %t217 = icmp sgt i32 %t695, %t216
  br i1 %t217, label %B693, label %B698
B688:                               	; preds = %B683
  br label %B685
B693:                               	; preds = %B684
  %t219 = load i32, i32* %t689, align 4
  %t220 = getelementptr inbounds [1000 x i32], [1000 x i32]* %t673, i32 0, i32 %t219
  %t699 = load i32, i32* %t220, align 4
  store i32 %t699, i32* %t681, align 4
  %t222 = load i32, i32* %t689, align 4
  store i32 %t222, i32* %t682, align 4
  br label %B694
B698:                               	; preds = %B684
  br label %B694
B685:                               	; preds = %B688
  %t226 = load i32, i32* %t682, align 4
  ret i32 %t226
B694:                               	; preds = %B693, %B698
  %t224 = load i32, i32* %t674, align 4
  %t225 = add i32 %t224, 1
  store i32 %t225, i32* %t674, align 4
  br label %B683
}
define i32 @revert(i32* %t227) {
B700:
  %t704 = alloca i32, align 4
  %t703 = alloca i32, align 4
  %t702 = alloca i32, align 4
  %t701 = alloca i32*, align 4
  store i32* %t227, i32** %t701, align 4
  store i32 0, i32* %t703, align 4
  store i32 0, i32* %t704, align 4
  br label %B705
B705:                               	; preds = %B700, %B706
  %t234 = load i32, i32* %t703, align 4
  %t235 = load i32, i32* %t704, align 4
  %t236 = icmp slt i32 %t234, %t235
  br i1 %t236, label %B706, label %B710
B706:                               	; preds = %B705
  %t711 = load i32*, i32** %t701, align 4
  %t238 = load i32, i32* %t703, align 4
  %t239 = getelementptr inbounds i32, i32* %t711, i32 %t238
  %t712 = load i32, i32* %t239, align 4
  store i32 %t712, i32* %t702, align 4
  %t713 = load i32*, i32** %t701, align 4
  %t242 = load i32, i32* %t704, align 4
  %t243 = getelementptr inbounds i32, i32* %t713, i32 %t242
  %t714 = load i32, i32* %t243, align 4
  %t715 = load i32*, i32** %t701, align 4
  %t240 = load i32, i32* %t703, align 4
  %t241 = getelementptr inbounds i32, i32* %t715, i32 %t240
  store i32 %t714, i32* %t241, align 4
  %t246 = load i32, i32* %t702, align 4
  %t716 = load i32*, i32** %t701, align 4
  %t244 = load i32, i32* %t704, align 4
  %t245 = getelementptr inbounds i32, i32* %t716, i32 %t244
  store i32 %t246, i32* %t245, align 4
  %t248 = load i32, i32* %t703, align 4
  %t249 = add i32 %t248, 1
  store i32 %t249, i32* %t703, align 4
  %t251 = load i32, i32* %t704, align 4
  %t252 = sub i32 %t251, 1
  store i32 %t252, i32* %t704, align 4
  br label %B705
B710:                               	; preds = %B705
  br label %B707
B707:                               	; preds = %B710
  ret i32 0
}
define i32 @arrCopy(i32* %t253, i32* %t255) {
B717:
  %t720 = alloca i32, align 4
  %t719 = alloca i32*, align 4
  %t718 = alloca i32*, align 4
  store i32* %t253, i32** %t718, align 4
  store i32* %t255, i32** %t719, align 4
  store i32 0, i32* %t720, align 4
  br label %B721
B721:                               	; preds = %B717, %B722
  %t259 = load i32, i32* %t720, align 4
  %t260 = load i32, i32* @n, align 4
  %t261 = icmp slt i32 %t259, %t260
  br i1 %t261, label %B722, label %B726
B722:                               	; preds = %B721
  %t727 = load i32*, i32** %t718, align 4
  %t264 = load i32, i32* %t720, align 4
  %t265 = getelementptr inbounds i32, i32* %t727, i32 %t264
  %t728 = load i32, i32* %t265, align 4
  %t729 = load i32*, i32** %t719, align 4
  %t262 = load i32, i32* %t720, align 4
  %t263 = getelementptr inbounds i32, i32* %t729, i32 %t262
  store i32 %t728, i32* %t263, align 4
  %t267 = load i32, i32* %t720, align 4
  %t268 = add i32 %t267, 1
  store i32 %t268, i32* %t720, align 4
  br label %B721
B726:                               	; preds = %B721
  br label %B723
B723:                               	; preds = %B726
  ret i32 0
}
define i32 @calSum(i32* %t269, i32 %t271) {
B730:
  %t734 = alloca i32, align 4
  %t733 = alloca i32, align 4
  %t732 = alloca i32, align 4
  %t731 = alloca i32*, align 4
  store i32* %t269, i32** %t731, align 4
  store i32 %t271, i32* %t732, align 4
  store i32 0, i32* %t733, align 4
  store i32 0, i32* %t734, align 4
  br label %B735
B735:                               	; preds = %B730, %B745
  %t277 = load i32, i32* %t734, align 4
  %t278 = load i32, i32* @n, align 4
  %t279 = icmp slt i32 %t277, %t278
  br i1 %t279, label %B736, label %B740
B736:                               	; preds = %B735
  %t281 = load i32, i32* %t733, align 4
  %t741 = load i32*, i32** %t731, align 4
  %t282 = load i32, i32* %t734, align 4
  %t283 = getelementptr inbounds i32, i32* %t741, i32 %t282
  %t742 = load i32, i32* %t283, align 4
  %t284 = add i32 %t281, %t742
  store i32 %t284, i32* %t733, align 4
  %t285 = load i32, i32* %t734, align 4
  %t286 = load i32, i32* %t732, align 4
  %t287 = srem i32 %t285, %t286
  %t288 = load i32, i32* %t732, align 4
  %t289 = sub i32 %t288, 1
  %t290 = icmp ne i32 %t287, %t289
  br i1 %t290, label %B743, label %B748
B740:                               	; preds = %B735
  br label %B737
B743:                               	; preds = %B736
  %t749 = load i32*, i32** %t731, align 4
  %t291 = load i32, i32* %t734, align 4
  %t292 = getelementptr inbounds i32, i32* %t749, i32 %t291
  store i32 0, i32* %t292, align 4
  br label %B745
B748:                               	; preds = %B736
  br label %B744
B737:                               	; preds = %B740
  ret i32 0
B745:                               	; preds = %B743, %B744
  %t298 = load i32, i32* %t734, align 4
  %t299 = add i32 %t298, 1
  store i32 %t299, i32* %t734, align 4
  br label %B735
B744:                               	; preds = %B748
  %t295 = load i32, i32* %t733, align 4
  %t750 = load i32*, i32** %t731, align 4
  %t293 = load i32, i32* %t734, align 4
  %t294 = getelementptr inbounds i32, i32* %t750, i32 %t293
  store i32 %t295, i32* %t294, align 4
  store i32 0, i32* %t733, align 4
  br label %B745
}
define i32 @avgPooling(i32* %t300, i32 %t302) {
B751:
  %t756 = alloca i32, align 4
  %t755 = alloca i32, align 4
  %t754 = alloca i32, align 4
  %t753 = alloca i32, align 4
  %t752 = alloca i32*, align 4
  store i32* %t300, i32** %t752, align 4
  store i32 %t302, i32* %t753, align 4
  store i32 0, i32* %t755, align 4
  store i32 0, i32* %t754, align 4
  br label %B757
B757:                               	; preds = %B751, %B765
  %t309 = load i32, i32* %t755, align 4
  %t310 = load i32, i32* @n, align 4
  %t311 = icmp slt i32 %t309, %t310
  br i1 %t311, label %B758, label %B762
B758:                               	; preds = %B757
  %t312 = load i32, i32* %t755, align 4
  %t313 = load i32, i32* %t753, align 4
  %t314 = sub i32 %t313, 1
  %t315 = icmp slt i32 %t312, %t314
  br i1 %t315, label %B763, label %B768
B762:                               	; preds = %B757
  br label %B759
B763:                               	; preds = %B758
  %t317 = load i32, i32* %t754, align 4
  %t769 = load i32*, i32** %t752, align 4
  %t318 = load i32, i32* %t755, align 4
  %t319 = getelementptr inbounds i32, i32* %t769, i32 %t318
  %t770 = load i32, i32* %t319, align 4
  %t320 = add i32 %t317, %t770
  store i32 %t320, i32* %t754, align 4
  br label %B765
B768:                               	; preds = %B758
  br label %B764
B759:                               	; preds = %B762
  %t356 = load i32, i32* @n, align 4
  %t357 = load i32, i32* %t753, align 4
  %t358 = sub i32 %t356, %t357
  %t359 = add i32 %t358, 1
  store i32 %t359, i32* %t755, align 4
  br label %B785
B765:                               	; preds = %B763, %B773
  %t353 = load i32, i32* %t755, align 4
  %t354 = add i32 %t353, 1
  store i32 %t354, i32* %t755, align 4
  br label %B757
B764:                               	; preds = %B768
  %t321 = load i32, i32* %t755, align 4
  %t322 = load i32, i32* %t753, align 4
  %t323 = sub i32 %t322, 1
  %t324 = icmp eq i32 %t321, %t323
  br i1 %t324, label %B771, label %B776
B785:                               	; preds = %B759, %B786
  %t360 = load i32, i32* %t755, align 4
  %t361 = load i32, i32* @n, align 4
  %t362 = icmp slt i32 %t360, %t361
  br i1 %t362, label %B786, label %B790
B771:                               	; preds = %B764
  %t777 = load i32*, i32** %t752, align 4
  %t326 = getelementptr inbounds i32, i32* %t777, i32 0
  %t778 = load i32, i32* %t326, align 4
  store i32 %t778, i32* %t756, align 4
  %t328 = load i32, i32* %t754, align 4
  %t329 = load i32, i32* %t753, align 4
  %t330 = sdiv i32 %t328, %t329
  %t779 = load i32*, i32** %t752, align 4
  %t327 = getelementptr inbounds i32, i32* %t779, i32 0
  store i32 %t330, i32* %t327, align 4
  br label %B773
B776:                               	; preds = %B764
  br label %B772
B786:                               	; preds = %B785
  %t791 = load i32*, i32** %t752, align 4
  %t363 = load i32, i32* %t755, align 4
  %t364 = getelementptr inbounds i32, i32* %t791, i32 %t363
  store i32 0, i32* %t364, align 4
  %t366 = load i32, i32* %t755, align 4
  %t367 = add i32 %t366, 1
  store i32 %t367, i32* %t755, align 4
  br label %B785
B790:                               	; preds = %B785
  br label %B787
B773:                               	; preds = %B771, %B772
  br label %B765
B772:                               	; preds = %B776
  %t332 = load i32, i32* %t754, align 4
  %t780 = load i32*, i32** %t752, align 4
  %t333 = load i32, i32* %t755, align 4
  %t334 = getelementptr inbounds i32, i32* %t780, i32 %t333
  %t781 = load i32, i32* %t334, align 4
  %t335 = add i32 %t332, %t781
  %t336 = load i32, i32* %t756, align 4
  %t337 = sub i32 %t335, %t336
  store i32 %t337, i32* %t754, align 4
  %t782 = load i32*, i32** %t752, align 4
  %t339 = load i32, i32* %t755, align 4
  %t340 = load i32, i32* %t753, align 4
  %t341 = sub i32 %t339, %t340
  %t342 = add i32 %t341, 1
  %t343 = getelementptr inbounds i32, i32* %t782, i32 %t342
  %t783 = load i32, i32* %t343, align 4
  store i32 %t783, i32* %t756, align 4
  %t349 = load i32, i32* %t754, align 4
  %t350 = load i32, i32* %t753, align 4
  %t351 = sdiv i32 %t349, %t350
  %t784 = load i32*, i32** %t752, align 4
  %t344 = load i32, i32* %t755, align 4
  %t345 = load i32, i32* %t753, align 4
  %t346 = sub i32 %t344, %t345
  %t347 = add i32 %t346, 1
  %t348 = getelementptr inbounds i32, i32* %t784, i32 %t347
  store i32 %t351, i32* %t348, align 4
  br label %B773
B787:                               	; preds = %B790
  ret i32 0
}
define i32 @main() {
B792:
  %t796 = alloca i32, align 4
  %t795 = alloca i32, align 4
  %t794 = alloca [32 x i32], align 4
  %t793 = alloca [32 x i32], align 4
  store i32 32, i32* @n, align 4
  %t371 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  store i32 7, i32* %t371, align 4
  %t372 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 1
  store i32 23, i32* %t372, align 4
  %t373 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 2
  store i32 89, i32* %t373, align 4
  %t374 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 3
  store i32 26, i32* %t374, align 4
  %t375 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 4
  store i32 282, i32* %t375, align 4
  %t376 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 5
  store i32 254, i32* %t376, align 4
  %t377 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 6
  store i32 27, i32* %t377, align 4
  %t378 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 7
  store i32 5, i32* %t378, align 4
  %t379 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 8
  store i32 83, i32* %t379, align 4
  %t380 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 9
  store i32 273, i32* %t380, align 4
  %t381 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 10
  store i32 574, i32* %t381, align 4
  %t382 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 11
  store i32 905, i32* %t382, align 4
  %t383 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 12
  store i32 354, i32* %t383, align 4
  %t384 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 13
  store i32 657, i32* %t384, align 4
  %t385 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 14
  store i32 935, i32* %t385, align 4
  %t386 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 15
  store i32 264, i32* %t386, align 4
  %t387 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 16
  store i32 639, i32* %t387, align 4
  %t388 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 17
  store i32 459, i32* %t388, align 4
  %t389 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 18
  store i32 29, i32* %t389, align 4
  %t390 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 19
  store i32 68, i32* %t390, align 4
  %t391 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 20
  store i32 929, i32* %t391, align 4
  %t392 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 21
  store i32 756, i32* %t392, align 4
  %t393 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 22
  store i32 452, i32* %t393, align 4
  %t394 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 23
  store i32 279, i32* %t394, align 4
  %t395 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 24
  store i32 58, i32* %t395, align 4
  %t396 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 25
  store i32 87, i32* %t396, align 4
  %t397 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 26
  store i32 96, i32* %t397, align 4
  %t398 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 27
  store i32 36, i32* %t398, align 4
  %t399 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 28
  store i32 39, i32* %t399, align 4
  %t400 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 29
  store i32 28, i32* %t400, align 4
  %t401 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 30
  store i32 1, i32* %t401, align 4
  %t402 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 31
  store i32 290, i32* %t402, align 4
  %t405 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t406 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t407 = call i32 @arrCopy(i32* %t405, i32* %t406)
  store i32 %t407, i32* %t795, align 4
  %t409 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t410 = call i32 @revert(i32* %t409)
  store i32 %t410, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B797
B797:                               	; preds = %B792, %B798
  %t413 = load i32, i32* %t796, align 4
  %t414 = icmp slt i32 %t413, 32
  br i1 %t414, label %B798, label %B802
B798:                               	; preds = %B797
  %t416 = load i32, i32* %t796, align 4
  %t417 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t416
  %t803 = load i32, i32* %t417, align 4
  store i32 %t803, i32* %t795, align 4
  %t418 = load i32, i32* %t795, align 4
  call void @putint(i32 %t418)
  %t420 = load i32, i32* %t796, align 4
  %t421 = add i32 %t420, 1
  store i32 %t421, i32* %t796, align 4
  br label %B797
B802:                               	; preds = %B797
  br label %B799
B799:                               	; preds = %B802
  %t423 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t424 = call i32 @bubblesort(i32* %t423)
  store i32 %t424, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B804
B804:                               	; preds = %B799, %B805
  %t426 = load i32, i32* %t796, align 4
  %t427 = icmp slt i32 %t426, 32
  br i1 %t427, label %B805, label %B809
B805:                               	; preds = %B804
  %t429 = load i32, i32* %t796, align 4
  %t430 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t429
  %t810 = load i32, i32* %t430, align 4
  store i32 %t810, i32* %t795, align 4
  %t431 = load i32, i32* %t795, align 4
  call void @putint(i32 %t431)
  %t433 = load i32, i32* %t796, align 4
  %t434 = add i32 %t433, 1
  store i32 %t434, i32* %t796, align 4
  br label %B804
B809:                               	; preds = %B804
  br label %B806
B806:                               	; preds = %B809
  %t436 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t437 = call i32 @getMid(i32* %t436)
  store i32 %t437, i32* %t795, align 4
  %t438 = load i32, i32* %t795, align 4
  call void @putint(i32 %t438)
  %t440 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t441 = call i32 @getMost(i32* %t440)
  store i32 %t441, i32* %t795, align 4
  %t442 = load i32, i32* %t795, align 4
  call void @putint(i32 %t442)
  %t444 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t445 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t446 = call i32 @arrCopy(i32* %t444, i32* %t445)
  store i32 %t446, i32* %t795, align 4
  %t448 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t449 = call i32 @bubblesort(i32* %t448)
  store i32 %t449, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B811
B811:                               	; preds = %B806, %B812
  %t451 = load i32, i32* %t796, align 4
  %t452 = icmp slt i32 %t451, 32
  br i1 %t452, label %B812, label %B816
B812:                               	; preds = %B811
  %t454 = load i32, i32* %t796, align 4
  %t455 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t454
  %t817 = load i32, i32* %t455, align 4
  store i32 %t817, i32* %t795, align 4
  %t456 = load i32, i32* %t795, align 4
  call void @putint(i32 %t456)
  %t458 = load i32, i32* %t796, align 4
  %t459 = add i32 %t458, 1
  store i32 %t459, i32* %t796, align 4
  br label %B811
B816:                               	; preds = %B811
  br label %B813
B813:                               	; preds = %B816
  %t461 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t462 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t463 = call i32 @arrCopy(i32* %t461, i32* %t462)
  store i32 %t463, i32* %t795, align 4
  %t465 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t466 = call i32 @insertsort(i32* %t465)
  store i32 %t466, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B818
B818:                               	; preds = %B813, %B819
  %t468 = load i32, i32* %t796, align 4
  %t469 = icmp slt i32 %t468, 32
  br i1 %t469, label %B819, label %B823
B819:                               	; preds = %B818
  %t471 = load i32, i32* %t796, align 4
  %t472 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t471
  %t824 = load i32, i32* %t472, align 4
  store i32 %t824, i32* %t795, align 4
  %t473 = load i32, i32* %t795, align 4
  call void @putint(i32 %t473)
  %t475 = load i32, i32* %t796, align 4
  %t476 = add i32 %t475, 1
  store i32 %t476, i32* %t796, align 4
  br label %B818
B823:                               	; preds = %B818
  br label %B820
B820:                               	; preds = %B823
  %t478 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t479 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t480 = call i32 @arrCopy(i32* %t478, i32* %t479)
  store i32 %t480, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  store i32 31, i32* %t795, align 4
  %t484 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t485 = load i32, i32* %t796, align 4
  %t486 = load i32, i32* %t795, align 4
  %t487 = call i32 @QuickSort(i32* %t484, i32 %t485, i32 %t486)
  store i32 %t487, i32* %t795, align 4
  br label %B825
B825:                               	; preds = %B820, %B826
  %t488 = load i32, i32* %t796, align 4
  %t489 = icmp slt i32 %t488, 32
  br i1 %t489, label %B826, label %B830
B826:                               	; preds = %B825
  %t491 = load i32, i32* %t796, align 4
  %t492 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t491
  %t831 = load i32, i32* %t492, align 4
  store i32 %t831, i32* %t795, align 4
  %t493 = load i32, i32* %t795, align 4
  call void @putint(i32 %t493)
  %t495 = load i32, i32* %t796, align 4
  %t496 = add i32 %t495, 1
  store i32 %t496, i32* %t796, align 4
  br label %B825
B830:                               	; preds = %B825
  br label %B827
B827:                               	; preds = %B830
  %t498 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t499 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t500 = call i32 @arrCopy(i32* %t498, i32* %t499)
  store i32 %t500, i32* %t795, align 4
  %t502 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t503 = call i32 @calSum(i32* %t502, i32 4)
  store i32 %t503, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B832
B832:                               	; preds = %B827, %B833
  %t505 = load i32, i32* %t796, align 4
  %t506 = icmp slt i32 %t505, 32
  br i1 %t506, label %B833, label %B837
B833:                               	; preds = %B832
  %t508 = load i32, i32* %t796, align 4
  %t509 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t508
  %t838 = load i32, i32* %t509, align 4
  store i32 %t838, i32* %t795, align 4
  %t510 = load i32, i32* %t795, align 4
  call void @putint(i32 %t510)
  %t512 = load i32, i32* %t796, align 4
  %t513 = add i32 %t512, 1
  store i32 %t513, i32* %t796, align 4
  br label %B832
B837:                               	; preds = %B832
  br label %B834
B834:                               	; preds = %B837
  %t515 = getelementptr inbounds [32 x i32], [32 x i32]* %t793, i32 0, i32 0
  %t516 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t517 = call i32 @arrCopy(i32* %t515, i32* %t516)
  store i32 %t517, i32* %t795, align 4
  %t519 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 0
  %t520 = call i32 @avgPooling(i32* %t519, i32 3)
  store i32 %t520, i32* %t795, align 4
  store i32 0, i32* %t796, align 4
  br label %B839
B839:                               	; preds = %B834, %B840
  %t522 = load i32, i32* %t796, align 4
  %t523 = icmp slt i32 %t522, 32
  br i1 %t523, label %B840, label %B844
B840:                               	; preds = %B839
  %t525 = load i32, i32* %t796, align 4
  %t526 = getelementptr inbounds [32 x i32], [32 x i32]* %t794, i32 0, i32 %t525
  %t845 = load i32, i32* %t526, align 4
  store i32 %t845, i32* %t795, align 4
  %t527 = load i32, i32* %t795, align 4
  call void @putint(i32 %t527)
  %t529 = load i32, i32* %t796, align 4
  %t530 = add i32 %t529, 1
  store i32 %t530, i32* %t796, align 4
  br label %B839
B844:                               	; preds = %B839
  br label %B841
B841:                               	; preds = %B844
  ret i32 0
}
declare void @putint(i32)
