@SHIFT_TABLE = global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 4
define i32 @long_func() {
B2856:
  %t4586 = alloca i32, align 4
  %t4585 = alloca i32, align 4
  %t4584 = alloca i32, align 4
  %t4514 = alloca i32, align 4
  %t4513 = alloca i32, align 4
  %t4512 = alloca i32, align 4
  %t4484 = alloca i32, align 4
  %t4483 = alloca i32, align 4
  %t4482 = alloca i32, align 4
  %t4385 = alloca i32, align 4
  %t4384 = alloca i32, align 4
  %t4383 = alloca i32, align 4
  %t4313 = alloca i32, align 4
  %t4312 = alloca i32, align 4
  %t4311 = alloca i32, align 4
  %t4283 = alloca i32, align 4
  %t4282 = alloca i32, align 4
  %t4281 = alloca i32, align 4
  %t4253 = alloca i32, align 4
  %t4252 = alloca i32, align 4
  %t4251 = alloca i32, align 4
  %t4121 = alloca i32, align 4
  %t4120 = alloca i32, align 4
  %t4119 = alloca i32, align 4
  %t4049 = alloca i32, align 4
  %t4048 = alloca i32, align 4
  %t4047 = alloca i32, align 4
  %t4019 = alloca i32, align 4
  %t4018 = alloca i32, align 4
  %t4017 = alloca i32, align 4
  %t3920 = alloca i32, align 4
  %t3919 = alloca i32, align 4
  %t3918 = alloca i32, align 4
  %t3848 = alloca i32, align 4
  %t3847 = alloca i32, align 4
  %t3846 = alloca i32, align 4
  %t3818 = alloca i32, align 4
  %t3817 = alloca i32, align 4
  %t3816 = alloca i32, align 4
  %t3788 = alloca i32, align 4
  %t3787 = alloca i32, align 4
  %t3786 = alloca i32, align 4
  %t3656 = alloca i32, align 4
  %t3655 = alloca i32, align 4
  %t3654 = alloca i32, align 4
  %t3584 = alloca i32, align 4
  %t3583 = alloca i32, align 4
  %t3582 = alloca i32, align 4
  %t3554 = alloca i32, align 4
  %t3553 = alloca i32, align 4
  %t3552 = alloca i32, align 4
  %t3455 = alloca i32, align 4
  %t3454 = alloca i32, align 4
  %t3453 = alloca i32, align 4
  %t3383 = alloca i32, align 4
  %t3382 = alloca i32, align 4
  %t3381 = alloca i32, align 4
  %t3353 = alloca i32, align 4
  %t3352 = alloca i32, align 4
  %t3351 = alloca i32, align 4
  %t3323 = alloca i32, align 4
  %t3322 = alloca i32, align 4
  %t3321 = alloca i32, align 4
  %t3197 = alloca i32, align 4
  %t3196 = alloca i32, align 4
  %t3195 = alloca i32, align 4
  %t3125 = alloca i32, align 4
  %t3124 = alloca i32, align 4
  %t3123 = alloca i32, align 4
  %t3095 = alloca i32, align 4
  %t3094 = alloca i32, align 4
  %t3093 = alloca i32, align 4
  %t2996 = alloca i32, align 4
  %t2995 = alloca i32, align 4
  %t2994 = alloca i32, align 4
  %t2924 = alloca i32, align 4
  %t2923 = alloca i32, align 4
  %t2922 = alloca i32, align 4
  %t2894 = alloca i32, align 4
  %t2893 = alloca i32, align 4
  %t2892 = alloca i32, align 4
  %t2864 = alloca i32, align 4
  %t2863 = alloca i32, align 4
  %t2862 = alloca i32, align 4
  %t2861 = alloca i32, align 4
  %t2860 = alloca i32, align 4
  %t2859 = alloca i32, align 4
  %t2858 = alloca i32, align 4
  %t2857 = alloca i32, align 4
  store i32 2, i32* %t2862, align 4
  store i32 0, i32* %t2863, align 4
  store i32 1, i32* %t2864, align 4
  br label %B2865
B2865:                               	; preds = %B2856, %B3296
  %t9 = load i32, i32* %t2863, align 4
  %t10 = icmp sgt i32 %t9, 0
  br i1 %t10, label %B2866, label %B2870
B2866:                               	; preds = %B2865
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t14 = load i32, i32* %t2863, align 4
  store i32 %t14, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B2871
B2870:                               	; preds = %B2865
  br label %B2867
B2871:                               	; preds = %B2866, %B2878
  %t16 = load i32, i32* %t2858, align 4
  %t17 = icmp slt i32 %t16, 16
  br i1 %t17, label %B2872, label %B2876
B2867:                               	; preds = %B2870
  %t712 = load i32, i32* %t2864, align 4
  store i32 %t712, i32* %t2857, align 4
  %t713 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t713)
  call void @putch(i32 10)
  store i32 2, i32* %t3321, align 4
  store i32 1, i32* %t3322, align 4
  store i32 1, i32* %t3323, align 4
  br label %B3324
B2872:                               	; preds = %B2871
  %t18 = load i32, i32* %t2859, align 4
  %t19 = srem i32 %t18, 2
  %t23 = icmp ne i32 %t19, 0
  br i1 %t23, label %B2879, label %B2881
B2876:                               	; preds = %B2871
  br label %B2873
B3324:                               	; preds = %B2867, %B3755
  %t717 = load i32, i32* %t3322, align 4
  %t718 = icmp sgt i32 %t717, 0
  br i1 %t718, label %B3325, label %B3329
B2879:                               	; preds = %B2872
  %t20 = load i32, i32* %t2860, align 4
  %t21 = srem i32 %t20, 2
  %t24 = icmp ne i32 %t21, 0
  br i1 %t24, label %B2877, label %B2884
B2881:                               	; preds = %B2872
  br label %B2878
B2873:                               	; preds = %B2876
  %t40 = load i32, i32* %t2857, align 4
  %t358 = icmp ne i32 %t40, 0
  br i1 %t358, label %B2887, label %B2890
B3325:                               	; preds = %B3324
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t722 = load i32, i32* %t3322, align 4
  store i32 %t722, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3330
B3329:                               	; preds = %B3324
  br label %B3326
B2877:                               	; preds = %B2879
  %t26 = load i32, i32* %t2857, align 4
  %t27 = load i32, i32* %t2858, align 4
  %t28 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t27
  %t2886 = load i32, i32* %t28, align 4
  %t29 = mul i32 1, %t2886
  %t30 = add i32 %t26, %t29
  store i32 %t30, i32* %t2857, align 4
  br label %B2878
B2884:                               	; preds = %B2879
  br label %B2878
B2878:                               	; preds = %B2877, %B2881, %B2884
  %t32 = load i32, i32* %t2859, align 4
  %t33 = sdiv i32 %t32, 2
  store i32 %t33, i32* %t2859, align 4
  %t35 = load i32, i32* %t2860, align 4
  %t36 = sdiv i32 %t35, 2
  store i32 %t36, i32* %t2860, align 4
  %t38 = load i32, i32* %t2858, align 4
  %t39 = add i32 %t38, 1
  store i32 %t39, i32* %t2858, align 4
  br label %B2871
B2887:                               	; preds = %B2873
  %t41 = load i32, i32* %t2864, align 4
  store i32 %t41, i32* %t2892, align 4
  %t43 = load i32, i32* %t2862, align 4
  store i32 %t43, i32* %t2893, align 4
  store i32 0, i32* %t2894, align 4
  br label %B2895
B2890:                               	; preds = %B2873
  br label %B2888
B3330:                               	; preds = %B3325, %B3337
  %t724 = load i32, i32* %t2858, align 4
  %t725 = icmp slt i32 %t724, 16
  br i1 %t725, label %B3331, label %B3335
B3326:                               	; preds = %B3329
  %t1420 = load i32, i32* %t3323, align 4
  store i32 %t1420, i32* %t2857, align 4
  %t1421 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t1421)
  call void @putch(i32 10)
  store i32 2, i32* %t2861, align 4
  br label %B3780
B2895:                               	; preds = %B2887, %B3068
  %t46 = load i32, i32* %t2893, align 4
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %B2896, label %B2899
B2888:                               	; preds = %B2890, %B2897
  %t359 = load i32, i32* %t2862, align 4
  store i32 %t359, i32* %t3093, align 4
  %t361 = load i32, i32* %t2862, align 4
  store i32 %t361, i32* %t3094, align 4
  store i32 0, i32* %t3095, align 4
  br label %B3096
B3331:                               	; preds = %B3330
  %t726 = load i32, i32* %t2859, align 4
  %t727 = srem i32 %t726, 2
  %t731 = icmp ne i32 %t727, 0
  br i1 %t731, label %B3338, label %B3340
B3335:                               	; preds = %B3330
  br label %B3332
B3780:                               	; preds = %B3326, %B3791
  %t1423 = load i32, i32* %t2861, align 4
  %t1424 = icmp slt i32 %t1423, 16
  br i1 %t1424, label %B3781, label %B3785
B2896:                               	; preds = %B2895
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t51 = load i32, i32* %t2893, align 4
  store i32 %t51, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B2901
B2899:                               	; preds = %B2895
  br label %B2897
B3096:                               	; preds = %B2888, %B3269
  %t364 = load i32, i32* %t3094, align 4
  %t365 = icmp ne i32 %t364, 0
  br i1 %t365, label %B3097, label %B3100
B3338:                               	; preds = %B3331
  %t728 = load i32, i32* %t2860, align 4
  %t729 = srem i32 %t728, 2
  %t732 = icmp ne i32 %t729, 0
  br i1 %t732, label %B3336, label %B3343
B3340:                               	; preds = %B3331
  br label %B3337
B3332:                               	; preds = %B3335
  %t748 = load i32, i32* %t2857, align 4
  %t1066 = icmp ne i32 %t748, 0
  br i1 %t1066, label %B3346, label %B3349
B3781:                               	; preds = %B3780
  store i32 2, i32* %t3786, align 4
  %t1426 = load i32, i32* %t2861, align 4
  store i32 %t1426, i32* %t3787, align 4
  store i32 1, i32* %t3788, align 4
  br label %B3789
B3785:                               	; preds = %B3780
  br label %B3782
B2901:                               	; preds = %B2896, %B2908
  %t53 = load i32, i32* %t2858, align 4
  %t54 = icmp slt i32 %t53, 16
  br i1 %t54, label %B2902, label %B2906
B2897:                               	; preds = %B2899
  %t355 = load i32, i32* %t2894, align 4
  store i32 %t355, i32* %t2857, align 4
  %t357 = load i32, i32* %t2857, align 4
  store i32 %t357, i32* %t2864, align 4
  br label %B2888
B3097:                               	; preds = %B3096
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t369 = load i32, i32* %t3094, align 4
  store i32 %t369, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3102
B3100:                               	; preds = %B3096
  br label %B3098
B3336:                               	; preds = %B3338
  %t734 = load i32, i32* %t2857, align 4
  %t735 = load i32, i32* %t2858, align 4
  %t736 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t735
  %t3345 = load i32, i32* %t736, align 4
  %t737 = mul i32 1, %t3345
  %t738 = add i32 %t734, %t737
  store i32 %t738, i32* %t2857, align 4
  br label %B3337
B3343:                               	; preds = %B3338
  br label %B3337
B3337:                               	; preds = %B3336, %B3340, %B3343
  %t740 = load i32, i32* %t2859, align 4
  %t741 = sdiv i32 %t740, 2
  store i32 %t741, i32* %t2859, align 4
  %t743 = load i32, i32* %t2860, align 4
  %t744 = sdiv i32 %t743, 2
  store i32 %t744, i32* %t2860, align 4
  %t746 = load i32, i32* %t2858, align 4
  %t747 = add i32 %t746, 1
  store i32 %t747, i32* %t2858, align 4
  br label %B3330
B3346:                               	; preds = %B3332
  %t749 = load i32, i32* %t3323, align 4
  store i32 %t749, i32* %t3351, align 4
  %t751 = load i32, i32* %t3321, align 4
  store i32 %t751, i32* %t3352, align 4
  store i32 0, i32* %t3353, align 4
  br label %B3354
B3349:                               	; preds = %B3332
  br label %B3347
B3789:                               	; preds = %B3781, %B4220
  %t1429 = load i32, i32* %t3787, align 4
  %t1430 = icmp sgt i32 %t1429, 0
  br i1 %t1430, label %B3790, label %B3794
B3782:                               	; preds = %B3785
  store i32 0, i32* %t2861, align 4
  br label %B4245
B2902:                               	; preds = %B2901
  %t55 = load i32, i32* %t2859, align 4
  %t56 = srem i32 %t55, 2
  %t60 = icmp ne i32 %t56, 0
  br i1 %t60, label %B2909, label %B2911
B2906:                               	; preds = %B2901
  br label %B2903
B3102:                               	; preds = %B3097, %B3109
  %t371 = load i32, i32* %t2858, align 4
  %t372 = icmp slt i32 %t371, 16
  br i1 %t372, label %B3103, label %B3107
B3098:                               	; preds = %B3100
  %t673 = load i32, i32* %t3095, align 4
  store i32 %t673, i32* %t2857, align 4
  %t675 = load i32, i32* %t2857, align 4
  store i32 %t675, i32* %t2862, align 4
  %t677 = load i32, i32* %t2863, align 4
  store i32 %t677, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t679 = load i32, i32* %t2860, align 4
  %t680 = icmp sge i32 %t679, 15
  br i1 %t680, label %B3294, label %B3299
B3354:                               	; preds = %B3346, %B3527
  %t754 = load i32, i32* %t3352, align 4
  %t755 = icmp ne i32 %t754, 0
  br i1 %t755, label %B3355, label %B3358
B3347:                               	; preds = %B3349, %B3356
  %t1067 = load i32, i32* %t3321, align 4
  store i32 %t1067, i32* %t3552, align 4
  %t1069 = load i32, i32* %t3321, align 4
  store i32 %t1069, i32* %t3553, align 4
  store i32 0, i32* %t3554, align 4
  br label %B3555
B3790:                               	; preds = %B3789
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1434 = load i32, i32* %t3787, align 4
  store i32 %t1434, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3795
B3794:                               	; preds = %B3789
  br label %B3791
B4245:                               	; preds = %B3782, %B4711
  %t2138 = load i32, i32* %t2861, align 4
  %t2139 = icmp slt i32 %t2138, 16
  br i1 %t2139, label %B4246, label %B4250
B2909:                               	; preds = %B2902
  %t57 = load i32, i32* %t2860, align 4
  %t58 = srem i32 %t57, 2
  %t61 = icmp ne i32 %t58, 0
  br i1 %t61, label %B2907, label %B2914
B2911:                               	; preds = %B2902
  br label %B2908
B2903:                               	; preds = %B2906
  %t77 = load i32, i32* %t2857, align 4
  %t198 = icmp ne i32 %t77, 0
  br i1 %t198, label %B2917, label %B2920
B3103:                               	; preds = %B3102
  %t373 = load i32, i32* %t2859, align 4
  %t374 = srem i32 %t373, 2
  %t378 = icmp ne i32 %t374, 0
  br i1 %t378, label %B3110, label %B3112
B3107:                               	; preds = %B3102
  br label %B3104
B3294:                               	; preds = %B3098
  %t681 = load i32, i32* %t2859, align 4
  %t682 = icmp slt i32 %t681, 0
  br i1 %t682, label %B3300, label %B3305
B3299:                               	; preds = %B3098
  br label %B3295
B3355:                               	; preds = %B3354
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t759 = load i32, i32* %t3352, align 4
  store i32 %t759, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3360
B3358:                               	; preds = %B3354
  br label %B3356
B3555:                               	; preds = %B3347, %B3728
  %t1072 = load i32, i32* %t3553, align 4
  %t1073 = icmp ne i32 %t1072, 0
  br i1 %t1073, label %B3556, label %B3559
B3795:                               	; preds = %B3790, %B3802
  %t1436 = load i32, i32* %t2858, align 4
  %t1437 = icmp slt i32 %t1436, 16
  br i1 %t1437, label %B3796, label %B3800
B3791:                               	; preds = %B3794
  %t2132 = load i32, i32* %t3788, align 4
  store i32 %t2132, i32* %t2857, align 4
  %t2133 = load i32, i32* %t2857, align 4
  call void @putint(i32 %t2133)
  call void @putch(i32 10)
  %t2135 = load i32, i32* %t2861, align 4
  %t2136 = add i32 %t2135, 1
  store i32 %t2136, i32* %t2861, align 4
  br label %B3780
B4246:                               	; preds = %B4245
  store i32 2, i32* %t4251, align 4
  %t2141 = load i32, i32* %t2861, align 4
  store i32 %t2141, i32* %t4252, align 4
  store i32 1, i32* %t4253, align 4
  br label %B4254
B4250:                               	; preds = %B4245
  br label %B4247
B2907:                               	; preds = %B2909
  %t63 = load i32, i32* %t2857, align 4
  %t64 = load i32, i32* %t2858, align 4
  %t65 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t64
  %t2916 = load i32, i32* %t65, align 4
  %t66 = mul i32 1, %t2916
  %t67 = add i32 %t63, %t66
  store i32 %t67, i32* %t2857, align 4
  br label %B2908
B2914:                               	; preds = %B2909
  br label %B2908
B2908:                               	; preds = %B2907, %B2911, %B2914
  %t69 = load i32, i32* %t2859, align 4
  %t70 = sdiv i32 %t69, 2
  store i32 %t70, i32* %t2859, align 4
  %t72 = load i32, i32* %t2860, align 4
  %t73 = sdiv i32 %t72, 2
  store i32 %t73, i32* %t2860, align 4
  %t75 = load i32, i32* %t2858, align 4
  %t76 = add i32 %t75, 1
  store i32 %t76, i32* %t2858, align 4
  br label %B2901
B2917:                               	; preds = %B2903
  %t78 = load i32, i32* %t2894, align 4
  store i32 %t78, i32* %t2922, align 4
  %t80 = load i32, i32* %t2892, align 4
  store i32 %t80, i32* %t2923, align 4
  br label %B2925
B2920:                               	; preds = %B2903
  br label %B2918
B3110:                               	; preds = %B3103
  %t375 = load i32, i32* %t2860, align 4
  %t376 = srem i32 %t375, 2
  %t379 = icmp ne i32 %t376, 0
  br i1 %t379, label %B3108, label %B3115
B3112:                               	; preds = %B3103
  br label %B3109
B3104:                               	; preds = %B3107
  %t395 = load i32, i32* %t2857, align 4
  %t516 = icmp ne i32 %t395, 0
  br i1 %t516, label %B3118, label %B3121
B3300:                               	; preds = %B3294
  store i32 65535, i32* %t2857, align 4
  br label %B3302
B3305:                               	; preds = %B3294
  br label %B3301
B3295:                               	; preds = %B3299
  %t685 = load i32, i32* %t2860, align 4
  %t686 = icmp sgt i32 %t685, 0
  br i1 %t686, label %B3306, label %B3311
B3360:                               	; preds = %B3355, %B3367
  %t761 = load i32, i32* %t2858, align 4
  %t762 = icmp slt i32 %t761, 16
  br i1 %t762, label %B3361, label %B3365
B3356:                               	; preds = %B3358
  %t1063 = load i32, i32* %t3353, align 4
  store i32 %t1063, i32* %t2857, align 4
  %t1065 = load i32, i32* %t2857, align 4
  store i32 %t1065, i32* %t3323, align 4
  br label %B3347
B3556:                               	; preds = %B3555
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1077 = load i32, i32* %t3553, align 4
  store i32 %t1077, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3561
B3559:                               	; preds = %B3555
  br label %B3557
B3796:                               	; preds = %B3795
  %t1438 = load i32, i32* %t2859, align 4
  %t1439 = srem i32 %t1438, 2
  %t1443 = icmp ne i32 %t1439, 0
  br i1 %t1443, label %B3803, label %B3805
B3800:                               	; preds = %B3795
  br label %B3797
B4254:                               	; preds = %B4246, %B4685
  %t2144 = load i32, i32* %t4252, align 4
  %t2145 = icmp sgt i32 %t2144, 0
  br i1 %t2145, label %B4255, label %B4259
B4247:                               	; preds = %B4250
  ret i32 0
B2925:                               	; preds = %B2917, %B2973
  %t83 = load i32, i32* %t2923, align 4
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %B2926, label %B2929
B2918:                               	; preds = %B2920, %B2927
  %t199 = load i32, i32* %t2892, align 4
  store i32 %t199, i32* %t2994, align 4
  %t201 = load i32, i32* %t2892, align 4
  store i32 %t201, i32* %t2995, align 4
  br label %B2997
B3108:                               	; preds = %B3110
  %t381 = load i32, i32* %t2857, align 4
  %t382 = load i32, i32* %t2858, align 4
  %t383 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t382
  %t3117 = load i32, i32* %t383, align 4
  %t384 = mul i32 1, %t3117
  %t385 = add i32 %t381, %t384
  store i32 %t385, i32* %t2857, align 4
  br label %B3109
B3115:                               	; preds = %B3110
  br label %B3109
B3109:                               	; preds = %B3108, %B3112, %B3115
  %t387 = load i32, i32* %t2859, align 4
  %t388 = sdiv i32 %t387, 2
  store i32 %t388, i32* %t2859, align 4
  %t390 = load i32, i32* %t2860, align 4
  %t391 = sdiv i32 %t390, 2
  store i32 %t391, i32* %t2860, align 4
  %t393 = load i32, i32* %t2858, align 4
  %t394 = add i32 %t393, 1
  store i32 %t394, i32* %t2858, align 4
  br label %B3102
B3118:                               	; preds = %B3104
  %t396 = load i32, i32* %t3095, align 4
  store i32 %t396, i32* %t3123, align 4
  %t398 = load i32, i32* %t3093, align 4
  store i32 %t398, i32* %t3124, align 4
  br label %B3126
B3121:                               	; preds = %B3104
  br label %B3119
B3302:                               	; preds = %B3300, %B3301
  br label %B3296
B3301:                               	; preds = %B3305
  store i32 0, i32* %t2857, align 4
  br label %B3302
B3306:                               	; preds = %B3295
  %t687 = load i32, i32* %t2859, align 4
  %t688 = icmp sgt i32 %t687, 32767
  br i1 %t688, label %B3312, label %B3317
B3311:                               	; preds = %B3295
  br label %B3307
B3361:                               	; preds = %B3360
  %t763 = load i32, i32* %t2859, align 4
  %t764 = srem i32 %t763, 2
  %t768 = icmp ne i32 %t764, 0
  br i1 %t768, label %B3368, label %B3370
B3365:                               	; preds = %B3360
  br label %B3362
B3561:                               	; preds = %B3556, %B3568
  %t1079 = load i32, i32* %t2858, align 4
  %t1080 = icmp slt i32 %t1079, 16
  br i1 %t1080, label %B3562, label %B3566
B3557:                               	; preds = %B3559
  %t1381 = load i32, i32* %t3554, align 4
  store i32 %t1381, i32* %t2857, align 4
  %t1383 = load i32, i32* %t2857, align 4
  store i32 %t1383, i32* %t3321, align 4
  %t1385 = load i32, i32* %t3322, align 4
  store i32 %t1385, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1387 = load i32, i32* %t2860, align 4
  %t1388 = icmp sge i32 %t1387, 15
  br i1 %t1388, label %B3753, label %B3758
B3803:                               	; preds = %B3796
  %t1440 = load i32, i32* %t2860, align 4
  %t1441 = srem i32 %t1440, 2
  %t1444 = icmp ne i32 %t1441, 0
  br i1 %t1444, label %B3801, label %B3808
B3805:                               	; preds = %B3796
  br label %B3802
B3797:                               	; preds = %B3800
  %t1460 = load i32, i32* %t2857, align 4
  %t1778 = icmp ne i32 %t1460, 0
  br i1 %t1778, label %B3811, label %B3814
B4255:                               	; preds = %B4254
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2149 = load i32, i32* %t4252, align 4
  store i32 %t2149, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4260
B4259:                               	; preds = %B4254
  br label %B4256
B2926:                               	; preds = %B2925
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t88 = load i32, i32* %t2922, align 4
  store i32 %t88, i32* %t2859, align 4
  %t90 = load i32, i32* %t2923, align 4
  store i32 %t90, i32* %t2860, align 4
  br label %B2931
B2929:                               	; preds = %B2925
  br label %B2927
B2997:                               	; preds = %B2918, %B3045
  %t204 = load i32, i32* %t2995, align 4
  %t205 = icmp ne i32 %t204, 0
  br i1 %t205, label %B2998, label %B3001
B3126:                               	; preds = %B3118, %B3174
  %t401 = load i32, i32* %t3124, align 4
  %t402 = icmp ne i32 %t401, 0
  br i1 %t402, label %B3127, label %B3130
B3119:                               	; preds = %B3121, %B3128
  %t517 = load i32, i32* %t3093, align 4
  store i32 %t517, i32* %t3195, align 4
  %t519 = load i32, i32* %t3093, align 4
  store i32 %t519, i32* %t3196, align 4
  br label %B3198
B3296:                               	; preds = %B3302, %B3308
  %t710 = load i32, i32* %t2857, align 4
  store i32 %t710, i32* %t2863, align 4
  br label %B2865
B3312:                               	; preds = %B3306
  %t690 = load i32, i32* %t2859, align 4
  %t691 = load i32, i32* %t2860, align 4
  %t692 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t691
  %t3318 = load i32, i32* %t692, align 4
  %t693 = sdiv i32 %t690, %t3318
  store i32 %t693, i32* %t2859, align 4
  %t695 = load i32, i32* %t2859, align 4
  %t696 = add i32 %t695, 65536
  %t697 = load i32, i32* %t2860, align 4
  %t698 = sub i32 15, %t697
  %t699 = add i32 %t698, 1
  %t700 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t699
  %t3319 = load i32, i32* %t700, align 4
  %t701 = sub i32 %t696, %t3319
  store i32 %t701, i32* %t2857, align 4
  br label %B3314
B3317:                               	; preds = %B3306
  br label %B3313
B3307:                               	; preds = %B3311
  %t708 = load i32, i32* %t2859, align 4
  store i32 %t708, i32* %t2857, align 4
  br label %B3308
B3368:                               	; preds = %B3361
  %t765 = load i32, i32* %t2860, align 4
  %t766 = srem i32 %t765, 2
  %t769 = icmp ne i32 %t766, 0
  br i1 %t769, label %B3366, label %B3373
B3370:                               	; preds = %B3361
  br label %B3367
B3362:                               	; preds = %B3365
  %t785 = load i32, i32* %t2857, align 4
  %t906 = icmp ne i32 %t785, 0
  br i1 %t906, label %B3376, label %B3379
B3562:                               	; preds = %B3561
  %t1081 = load i32, i32* %t2859, align 4
  %t1082 = srem i32 %t1081, 2
  %t1086 = icmp ne i32 %t1082, 0
  br i1 %t1086, label %B3569, label %B3571
B3566:                               	; preds = %B3561
  br label %B3563
B3753:                               	; preds = %B3557
  %t1389 = load i32, i32* %t2859, align 4
  %t1390 = icmp slt i32 %t1389, 0
  br i1 %t1390, label %B3759, label %B3764
B3758:                               	; preds = %B3557
  br label %B3754
B3801:                               	; preds = %B3803
  %t1446 = load i32, i32* %t2857, align 4
  %t1447 = load i32, i32* %t2858, align 4
  %t1448 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1447
  %t3810 = load i32, i32* %t1448, align 4
  %t1449 = mul i32 1, %t3810
  %t1450 = add i32 %t1446, %t1449
  store i32 %t1450, i32* %t2857, align 4
  br label %B3802
B3808:                               	; preds = %B3803
  br label %B3802
B3802:                               	; preds = %B3801, %B3805, %B3808
  %t1452 = load i32, i32* %t2859, align 4
  %t1453 = sdiv i32 %t1452, 2
  store i32 %t1453, i32* %t2859, align 4
  %t1455 = load i32, i32* %t2860, align 4
  %t1456 = sdiv i32 %t1455, 2
  store i32 %t1456, i32* %t2860, align 4
  %t1458 = load i32, i32* %t2858, align 4
  %t1459 = add i32 %t1458, 1
  store i32 %t1459, i32* %t2858, align 4
  br label %B3795
B3811:                               	; preds = %B3797
  %t1461 = load i32, i32* %t3788, align 4
  store i32 %t1461, i32* %t3816, align 4
  %t1463 = load i32, i32* %t3786, align 4
  store i32 %t1463, i32* %t3817, align 4
  store i32 0, i32* %t3818, align 4
  br label %B3819
B3814:                               	; preds = %B3797
  br label %B3812
B4260:                               	; preds = %B4255, %B4267
  %t2151 = load i32, i32* %t2858, align 4
  %t2152 = icmp slt i32 %t2151, 16
  br i1 %t2152, label %B4261, label %B4265
B4256:                               	; preds = %B4259
  %t2847 = load i32, i32* %t4253, align 4
  store i32 %t2847, i32* %t2857, align 4
  %t2848 = load i32, i32* %t2861, align 4
  %t2849 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2848
  %t4712 = load i32, i32* %t2849, align 4
  %t2850 = load i32, i32* %t2857, align 4
  %t2851 = icmp ne i32 %t4712, %t2850
  br i1 %t2851, label %B4710, label %B4715
B2931:                               	; preds = %B2926, %B2939
  %t91 = load i32, i32* %t2858, align 4
  %t92 = icmp slt i32 %t91, 16
  br i1 %t92, label %B2932, label %B2936
B2927:                               	; preds = %B2929
  %t195 = load i32, i32* %t2922, align 4
  store i32 %t195, i32* %t2857, align 4
  %t197 = load i32, i32* %t2857, align 4
  store i32 %t197, i32* %t2894, align 4
  br label %B2918
B2998:                               	; preds = %B2997
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t209 = load i32, i32* %t2994, align 4
  store i32 %t209, i32* %t2859, align 4
  %t211 = load i32, i32* %t2995, align 4
  store i32 %t211, i32* %t2860, align 4
  br label %B3003
B3001:                               	; preds = %B2997
  br label %B2999
B3127:                               	; preds = %B3126
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t406 = load i32, i32* %t3123, align 4
  store i32 %t406, i32* %t2859, align 4
  %t408 = load i32, i32* %t3124, align 4
  store i32 %t408, i32* %t2860, align 4
  br label %B3132
B3130:                               	; preds = %B3126
  br label %B3128
B3198:                               	; preds = %B3119, %B3246
  %t522 = load i32, i32* %t3196, align 4
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %B3199, label %B3202
B3314:                               	; preds = %B3312, %B3313
  br label %B3308
B3313:                               	; preds = %B3317
  %t703 = load i32, i32* %t2859, align 4
  %t704 = load i32, i32* %t2860, align 4
  %t705 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t704
  %t3320 = load i32, i32* %t705, align 4
  %t706 = sdiv i32 %t703, %t3320
  store i32 %t706, i32* %t2857, align 4
  br label %B3314
B3308:                               	; preds = %B3307, %B3314
  br label %B3296
B3366:                               	; preds = %B3368
  %t771 = load i32, i32* %t2857, align 4
  %t772 = load i32, i32* %t2858, align 4
  %t773 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t772
  %t3375 = load i32, i32* %t773, align 4
  %t774 = mul i32 1, %t3375
  %t775 = add i32 %t771, %t774
  store i32 %t775, i32* %t2857, align 4
  br label %B3367
B3373:                               	; preds = %B3368
  br label %B3367
B3367:                               	; preds = %B3366, %B3370, %B3373
  %t777 = load i32, i32* %t2859, align 4
  %t778 = sdiv i32 %t777, 2
  store i32 %t778, i32* %t2859, align 4
  %t780 = load i32, i32* %t2860, align 4
  %t781 = sdiv i32 %t780, 2
  store i32 %t781, i32* %t2860, align 4
  %t783 = load i32, i32* %t2858, align 4
  %t784 = add i32 %t783, 1
  store i32 %t784, i32* %t2858, align 4
  br label %B3360
B3376:                               	; preds = %B3362
  %t786 = load i32, i32* %t3353, align 4
  store i32 %t786, i32* %t3381, align 4
  %t788 = load i32, i32* %t3351, align 4
  store i32 %t788, i32* %t3382, align 4
  br label %B3384
B3379:                               	; preds = %B3362
  br label %B3377
B3569:                               	; preds = %B3562
  %t1083 = load i32, i32* %t2860, align 4
  %t1084 = srem i32 %t1083, 2
  %t1087 = icmp ne i32 %t1084, 0
  br i1 %t1087, label %B3567, label %B3574
B3571:                               	; preds = %B3562
  br label %B3568
B3563:                               	; preds = %B3566
  %t1103 = load i32, i32* %t2857, align 4
  %t1224 = icmp ne i32 %t1103, 0
  br i1 %t1224, label %B3577, label %B3580
B3759:                               	; preds = %B3753
  store i32 65535, i32* %t2857, align 4
  br label %B3761
B3764:                               	; preds = %B3753
  br label %B3760
B3754:                               	; preds = %B3758
  %t1393 = load i32, i32* %t2860, align 4
  %t1394 = icmp sgt i32 %t1393, 0
  br i1 %t1394, label %B3765, label %B3770
B3819:                               	; preds = %B3811, %B3992
  %t1466 = load i32, i32* %t3817, align 4
  %t1467 = icmp ne i32 %t1466, 0
  br i1 %t1467, label %B3820, label %B3823
B3812:                               	; preds = %B3814, %B3821
  %t1779 = load i32, i32* %t3786, align 4
  store i32 %t1779, i32* %t4017, align 4
  %t1781 = load i32, i32* %t3786, align 4
  store i32 %t1781, i32* %t4018, align 4
  store i32 0, i32* %t4019, align 4
  br label %B4020
B4261:                               	; preds = %B4260
  %t2153 = load i32, i32* %t2859, align 4
  %t2154 = srem i32 %t2153, 2
  %t2158 = icmp ne i32 %t2154, 0
  br i1 %t2158, label %B4268, label %B4270
B4265:                               	; preds = %B4260
  br label %B4262
B4710:                               	; preds = %B4256
  ret i32 1
  br label %B4711
B4715:                               	; preds = %B4256
  br label %B4711
B2932:                               	; preds = %B2931
  %t93 = load i32, i32* %t2859, align 4
  %t94 = srem i32 %t93, 2
  %t113 = icmp ne i32 %t94, 0
  br i1 %t113, label %B2937, label %B2941
B2936:                               	; preds = %B2931
  br label %B2933
B3003:                               	; preds = %B2998, %B3011
  %t212 = load i32, i32* %t2858, align 4
  %t213 = icmp slt i32 %t212, 16
  br i1 %t213, label %B3004, label %B3008
B2999:                               	; preds = %B3001
  %t316 = load i32, i32* %t2994, align 4
  store i32 %t316, i32* %t2857, align 4
  %t318 = load i32, i32* %t2857, align 4
  store i32 %t318, i32* %t2892, align 4
  %t320 = load i32, i32* %t2893, align 4
  store i32 %t320, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t322 = load i32, i32* %t2860, align 4
  %t323 = icmp sge i32 %t322, 15
  br i1 %t323, label %B3066, label %B3071
B3132:                               	; preds = %B3127, %B3140
  %t409 = load i32, i32* %t2858, align 4
  %t410 = icmp slt i32 %t409, 16
  br i1 %t410, label %B3133, label %B3137
B3128:                               	; preds = %B3130
  %t513 = load i32, i32* %t3123, align 4
  store i32 %t513, i32* %t2857, align 4
  %t515 = load i32, i32* %t2857, align 4
  store i32 %t515, i32* %t3095, align 4
  br label %B3119
B3199:                               	; preds = %B3198
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t527 = load i32, i32* %t3195, align 4
  store i32 %t527, i32* %t2859, align 4
  %t529 = load i32, i32* %t3196, align 4
  store i32 %t529, i32* %t2860, align 4
  br label %B3204
B3202:                               	; preds = %B3198
  br label %B3200
B3384:                               	; preds = %B3376, %B3432
  %t791 = load i32, i32* %t3382, align 4
  %t792 = icmp ne i32 %t791, 0
  br i1 %t792, label %B3385, label %B3388
B3377:                               	; preds = %B3379, %B3386
  %t907 = load i32, i32* %t3351, align 4
  store i32 %t907, i32* %t3453, align 4
  %t909 = load i32, i32* %t3351, align 4
  store i32 %t909, i32* %t3454, align 4
  br label %B3456
B3567:                               	; preds = %B3569
  %t1089 = load i32, i32* %t2857, align 4
  %t1090 = load i32, i32* %t2858, align 4
  %t1091 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1090
  %t3576 = load i32, i32* %t1091, align 4
  %t1092 = mul i32 1, %t3576
  %t1093 = add i32 %t1089, %t1092
  store i32 %t1093, i32* %t2857, align 4
  br label %B3568
B3574:                               	; preds = %B3569
  br label %B3568
B3568:                               	; preds = %B3567, %B3571, %B3574
  %t1095 = load i32, i32* %t2859, align 4
  %t1096 = sdiv i32 %t1095, 2
  store i32 %t1096, i32* %t2859, align 4
  %t1098 = load i32, i32* %t2860, align 4
  %t1099 = sdiv i32 %t1098, 2
  store i32 %t1099, i32* %t2860, align 4
  %t1101 = load i32, i32* %t2858, align 4
  %t1102 = add i32 %t1101, 1
  store i32 %t1102, i32* %t2858, align 4
  br label %B3561
B3577:                               	; preds = %B3563
  %t1104 = load i32, i32* %t3554, align 4
  store i32 %t1104, i32* %t3582, align 4
  %t1106 = load i32, i32* %t3552, align 4
  store i32 %t1106, i32* %t3583, align 4
  br label %B3585
B3580:                               	; preds = %B3563
  br label %B3578
B3761:                               	; preds = %B3759, %B3760
  br label %B3755
B3760:                               	; preds = %B3764
  store i32 0, i32* %t2857, align 4
  br label %B3761
B3765:                               	; preds = %B3754
  %t1395 = load i32, i32* %t2859, align 4
  %t1396 = icmp sgt i32 %t1395, 32767
  br i1 %t1396, label %B3771, label %B3776
B3770:                               	; preds = %B3754
  br label %B3766
B3820:                               	; preds = %B3819
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1471 = load i32, i32* %t3817, align 4
  store i32 %t1471, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B3825
B3823:                               	; preds = %B3819
  br label %B3821
B4020:                               	; preds = %B3812, %B4193
  %t1784 = load i32, i32* %t4018, align 4
  %t1785 = icmp ne i32 %t1784, 0
  br i1 %t1785, label %B4021, label %B4024
B4268:                               	; preds = %B4261
  %t2155 = load i32, i32* %t2860, align 4
  %t2156 = srem i32 %t2155, 2
  %t2159 = icmp ne i32 %t2156, 0
  br i1 %t2159, label %B4266, label %B4273
B4270:                               	; preds = %B4261
  br label %B4267
B4262:                               	; preds = %B4265
  %t2175 = load i32, i32* %t2857, align 4
  %t2493 = icmp ne i32 %t2175, 0
  br i1 %t2493, label %B4276, label %B4279
B4711:                               	; preds = %B4710, %B4715
  %t2853 = load i32, i32* %t2861, align 4
  %t2854 = add i32 %t2853, 1
  store i32 %t2854, i32* %t2861, align 4
  br label %B4245
B2937:                               	; preds = %B2932
  %t95 = load i32, i32* %t2860, align 4
  %t96 = srem i32 %t95, 2
  %t97 = icmp eq i32 %t96, 0
  br i1 %t97, label %B2943, label %B2947
B2941:                               	; preds = %B2932
  br label %B2938
B2933:                               	; preds = %B2936
  %t124 = load i32, i32* %t2857, align 4
  store i32 %t124, i32* %t2924, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t128 = load i32, i32* %t2922, align 4
  store i32 %t128, i32* %t2859, align 4
  %t130 = load i32, i32* %t2923, align 4
  store i32 %t130, i32* %t2860, align 4
  br label %B2955
B3004:                               	; preds = %B3003
  %t214 = load i32, i32* %t2859, align 4
  %t215 = srem i32 %t214, 2
  %t234 = icmp ne i32 %t215, 0
  br i1 %t234, label %B3009, label %B3013
B3008:                               	; preds = %B3003
  br label %B3005
B3066:                               	; preds = %B2999
  %t324 = load i32, i32* %t2859, align 4
  %t325 = icmp slt i32 %t324, 0
  br i1 %t325, label %B3072, label %B3077
B3071:                               	; preds = %B2999
  br label %B3067
B3133:                               	; preds = %B3132
  %t411 = load i32, i32* %t2859, align 4
  %t412 = srem i32 %t411, 2
  %t431 = icmp ne i32 %t412, 0
  br i1 %t431, label %B3138, label %B3142
B3137:                               	; preds = %B3132
  br label %B3134
B3204:                               	; preds = %B3199, %B3212
  %t530 = load i32, i32* %t2858, align 4
  %t531 = icmp slt i32 %t530, 16
  br i1 %t531, label %B3205, label %B3209
B3200:                               	; preds = %B3202
  %t634 = load i32, i32* %t3195, align 4
  store i32 %t634, i32* %t2857, align 4
  %t636 = load i32, i32* %t2857, align 4
  store i32 %t636, i32* %t3093, align 4
  %t638 = load i32, i32* %t3094, align 4
  store i32 %t638, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t640 = load i32, i32* %t2860, align 4
  %t641 = icmp sge i32 %t640, 15
  br i1 %t641, label %B3267, label %B3272
B3385:                               	; preds = %B3384
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t796 = load i32, i32* %t3381, align 4
  store i32 %t796, i32* %t2859, align 4
  %t798 = load i32, i32* %t3382, align 4
  store i32 %t798, i32* %t2860, align 4
  br label %B3390
B3388:                               	; preds = %B3384
  br label %B3386
B3456:                               	; preds = %B3377, %B3504
  %t912 = load i32, i32* %t3454, align 4
  %t913 = icmp ne i32 %t912, 0
  br i1 %t913, label %B3457, label %B3460
B3585:                               	; preds = %B3577, %B3633
  %t1109 = load i32, i32* %t3583, align 4
  %t1110 = icmp ne i32 %t1109, 0
  br i1 %t1110, label %B3586, label %B3589
B3578:                               	; preds = %B3580, %B3587
  %t1225 = load i32, i32* %t3552, align 4
  store i32 %t1225, i32* %t3654, align 4
  %t1227 = load i32, i32* %t3552, align 4
  store i32 %t1227, i32* %t3655, align 4
  br label %B3657
B3755:                               	; preds = %B3761, %B3767
  %t1418 = load i32, i32* %t2857, align 4
  store i32 %t1418, i32* %t3322, align 4
  br label %B3324
B3771:                               	; preds = %B3765
  %t1398 = load i32, i32* %t2859, align 4
  %t1399 = load i32, i32* %t2860, align 4
  %t1400 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1399
  %t3777 = load i32, i32* %t1400, align 4
  %t1401 = sdiv i32 %t1398, %t3777
  store i32 %t1401, i32* %t2859, align 4
  %t1403 = load i32, i32* %t2859, align 4
  %t1404 = add i32 %t1403, 65536
  %t1405 = load i32, i32* %t2860, align 4
  %t1406 = sub i32 15, %t1405
  %t1407 = add i32 %t1406, 1
  %t1408 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1407
  %t3778 = load i32, i32* %t1408, align 4
  %t1409 = sub i32 %t1404, %t3778
  store i32 %t1409, i32* %t2857, align 4
  br label %B3773
B3776:                               	; preds = %B3765
  br label %B3772
B3766:                               	; preds = %B3770
  %t1416 = load i32, i32* %t2859, align 4
  store i32 %t1416, i32* %t2857, align 4
  br label %B3767
B3825:                               	; preds = %B3820, %B3832
  %t1473 = load i32, i32* %t2858, align 4
  %t1474 = icmp slt i32 %t1473, 16
  br i1 %t1474, label %B3826, label %B3830
B3821:                               	; preds = %B3823
  %t1775 = load i32, i32* %t3818, align 4
  store i32 %t1775, i32* %t2857, align 4
  %t1777 = load i32, i32* %t2857, align 4
  store i32 %t1777, i32* %t3788, align 4
  br label %B3812
B4021:                               	; preds = %B4020
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1789 = load i32, i32* %t4018, align 4
  store i32 %t1789, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4026
B4024:                               	; preds = %B4020
  br label %B4022
B4266:                               	; preds = %B4268
  %t2161 = load i32, i32* %t2857, align 4
  %t2162 = load i32, i32* %t2858, align 4
  %t2163 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2162
  %t4275 = load i32, i32* %t2163, align 4
  %t2164 = mul i32 1, %t4275
  %t2165 = add i32 %t2161, %t2164
  store i32 %t2165, i32* %t2857, align 4
  br label %B4267
B4273:                               	; preds = %B4268
  br label %B4267
B4267:                               	; preds = %B4266, %B4270, %B4273
  %t2167 = load i32, i32* %t2859, align 4
  %t2168 = sdiv i32 %t2167, 2
  store i32 %t2168, i32* %t2859, align 4
  %t2170 = load i32, i32* %t2860, align 4
  %t2171 = sdiv i32 %t2170, 2
  store i32 %t2171, i32* %t2860, align 4
  %t2173 = load i32, i32* %t2858, align 4
  %t2174 = add i32 %t2173, 1
  store i32 %t2174, i32* %t2858, align 4
  br label %B4260
B4276:                               	; preds = %B4262
  %t2176 = load i32, i32* %t4253, align 4
  store i32 %t2176, i32* %t4281, align 4
  %t2178 = load i32, i32* %t4251, align 4
  store i32 %t2178, i32* %t4282, align 4
  store i32 0, i32* %t4283, align 4
  br label %B4284
B4279:                               	; preds = %B4262
  br label %B4277
B2943:                               	; preds = %B2937
  %t99 = load i32, i32* %t2857, align 4
  %t100 = load i32, i32* %t2858, align 4
  %t101 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t100
  %t2948 = load i32, i32* %t101, align 4
  %t102 = mul i32 1, %t2948
  %t103 = add i32 %t99, %t102
  store i32 %t103, i32* %t2857, align 4
  br label %B2944
B2947:                               	; preds = %B2937
  br label %B2944
B2938:                               	; preds = %B2941
  %t104 = load i32, i32* %t2860, align 4
  %t105 = srem i32 %t104, 2
  %t112 = icmp ne i32 %t105, 0
  br i1 %t112, label %B2949, label %B2952
B2955:                               	; preds = %B2933, %B2962
  %t131 = load i32, i32* %t2858, align 4
  %t132 = icmp slt i32 %t131, 16
  br i1 %t132, label %B2956, label %B2960
B3009:                               	; preds = %B3004
  %t216 = load i32, i32* %t2860, align 4
  %t217 = srem i32 %t216, 2
  %t218 = icmp eq i32 %t217, 0
  br i1 %t218, label %B3015, label %B3019
B3013:                               	; preds = %B3004
  br label %B3010
B3005:                               	; preds = %B3008
  %t245 = load i32, i32* %t2857, align 4
  store i32 %t245, i32* %t2996, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t249 = load i32, i32* %t2994, align 4
  store i32 %t249, i32* %t2859, align 4
  %t251 = load i32, i32* %t2995, align 4
  store i32 %t251, i32* %t2860, align 4
  br label %B3027
B3072:                               	; preds = %B3066
  store i32 65535, i32* %t2857, align 4
  br label %B3074
B3077:                               	; preds = %B3066
  br label %B3073
B3067:                               	; preds = %B3071
  %t328 = load i32, i32* %t2860, align 4
  %t329 = icmp sgt i32 %t328, 0
  br i1 %t329, label %B3078, label %B3083
B3138:                               	; preds = %B3133
  %t413 = load i32, i32* %t2860, align 4
  %t414 = srem i32 %t413, 2
  %t415 = icmp eq i32 %t414, 0
  br i1 %t415, label %B3144, label %B3148
B3142:                               	; preds = %B3133
  br label %B3139
B3134:                               	; preds = %B3137
  %t442 = load i32, i32* %t2857, align 4
  store i32 %t442, i32* %t3125, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t446 = load i32, i32* %t3123, align 4
  store i32 %t446, i32* %t2859, align 4
  %t448 = load i32, i32* %t3124, align 4
  store i32 %t448, i32* %t2860, align 4
  br label %B3156
B3205:                               	; preds = %B3204
  %t532 = load i32, i32* %t2859, align 4
  %t533 = srem i32 %t532, 2
  %t552 = icmp ne i32 %t533, 0
  br i1 %t552, label %B3210, label %B3214
B3209:                               	; preds = %B3204
  br label %B3206
B3267:                               	; preds = %B3200
  %t642 = load i32, i32* %t2859, align 4
  %t643 = icmp slt i32 %t642, 0
  br i1 %t643, label %B3273, label %B3278
B3272:                               	; preds = %B3200
  br label %B3268
B3390:                               	; preds = %B3385, %B3398
  %t799 = load i32, i32* %t2858, align 4
  %t800 = icmp slt i32 %t799, 16
  br i1 %t800, label %B3391, label %B3395
B3386:                               	; preds = %B3388
  %t903 = load i32, i32* %t3381, align 4
  store i32 %t903, i32* %t2857, align 4
  %t905 = load i32, i32* %t2857, align 4
  store i32 %t905, i32* %t3353, align 4
  br label %B3377
B3457:                               	; preds = %B3456
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t917 = load i32, i32* %t3453, align 4
  store i32 %t917, i32* %t2859, align 4
  %t919 = load i32, i32* %t3454, align 4
  store i32 %t919, i32* %t2860, align 4
  br label %B3462
B3460:                               	; preds = %B3456
  br label %B3458
B3586:                               	; preds = %B3585
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1114 = load i32, i32* %t3582, align 4
  store i32 %t1114, i32* %t2859, align 4
  %t1116 = load i32, i32* %t3583, align 4
  store i32 %t1116, i32* %t2860, align 4
  br label %B3591
B3589:                               	; preds = %B3585
  br label %B3587
B3657:                               	; preds = %B3578, %B3705
  %t1230 = load i32, i32* %t3655, align 4
  %t1231 = icmp ne i32 %t1230, 0
  br i1 %t1231, label %B3658, label %B3661
B3773:                               	; preds = %B3771, %B3772
  br label %B3767
B3772:                               	; preds = %B3776
  %t1411 = load i32, i32* %t2859, align 4
  %t1412 = load i32, i32* %t2860, align 4
  %t1413 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1412
  %t3779 = load i32, i32* %t1413, align 4
  %t1414 = sdiv i32 %t1411, %t3779
  store i32 %t1414, i32* %t2857, align 4
  br label %B3773
B3767:                               	; preds = %B3766, %B3773
  br label %B3755
B3826:                               	; preds = %B3825
  %t1475 = load i32, i32* %t2859, align 4
  %t1476 = srem i32 %t1475, 2
  %t1480 = icmp ne i32 %t1476, 0
  br i1 %t1480, label %B3833, label %B3835
B3830:                               	; preds = %B3825
  br label %B3827
B4026:                               	; preds = %B4021, %B4033
  %t1791 = load i32, i32* %t2858, align 4
  %t1792 = icmp slt i32 %t1791, 16
  br i1 %t1792, label %B4027, label %B4031
B4022:                               	; preds = %B4024
  %t2093 = load i32, i32* %t4019, align 4
  store i32 %t2093, i32* %t2857, align 4
  %t2095 = load i32, i32* %t2857, align 4
  store i32 %t2095, i32* %t3786, align 4
  %t2097 = load i32, i32* %t3787, align 4
  store i32 %t2097, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2099 = load i32, i32* %t2860, align 4
  %t2100 = icmp sge i32 %t2099, 15
  br i1 %t2100, label %B4218, label %B4223
B4284:                               	; preds = %B4276, %B4457
  %t2181 = load i32, i32* %t4282, align 4
  %t2182 = icmp ne i32 %t2181, 0
  br i1 %t2182, label %B4285, label %B4288
B4277:                               	; preds = %B4279, %B4286
  %t2494 = load i32, i32* %t4251, align 4
  store i32 %t2494, i32* %t4482, align 4
  %t2496 = load i32, i32* %t4251, align 4
  store i32 %t2496, i32* %t4483, align 4
  store i32 0, i32* %t4484, align 4
  br label %B4485
B2944:                               	; preds = %B2943, %B2947
  br label %B2939
B2949:                               	; preds = %B2938
  %t107 = load i32, i32* %t2857, align 4
  %t108 = load i32, i32* %t2858, align 4
  %t109 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t108
  %t2954 = load i32, i32* %t109, align 4
  %t110 = mul i32 1, %t2954
  %t111 = add i32 %t107, %t110
  store i32 %t111, i32* %t2857, align 4
  br label %B2950
B2952:                               	; preds = %B2938
  br label %B2950
B2956:                               	; preds = %B2955
  %t133 = load i32, i32* %t2859, align 4
  %t134 = srem i32 %t133, 2
  %t138 = icmp ne i32 %t134, 0
  br i1 %t138, label %B2963, label %B2965
B2960:                               	; preds = %B2955
  br label %B2957
B3015:                               	; preds = %B3009
  %t220 = load i32, i32* %t2857, align 4
  %t221 = load i32, i32* %t2858, align 4
  %t222 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t221
  %t3020 = load i32, i32* %t222, align 4
  %t223 = mul i32 1, %t3020
  %t224 = add i32 %t220, %t223
  store i32 %t224, i32* %t2857, align 4
  br label %B3016
B3019:                               	; preds = %B3009
  br label %B3016
B3010:                               	; preds = %B3013
  %t225 = load i32, i32* %t2860, align 4
  %t226 = srem i32 %t225, 2
  %t233 = icmp ne i32 %t226, 0
  br i1 %t233, label %B3021, label %B3024
B3027:                               	; preds = %B3005, %B3034
  %t252 = load i32, i32* %t2858, align 4
  %t253 = icmp slt i32 %t252, 16
  br i1 %t253, label %B3028, label %B3032
B3074:                               	; preds = %B3072, %B3073
  br label %B3068
B3073:                               	; preds = %B3077
  store i32 0, i32* %t2857, align 4
  br label %B3074
B3078:                               	; preds = %B3067
  %t330 = load i32, i32* %t2859, align 4
  %t331 = icmp sgt i32 %t330, 32767
  br i1 %t331, label %B3084, label %B3089
B3083:                               	; preds = %B3067
  br label %B3079
B3144:                               	; preds = %B3138
  %t417 = load i32, i32* %t2857, align 4
  %t418 = load i32, i32* %t2858, align 4
  %t419 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t418
  %t3149 = load i32, i32* %t419, align 4
  %t420 = mul i32 1, %t3149
  %t421 = add i32 %t417, %t420
  store i32 %t421, i32* %t2857, align 4
  br label %B3145
B3148:                               	; preds = %B3138
  br label %B3145
B3139:                               	; preds = %B3142
  %t422 = load i32, i32* %t2860, align 4
  %t423 = srem i32 %t422, 2
  %t430 = icmp ne i32 %t423, 0
  br i1 %t430, label %B3150, label %B3153
B3156:                               	; preds = %B3134, %B3163
  %t449 = load i32, i32* %t2858, align 4
  %t450 = icmp slt i32 %t449, 16
  br i1 %t450, label %B3157, label %B3161
B3210:                               	; preds = %B3205
  %t534 = load i32, i32* %t2860, align 4
  %t535 = srem i32 %t534, 2
  %t536 = icmp eq i32 %t535, 0
  br i1 %t536, label %B3216, label %B3220
B3214:                               	; preds = %B3205
  br label %B3211
B3206:                               	; preds = %B3209
  %t563 = load i32, i32* %t2857, align 4
  store i32 %t563, i32* %t3197, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t567 = load i32, i32* %t3195, align 4
  store i32 %t567, i32* %t2859, align 4
  %t569 = load i32, i32* %t3196, align 4
  store i32 %t569, i32* %t2860, align 4
  br label %B3228
B3273:                               	; preds = %B3267
  store i32 65535, i32* %t2857, align 4
  br label %B3275
B3278:                               	; preds = %B3267
  br label %B3274
B3268:                               	; preds = %B3272
  %t646 = load i32, i32* %t2860, align 4
  %t647 = icmp sgt i32 %t646, 0
  br i1 %t647, label %B3279, label %B3284
B3391:                               	; preds = %B3390
  %t801 = load i32, i32* %t2859, align 4
  %t802 = srem i32 %t801, 2
  %t821 = icmp ne i32 %t802, 0
  br i1 %t821, label %B3396, label %B3400
B3395:                               	; preds = %B3390
  br label %B3392
B3462:                               	; preds = %B3457, %B3470
  %t920 = load i32, i32* %t2858, align 4
  %t921 = icmp slt i32 %t920, 16
  br i1 %t921, label %B3463, label %B3467
B3458:                               	; preds = %B3460
  %t1024 = load i32, i32* %t3453, align 4
  store i32 %t1024, i32* %t2857, align 4
  %t1026 = load i32, i32* %t2857, align 4
  store i32 %t1026, i32* %t3351, align 4
  %t1028 = load i32, i32* %t3352, align 4
  store i32 %t1028, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1030 = load i32, i32* %t2860, align 4
  %t1031 = icmp sge i32 %t1030, 15
  br i1 %t1031, label %B3525, label %B3530
B3591:                               	; preds = %B3586, %B3599
  %t1117 = load i32, i32* %t2858, align 4
  %t1118 = icmp slt i32 %t1117, 16
  br i1 %t1118, label %B3592, label %B3596
B3587:                               	; preds = %B3589
  %t1221 = load i32, i32* %t3582, align 4
  store i32 %t1221, i32* %t2857, align 4
  %t1223 = load i32, i32* %t2857, align 4
  store i32 %t1223, i32* %t3554, align 4
  br label %B3578
B3658:                               	; preds = %B3657
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1235 = load i32, i32* %t3654, align 4
  store i32 %t1235, i32* %t2859, align 4
  %t1237 = load i32, i32* %t3655, align 4
  store i32 %t1237, i32* %t2860, align 4
  br label %B3663
B3661:                               	; preds = %B3657
  br label %B3659
B3833:                               	; preds = %B3826
  %t1477 = load i32, i32* %t2860, align 4
  %t1478 = srem i32 %t1477, 2
  %t1481 = icmp ne i32 %t1478, 0
  br i1 %t1481, label %B3831, label %B3838
B3835:                               	; preds = %B3826
  br label %B3832
B3827:                               	; preds = %B3830
  %t1497 = load i32, i32* %t2857, align 4
  %t1618 = icmp ne i32 %t1497, 0
  br i1 %t1618, label %B3841, label %B3844
B4027:                               	; preds = %B4026
  %t1793 = load i32, i32* %t2859, align 4
  %t1794 = srem i32 %t1793, 2
  %t1798 = icmp ne i32 %t1794, 0
  br i1 %t1798, label %B4034, label %B4036
B4031:                               	; preds = %B4026
  br label %B4028
B4218:                               	; preds = %B4022
  %t2101 = load i32, i32* %t2859, align 4
  %t2102 = icmp slt i32 %t2101, 0
  br i1 %t2102, label %B4224, label %B4229
B4223:                               	; preds = %B4022
  br label %B4219
B4285:                               	; preds = %B4284
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2186 = load i32, i32* %t4282, align 4
  store i32 %t2186, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4290
B4288:                               	; preds = %B4284
  br label %B4286
B4485:                               	; preds = %B4277, %B4658
  %t2499 = load i32, i32* %t4483, align 4
  %t2500 = icmp ne i32 %t2499, 0
  br i1 %t2500, label %B4486, label %B4489
B2939:                               	; preds = %B2944, %B2950
  %t115 = load i32, i32* %t2859, align 4
  %t116 = sdiv i32 %t115, 2
  store i32 %t116, i32* %t2859, align 4
  %t118 = load i32, i32* %t2860, align 4
  %t119 = sdiv i32 %t118, 2
  store i32 %t119, i32* %t2860, align 4
  %t121 = load i32, i32* %t2858, align 4
  %t122 = add i32 %t121, 1
  store i32 %t122, i32* %t2858, align 4
  br label %B2931
B2950:                               	; preds = %B2949, %B2952
  br label %B2939
B2963:                               	; preds = %B2956
  %t135 = load i32, i32* %t2860, align 4
  %t136 = srem i32 %t135, 2
  %t139 = icmp ne i32 %t136, 0
  br i1 %t139, label %B2961, label %B2968
B2965:                               	; preds = %B2956
  br label %B2962
B2957:                               	; preds = %B2960
  %t156 = load i32, i32* %t2857, align 4
  store i32 %t156, i32* %t2923, align 4
  %t157 = icmp sgt i32 1, 15
  br i1 %t157, label %B2971, label %B2976
B3016:                               	; preds = %B3015, %B3019
  br label %B3011
B3021:                               	; preds = %B3010
  %t228 = load i32, i32* %t2857, align 4
  %t229 = load i32, i32* %t2858, align 4
  %t230 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t229
  %t3026 = load i32, i32* %t230, align 4
  %t231 = mul i32 1, %t3026
  %t232 = add i32 %t228, %t231
  store i32 %t232, i32* %t2857, align 4
  br label %B3022
B3024:                               	; preds = %B3010
  br label %B3022
B3028:                               	; preds = %B3027
  %t254 = load i32, i32* %t2859, align 4
  %t255 = srem i32 %t254, 2
  %t259 = icmp ne i32 %t255, 0
  br i1 %t259, label %B3035, label %B3037
B3032:                               	; preds = %B3027
  br label %B3029
B3068:                               	; preds = %B3074, %B3080
  %t353 = load i32, i32* %t2857, align 4
  store i32 %t353, i32* %t2893, align 4
  br label %B2895
B3084:                               	; preds = %B3078
  %t333 = load i32, i32* %t2859, align 4
  %t334 = load i32, i32* %t2860, align 4
  %t335 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t334
  %t3090 = load i32, i32* %t335, align 4
  %t336 = sdiv i32 %t333, %t3090
  store i32 %t336, i32* %t2859, align 4
  %t338 = load i32, i32* %t2859, align 4
  %t339 = add i32 %t338, 65536
  %t340 = load i32, i32* %t2860, align 4
  %t341 = sub i32 15, %t340
  %t342 = add i32 %t341, 1
  %t343 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t342
  %t3091 = load i32, i32* %t343, align 4
  %t344 = sub i32 %t339, %t3091
  store i32 %t344, i32* %t2857, align 4
  br label %B3086
B3089:                               	; preds = %B3078
  br label %B3085
B3079:                               	; preds = %B3083
  %t351 = load i32, i32* %t2859, align 4
  store i32 %t351, i32* %t2857, align 4
  br label %B3080
B3145:                               	; preds = %B3144, %B3148
  br label %B3140
B3150:                               	; preds = %B3139
  %t425 = load i32, i32* %t2857, align 4
  %t426 = load i32, i32* %t2858, align 4
  %t427 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t426
  %t3155 = load i32, i32* %t427, align 4
  %t428 = mul i32 1, %t3155
  %t429 = add i32 %t425, %t428
  store i32 %t429, i32* %t2857, align 4
  br label %B3151
B3153:                               	; preds = %B3139
  br label %B3151
B3157:                               	; preds = %B3156
  %t451 = load i32, i32* %t2859, align 4
  %t452 = srem i32 %t451, 2
  %t456 = icmp ne i32 %t452, 0
  br i1 %t456, label %B3164, label %B3166
B3161:                               	; preds = %B3156
  br label %B3158
B3216:                               	; preds = %B3210
  %t538 = load i32, i32* %t2857, align 4
  %t539 = load i32, i32* %t2858, align 4
  %t540 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t539
  %t3221 = load i32, i32* %t540, align 4
  %t541 = mul i32 1, %t3221
  %t542 = add i32 %t538, %t541
  store i32 %t542, i32* %t2857, align 4
  br label %B3217
B3220:                               	; preds = %B3210
  br label %B3217
B3211:                               	; preds = %B3214
  %t543 = load i32, i32* %t2860, align 4
  %t544 = srem i32 %t543, 2
  %t551 = icmp ne i32 %t544, 0
  br i1 %t551, label %B3222, label %B3225
B3228:                               	; preds = %B3206, %B3235
  %t570 = load i32, i32* %t2858, align 4
  %t571 = icmp slt i32 %t570, 16
  br i1 %t571, label %B3229, label %B3233
B3275:                               	; preds = %B3273, %B3274
  br label %B3269
B3274:                               	; preds = %B3278
  store i32 0, i32* %t2857, align 4
  br label %B3275
B3279:                               	; preds = %B3268
  %t648 = load i32, i32* %t2859, align 4
  %t649 = icmp sgt i32 %t648, 32767
  br i1 %t649, label %B3285, label %B3290
B3284:                               	; preds = %B3268
  br label %B3280
B3396:                               	; preds = %B3391
  %t803 = load i32, i32* %t2860, align 4
  %t804 = srem i32 %t803, 2
  %t805 = icmp eq i32 %t804, 0
  br i1 %t805, label %B3402, label %B3406
B3400:                               	; preds = %B3391
  br label %B3397
B3392:                               	; preds = %B3395
  %t832 = load i32, i32* %t2857, align 4
  store i32 %t832, i32* %t3383, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t836 = load i32, i32* %t3381, align 4
  store i32 %t836, i32* %t2859, align 4
  %t838 = load i32, i32* %t3382, align 4
  store i32 %t838, i32* %t2860, align 4
  br label %B3414
B3463:                               	; preds = %B3462
  %t922 = load i32, i32* %t2859, align 4
  %t923 = srem i32 %t922, 2
  %t942 = icmp ne i32 %t923, 0
  br i1 %t942, label %B3468, label %B3472
B3467:                               	; preds = %B3462
  br label %B3464
B3525:                               	; preds = %B3458
  %t1032 = load i32, i32* %t2859, align 4
  %t1033 = icmp slt i32 %t1032, 0
  br i1 %t1033, label %B3531, label %B3536
B3530:                               	; preds = %B3458
  br label %B3526
B3592:                               	; preds = %B3591
  %t1119 = load i32, i32* %t2859, align 4
  %t1120 = srem i32 %t1119, 2
  %t1139 = icmp ne i32 %t1120, 0
  br i1 %t1139, label %B3597, label %B3601
B3596:                               	; preds = %B3591
  br label %B3593
B3663:                               	; preds = %B3658, %B3671
  %t1238 = load i32, i32* %t2858, align 4
  %t1239 = icmp slt i32 %t1238, 16
  br i1 %t1239, label %B3664, label %B3668
B3659:                               	; preds = %B3661
  %t1342 = load i32, i32* %t3654, align 4
  store i32 %t1342, i32* %t2857, align 4
  %t1344 = load i32, i32* %t2857, align 4
  store i32 %t1344, i32* %t3552, align 4
  %t1346 = load i32, i32* %t3553, align 4
  store i32 %t1346, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1348 = load i32, i32* %t2860, align 4
  %t1349 = icmp sge i32 %t1348, 15
  br i1 %t1349, label %B3726, label %B3731
B3831:                               	; preds = %B3833
  %t1483 = load i32, i32* %t2857, align 4
  %t1484 = load i32, i32* %t2858, align 4
  %t1485 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1484
  %t3840 = load i32, i32* %t1485, align 4
  %t1486 = mul i32 1, %t3840
  %t1487 = add i32 %t1483, %t1486
  store i32 %t1487, i32* %t2857, align 4
  br label %B3832
B3838:                               	; preds = %B3833
  br label %B3832
B3832:                               	; preds = %B3831, %B3835, %B3838
  %t1489 = load i32, i32* %t2859, align 4
  %t1490 = sdiv i32 %t1489, 2
  store i32 %t1490, i32* %t2859, align 4
  %t1492 = load i32, i32* %t2860, align 4
  %t1493 = sdiv i32 %t1492, 2
  store i32 %t1493, i32* %t2860, align 4
  %t1495 = load i32, i32* %t2858, align 4
  %t1496 = add i32 %t1495, 1
  store i32 %t1496, i32* %t2858, align 4
  br label %B3825
B3841:                               	; preds = %B3827
  %t1498 = load i32, i32* %t3818, align 4
  store i32 %t1498, i32* %t3846, align 4
  %t1500 = load i32, i32* %t3816, align 4
  store i32 %t1500, i32* %t3847, align 4
  br label %B3849
B3844:                               	; preds = %B3827
  br label %B3842
B4034:                               	; preds = %B4027
  %t1795 = load i32, i32* %t2860, align 4
  %t1796 = srem i32 %t1795, 2
  %t1799 = icmp ne i32 %t1796, 0
  br i1 %t1799, label %B4032, label %B4039
B4036:                               	; preds = %B4027
  br label %B4033
B4028:                               	; preds = %B4031
  %t1815 = load i32, i32* %t2857, align 4
  %t1936 = icmp ne i32 %t1815, 0
  br i1 %t1936, label %B4042, label %B4045
B4224:                               	; preds = %B4218
  store i32 65535, i32* %t2857, align 4
  br label %B4226
B4229:                               	; preds = %B4218
  br label %B4225
B4219:                               	; preds = %B4223
  %t2105 = load i32, i32* %t2860, align 4
  %t2106 = icmp sgt i32 %t2105, 0
  br i1 %t2106, label %B4230, label %B4235
B4290:                               	; preds = %B4285, %B4297
  %t2188 = load i32, i32* %t2858, align 4
  %t2189 = icmp slt i32 %t2188, 16
  br i1 %t2189, label %B4291, label %B4295
B4286:                               	; preds = %B4288
  %t2490 = load i32, i32* %t4283, align 4
  store i32 %t2490, i32* %t2857, align 4
  %t2492 = load i32, i32* %t2857, align 4
  store i32 %t2492, i32* %t4253, align 4
  br label %B4277
B4486:                               	; preds = %B4485
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2504 = load i32, i32* %t4483, align 4
  store i32 %t2504, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  br label %B4491
B4489:                               	; preds = %B4485
  br label %B4487
B2961:                               	; preds = %B2963
  %t141 = load i32, i32* %t2857, align 4
  %t142 = load i32, i32* %t2858, align 4
  %t143 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t142
  %t2970 = load i32, i32* %t143, align 4
  %t144 = mul i32 1, %t2970
  %t145 = add i32 %t141, %t144
  store i32 %t145, i32* %t2857, align 4
  br label %B2962
B2968:                               	; preds = %B2963
  br label %B2962
B2962:                               	; preds = %B2961, %B2965, %B2968
  %t147 = load i32, i32* %t2859, align 4
  %t148 = sdiv i32 %t147, 2
  store i32 %t148, i32* %t2859, align 4
  %t150 = load i32, i32* %t2860, align 4
  %t151 = sdiv i32 %t150, 2
  store i32 %t151, i32* %t2860, align 4
  %t153 = load i32, i32* %t2858, align 4
  %t154 = add i32 %t153, 1
  store i32 %t154, i32* %t2858, align 4
  br label %B2955
B2971:                               	; preds = %B2957
  store i32 0, i32* %t2857, align 4
  br label %B2973
B2976:                               	; preds = %B2957
  br label %B2972
B3011:                               	; preds = %B3016, %B3022
  %t236 = load i32, i32* %t2859, align 4
  %t237 = sdiv i32 %t236, 2
  store i32 %t237, i32* %t2859, align 4
  %t239 = load i32, i32* %t2860, align 4
  %t240 = sdiv i32 %t239, 2
  store i32 %t240, i32* %t2860, align 4
  %t242 = load i32, i32* %t2858, align 4
  %t243 = add i32 %t242, 1
  store i32 %t243, i32* %t2858, align 4
  br label %B3003
B3022:                               	; preds = %B3021, %B3024
  br label %B3011
B3035:                               	; preds = %B3028
  %t256 = load i32, i32* %t2860, align 4
  %t257 = srem i32 %t256, 2
  %t260 = icmp ne i32 %t257, 0
  br i1 %t260, label %B3033, label %B3040
B3037:                               	; preds = %B3028
  br label %B3034
B3029:                               	; preds = %B3032
  %t277 = load i32, i32* %t2857, align 4
  store i32 %t277, i32* %t2995, align 4
  %t278 = icmp sgt i32 1, 15
  br i1 %t278, label %B3043, label %B3048
B3086:                               	; preds = %B3084, %B3085
  br label %B3080
B3085:                               	; preds = %B3089
  %t346 = load i32, i32* %t2859, align 4
  %t347 = load i32, i32* %t2860, align 4
  %t348 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t347
  %t3092 = load i32, i32* %t348, align 4
  %t349 = sdiv i32 %t346, %t3092
  store i32 %t349, i32* %t2857, align 4
  br label %B3086
B3080:                               	; preds = %B3079, %B3086
  br label %B3068
B3140:                               	; preds = %B3145, %B3151
  %t433 = load i32, i32* %t2859, align 4
  %t434 = sdiv i32 %t433, 2
  store i32 %t434, i32* %t2859, align 4
  %t436 = load i32, i32* %t2860, align 4
  %t437 = sdiv i32 %t436, 2
  store i32 %t437, i32* %t2860, align 4
  %t439 = load i32, i32* %t2858, align 4
  %t440 = add i32 %t439, 1
  store i32 %t440, i32* %t2858, align 4
  br label %B3132
B3151:                               	; preds = %B3150, %B3153
  br label %B3140
B3164:                               	; preds = %B3157
  %t453 = load i32, i32* %t2860, align 4
  %t454 = srem i32 %t453, 2
  %t457 = icmp ne i32 %t454, 0
  br i1 %t457, label %B3162, label %B3169
B3166:                               	; preds = %B3157
  br label %B3163
B3158:                               	; preds = %B3161
  %t474 = load i32, i32* %t2857, align 4
  store i32 %t474, i32* %t3124, align 4
  %t475 = icmp sgt i32 1, 15
  br i1 %t475, label %B3172, label %B3177
B3217:                               	; preds = %B3216, %B3220
  br label %B3212
B3222:                               	; preds = %B3211
  %t546 = load i32, i32* %t2857, align 4
  %t547 = load i32, i32* %t2858, align 4
  %t548 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t547
  %t3227 = load i32, i32* %t548, align 4
  %t549 = mul i32 1, %t3227
  %t550 = add i32 %t546, %t549
  store i32 %t550, i32* %t2857, align 4
  br label %B3223
B3225:                               	; preds = %B3211
  br label %B3223
B3229:                               	; preds = %B3228
  %t572 = load i32, i32* %t2859, align 4
  %t573 = srem i32 %t572, 2
  %t577 = icmp ne i32 %t573, 0
  br i1 %t577, label %B3236, label %B3238
B3233:                               	; preds = %B3228
  br label %B3230
B3269:                               	; preds = %B3275, %B3281
  %t671 = load i32, i32* %t2857, align 4
  store i32 %t671, i32* %t3094, align 4
  br label %B3096
B3285:                               	; preds = %B3279
  %t651 = load i32, i32* %t2859, align 4
  %t652 = load i32, i32* %t2860, align 4
  %t653 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t652
  %t3291 = load i32, i32* %t653, align 4
  %t654 = sdiv i32 %t651, %t3291
  store i32 %t654, i32* %t2859, align 4
  %t656 = load i32, i32* %t2859, align 4
  %t657 = add i32 %t656, 65536
  %t658 = load i32, i32* %t2860, align 4
  %t659 = sub i32 15, %t658
  %t660 = add i32 %t659, 1
  %t661 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t660
  %t3292 = load i32, i32* %t661, align 4
  %t662 = sub i32 %t657, %t3292
  store i32 %t662, i32* %t2857, align 4
  br label %B3287
B3290:                               	; preds = %B3279
  br label %B3286
B3280:                               	; preds = %B3284
  %t669 = load i32, i32* %t2859, align 4
  store i32 %t669, i32* %t2857, align 4
  br label %B3281
B3402:                               	; preds = %B3396
  %t807 = load i32, i32* %t2857, align 4
  %t808 = load i32, i32* %t2858, align 4
  %t809 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t808
  %t3407 = load i32, i32* %t809, align 4
  %t810 = mul i32 1, %t3407
  %t811 = add i32 %t807, %t810
  store i32 %t811, i32* %t2857, align 4
  br label %B3403
B3406:                               	; preds = %B3396
  br label %B3403
B3397:                               	; preds = %B3400
  %t812 = load i32, i32* %t2860, align 4
  %t813 = srem i32 %t812, 2
  %t820 = icmp ne i32 %t813, 0
  br i1 %t820, label %B3408, label %B3411
B3414:                               	; preds = %B3392, %B3421
  %t839 = load i32, i32* %t2858, align 4
  %t840 = icmp slt i32 %t839, 16
  br i1 %t840, label %B3415, label %B3419
B3468:                               	; preds = %B3463
  %t924 = load i32, i32* %t2860, align 4
  %t925 = srem i32 %t924, 2
  %t926 = icmp eq i32 %t925, 0
  br i1 %t926, label %B3474, label %B3478
B3472:                               	; preds = %B3463
  br label %B3469
B3464:                               	; preds = %B3467
  %t953 = load i32, i32* %t2857, align 4
  store i32 %t953, i32* %t3455, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t957 = load i32, i32* %t3453, align 4
  store i32 %t957, i32* %t2859, align 4
  %t959 = load i32, i32* %t3454, align 4
  store i32 %t959, i32* %t2860, align 4
  br label %B3486
B3531:                               	; preds = %B3525
  store i32 65535, i32* %t2857, align 4
  br label %B3533
B3536:                               	; preds = %B3525
  br label %B3532
B3526:                               	; preds = %B3530
  %t1036 = load i32, i32* %t2860, align 4
  %t1037 = icmp sgt i32 %t1036, 0
  br i1 %t1037, label %B3537, label %B3542
B3597:                               	; preds = %B3592
  %t1121 = load i32, i32* %t2860, align 4
  %t1122 = srem i32 %t1121, 2
  %t1123 = icmp eq i32 %t1122, 0
  br i1 %t1123, label %B3603, label %B3607
B3601:                               	; preds = %B3592
  br label %B3598
B3593:                               	; preds = %B3596
  %t1150 = load i32, i32* %t2857, align 4
  store i32 %t1150, i32* %t3584, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1154 = load i32, i32* %t3582, align 4
  store i32 %t1154, i32* %t2859, align 4
  %t1156 = load i32, i32* %t3583, align 4
  store i32 %t1156, i32* %t2860, align 4
  br label %B3615
B3664:                               	; preds = %B3663
  %t1240 = load i32, i32* %t2859, align 4
  %t1241 = srem i32 %t1240, 2
  %t1260 = icmp ne i32 %t1241, 0
  br i1 %t1260, label %B3669, label %B3673
B3668:                               	; preds = %B3663
  br label %B3665
B3726:                               	; preds = %B3659
  %t1350 = load i32, i32* %t2859, align 4
  %t1351 = icmp slt i32 %t1350, 0
  br i1 %t1351, label %B3732, label %B3737
B3731:                               	; preds = %B3659
  br label %B3727
B3849:                               	; preds = %B3841, %B3897
  %t1503 = load i32, i32* %t3847, align 4
  %t1504 = icmp ne i32 %t1503, 0
  br i1 %t1504, label %B3850, label %B3853
B3842:                               	; preds = %B3844, %B3851
  %t1619 = load i32, i32* %t3816, align 4
  store i32 %t1619, i32* %t3918, align 4
  %t1621 = load i32, i32* %t3816, align 4
  store i32 %t1621, i32* %t3919, align 4
  br label %B3921
B4032:                               	; preds = %B4034
  %t1801 = load i32, i32* %t2857, align 4
  %t1802 = load i32, i32* %t2858, align 4
  %t1803 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1802
  %t4041 = load i32, i32* %t1803, align 4
  %t1804 = mul i32 1, %t4041
  %t1805 = add i32 %t1801, %t1804
  store i32 %t1805, i32* %t2857, align 4
  br label %B4033
B4039:                               	; preds = %B4034
  br label %B4033
B4033:                               	; preds = %B4032, %B4036, %B4039
  %t1807 = load i32, i32* %t2859, align 4
  %t1808 = sdiv i32 %t1807, 2
  store i32 %t1808, i32* %t2859, align 4
  %t1810 = load i32, i32* %t2860, align 4
  %t1811 = sdiv i32 %t1810, 2
  store i32 %t1811, i32* %t2860, align 4
  %t1813 = load i32, i32* %t2858, align 4
  %t1814 = add i32 %t1813, 1
  store i32 %t1814, i32* %t2858, align 4
  br label %B4026
B4042:                               	; preds = %B4028
  %t1816 = load i32, i32* %t4019, align 4
  store i32 %t1816, i32* %t4047, align 4
  %t1818 = load i32, i32* %t4017, align 4
  store i32 %t1818, i32* %t4048, align 4
  br label %B4050
B4045:                               	; preds = %B4028
  br label %B4043
B4226:                               	; preds = %B4224, %B4225
  br label %B4220
B4225:                               	; preds = %B4229
  store i32 0, i32* %t2857, align 4
  br label %B4226
B4230:                               	; preds = %B4219
  %t2107 = load i32, i32* %t2859, align 4
  %t2108 = icmp sgt i32 %t2107, 32767
  br i1 %t2108, label %B4236, label %B4241
B4235:                               	; preds = %B4219
  br label %B4231
B4291:                               	; preds = %B4290
  %t2190 = load i32, i32* %t2859, align 4
  %t2191 = srem i32 %t2190, 2
  %t2195 = icmp ne i32 %t2191, 0
  br i1 %t2195, label %B4298, label %B4300
B4295:                               	; preds = %B4290
  br label %B4292
B4491:                               	; preds = %B4486, %B4498
  %t2506 = load i32, i32* %t2858, align 4
  %t2507 = icmp slt i32 %t2506, 16
  br i1 %t2507, label %B4492, label %B4496
B4487:                               	; preds = %B4489
  %t2808 = load i32, i32* %t4484, align 4
  store i32 %t2808, i32* %t2857, align 4
  %t2810 = load i32, i32* %t2857, align 4
  store i32 %t2810, i32* %t4251, align 4
  %t2812 = load i32, i32* %t4252, align 4
  store i32 %t2812, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2814 = load i32, i32* %t2860, align 4
  %t2815 = icmp sge i32 %t2814, 15
  br i1 %t2815, label %B4683, label %B4688
B2973:                               	; preds = %B2971, %B2980
  %t191 = load i32, i32* %t2857, align 4
  store i32 %t191, i32* %t2923, align 4
  %t193 = load i32, i32* %t2924, align 4
  store i32 %t193, i32* %t2922, align 4
  br label %B2925
B2972:                               	; preds = %B2976
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t162 = load i32, i32* %t2923, align 4
  %t163 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t2977 = load i32, i32* %t163, align 4
  %t164 = mul i32 %t162, %t2977
  store i32 %t164, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B2978
B3033:                               	; preds = %B3035
  %t262 = load i32, i32* %t2857, align 4
  %t263 = load i32, i32* %t2858, align 4
  %t264 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t263
  %t3042 = load i32, i32* %t264, align 4
  %t265 = mul i32 1, %t3042
  %t266 = add i32 %t262, %t265
  store i32 %t266, i32* %t2857, align 4
  br label %B3034
B3040:                               	; preds = %B3035
  br label %B3034
B3034:                               	; preds = %B3033, %B3037, %B3040
  %t268 = load i32, i32* %t2859, align 4
  %t269 = sdiv i32 %t268, 2
  store i32 %t269, i32* %t2859, align 4
  %t271 = load i32, i32* %t2860, align 4
  %t272 = sdiv i32 %t271, 2
  store i32 %t272, i32* %t2860, align 4
  %t274 = load i32, i32* %t2858, align 4
  %t275 = add i32 %t274, 1
  store i32 %t275, i32* %t2858, align 4
  br label %B3027
B3043:                               	; preds = %B3029
  store i32 0, i32* %t2857, align 4
  br label %B3045
B3048:                               	; preds = %B3029
  br label %B3044
B3162:                               	; preds = %B3164
  %t459 = load i32, i32* %t2857, align 4
  %t460 = load i32, i32* %t2858, align 4
  %t461 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t460
  %t3171 = load i32, i32* %t461, align 4
  %t462 = mul i32 1, %t3171
  %t463 = add i32 %t459, %t462
  store i32 %t463, i32* %t2857, align 4
  br label %B3163
B3169:                               	; preds = %B3164
  br label %B3163
B3163:                               	; preds = %B3162, %B3166, %B3169
  %t465 = load i32, i32* %t2859, align 4
  %t466 = sdiv i32 %t465, 2
  store i32 %t466, i32* %t2859, align 4
  %t468 = load i32, i32* %t2860, align 4
  %t469 = sdiv i32 %t468, 2
  store i32 %t469, i32* %t2860, align 4
  %t471 = load i32, i32* %t2858, align 4
  %t472 = add i32 %t471, 1
  store i32 %t472, i32* %t2858, align 4
  br label %B3156
B3172:                               	; preds = %B3158
  store i32 0, i32* %t2857, align 4
  br label %B3174
B3177:                               	; preds = %B3158
  br label %B3173
B3212:                               	; preds = %B3217, %B3223
  %t554 = load i32, i32* %t2859, align 4
  %t555 = sdiv i32 %t554, 2
  store i32 %t555, i32* %t2859, align 4
  %t557 = load i32, i32* %t2860, align 4
  %t558 = sdiv i32 %t557, 2
  store i32 %t558, i32* %t2860, align 4
  %t560 = load i32, i32* %t2858, align 4
  %t561 = add i32 %t560, 1
  store i32 %t561, i32* %t2858, align 4
  br label %B3204
B3223:                               	; preds = %B3222, %B3225
  br label %B3212
B3236:                               	; preds = %B3229
  %t574 = load i32, i32* %t2860, align 4
  %t575 = srem i32 %t574, 2
  %t578 = icmp ne i32 %t575, 0
  br i1 %t578, label %B3234, label %B3241
B3238:                               	; preds = %B3229
  br label %B3235
B3230:                               	; preds = %B3233
  %t595 = load i32, i32* %t2857, align 4
  store i32 %t595, i32* %t3196, align 4
  %t596 = icmp sgt i32 1, 15
  br i1 %t596, label %B3244, label %B3249
B3287:                               	; preds = %B3285, %B3286
  br label %B3281
B3286:                               	; preds = %B3290
  %t664 = load i32, i32* %t2859, align 4
  %t665 = load i32, i32* %t2860, align 4
  %t666 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t665
  %t3293 = load i32, i32* %t666, align 4
  %t667 = sdiv i32 %t664, %t3293
  store i32 %t667, i32* %t2857, align 4
  br label %B3287
B3281:                               	; preds = %B3280, %B3287
  br label %B3269
B3403:                               	; preds = %B3402, %B3406
  br label %B3398
B3408:                               	; preds = %B3397
  %t815 = load i32, i32* %t2857, align 4
  %t816 = load i32, i32* %t2858, align 4
  %t817 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t816
  %t3413 = load i32, i32* %t817, align 4
  %t818 = mul i32 1, %t3413
  %t819 = add i32 %t815, %t818
  store i32 %t819, i32* %t2857, align 4
  br label %B3409
B3411:                               	; preds = %B3397
  br label %B3409
B3415:                               	; preds = %B3414
  %t841 = load i32, i32* %t2859, align 4
  %t842 = srem i32 %t841, 2
  %t846 = icmp ne i32 %t842, 0
  br i1 %t846, label %B3422, label %B3424
B3419:                               	; preds = %B3414
  br label %B3416
B3474:                               	; preds = %B3468
  %t928 = load i32, i32* %t2857, align 4
  %t929 = load i32, i32* %t2858, align 4
  %t930 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t929
  %t3479 = load i32, i32* %t930, align 4
  %t931 = mul i32 1, %t3479
  %t932 = add i32 %t928, %t931
  store i32 %t932, i32* %t2857, align 4
  br label %B3475
B3478:                               	; preds = %B3468
  br label %B3475
B3469:                               	; preds = %B3472
  %t933 = load i32, i32* %t2860, align 4
  %t934 = srem i32 %t933, 2
  %t941 = icmp ne i32 %t934, 0
  br i1 %t941, label %B3480, label %B3483
B3486:                               	; preds = %B3464, %B3493
  %t960 = load i32, i32* %t2858, align 4
  %t961 = icmp slt i32 %t960, 16
  br i1 %t961, label %B3487, label %B3491
B3533:                               	; preds = %B3531, %B3532
  br label %B3527
B3532:                               	; preds = %B3536
  store i32 0, i32* %t2857, align 4
  br label %B3533
B3537:                               	; preds = %B3526
  %t1038 = load i32, i32* %t2859, align 4
  %t1039 = icmp sgt i32 %t1038, 32767
  br i1 %t1039, label %B3543, label %B3548
B3542:                               	; preds = %B3526
  br label %B3538
B3603:                               	; preds = %B3597
  %t1125 = load i32, i32* %t2857, align 4
  %t1126 = load i32, i32* %t2858, align 4
  %t1127 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1126
  %t3608 = load i32, i32* %t1127, align 4
  %t1128 = mul i32 1, %t3608
  %t1129 = add i32 %t1125, %t1128
  store i32 %t1129, i32* %t2857, align 4
  br label %B3604
B3607:                               	; preds = %B3597
  br label %B3604
B3598:                               	; preds = %B3601
  %t1130 = load i32, i32* %t2860, align 4
  %t1131 = srem i32 %t1130, 2
  %t1138 = icmp ne i32 %t1131, 0
  br i1 %t1138, label %B3609, label %B3612
B3615:                               	; preds = %B3593, %B3622
  %t1157 = load i32, i32* %t2858, align 4
  %t1158 = icmp slt i32 %t1157, 16
  br i1 %t1158, label %B3616, label %B3620
B3669:                               	; preds = %B3664
  %t1242 = load i32, i32* %t2860, align 4
  %t1243 = srem i32 %t1242, 2
  %t1244 = icmp eq i32 %t1243, 0
  br i1 %t1244, label %B3675, label %B3679
B3673:                               	; preds = %B3664
  br label %B3670
B3665:                               	; preds = %B3668
  %t1271 = load i32, i32* %t2857, align 4
  store i32 %t1271, i32* %t3656, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1275 = load i32, i32* %t3654, align 4
  store i32 %t1275, i32* %t2859, align 4
  %t1277 = load i32, i32* %t3655, align 4
  store i32 %t1277, i32* %t2860, align 4
  br label %B3687
B3732:                               	; preds = %B3726
  store i32 65535, i32* %t2857, align 4
  br label %B3734
B3737:                               	; preds = %B3726
  br label %B3733
B3727:                               	; preds = %B3731
  %t1354 = load i32, i32* %t2860, align 4
  %t1355 = icmp sgt i32 %t1354, 0
  br i1 %t1355, label %B3738, label %B3743
B3850:                               	; preds = %B3849
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1508 = load i32, i32* %t3846, align 4
  store i32 %t1508, i32* %t2859, align 4
  %t1510 = load i32, i32* %t3847, align 4
  store i32 %t1510, i32* %t2860, align 4
  br label %B3855
B3853:                               	; preds = %B3849
  br label %B3851
B3921:                               	; preds = %B3842, %B3969
  %t1624 = load i32, i32* %t3919, align 4
  %t1625 = icmp ne i32 %t1624, 0
  br i1 %t1625, label %B3922, label %B3925
B4050:                               	; preds = %B4042, %B4098
  %t1821 = load i32, i32* %t4048, align 4
  %t1822 = icmp ne i32 %t1821, 0
  br i1 %t1822, label %B4051, label %B4054
B4043:                               	; preds = %B4045, %B4052
  %t1937 = load i32, i32* %t4017, align 4
  store i32 %t1937, i32* %t4119, align 4
  %t1939 = load i32, i32* %t4017, align 4
  store i32 %t1939, i32* %t4120, align 4
  br label %B4122
B4220:                               	; preds = %B4226, %B4232
  %t2130 = load i32, i32* %t2857, align 4
  store i32 %t2130, i32* %t3787, align 4
  br label %B3789
B4236:                               	; preds = %B4230
  %t2110 = load i32, i32* %t2859, align 4
  %t2111 = load i32, i32* %t2860, align 4
  %t2112 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2111
  %t4242 = load i32, i32* %t2112, align 4
  %t2113 = sdiv i32 %t2110, %t4242
  store i32 %t2113, i32* %t2859, align 4
  %t2115 = load i32, i32* %t2859, align 4
  %t2116 = add i32 %t2115, 65536
  %t2117 = load i32, i32* %t2860, align 4
  %t2118 = sub i32 15, %t2117
  %t2119 = add i32 %t2118, 1
  %t2120 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2119
  %t4243 = load i32, i32* %t2120, align 4
  %t2121 = sub i32 %t2116, %t4243
  store i32 %t2121, i32* %t2857, align 4
  br label %B4238
B4241:                               	; preds = %B4230
  br label %B4237
B4231:                               	; preds = %B4235
  %t2128 = load i32, i32* %t2859, align 4
  store i32 %t2128, i32* %t2857, align 4
  br label %B4232
B4298:                               	; preds = %B4291
  %t2192 = load i32, i32* %t2860, align 4
  %t2193 = srem i32 %t2192, 2
  %t2196 = icmp ne i32 %t2193, 0
  br i1 %t2196, label %B4296, label %B4303
B4300:                               	; preds = %B4291
  br label %B4297
B4292:                               	; preds = %B4295
  %t2212 = load i32, i32* %t2857, align 4
  %t2333 = icmp ne i32 %t2212, 0
  br i1 %t2333, label %B4306, label %B4309
B4492:                               	; preds = %B4491
  %t2508 = load i32, i32* %t2859, align 4
  %t2509 = srem i32 %t2508, 2
  %t2513 = icmp ne i32 %t2509, 0
  br i1 %t2513, label %B4499, label %B4501
B4496:                               	; preds = %B4491
  br label %B4493
B4683:                               	; preds = %B4487
  %t2816 = load i32, i32* %t2859, align 4
  %t2817 = icmp slt i32 %t2816, 0
  br i1 %t2817, label %B4689, label %B4694
B4688:                               	; preds = %B4487
  br label %B4684
B2978:                               	; preds = %B2972, %B2985
  %t166 = load i32, i32* %t2858, align 4
  %t167 = icmp slt i32 %t166, 16
  br i1 %t167, label %B2979, label %B2983
B3045:                               	; preds = %B3043, %B3052
  %t312 = load i32, i32* %t2857, align 4
  store i32 %t312, i32* %t2995, align 4
  %t314 = load i32, i32* %t2996, align 4
  store i32 %t314, i32* %t2994, align 4
  br label %B2997
B3044:                               	; preds = %B3048
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t283 = load i32, i32* %t2995, align 4
  %t284 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3049 = load i32, i32* %t284, align 4
  %t285 = mul i32 %t283, %t3049
  store i32 %t285, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3050
B3174:                               	; preds = %B3172, %B3181
  %t509 = load i32, i32* %t2857, align 4
  store i32 %t509, i32* %t3124, align 4
  %t511 = load i32, i32* %t3125, align 4
  store i32 %t511, i32* %t3123, align 4
  br label %B3126
B3173:                               	; preds = %B3177
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t480 = load i32, i32* %t3124, align 4
  %t481 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3178 = load i32, i32* %t481, align 4
  %t482 = mul i32 %t480, %t3178
  store i32 %t482, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3179
B3234:                               	; preds = %B3236
  %t580 = load i32, i32* %t2857, align 4
  %t581 = load i32, i32* %t2858, align 4
  %t582 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t581
  %t3243 = load i32, i32* %t582, align 4
  %t583 = mul i32 1, %t3243
  %t584 = add i32 %t580, %t583
  store i32 %t584, i32* %t2857, align 4
  br label %B3235
B3241:                               	; preds = %B3236
  br label %B3235
B3235:                               	; preds = %B3234, %B3238, %B3241
  %t586 = load i32, i32* %t2859, align 4
  %t587 = sdiv i32 %t586, 2
  store i32 %t587, i32* %t2859, align 4
  %t589 = load i32, i32* %t2860, align 4
  %t590 = sdiv i32 %t589, 2
  store i32 %t590, i32* %t2860, align 4
  %t592 = load i32, i32* %t2858, align 4
  %t593 = add i32 %t592, 1
  store i32 %t593, i32* %t2858, align 4
  br label %B3228
B3244:                               	; preds = %B3230
  store i32 0, i32* %t2857, align 4
  br label %B3246
B3249:                               	; preds = %B3230
  br label %B3245
B3398:                               	; preds = %B3403, %B3409
  %t823 = load i32, i32* %t2859, align 4
  %t824 = sdiv i32 %t823, 2
  store i32 %t824, i32* %t2859, align 4
  %t826 = load i32, i32* %t2860, align 4
  %t827 = sdiv i32 %t826, 2
  store i32 %t827, i32* %t2860, align 4
  %t829 = load i32, i32* %t2858, align 4
  %t830 = add i32 %t829, 1
  store i32 %t830, i32* %t2858, align 4
  br label %B3390
B3409:                               	; preds = %B3408, %B3411
  br label %B3398
B3422:                               	; preds = %B3415
  %t843 = load i32, i32* %t2860, align 4
  %t844 = srem i32 %t843, 2
  %t847 = icmp ne i32 %t844, 0
  br i1 %t847, label %B3420, label %B3427
B3424:                               	; preds = %B3415
  br label %B3421
B3416:                               	; preds = %B3419
  %t864 = load i32, i32* %t2857, align 4
  store i32 %t864, i32* %t3382, align 4
  %t865 = icmp sgt i32 1, 15
  br i1 %t865, label %B3430, label %B3435
B3475:                               	; preds = %B3474, %B3478
  br label %B3470
B3480:                               	; preds = %B3469
  %t936 = load i32, i32* %t2857, align 4
  %t937 = load i32, i32* %t2858, align 4
  %t938 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t937
  %t3485 = load i32, i32* %t938, align 4
  %t939 = mul i32 1, %t3485
  %t940 = add i32 %t936, %t939
  store i32 %t940, i32* %t2857, align 4
  br label %B3481
B3483:                               	; preds = %B3469
  br label %B3481
B3487:                               	; preds = %B3486
  %t962 = load i32, i32* %t2859, align 4
  %t963 = srem i32 %t962, 2
  %t967 = icmp ne i32 %t963, 0
  br i1 %t967, label %B3494, label %B3496
B3491:                               	; preds = %B3486
  br label %B3488
B3527:                               	; preds = %B3533, %B3539
  %t1061 = load i32, i32* %t2857, align 4
  store i32 %t1061, i32* %t3352, align 4
  br label %B3354
B3543:                               	; preds = %B3537
  %t1041 = load i32, i32* %t2859, align 4
  %t1042 = load i32, i32* %t2860, align 4
  %t1043 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1042
  %t3549 = load i32, i32* %t1043, align 4
  %t1044 = sdiv i32 %t1041, %t3549
  store i32 %t1044, i32* %t2859, align 4
  %t1046 = load i32, i32* %t2859, align 4
  %t1047 = add i32 %t1046, 65536
  %t1048 = load i32, i32* %t2860, align 4
  %t1049 = sub i32 15, %t1048
  %t1050 = add i32 %t1049, 1
  %t1051 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1050
  %t3550 = load i32, i32* %t1051, align 4
  %t1052 = sub i32 %t1047, %t3550
  store i32 %t1052, i32* %t2857, align 4
  br label %B3545
B3548:                               	; preds = %B3537
  br label %B3544
B3538:                               	; preds = %B3542
  %t1059 = load i32, i32* %t2859, align 4
  store i32 %t1059, i32* %t2857, align 4
  br label %B3539
B3604:                               	; preds = %B3603, %B3607
  br label %B3599
B3609:                               	; preds = %B3598
  %t1133 = load i32, i32* %t2857, align 4
  %t1134 = load i32, i32* %t2858, align 4
  %t1135 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1134
  %t3614 = load i32, i32* %t1135, align 4
  %t1136 = mul i32 1, %t3614
  %t1137 = add i32 %t1133, %t1136
  store i32 %t1137, i32* %t2857, align 4
  br label %B3610
B3612:                               	; preds = %B3598
  br label %B3610
B3616:                               	; preds = %B3615
  %t1159 = load i32, i32* %t2859, align 4
  %t1160 = srem i32 %t1159, 2
  %t1164 = icmp ne i32 %t1160, 0
  br i1 %t1164, label %B3623, label %B3625
B3620:                               	; preds = %B3615
  br label %B3617
B3675:                               	; preds = %B3669
  %t1246 = load i32, i32* %t2857, align 4
  %t1247 = load i32, i32* %t2858, align 4
  %t1248 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1247
  %t3680 = load i32, i32* %t1248, align 4
  %t1249 = mul i32 1, %t3680
  %t1250 = add i32 %t1246, %t1249
  store i32 %t1250, i32* %t2857, align 4
  br label %B3676
B3679:                               	; preds = %B3669
  br label %B3676
B3670:                               	; preds = %B3673
  %t1251 = load i32, i32* %t2860, align 4
  %t1252 = srem i32 %t1251, 2
  %t1259 = icmp ne i32 %t1252, 0
  br i1 %t1259, label %B3681, label %B3684
B3687:                               	; preds = %B3665, %B3694
  %t1278 = load i32, i32* %t2858, align 4
  %t1279 = icmp slt i32 %t1278, 16
  br i1 %t1279, label %B3688, label %B3692
B3734:                               	; preds = %B3732, %B3733
  br label %B3728
B3733:                               	; preds = %B3737
  store i32 0, i32* %t2857, align 4
  br label %B3734
B3738:                               	; preds = %B3727
  %t1356 = load i32, i32* %t2859, align 4
  %t1357 = icmp sgt i32 %t1356, 32767
  br i1 %t1357, label %B3744, label %B3749
B3743:                               	; preds = %B3727
  br label %B3739
B3855:                               	; preds = %B3850, %B3863
  %t1511 = load i32, i32* %t2858, align 4
  %t1512 = icmp slt i32 %t1511, 16
  br i1 %t1512, label %B3856, label %B3860
B3851:                               	; preds = %B3853
  %t1615 = load i32, i32* %t3846, align 4
  store i32 %t1615, i32* %t2857, align 4
  %t1617 = load i32, i32* %t2857, align 4
  store i32 %t1617, i32* %t3818, align 4
  br label %B3842
B3922:                               	; preds = %B3921
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1629 = load i32, i32* %t3918, align 4
  store i32 %t1629, i32* %t2859, align 4
  %t1631 = load i32, i32* %t3919, align 4
  store i32 %t1631, i32* %t2860, align 4
  br label %B3927
B3925:                               	; preds = %B3921
  br label %B3923
B4051:                               	; preds = %B4050
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1826 = load i32, i32* %t4047, align 4
  store i32 %t1826, i32* %t2859, align 4
  %t1828 = load i32, i32* %t4048, align 4
  store i32 %t1828, i32* %t2860, align 4
  br label %B4056
B4054:                               	; preds = %B4050
  br label %B4052
B4122:                               	; preds = %B4043, %B4170
  %t1942 = load i32, i32* %t4120, align 4
  %t1943 = icmp ne i32 %t1942, 0
  br i1 %t1943, label %B4123, label %B4126
B4238:                               	; preds = %B4236, %B4237
  br label %B4232
B4237:                               	; preds = %B4241
  %t2123 = load i32, i32* %t2859, align 4
  %t2124 = load i32, i32* %t2860, align 4
  %t2125 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2124
  %t4244 = load i32, i32* %t2125, align 4
  %t2126 = sdiv i32 %t2123, %t4244
  store i32 %t2126, i32* %t2857, align 4
  br label %B4238
B4232:                               	; preds = %B4231, %B4238
  br label %B4220
B4296:                               	; preds = %B4298
  %t2198 = load i32, i32* %t2857, align 4
  %t2199 = load i32, i32* %t2858, align 4
  %t2200 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2199
  %t4305 = load i32, i32* %t2200, align 4
  %t2201 = mul i32 1, %t4305
  %t2202 = add i32 %t2198, %t2201
  store i32 %t2202, i32* %t2857, align 4
  br label %B4297
B4303:                               	; preds = %B4298
  br label %B4297
B4297:                               	; preds = %B4296, %B4300, %B4303
  %t2204 = load i32, i32* %t2859, align 4
  %t2205 = sdiv i32 %t2204, 2
  store i32 %t2205, i32* %t2859, align 4
  %t2207 = load i32, i32* %t2860, align 4
  %t2208 = sdiv i32 %t2207, 2
  store i32 %t2208, i32* %t2860, align 4
  %t2210 = load i32, i32* %t2858, align 4
  %t2211 = add i32 %t2210, 1
  store i32 %t2211, i32* %t2858, align 4
  br label %B4290
B4306:                               	; preds = %B4292
  %t2213 = load i32, i32* %t4283, align 4
  store i32 %t2213, i32* %t4311, align 4
  %t2215 = load i32, i32* %t4281, align 4
  store i32 %t2215, i32* %t4312, align 4
  br label %B4314
B4309:                               	; preds = %B4292
  br label %B4307
B4499:                               	; preds = %B4492
  %t2510 = load i32, i32* %t2860, align 4
  %t2511 = srem i32 %t2510, 2
  %t2514 = icmp ne i32 %t2511, 0
  br i1 %t2514, label %B4497, label %B4504
B4501:                               	; preds = %B4492
  br label %B4498
B4493:                               	; preds = %B4496
  %t2530 = load i32, i32* %t2857, align 4
  %t2651 = icmp ne i32 %t2530, 0
  br i1 %t2651, label %B4507, label %B4510
B4689:                               	; preds = %B4683
  store i32 65535, i32* %t2857, align 4
  br label %B4691
B4694:                               	; preds = %B4683
  br label %B4690
B4684:                               	; preds = %B4688
  %t2820 = load i32, i32* %t2860, align 4
  %t2821 = icmp sgt i32 %t2820, 0
  br i1 %t2821, label %B4695, label %B4700
B2979:                               	; preds = %B2978
  %t168 = load i32, i32* %t2859, align 4
  %t169 = srem i32 %t168, 2
  %t173 = icmp ne i32 %t169, 0
  br i1 %t173, label %B2986, label %B2988
B2983:                               	; preds = %B2978
  br label %B2980
B3050:                               	; preds = %B3044, %B3057
  %t287 = load i32, i32* %t2858, align 4
  %t288 = icmp slt i32 %t287, 16
  br i1 %t288, label %B3051, label %B3055
B3179:                               	; preds = %B3173, %B3186
  %t484 = load i32, i32* %t2858, align 4
  %t485 = icmp slt i32 %t484, 16
  br i1 %t485, label %B3180, label %B3184
B3246:                               	; preds = %B3244, %B3253
  %t630 = load i32, i32* %t2857, align 4
  store i32 %t630, i32* %t3196, align 4
  %t632 = load i32, i32* %t3197, align 4
  store i32 %t632, i32* %t3195, align 4
  br label %B3198
B3245:                               	; preds = %B3249
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t601 = load i32, i32* %t3196, align 4
  %t602 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3250 = load i32, i32* %t602, align 4
  %t603 = mul i32 %t601, %t3250
  store i32 %t603, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3251
B3420:                               	; preds = %B3422
  %t849 = load i32, i32* %t2857, align 4
  %t850 = load i32, i32* %t2858, align 4
  %t851 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t850
  %t3429 = load i32, i32* %t851, align 4
  %t852 = mul i32 1, %t3429
  %t853 = add i32 %t849, %t852
  store i32 %t853, i32* %t2857, align 4
  br label %B3421
B3427:                               	; preds = %B3422
  br label %B3421
B3421:                               	; preds = %B3420, %B3424, %B3427
  %t855 = load i32, i32* %t2859, align 4
  %t856 = sdiv i32 %t855, 2
  store i32 %t856, i32* %t2859, align 4
  %t858 = load i32, i32* %t2860, align 4
  %t859 = sdiv i32 %t858, 2
  store i32 %t859, i32* %t2860, align 4
  %t861 = load i32, i32* %t2858, align 4
  %t862 = add i32 %t861, 1
  store i32 %t862, i32* %t2858, align 4
  br label %B3414
B3430:                               	; preds = %B3416
  store i32 0, i32* %t2857, align 4
  br label %B3432
B3435:                               	; preds = %B3416
  br label %B3431
B3470:                               	; preds = %B3475, %B3481
  %t944 = load i32, i32* %t2859, align 4
  %t945 = sdiv i32 %t944, 2
  store i32 %t945, i32* %t2859, align 4
  %t947 = load i32, i32* %t2860, align 4
  %t948 = sdiv i32 %t947, 2
  store i32 %t948, i32* %t2860, align 4
  %t950 = load i32, i32* %t2858, align 4
  %t951 = add i32 %t950, 1
  store i32 %t951, i32* %t2858, align 4
  br label %B3462
B3481:                               	; preds = %B3480, %B3483
  br label %B3470
B3494:                               	; preds = %B3487
  %t964 = load i32, i32* %t2860, align 4
  %t965 = srem i32 %t964, 2
  %t968 = icmp ne i32 %t965, 0
  br i1 %t968, label %B3492, label %B3499
B3496:                               	; preds = %B3487
  br label %B3493
B3488:                               	; preds = %B3491
  %t985 = load i32, i32* %t2857, align 4
  store i32 %t985, i32* %t3454, align 4
  %t986 = icmp sgt i32 1, 15
  br i1 %t986, label %B3502, label %B3507
B3545:                               	; preds = %B3543, %B3544
  br label %B3539
B3544:                               	; preds = %B3548
  %t1054 = load i32, i32* %t2859, align 4
  %t1055 = load i32, i32* %t2860, align 4
  %t1056 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1055
  %t3551 = load i32, i32* %t1056, align 4
  %t1057 = sdiv i32 %t1054, %t3551
  store i32 %t1057, i32* %t2857, align 4
  br label %B3545
B3539:                               	; preds = %B3538, %B3545
  br label %B3527
B3599:                               	; preds = %B3604, %B3610
  %t1141 = load i32, i32* %t2859, align 4
  %t1142 = sdiv i32 %t1141, 2
  store i32 %t1142, i32* %t2859, align 4
  %t1144 = load i32, i32* %t2860, align 4
  %t1145 = sdiv i32 %t1144, 2
  store i32 %t1145, i32* %t2860, align 4
  %t1147 = load i32, i32* %t2858, align 4
  %t1148 = add i32 %t1147, 1
  store i32 %t1148, i32* %t2858, align 4
  br label %B3591
B3610:                               	; preds = %B3609, %B3612
  br label %B3599
B3623:                               	; preds = %B3616
  %t1161 = load i32, i32* %t2860, align 4
  %t1162 = srem i32 %t1161, 2
  %t1165 = icmp ne i32 %t1162, 0
  br i1 %t1165, label %B3621, label %B3628
B3625:                               	; preds = %B3616
  br label %B3622
B3617:                               	; preds = %B3620
  %t1182 = load i32, i32* %t2857, align 4
  store i32 %t1182, i32* %t3583, align 4
  %t1183 = icmp sgt i32 1, 15
  br i1 %t1183, label %B3631, label %B3636
B3676:                               	; preds = %B3675, %B3679
  br label %B3671
B3681:                               	; preds = %B3670
  %t1254 = load i32, i32* %t2857, align 4
  %t1255 = load i32, i32* %t2858, align 4
  %t1256 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1255
  %t3686 = load i32, i32* %t1256, align 4
  %t1257 = mul i32 1, %t3686
  %t1258 = add i32 %t1254, %t1257
  store i32 %t1258, i32* %t2857, align 4
  br label %B3682
B3684:                               	; preds = %B3670
  br label %B3682
B3688:                               	; preds = %B3687
  %t1280 = load i32, i32* %t2859, align 4
  %t1281 = srem i32 %t1280, 2
  %t1285 = icmp ne i32 %t1281, 0
  br i1 %t1285, label %B3695, label %B3697
B3692:                               	; preds = %B3687
  br label %B3689
B3728:                               	; preds = %B3734, %B3740
  %t1379 = load i32, i32* %t2857, align 4
  store i32 %t1379, i32* %t3553, align 4
  br label %B3555
B3744:                               	; preds = %B3738
  %t1359 = load i32, i32* %t2859, align 4
  %t1360 = load i32, i32* %t2860, align 4
  %t1361 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1360
  %t3750 = load i32, i32* %t1361, align 4
  %t1362 = sdiv i32 %t1359, %t3750
  store i32 %t1362, i32* %t2859, align 4
  %t1364 = load i32, i32* %t2859, align 4
  %t1365 = add i32 %t1364, 65536
  %t1366 = load i32, i32* %t2860, align 4
  %t1367 = sub i32 15, %t1366
  %t1368 = add i32 %t1367, 1
  %t1369 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1368
  %t3751 = load i32, i32* %t1369, align 4
  %t1370 = sub i32 %t1365, %t3751
  store i32 %t1370, i32* %t2857, align 4
  br label %B3746
B3749:                               	; preds = %B3738
  br label %B3745
B3739:                               	; preds = %B3743
  %t1377 = load i32, i32* %t2859, align 4
  store i32 %t1377, i32* %t2857, align 4
  br label %B3740
B3856:                               	; preds = %B3855
  %t1513 = load i32, i32* %t2859, align 4
  %t1514 = srem i32 %t1513, 2
  %t1533 = icmp ne i32 %t1514, 0
  br i1 %t1533, label %B3861, label %B3865
B3860:                               	; preds = %B3855
  br label %B3857
B3927:                               	; preds = %B3922, %B3935
  %t1632 = load i32, i32* %t2858, align 4
  %t1633 = icmp slt i32 %t1632, 16
  br i1 %t1633, label %B3928, label %B3932
B3923:                               	; preds = %B3925
  %t1736 = load i32, i32* %t3918, align 4
  store i32 %t1736, i32* %t2857, align 4
  %t1738 = load i32, i32* %t2857, align 4
  store i32 %t1738, i32* %t3816, align 4
  %t1740 = load i32, i32* %t3817, align 4
  store i32 %t1740, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t1742 = load i32, i32* %t2860, align 4
  %t1743 = icmp sge i32 %t1742, 15
  br i1 %t1743, label %B3990, label %B3995
B4056:                               	; preds = %B4051, %B4064
  %t1829 = load i32, i32* %t2858, align 4
  %t1830 = icmp slt i32 %t1829, 16
  br i1 %t1830, label %B4057, label %B4061
B4052:                               	; preds = %B4054
  %t1933 = load i32, i32* %t4047, align 4
  store i32 %t1933, i32* %t2857, align 4
  %t1935 = load i32, i32* %t2857, align 4
  store i32 %t1935, i32* %t4019, align 4
  br label %B4043
B4123:                               	; preds = %B4122
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1947 = load i32, i32* %t4119, align 4
  store i32 %t1947, i32* %t2859, align 4
  %t1949 = load i32, i32* %t4120, align 4
  store i32 %t1949, i32* %t2860, align 4
  br label %B4128
B4126:                               	; preds = %B4122
  br label %B4124
B4314:                               	; preds = %B4306, %B4362
  %t2218 = load i32, i32* %t4312, align 4
  %t2219 = icmp ne i32 %t2218, 0
  br i1 %t2219, label %B4315, label %B4318
B4307:                               	; preds = %B4309, %B4316
  %t2334 = load i32, i32* %t4281, align 4
  store i32 %t2334, i32* %t4383, align 4
  %t2336 = load i32, i32* %t4281, align 4
  store i32 %t2336, i32* %t4384, align 4
  br label %B4386
B4497:                               	; preds = %B4499
  %t2516 = load i32, i32* %t2857, align 4
  %t2517 = load i32, i32* %t2858, align 4
  %t2518 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2517
  %t4506 = load i32, i32* %t2518, align 4
  %t2519 = mul i32 1, %t4506
  %t2520 = add i32 %t2516, %t2519
  store i32 %t2520, i32* %t2857, align 4
  br label %B4498
B4504:                               	; preds = %B4499
  br label %B4498
B4498:                               	; preds = %B4497, %B4501, %B4504
  %t2522 = load i32, i32* %t2859, align 4
  %t2523 = sdiv i32 %t2522, 2
  store i32 %t2523, i32* %t2859, align 4
  %t2525 = load i32, i32* %t2860, align 4
  %t2526 = sdiv i32 %t2525, 2
  store i32 %t2526, i32* %t2860, align 4
  %t2528 = load i32, i32* %t2858, align 4
  %t2529 = add i32 %t2528, 1
  store i32 %t2529, i32* %t2858, align 4
  br label %B4491
B4507:                               	; preds = %B4493
  %t2531 = load i32, i32* %t4484, align 4
  store i32 %t2531, i32* %t4512, align 4
  %t2533 = load i32, i32* %t4482, align 4
  store i32 %t2533, i32* %t4513, align 4
  br label %B4515
B4510:                               	; preds = %B4493
  br label %B4508
B4691:                               	; preds = %B4689, %B4690
  br label %B4685
B4690:                               	; preds = %B4694
  store i32 0, i32* %t2857, align 4
  br label %B4691
B4695:                               	; preds = %B4684
  %t2822 = load i32, i32* %t2859, align 4
  %t2823 = icmp sgt i32 %t2822, 32767
  br i1 %t2823, label %B4701, label %B4706
B4700:                               	; preds = %B4684
  br label %B4696
B2986:                               	; preds = %B2979
  %t170 = load i32, i32* %t2860, align 4
  %t171 = srem i32 %t170, 2
  %t174 = icmp ne i32 %t171, 0
  br i1 %t174, label %B2984, label %B2991
B2988:                               	; preds = %B2979
  br label %B2985
B2980:                               	; preds = %B2983
  br label %B2973
B3051:                               	; preds = %B3050
  %t289 = load i32, i32* %t2859, align 4
  %t290 = srem i32 %t289, 2
  %t294 = icmp ne i32 %t290, 0
  br i1 %t294, label %B3058, label %B3060
B3055:                               	; preds = %B3050
  br label %B3052
B3180:                               	; preds = %B3179
  %t486 = load i32, i32* %t2859, align 4
  %t487 = srem i32 %t486, 2
  %t491 = icmp ne i32 %t487, 0
  br i1 %t491, label %B3187, label %B3189
B3184:                               	; preds = %B3179
  br label %B3181
B3251:                               	; preds = %B3245, %B3258
  %t605 = load i32, i32* %t2858, align 4
  %t606 = icmp slt i32 %t605, 16
  br i1 %t606, label %B3252, label %B3256
B3432:                               	; preds = %B3430, %B3439
  %t899 = load i32, i32* %t2857, align 4
  store i32 %t899, i32* %t3382, align 4
  %t901 = load i32, i32* %t3383, align 4
  store i32 %t901, i32* %t3381, align 4
  br label %B3384
B3431:                               	; preds = %B3435
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t870 = load i32, i32* %t3382, align 4
  %t871 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3436 = load i32, i32* %t871, align 4
  %t872 = mul i32 %t870, %t3436
  store i32 %t872, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3437
B3492:                               	; preds = %B3494
  %t970 = load i32, i32* %t2857, align 4
  %t971 = load i32, i32* %t2858, align 4
  %t972 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t971
  %t3501 = load i32, i32* %t972, align 4
  %t973 = mul i32 1, %t3501
  %t974 = add i32 %t970, %t973
  store i32 %t974, i32* %t2857, align 4
  br label %B3493
B3499:                               	; preds = %B3494
  br label %B3493
B3493:                               	; preds = %B3492, %B3496, %B3499
  %t976 = load i32, i32* %t2859, align 4
  %t977 = sdiv i32 %t976, 2
  store i32 %t977, i32* %t2859, align 4
  %t979 = load i32, i32* %t2860, align 4
  %t980 = sdiv i32 %t979, 2
  store i32 %t980, i32* %t2860, align 4
  %t982 = load i32, i32* %t2858, align 4
  %t983 = add i32 %t982, 1
  store i32 %t983, i32* %t2858, align 4
  br label %B3486
B3502:                               	; preds = %B3488
  store i32 0, i32* %t2857, align 4
  br label %B3504
B3507:                               	; preds = %B3488
  br label %B3503
B3621:                               	; preds = %B3623
  %t1167 = load i32, i32* %t2857, align 4
  %t1168 = load i32, i32* %t2858, align 4
  %t1169 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1168
  %t3630 = load i32, i32* %t1169, align 4
  %t1170 = mul i32 1, %t3630
  %t1171 = add i32 %t1167, %t1170
  store i32 %t1171, i32* %t2857, align 4
  br label %B3622
B3628:                               	; preds = %B3623
  br label %B3622
B3622:                               	; preds = %B3621, %B3625, %B3628
  %t1173 = load i32, i32* %t2859, align 4
  %t1174 = sdiv i32 %t1173, 2
  store i32 %t1174, i32* %t2859, align 4
  %t1176 = load i32, i32* %t2860, align 4
  %t1177 = sdiv i32 %t1176, 2
  store i32 %t1177, i32* %t2860, align 4
  %t1179 = load i32, i32* %t2858, align 4
  %t1180 = add i32 %t1179, 1
  store i32 %t1180, i32* %t2858, align 4
  br label %B3615
B3631:                               	; preds = %B3617
  store i32 0, i32* %t2857, align 4
  br label %B3633
B3636:                               	; preds = %B3617
  br label %B3632
B3671:                               	; preds = %B3676, %B3682
  %t1262 = load i32, i32* %t2859, align 4
  %t1263 = sdiv i32 %t1262, 2
  store i32 %t1263, i32* %t2859, align 4
  %t1265 = load i32, i32* %t2860, align 4
  %t1266 = sdiv i32 %t1265, 2
  store i32 %t1266, i32* %t2860, align 4
  %t1268 = load i32, i32* %t2858, align 4
  %t1269 = add i32 %t1268, 1
  store i32 %t1269, i32* %t2858, align 4
  br label %B3663
B3682:                               	; preds = %B3681, %B3684
  br label %B3671
B3695:                               	; preds = %B3688
  %t1282 = load i32, i32* %t2860, align 4
  %t1283 = srem i32 %t1282, 2
  %t1286 = icmp ne i32 %t1283, 0
  br i1 %t1286, label %B3693, label %B3700
B3697:                               	; preds = %B3688
  br label %B3694
B3689:                               	; preds = %B3692
  %t1303 = load i32, i32* %t2857, align 4
  store i32 %t1303, i32* %t3655, align 4
  %t1304 = icmp sgt i32 1, 15
  br i1 %t1304, label %B3703, label %B3708
B3746:                               	; preds = %B3744, %B3745
  br label %B3740
B3745:                               	; preds = %B3749
  %t1372 = load i32, i32* %t2859, align 4
  %t1373 = load i32, i32* %t2860, align 4
  %t1374 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1373
  %t3752 = load i32, i32* %t1374, align 4
  %t1375 = sdiv i32 %t1372, %t3752
  store i32 %t1375, i32* %t2857, align 4
  br label %B3746
B3740:                               	; preds = %B3739, %B3746
  br label %B3728
B3861:                               	; preds = %B3856
  %t1515 = load i32, i32* %t2860, align 4
  %t1516 = srem i32 %t1515, 2
  %t1517 = icmp eq i32 %t1516, 0
  br i1 %t1517, label %B3867, label %B3871
B3865:                               	; preds = %B3856
  br label %B3862
B3857:                               	; preds = %B3860
  %t1544 = load i32, i32* %t2857, align 4
  store i32 %t1544, i32* %t3848, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1548 = load i32, i32* %t3846, align 4
  store i32 %t1548, i32* %t2859, align 4
  %t1550 = load i32, i32* %t3847, align 4
  store i32 %t1550, i32* %t2860, align 4
  br label %B3879
B3928:                               	; preds = %B3927
  %t1634 = load i32, i32* %t2859, align 4
  %t1635 = srem i32 %t1634, 2
  %t1654 = icmp ne i32 %t1635, 0
  br i1 %t1654, label %B3933, label %B3937
B3932:                               	; preds = %B3927
  br label %B3929
B3990:                               	; preds = %B3923
  %t1744 = load i32, i32* %t2859, align 4
  %t1745 = icmp slt i32 %t1744, 0
  br i1 %t1745, label %B3996, label %B4001
B3995:                               	; preds = %B3923
  br label %B3991
B4057:                               	; preds = %B4056
  %t1831 = load i32, i32* %t2859, align 4
  %t1832 = srem i32 %t1831, 2
  %t1851 = icmp ne i32 %t1832, 0
  br i1 %t1851, label %B4062, label %B4066
B4061:                               	; preds = %B4056
  br label %B4058
B4128:                               	; preds = %B4123, %B4136
  %t1950 = load i32, i32* %t2858, align 4
  %t1951 = icmp slt i32 %t1950, 16
  br i1 %t1951, label %B4129, label %B4133
B4124:                               	; preds = %B4126
  %t2054 = load i32, i32* %t4119, align 4
  store i32 %t2054, i32* %t2857, align 4
  %t2056 = load i32, i32* %t2857, align 4
  store i32 %t2056, i32* %t4017, align 4
  %t2058 = load i32, i32* %t4018, align 4
  store i32 %t2058, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2060 = load i32, i32* %t2860, align 4
  %t2061 = icmp sge i32 %t2060, 15
  br i1 %t2061, label %B4191, label %B4196
B4315:                               	; preds = %B4314
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2223 = load i32, i32* %t4311, align 4
  store i32 %t2223, i32* %t2859, align 4
  %t2225 = load i32, i32* %t4312, align 4
  store i32 %t2225, i32* %t2860, align 4
  br label %B4320
B4318:                               	; preds = %B4314
  br label %B4316
B4386:                               	; preds = %B4307, %B4434
  %t2339 = load i32, i32* %t4384, align 4
  %t2340 = icmp ne i32 %t2339, 0
  br i1 %t2340, label %B4387, label %B4390
B4515:                               	; preds = %B4507, %B4563
  %t2536 = load i32, i32* %t4513, align 4
  %t2537 = icmp ne i32 %t2536, 0
  br i1 %t2537, label %B4516, label %B4519
B4508:                               	; preds = %B4510, %B4517
  %t2652 = load i32, i32* %t4482, align 4
  store i32 %t2652, i32* %t4584, align 4
  %t2654 = load i32, i32* %t4482, align 4
  store i32 %t2654, i32* %t4585, align 4
  br label %B4587
B4685:                               	; preds = %B4691, %B4697
  %t2845 = load i32, i32* %t2857, align 4
  store i32 %t2845, i32* %t4252, align 4
  br label %B4254
B4701:                               	; preds = %B4695
  %t2825 = load i32, i32* %t2859, align 4
  %t2826 = load i32, i32* %t2860, align 4
  %t2827 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2826
  %t4707 = load i32, i32* %t2827, align 4
  %t2828 = sdiv i32 %t2825, %t4707
  store i32 %t2828, i32* %t2859, align 4
  %t2830 = load i32, i32* %t2859, align 4
  %t2831 = add i32 %t2830, 65536
  %t2832 = load i32, i32* %t2860, align 4
  %t2833 = sub i32 15, %t2832
  %t2834 = add i32 %t2833, 1
  %t2835 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2834
  %t4708 = load i32, i32* %t2835, align 4
  %t2836 = sub i32 %t2831, %t4708
  store i32 %t2836, i32* %t2857, align 4
  br label %B4703
B4706:                               	; preds = %B4695
  br label %B4702
B4696:                               	; preds = %B4700
  %t2843 = load i32, i32* %t2859, align 4
  store i32 %t2843, i32* %t2857, align 4
  br label %B4697
B2984:                               	; preds = %B2986
  %t176 = load i32, i32* %t2857, align 4
  %t177 = load i32, i32* %t2858, align 4
  %t178 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t177
  %t2993 = load i32, i32* %t178, align 4
  %t179 = mul i32 1, %t2993
  %t180 = add i32 %t176, %t179
  store i32 %t180, i32* %t2857, align 4
  br label %B2985
B2991:                               	; preds = %B2986
  br label %B2985
B2985:                               	; preds = %B2984, %B2988, %B2991
  %t182 = load i32, i32* %t2859, align 4
  %t183 = sdiv i32 %t182, 2
  store i32 %t183, i32* %t2859, align 4
  %t185 = load i32, i32* %t2860, align 4
  %t186 = sdiv i32 %t185, 2
  store i32 %t186, i32* %t2860, align 4
  %t188 = load i32, i32* %t2858, align 4
  %t189 = add i32 %t188, 1
  store i32 %t189, i32* %t2858, align 4
  br label %B2978
B3058:                               	; preds = %B3051
  %t291 = load i32, i32* %t2860, align 4
  %t292 = srem i32 %t291, 2
  %t295 = icmp ne i32 %t292, 0
  br i1 %t295, label %B3056, label %B3063
B3060:                               	; preds = %B3051
  br label %B3057
B3052:                               	; preds = %B3055
  br label %B3045
B3187:                               	; preds = %B3180
  %t488 = load i32, i32* %t2860, align 4
  %t489 = srem i32 %t488, 2
  %t492 = icmp ne i32 %t489, 0
  br i1 %t492, label %B3185, label %B3192
B3189:                               	; preds = %B3180
  br label %B3186
B3181:                               	; preds = %B3184
  br label %B3174
B3252:                               	; preds = %B3251
  %t607 = load i32, i32* %t2859, align 4
  %t608 = srem i32 %t607, 2
  %t612 = icmp ne i32 %t608, 0
  br i1 %t612, label %B3259, label %B3261
B3256:                               	; preds = %B3251
  br label %B3253
B3437:                               	; preds = %B3431, %B3444
  %t874 = load i32, i32* %t2858, align 4
  %t875 = icmp slt i32 %t874, 16
  br i1 %t875, label %B3438, label %B3442
B3504:                               	; preds = %B3502, %B3511
  %t1020 = load i32, i32* %t2857, align 4
  store i32 %t1020, i32* %t3454, align 4
  %t1022 = load i32, i32* %t3455, align 4
  store i32 %t1022, i32* %t3453, align 4
  br label %B3456
B3503:                               	; preds = %B3507
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t991 = load i32, i32* %t3454, align 4
  %t992 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3508 = load i32, i32* %t992, align 4
  %t993 = mul i32 %t991, %t3508
  store i32 %t993, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3509
B3633:                               	; preds = %B3631, %B3640
  %t1217 = load i32, i32* %t2857, align 4
  store i32 %t1217, i32* %t3583, align 4
  %t1219 = load i32, i32* %t3584, align 4
  store i32 %t1219, i32* %t3582, align 4
  br label %B3585
B3632:                               	; preds = %B3636
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1188 = load i32, i32* %t3583, align 4
  %t1189 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3637 = load i32, i32* %t1189, align 4
  %t1190 = mul i32 %t1188, %t3637
  store i32 %t1190, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3638
B3693:                               	; preds = %B3695
  %t1288 = load i32, i32* %t2857, align 4
  %t1289 = load i32, i32* %t2858, align 4
  %t1290 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1289
  %t3702 = load i32, i32* %t1290, align 4
  %t1291 = mul i32 1, %t3702
  %t1292 = add i32 %t1288, %t1291
  store i32 %t1292, i32* %t2857, align 4
  br label %B3694
B3700:                               	; preds = %B3695
  br label %B3694
B3694:                               	; preds = %B3693, %B3697, %B3700
  %t1294 = load i32, i32* %t2859, align 4
  %t1295 = sdiv i32 %t1294, 2
  store i32 %t1295, i32* %t2859, align 4
  %t1297 = load i32, i32* %t2860, align 4
  %t1298 = sdiv i32 %t1297, 2
  store i32 %t1298, i32* %t2860, align 4
  %t1300 = load i32, i32* %t2858, align 4
  %t1301 = add i32 %t1300, 1
  store i32 %t1301, i32* %t2858, align 4
  br label %B3687
B3703:                               	; preds = %B3689
  store i32 0, i32* %t2857, align 4
  br label %B3705
B3708:                               	; preds = %B3689
  br label %B3704
B3867:                               	; preds = %B3861
  %t1519 = load i32, i32* %t2857, align 4
  %t1520 = load i32, i32* %t2858, align 4
  %t1521 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1520
  %t3872 = load i32, i32* %t1521, align 4
  %t1522 = mul i32 1, %t3872
  %t1523 = add i32 %t1519, %t1522
  store i32 %t1523, i32* %t2857, align 4
  br label %B3868
B3871:                               	; preds = %B3861
  br label %B3868
B3862:                               	; preds = %B3865
  %t1524 = load i32, i32* %t2860, align 4
  %t1525 = srem i32 %t1524, 2
  %t1532 = icmp ne i32 %t1525, 0
  br i1 %t1532, label %B3873, label %B3876
B3879:                               	; preds = %B3857, %B3886
  %t1551 = load i32, i32* %t2858, align 4
  %t1552 = icmp slt i32 %t1551, 16
  br i1 %t1552, label %B3880, label %B3884
B3933:                               	; preds = %B3928
  %t1636 = load i32, i32* %t2860, align 4
  %t1637 = srem i32 %t1636, 2
  %t1638 = icmp eq i32 %t1637, 0
  br i1 %t1638, label %B3939, label %B3943
B3937:                               	; preds = %B3928
  br label %B3934
B3929:                               	; preds = %B3932
  %t1665 = load i32, i32* %t2857, align 4
  store i32 %t1665, i32* %t3920, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1669 = load i32, i32* %t3918, align 4
  store i32 %t1669, i32* %t2859, align 4
  %t1671 = load i32, i32* %t3919, align 4
  store i32 %t1671, i32* %t2860, align 4
  br label %B3951
B3996:                               	; preds = %B3990
  store i32 65535, i32* %t2857, align 4
  br label %B3998
B4001:                               	; preds = %B3990
  br label %B3997
B3991:                               	; preds = %B3995
  %t1748 = load i32, i32* %t2860, align 4
  %t1749 = icmp sgt i32 %t1748, 0
  br i1 %t1749, label %B4002, label %B4007
B4062:                               	; preds = %B4057
  %t1833 = load i32, i32* %t2860, align 4
  %t1834 = srem i32 %t1833, 2
  %t1835 = icmp eq i32 %t1834, 0
  br i1 %t1835, label %B4068, label %B4072
B4066:                               	; preds = %B4057
  br label %B4063
B4058:                               	; preds = %B4061
  %t1862 = load i32, i32* %t2857, align 4
  store i32 %t1862, i32* %t4049, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1866 = load i32, i32* %t4047, align 4
  store i32 %t1866, i32* %t2859, align 4
  %t1868 = load i32, i32* %t4048, align 4
  store i32 %t1868, i32* %t2860, align 4
  br label %B4080
B4129:                               	; preds = %B4128
  %t1952 = load i32, i32* %t2859, align 4
  %t1953 = srem i32 %t1952, 2
  %t1972 = icmp ne i32 %t1953, 0
  br i1 %t1972, label %B4134, label %B4138
B4133:                               	; preds = %B4128
  br label %B4130
B4191:                               	; preds = %B4124
  %t2062 = load i32, i32* %t2859, align 4
  %t2063 = icmp slt i32 %t2062, 0
  br i1 %t2063, label %B4197, label %B4202
B4196:                               	; preds = %B4124
  br label %B4192
B4320:                               	; preds = %B4315, %B4328
  %t2226 = load i32, i32* %t2858, align 4
  %t2227 = icmp slt i32 %t2226, 16
  br i1 %t2227, label %B4321, label %B4325
B4316:                               	; preds = %B4318
  %t2330 = load i32, i32* %t4311, align 4
  store i32 %t2330, i32* %t2857, align 4
  %t2332 = load i32, i32* %t2857, align 4
  store i32 %t2332, i32* %t4283, align 4
  br label %B4307
B4387:                               	; preds = %B4386
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2344 = load i32, i32* %t4383, align 4
  store i32 %t2344, i32* %t2859, align 4
  %t2346 = load i32, i32* %t4384, align 4
  store i32 %t2346, i32* %t2860, align 4
  br label %B4392
B4390:                               	; preds = %B4386
  br label %B4388
B4516:                               	; preds = %B4515
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2541 = load i32, i32* %t4512, align 4
  store i32 %t2541, i32* %t2859, align 4
  %t2543 = load i32, i32* %t4513, align 4
  store i32 %t2543, i32* %t2860, align 4
  br label %B4521
B4519:                               	; preds = %B4515
  br label %B4517
B4587:                               	; preds = %B4508, %B4635
  %t2657 = load i32, i32* %t4585, align 4
  %t2658 = icmp ne i32 %t2657, 0
  br i1 %t2658, label %B4588, label %B4591
B4703:                               	; preds = %B4701, %B4702
  br label %B4697
B4702:                               	; preds = %B4706
  %t2838 = load i32, i32* %t2859, align 4
  %t2839 = load i32, i32* %t2860, align 4
  %t2840 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2839
  %t4709 = load i32, i32* %t2840, align 4
  %t2841 = sdiv i32 %t2838, %t4709
  store i32 %t2841, i32* %t2857, align 4
  br label %B4703
B4697:                               	; preds = %B4696, %B4703
  br label %B4685
B3056:                               	; preds = %B3058
  %t297 = load i32, i32* %t2857, align 4
  %t298 = load i32, i32* %t2858, align 4
  %t299 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t298
  %t3065 = load i32, i32* %t299, align 4
  %t300 = mul i32 1, %t3065
  %t301 = add i32 %t297, %t300
  store i32 %t301, i32* %t2857, align 4
  br label %B3057
B3063:                               	; preds = %B3058
  br label %B3057
B3057:                               	; preds = %B3056, %B3060, %B3063
  %t303 = load i32, i32* %t2859, align 4
  %t304 = sdiv i32 %t303, 2
  store i32 %t304, i32* %t2859, align 4
  %t306 = load i32, i32* %t2860, align 4
  %t307 = sdiv i32 %t306, 2
  store i32 %t307, i32* %t2860, align 4
  %t309 = load i32, i32* %t2858, align 4
  %t310 = add i32 %t309, 1
  store i32 %t310, i32* %t2858, align 4
  br label %B3050
B3185:                               	; preds = %B3187
  %t494 = load i32, i32* %t2857, align 4
  %t495 = load i32, i32* %t2858, align 4
  %t496 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t495
  %t3194 = load i32, i32* %t496, align 4
  %t497 = mul i32 1, %t3194
  %t498 = add i32 %t494, %t497
  store i32 %t498, i32* %t2857, align 4
  br label %B3186
B3192:                               	; preds = %B3187
  br label %B3186
B3186:                               	; preds = %B3185, %B3189, %B3192
  %t500 = load i32, i32* %t2859, align 4
  %t501 = sdiv i32 %t500, 2
  store i32 %t501, i32* %t2859, align 4
  %t503 = load i32, i32* %t2860, align 4
  %t504 = sdiv i32 %t503, 2
  store i32 %t504, i32* %t2860, align 4
  %t506 = load i32, i32* %t2858, align 4
  %t507 = add i32 %t506, 1
  store i32 %t507, i32* %t2858, align 4
  br label %B3179
B3259:                               	; preds = %B3252
  %t609 = load i32, i32* %t2860, align 4
  %t610 = srem i32 %t609, 2
  %t613 = icmp ne i32 %t610, 0
  br i1 %t613, label %B3257, label %B3264
B3261:                               	; preds = %B3252
  br label %B3258
B3253:                               	; preds = %B3256
  br label %B3246
B3438:                               	; preds = %B3437
  %t876 = load i32, i32* %t2859, align 4
  %t877 = srem i32 %t876, 2
  %t881 = icmp ne i32 %t877, 0
  br i1 %t881, label %B3445, label %B3447
B3442:                               	; preds = %B3437
  br label %B3439
B3509:                               	; preds = %B3503, %B3516
  %t995 = load i32, i32* %t2858, align 4
  %t996 = icmp slt i32 %t995, 16
  br i1 %t996, label %B3510, label %B3514
B3638:                               	; preds = %B3632, %B3645
  %t1192 = load i32, i32* %t2858, align 4
  %t1193 = icmp slt i32 %t1192, 16
  br i1 %t1193, label %B3639, label %B3643
B3705:                               	; preds = %B3703, %B3712
  %t1338 = load i32, i32* %t2857, align 4
  store i32 %t1338, i32* %t3655, align 4
  %t1340 = load i32, i32* %t3656, align 4
  store i32 %t1340, i32* %t3654, align 4
  br label %B3657
B3704:                               	; preds = %B3708
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1309 = load i32, i32* %t3655, align 4
  %t1310 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3709 = load i32, i32* %t1310, align 4
  %t1311 = mul i32 %t1309, %t3709
  store i32 %t1311, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3710
B3868:                               	; preds = %B3867, %B3871
  br label %B3863
B3873:                               	; preds = %B3862
  %t1527 = load i32, i32* %t2857, align 4
  %t1528 = load i32, i32* %t2858, align 4
  %t1529 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1528
  %t3878 = load i32, i32* %t1529, align 4
  %t1530 = mul i32 1, %t3878
  %t1531 = add i32 %t1527, %t1530
  store i32 %t1531, i32* %t2857, align 4
  br label %B3874
B3876:                               	; preds = %B3862
  br label %B3874
B3880:                               	; preds = %B3879
  %t1553 = load i32, i32* %t2859, align 4
  %t1554 = srem i32 %t1553, 2
  %t1558 = icmp ne i32 %t1554, 0
  br i1 %t1558, label %B3887, label %B3889
B3884:                               	; preds = %B3879
  br label %B3881
B3939:                               	; preds = %B3933
  %t1640 = load i32, i32* %t2857, align 4
  %t1641 = load i32, i32* %t2858, align 4
  %t1642 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1641
  %t3944 = load i32, i32* %t1642, align 4
  %t1643 = mul i32 1, %t3944
  %t1644 = add i32 %t1640, %t1643
  store i32 %t1644, i32* %t2857, align 4
  br label %B3940
B3943:                               	; preds = %B3933
  br label %B3940
B3934:                               	; preds = %B3937
  %t1645 = load i32, i32* %t2860, align 4
  %t1646 = srem i32 %t1645, 2
  %t1653 = icmp ne i32 %t1646, 0
  br i1 %t1653, label %B3945, label %B3948
B3951:                               	; preds = %B3929, %B3958
  %t1672 = load i32, i32* %t2858, align 4
  %t1673 = icmp slt i32 %t1672, 16
  br i1 %t1673, label %B3952, label %B3956
B3998:                               	; preds = %B3996, %B3997
  br label %B3992
B3997:                               	; preds = %B4001
  store i32 0, i32* %t2857, align 4
  br label %B3998
B4002:                               	; preds = %B3991
  %t1750 = load i32, i32* %t2859, align 4
  %t1751 = icmp sgt i32 %t1750, 32767
  br i1 %t1751, label %B4008, label %B4013
B4007:                               	; preds = %B3991
  br label %B4003
B4068:                               	; preds = %B4062
  %t1837 = load i32, i32* %t2857, align 4
  %t1838 = load i32, i32* %t2858, align 4
  %t1839 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1838
  %t4073 = load i32, i32* %t1839, align 4
  %t1840 = mul i32 1, %t4073
  %t1841 = add i32 %t1837, %t1840
  store i32 %t1841, i32* %t2857, align 4
  br label %B4069
B4072:                               	; preds = %B4062
  br label %B4069
B4063:                               	; preds = %B4066
  %t1842 = load i32, i32* %t2860, align 4
  %t1843 = srem i32 %t1842, 2
  %t1850 = icmp ne i32 %t1843, 0
  br i1 %t1850, label %B4074, label %B4077
B4080:                               	; preds = %B4058, %B4087
  %t1869 = load i32, i32* %t2858, align 4
  %t1870 = icmp slt i32 %t1869, 16
  br i1 %t1870, label %B4081, label %B4085
B4134:                               	; preds = %B4129
  %t1954 = load i32, i32* %t2860, align 4
  %t1955 = srem i32 %t1954, 2
  %t1956 = icmp eq i32 %t1955, 0
  br i1 %t1956, label %B4140, label %B4144
B4138:                               	; preds = %B4129
  br label %B4135
B4130:                               	; preds = %B4133
  %t1983 = load i32, i32* %t2857, align 4
  store i32 %t1983, i32* %t4121, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1987 = load i32, i32* %t4119, align 4
  store i32 %t1987, i32* %t2859, align 4
  %t1989 = load i32, i32* %t4120, align 4
  store i32 %t1989, i32* %t2860, align 4
  br label %B4152
B4197:                               	; preds = %B4191
  store i32 65535, i32* %t2857, align 4
  br label %B4199
B4202:                               	; preds = %B4191
  br label %B4198
B4192:                               	; preds = %B4196
  %t2066 = load i32, i32* %t2860, align 4
  %t2067 = icmp sgt i32 %t2066, 0
  br i1 %t2067, label %B4203, label %B4208
B4321:                               	; preds = %B4320
  %t2228 = load i32, i32* %t2859, align 4
  %t2229 = srem i32 %t2228, 2
  %t2248 = icmp ne i32 %t2229, 0
  br i1 %t2248, label %B4326, label %B4330
B4325:                               	; preds = %B4320
  br label %B4322
B4392:                               	; preds = %B4387, %B4400
  %t2347 = load i32, i32* %t2858, align 4
  %t2348 = icmp slt i32 %t2347, 16
  br i1 %t2348, label %B4393, label %B4397
B4388:                               	; preds = %B4390
  %t2451 = load i32, i32* %t4383, align 4
  store i32 %t2451, i32* %t2857, align 4
  %t2453 = load i32, i32* %t2857, align 4
  store i32 %t2453, i32* %t4281, align 4
  %t2455 = load i32, i32* %t4282, align 4
  store i32 %t2455, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2457 = load i32, i32* %t2860, align 4
  %t2458 = icmp sge i32 %t2457, 15
  br i1 %t2458, label %B4455, label %B4460
B4521:                               	; preds = %B4516, %B4529
  %t2544 = load i32, i32* %t2858, align 4
  %t2545 = icmp slt i32 %t2544, 16
  br i1 %t2545, label %B4522, label %B4526
B4517:                               	; preds = %B4519
  %t2648 = load i32, i32* %t4512, align 4
  store i32 %t2648, i32* %t2857, align 4
  %t2650 = load i32, i32* %t2857, align 4
  store i32 %t2650, i32* %t4484, align 4
  br label %B4508
B4588:                               	; preds = %B4587
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2662 = load i32, i32* %t4584, align 4
  store i32 %t2662, i32* %t2859, align 4
  %t2664 = load i32, i32* %t4585, align 4
  store i32 %t2664, i32* %t2860, align 4
  br label %B4593
B4591:                               	; preds = %B4587
  br label %B4589
B3257:                               	; preds = %B3259
  %t615 = load i32, i32* %t2857, align 4
  %t616 = load i32, i32* %t2858, align 4
  %t617 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t616
  %t3266 = load i32, i32* %t617, align 4
  %t618 = mul i32 1, %t3266
  %t619 = add i32 %t615, %t618
  store i32 %t619, i32* %t2857, align 4
  br label %B3258
B3264:                               	; preds = %B3259
  br label %B3258
B3258:                               	; preds = %B3257, %B3261, %B3264
  %t621 = load i32, i32* %t2859, align 4
  %t622 = sdiv i32 %t621, 2
  store i32 %t622, i32* %t2859, align 4
  %t624 = load i32, i32* %t2860, align 4
  %t625 = sdiv i32 %t624, 2
  store i32 %t625, i32* %t2860, align 4
  %t627 = load i32, i32* %t2858, align 4
  %t628 = add i32 %t627, 1
  store i32 %t628, i32* %t2858, align 4
  br label %B3251
B3445:                               	; preds = %B3438
  %t878 = load i32, i32* %t2860, align 4
  %t879 = srem i32 %t878, 2
  %t882 = icmp ne i32 %t879, 0
  br i1 %t882, label %B3443, label %B3450
B3447:                               	; preds = %B3438
  br label %B3444
B3439:                               	; preds = %B3442
  br label %B3432
B3510:                               	; preds = %B3509
  %t997 = load i32, i32* %t2859, align 4
  %t998 = srem i32 %t997, 2
  %t1002 = icmp ne i32 %t998, 0
  br i1 %t1002, label %B3517, label %B3519
B3514:                               	; preds = %B3509
  br label %B3511
B3639:                               	; preds = %B3638
  %t1194 = load i32, i32* %t2859, align 4
  %t1195 = srem i32 %t1194, 2
  %t1199 = icmp ne i32 %t1195, 0
  br i1 %t1199, label %B3646, label %B3648
B3643:                               	; preds = %B3638
  br label %B3640
B3710:                               	; preds = %B3704, %B3717
  %t1313 = load i32, i32* %t2858, align 4
  %t1314 = icmp slt i32 %t1313, 16
  br i1 %t1314, label %B3711, label %B3715
B3863:                               	; preds = %B3868, %B3874
  %t1535 = load i32, i32* %t2859, align 4
  %t1536 = sdiv i32 %t1535, 2
  store i32 %t1536, i32* %t2859, align 4
  %t1538 = load i32, i32* %t2860, align 4
  %t1539 = sdiv i32 %t1538, 2
  store i32 %t1539, i32* %t2860, align 4
  %t1541 = load i32, i32* %t2858, align 4
  %t1542 = add i32 %t1541, 1
  store i32 %t1542, i32* %t2858, align 4
  br label %B3855
B3874:                               	; preds = %B3873, %B3876
  br label %B3863
B3887:                               	; preds = %B3880
  %t1555 = load i32, i32* %t2860, align 4
  %t1556 = srem i32 %t1555, 2
  %t1559 = icmp ne i32 %t1556, 0
  br i1 %t1559, label %B3885, label %B3892
B3889:                               	; preds = %B3880
  br label %B3886
B3881:                               	; preds = %B3884
  %t1576 = load i32, i32* %t2857, align 4
  store i32 %t1576, i32* %t3847, align 4
  %t1577 = icmp sgt i32 1, 15
  br i1 %t1577, label %B3895, label %B3900
B3940:                               	; preds = %B3939, %B3943
  br label %B3935
B3945:                               	; preds = %B3934
  %t1648 = load i32, i32* %t2857, align 4
  %t1649 = load i32, i32* %t2858, align 4
  %t1650 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1649
  %t3950 = load i32, i32* %t1650, align 4
  %t1651 = mul i32 1, %t3950
  %t1652 = add i32 %t1648, %t1651
  store i32 %t1652, i32* %t2857, align 4
  br label %B3946
B3948:                               	; preds = %B3934
  br label %B3946
B3952:                               	; preds = %B3951
  %t1674 = load i32, i32* %t2859, align 4
  %t1675 = srem i32 %t1674, 2
  %t1679 = icmp ne i32 %t1675, 0
  br i1 %t1679, label %B3959, label %B3961
B3956:                               	; preds = %B3951
  br label %B3953
B3992:                               	; preds = %B3998, %B4004
  %t1773 = load i32, i32* %t2857, align 4
  store i32 %t1773, i32* %t3817, align 4
  br label %B3819
B4008:                               	; preds = %B4002
  %t1753 = load i32, i32* %t2859, align 4
  %t1754 = load i32, i32* %t2860, align 4
  %t1755 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1754
  %t4014 = load i32, i32* %t1755, align 4
  %t1756 = sdiv i32 %t1753, %t4014
  store i32 %t1756, i32* %t2859, align 4
  %t1758 = load i32, i32* %t2859, align 4
  %t1759 = add i32 %t1758, 65536
  %t1760 = load i32, i32* %t2860, align 4
  %t1761 = sub i32 15, %t1760
  %t1762 = add i32 %t1761, 1
  %t1763 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1762
  %t4015 = load i32, i32* %t1763, align 4
  %t1764 = sub i32 %t1759, %t4015
  store i32 %t1764, i32* %t2857, align 4
  br label %B4010
B4013:                               	; preds = %B4002
  br label %B4009
B4003:                               	; preds = %B4007
  %t1771 = load i32, i32* %t2859, align 4
  store i32 %t1771, i32* %t2857, align 4
  br label %B4004
B4069:                               	; preds = %B4068, %B4072
  br label %B4064
B4074:                               	; preds = %B4063
  %t1845 = load i32, i32* %t2857, align 4
  %t1846 = load i32, i32* %t2858, align 4
  %t1847 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1846
  %t4079 = load i32, i32* %t1847, align 4
  %t1848 = mul i32 1, %t4079
  %t1849 = add i32 %t1845, %t1848
  store i32 %t1849, i32* %t2857, align 4
  br label %B4075
B4077:                               	; preds = %B4063
  br label %B4075
B4081:                               	; preds = %B4080
  %t1871 = load i32, i32* %t2859, align 4
  %t1872 = srem i32 %t1871, 2
  %t1876 = icmp ne i32 %t1872, 0
  br i1 %t1876, label %B4088, label %B4090
B4085:                               	; preds = %B4080
  br label %B4082
B4140:                               	; preds = %B4134
  %t1958 = load i32, i32* %t2857, align 4
  %t1959 = load i32, i32* %t2858, align 4
  %t1960 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1959
  %t4145 = load i32, i32* %t1960, align 4
  %t1961 = mul i32 1, %t4145
  %t1962 = add i32 %t1958, %t1961
  store i32 %t1962, i32* %t2857, align 4
  br label %B4141
B4144:                               	; preds = %B4134
  br label %B4141
B4135:                               	; preds = %B4138
  %t1963 = load i32, i32* %t2860, align 4
  %t1964 = srem i32 %t1963, 2
  %t1971 = icmp ne i32 %t1964, 0
  br i1 %t1971, label %B4146, label %B4149
B4152:                               	; preds = %B4130, %B4159
  %t1990 = load i32, i32* %t2858, align 4
  %t1991 = icmp slt i32 %t1990, 16
  br i1 %t1991, label %B4153, label %B4157
B4199:                               	; preds = %B4197, %B4198
  br label %B4193
B4198:                               	; preds = %B4202
  store i32 0, i32* %t2857, align 4
  br label %B4199
B4203:                               	; preds = %B4192
  %t2068 = load i32, i32* %t2859, align 4
  %t2069 = icmp sgt i32 %t2068, 32767
  br i1 %t2069, label %B4209, label %B4214
B4208:                               	; preds = %B4192
  br label %B4204
B4326:                               	; preds = %B4321
  %t2230 = load i32, i32* %t2860, align 4
  %t2231 = srem i32 %t2230, 2
  %t2232 = icmp eq i32 %t2231, 0
  br i1 %t2232, label %B4332, label %B4336
B4330:                               	; preds = %B4321
  br label %B4327
B4322:                               	; preds = %B4325
  %t2259 = load i32, i32* %t2857, align 4
  store i32 %t2259, i32* %t4313, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2263 = load i32, i32* %t4311, align 4
  store i32 %t2263, i32* %t2859, align 4
  %t2265 = load i32, i32* %t4312, align 4
  store i32 %t2265, i32* %t2860, align 4
  br label %B4344
B4393:                               	; preds = %B4392
  %t2349 = load i32, i32* %t2859, align 4
  %t2350 = srem i32 %t2349, 2
  %t2369 = icmp ne i32 %t2350, 0
  br i1 %t2369, label %B4398, label %B4402
B4397:                               	; preds = %B4392
  br label %B4394
B4455:                               	; preds = %B4388
  %t2459 = load i32, i32* %t2859, align 4
  %t2460 = icmp slt i32 %t2459, 0
  br i1 %t2460, label %B4461, label %B4466
B4460:                               	; preds = %B4388
  br label %B4456
B4522:                               	; preds = %B4521
  %t2546 = load i32, i32* %t2859, align 4
  %t2547 = srem i32 %t2546, 2
  %t2566 = icmp ne i32 %t2547, 0
  br i1 %t2566, label %B4527, label %B4531
B4526:                               	; preds = %B4521
  br label %B4523
B4593:                               	; preds = %B4588, %B4601
  %t2665 = load i32, i32* %t2858, align 4
  %t2666 = icmp slt i32 %t2665, 16
  br i1 %t2666, label %B4594, label %B4598
B4589:                               	; preds = %B4591
  %t2769 = load i32, i32* %t4584, align 4
  store i32 %t2769, i32* %t2857, align 4
  %t2771 = load i32, i32* %t2857, align 4
  store i32 %t2771, i32* %t4482, align 4
  %t2773 = load i32, i32* %t4483, align 4
  store i32 %t2773, i32* %t2859, align 4
  store i32 1, i32* %t2860, align 4
  %t2775 = load i32, i32* %t2860, align 4
  %t2776 = icmp sge i32 %t2775, 15
  br i1 %t2776, label %B4656, label %B4661
B3443:                               	; preds = %B3445
  %t884 = load i32, i32* %t2857, align 4
  %t885 = load i32, i32* %t2858, align 4
  %t886 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t885
  %t3452 = load i32, i32* %t886, align 4
  %t887 = mul i32 1, %t3452
  %t888 = add i32 %t884, %t887
  store i32 %t888, i32* %t2857, align 4
  br label %B3444
B3450:                               	; preds = %B3445
  br label %B3444
B3444:                               	; preds = %B3443, %B3447, %B3450
  %t890 = load i32, i32* %t2859, align 4
  %t891 = sdiv i32 %t890, 2
  store i32 %t891, i32* %t2859, align 4
  %t893 = load i32, i32* %t2860, align 4
  %t894 = sdiv i32 %t893, 2
  store i32 %t894, i32* %t2860, align 4
  %t896 = load i32, i32* %t2858, align 4
  %t897 = add i32 %t896, 1
  store i32 %t897, i32* %t2858, align 4
  br label %B3437
B3517:                               	; preds = %B3510
  %t999 = load i32, i32* %t2860, align 4
  %t1000 = srem i32 %t999, 2
  %t1003 = icmp ne i32 %t1000, 0
  br i1 %t1003, label %B3515, label %B3522
B3519:                               	; preds = %B3510
  br label %B3516
B3511:                               	; preds = %B3514
  br label %B3504
B3646:                               	; preds = %B3639
  %t1196 = load i32, i32* %t2860, align 4
  %t1197 = srem i32 %t1196, 2
  %t1200 = icmp ne i32 %t1197, 0
  br i1 %t1200, label %B3644, label %B3651
B3648:                               	; preds = %B3639
  br label %B3645
B3640:                               	; preds = %B3643
  br label %B3633
B3711:                               	; preds = %B3710
  %t1315 = load i32, i32* %t2859, align 4
  %t1316 = srem i32 %t1315, 2
  %t1320 = icmp ne i32 %t1316, 0
  br i1 %t1320, label %B3718, label %B3720
B3715:                               	; preds = %B3710
  br label %B3712
B3885:                               	; preds = %B3887
  %t1561 = load i32, i32* %t2857, align 4
  %t1562 = load i32, i32* %t2858, align 4
  %t1563 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1562
  %t3894 = load i32, i32* %t1563, align 4
  %t1564 = mul i32 1, %t3894
  %t1565 = add i32 %t1561, %t1564
  store i32 %t1565, i32* %t2857, align 4
  br label %B3886
B3892:                               	; preds = %B3887
  br label %B3886
B3886:                               	; preds = %B3885, %B3889, %B3892
  %t1567 = load i32, i32* %t2859, align 4
  %t1568 = sdiv i32 %t1567, 2
  store i32 %t1568, i32* %t2859, align 4
  %t1570 = load i32, i32* %t2860, align 4
  %t1571 = sdiv i32 %t1570, 2
  store i32 %t1571, i32* %t2860, align 4
  %t1573 = load i32, i32* %t2858, align 4
  %t1574 = add i32 %t1573, 1
  store i32 %t1574, i32* %t2858, align 4
  br label %B3879
B3895:                               	; preds = %B3881
  store i32 0, i32* %t2857, align 4
  br label %B3897
B3900:                               	; preds = %B3881
  br label %B3896
B3935:                               	; preds = %B3940, %B3946
  %t1656 = load i32, i32* %t2859, align 4
  %t1657 = sdiv i32 %t1656, 2
  store i32 %t1657, i32* %t2859, align 4
  %t1659 = load i32, i32* %t2860, align 4
  %t1660 = sdiv i32 %t1659, 2
  store i32 %t1660, i32* %t2860, align 4
  %t1662 = load i32, i32* %t2858, align 4
  %t1663 = add i32 %t1662, 1
  store i32 %t1663, i32* %t2858, align 4
  br label %B3927
B3946:                               	; preds = %B3945, %B3948
  br label %B3935
B3959:                               	; preds = %B3952
  %t1676 = load i32, i32* %t2860, align 4
  %t1677 = srem i32 %t1676, 2
  %t1680 = icmp ne i32 %t1677, 0
  br i1 %t1680, label %B3957, label %B3964
B3961:                               	; preds = %B3952
  br label %B3958
B3953:                               	; preds = %B3956
  %t1697 = load i32, i32* %t2857, align 4
  store i32 %t1697, i32* %t3919, align 4
  %t1698 = icmp sgt i32 1, 15
  br i1 %t1698, label %B3967, label %B3972
B4010:                               	; preds = %B4008, %B4009
  br label %B4004
B4009:                               	; preds = %B4013
  %t1766 = load i32, i32* %t2859, align 4
  %t1767 = load i32, i32* %t2860, align 4
  %t1768 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1767
  %t4016 = load i32, i32* %t1768, align 4
  %t1769 = sdiv i32 %t1766, %t4016
  store i32 %t1769, i32* %t2857, align 4
  br label %B4010
B4004:                               	; preds = %B4003, %B4010
  br label %B3992
B4064:                               	; preds = %B4069, %B4075
  %t1853 = load i32, i32* %t2859, align 4
  %t1854 = sdiv i32 %t1853, 2
  store i32 %t1854, i32* %t2859, align 4
  %t1856 = load i32, i32* %t2860, align 4
  %t1857 = sdiv i32 %t1856, 2
  store i32 %t1857, i32* %t2860, align 4
  %t1859 = load i32, i32* %t2858, align 4
  %t1860 = add i32 %t1859, 1
  store i32 %t1860, i32* %t2858, align 4
  br label %B4056
B4075:                               	; preds = %B4074, %B4077
  br label %B4064
B4088:                               	; preds = %B4081
  %t1873 = load i32, i32* %t2860, align 4
  %t1874 = srem i32 %t1873, 2
  %t1877 = icmp ne i32 %t1874, 0
  br i1 %t1877, label %B4086, label %B4093
B4090:                               	; preds = %B4081
  br label %B4087
B4082:                               	; preds = %B4085
  %t1894 = load i32, i32* %t2857, align 4
  store i32 %t1894, i32* %t4048, align 4
  %t1895 = icmp sgt i32 1, 15
  br i1 %t1895, label %B4096, label %B4101
B4141:                               	; preds = %B4140, %B4144
  br label %B4136
B4146:                               	; preds = %B4135
  %t1966 = load i32, i32* %t2857, align 4
  %t1967 = load i32, i32* %t2858, align 4
  %t1968 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1967
  %t4151 = load i32, i32* %t1968, align 4
  %t1969 = mul i32 1, %t4151
  %t1970 = add i32 %t1966, %t1969
  store i32 %t1970, i32* %t2857, align 4
  br label %B4147
B4149:                               	; preds = %B4135
  br label %B4147
B4153:                               	; preds = %B4152
  %t1992 = load i32, i32* %t2859, align 4
  %t1993 = srem i32 %t1992, 2
  %t1997 = icmp ne i32 %t1993, 0
  br i1 %t1997, label %B4160, label %B4162
B4157:                               	; preds = %B4152
  br label %B4154
B4193:                               	; preds = %B4199, %B4205
  %t2091 = load i32, i32* %t2857, align 4
  store i32 %t2091, i32* %t4018, align 4
  br label %B4020
B4209:                               	; preds = %B4203
  %t2071 = load i32, i32* %t2859, align 4
  %t2072 = load i32, i32* %t2860, align 4
  %t2073 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2072
  %t4215 = load i32, i32* %t2073, align 4
  %t2074 = sdiv i32 %t2071, %t4215
  store i32 %t2074, i32* %t2859, align 4
  %t2076 = load i32, i32* %t2859, align 4
  %t2077 = add i32 %t2076, 65536
  %t2078 = load i32, i32* %t2860, align 4
  %t2079 = sub i32 15, %t2078
  %t2080 = add i32 %t2079, 1
  %t2081 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2080
  %t4216 = load i32, i32* %t2081, align 4
  %t2082 = sub i32 %t2077, %t4216
  store i32 %t2082, i32* %t2857, align 4
  br label %B4211
B4214:                               	; preds = %B4203
  br label %B4210
B4204:                               	; preds = %B4208
  %t2089 = load i32, i32* %t2859, align 4
  store i32 %t2089, i32* %t2857, align 4
  br label %B4205
B4332:                               	; preds = %B4326
  %t2234 = load i32, i32* %t2857, align 4
  %t2235 = load i32, i32* %t2858, align 4
  %t2236 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2235
  %t4337 = load i32, i32* %t2236, align 4
  %t2237 = mul i32 1, %t4337
  %t2238 = add i32 %t2234, %t2237
  store i32 %t2238, i32* %t2857, align 4
  br label %B4333
B4336:                               	; preds = %B4326
  br label %B4333
B4327:                               	; preds = %B4330
  %t2239 = load i32, i32* %t2860, align 4
  %t2240 = srem i32 %t2239, 2
  %t2247 = icmp ne i32 %t2240, 0
  br i1 %t2247, label %B4338, label %B4341
B4344:                               	; preds = %B4322, %B4351
  %t2266 = load i32, i32* %t2858, align 4
  %t2267 = icmp slt i32 %t2266, 16
  br i1 %t2267, label %B4345, label %B4349
B4398:                               	; preds = %B4393
  %t2351 = load i32, i32* %t2860, align 4
  %t2352 = srem i32 %t2351, 2
  %t2353 = icmp eq i32 %t2352, 0
  br i1 %t2353, label %B4404, label %B4408
B4402:                               	; preds = %B4393
  br label %B4399
B4394:                               	; preds = %B4397
  %t2380 = load i32, i32* %t2857, align 4
  store i32 %t2380, i32* %t4385, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2384 = load i32, i32* %t4383, align 4
  store i32 %t2384, i32* %t2859, align 4
  %t2386 = load i32, i32* %t4384, align 4
  store i32 %t2386, i32* %t2860, align 4
  br label %B4416
B4461:                               	; preds = %B4455
  store i32 65535, i32* %t2857, align 4
  br label %B4463
B4466:                               	; preds = %B4455
  br label %B4462
B4456:                               	; preds = %B4460
  %t2463 = load i32, i32* %t2860, align 4
  %t2464 = icmp sgt i32 %t2463, 0
  br i1 %t2464, label %B4467, label %B4472
B4527:                               	; preds = %B4522
  %t2548 = load i32, i32* %t2860, align 4
  %t2549 = srem i32 %t2548, 2
  %t2550 = icmp eq i32 %t2549, 0
  br i1 %t2550, label %B4533, label %B4537
B4531:                               	; preds = %B4522
  br label %B4528
B4523:                               	; preds = %B4526
  %t2577 = load i32, i32* %t2857, align 4
  store i32 %t2577, i32* %t4514, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2581 = load i32, i32* %t4512, align 4
  store i32 %t2581, i32* %t2859, align 4
  %t2583 = load i32, i32* %t4513, align 4
  store i32 %t2583, i32* %t2860, align 4
  br label %B4545
B4594:                               	; preds = %B4593
  %t2667 = load i32, i32* %t2859, align 4
  %t2668 = srem i32 %t2667, 2
  %t2687 = icmp ne i32 %t2668, 0
  br i1 %t2687, label %B4599, label %B4603
B4598:                               	; preds = %B4593
  br label %B4595
B4656:                               	; preds = %B4589
  %t2777 = load i32, i32* %t2859, align 4
  %t2778 = icmp slt i32 %t2777, 0
  br i1 %t2778, label %B4662, label %B4667
B4661:                               	; preds = %B4589
  br label %B4657
B3515:                               	; preds = %B3517
  %t1005 = load i32, i32* %t2857, align 4
  %t1006 = load i32, i32* %t2858, align 4
  %t1007 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1006
  %t3524 = load i32, i32* %t1007, align 4
  %t1008 = mul i32 1, %t3524
  %t1009 = add i32 %t1005, %t1008
  store i32 %t1009, i32* %t2857, align 4
  br label %B3516
B3522:                               	; preds = %B3517
  br label %B3516
B3516:                               	; preds = %B3515, %B3519, %B3522
  %t1011 = load i32, i32* %t2859, align 4
  %t1012 = sdiv i32 %t1011, 2
  store i32 %t1012, i32* %t2859, align 4
  %t1014 = load i32, i32* %t2860, align 4
  %t1015 = sdiv i32 %t1014, 2
  store i32 %t1015, i32* %t2860, align 4
  %t1017 = load i32, i32* %t2858, align 4
  %t1018 = add i32 %t1017, 1
  store i32 %t1018, i32* %t2858, align 4
  br label %B3509
B3644:                               	; preds = %B3646
  %t1202 = load i32, i32* %t2857, align 4
  %t1203 = load i32, i32* %t2858, align 4
  %t1204 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1203
  %t3653 = load i32, i32* %t1204, align 4
  %t1205 = mul i32 1, %t3653
  %t1206 = add i32 %t1202, %t1205
  store i32 %t1206, i32* %t2857, align 4
  br label %B3645
B3651:                               	; preds = %B3646
  br label %B3645
B3645:                               	; preds = %B3644, %B3648, %B3651
  %t1208 = load i32, i32* %t2859, align 4
  %t1209 = sdiv i32 %t1208, 2
  store i32 %t1209, i32* %t2859, align 4
  %t1211 = load i32, i32* %t2860, align 4
  %t1212 = sdiv i32 %t1211, 2
  store i32 %t1212, i32* %t2860, align 4
  %t1214 = load i32, i32* %t2858, align 4
  %t1215 = add i32 %t1214, 1
  store i32 %t1215, i32* %t2858, align 4
  br label %B3638
B3718:                               	; preds = %B3711
  %t1317 = load i32, i32* %t2860, align 4
  %t1318 = srem i32 %t1317, 2
  %t1321 = icmp ne i32 %t1318, 0
  br i1 %t1321, label %B3716, label %B3723
B3720:                               	; preds = %B3711
  br label %B3717
B3712:                               	; preds = %B3715
  br label %B3705
B3897:                               	; preds = %B3895, %B3904
  %t1611 = load i32, i32* %t2857, align 4
  store i32 %t1611, i32* %t3847, align 4
  %t1613 = load i32, i32* %t3848, align 4
  store i32 %t1613, i32* %t3846, align 4
  br label %B3849
B3896:                               	; preds = %B3900
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1582 = load i32, i32* %t3847, align 4
  %t1583 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3901 = load i32, i32* %t1583, align 4
  %t1584 = mul i32 %t1582, %t3901
  store i32 %t1584, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3902
B3957:                               	; preds = %B3959
  %t1682 = load i32, i32* %t2857, align 4
  %t1683 = load i32, i32* %t2858, align 4
  %t1684 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1683
  %t3966 = load i32, i32* %t1684, align 4
  %t1685 = mul i32 1, %t3966
  %t1686 = add i32 %t1682, %t1685
  store i32 %t1686, i32* %t2857, align 4
  br label %B3958
B3964:                               	; preds = %B3959
  br label %B3958
B3958:                               	; preds = %B3957, %B3961, %B3964
  %t1688 = load i32, i32* %t2859, align 4
  %t1689 = sdiv i32 %t1688, 2
  store i32 %t1689, i32* %t2859, align 4
  %t1691 = load i32, i32* %t2860, align 4
  %t1692 = sdiv i32 %t1691, 2
  store i32 %t1692, i32* %t2860, align 4
  %t1694 = load i32, i32* %t2858, align 4
  %t1695 = add i32 %t1694, 1
  store i32 %t1695, i32* %t2858, align 4
  br label %B3951
B3967:                               	; preds = %B3953
  store i32 0, i32* %t2857, align 4
  br label %B3969
B3972:                               	; preds = %B3953
  br label %B3968
B4086:                               	; preds = %B4088
  %t1879 = load i32, i32* %t2857, align 4
  %t1880 = load i32, i32* %t2858, align 4
  %t1881 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1880
  %t4095 = load i32, i32* %t1881, align 4
  %t1882 = mul i32 1, %t4095
  %t1883 = add i32 %t1879, %t1882
  store i32 %t1883, i32* %t2857, align 4
  br label %B4087
B4093:                               	; preds = %B4088
  br label %B4087
B4087:                               	; preds = %B4086, %B4090, %B4093
  %t1885 = load i32, i32* %t2859, align 4
  %t1886 = sdiv i32 %t1885, 2
  store i32 %t1886, i32* %t2859, align 4
  %t1888 = load i32, i32* %t2860, align 4
  %t1889 = sdiv i32 %t1888, 2
  store i32 %t1889, i32* %t2860, align 4
  %t1891 = load i32, i32* %t2858, align 4
  %t1892 = add i32 %t1891, 1
  store i32 %t1892, i32* %t2858, align 4
  br label %B4080
B4096:                               	; preds = %B4082
  store i32 0, i32* %t2857, align 4
  br label %B4098
B4101:                               	; preds = %B4082
  br label %B4097
B4136:                               	; preds = %B4141, %B4147
  %t1974 = load i32, i32* %t2859, align 4
  %t1975 = sdiv i32 %t1974, 2
  store i32 %t1975, i32* %t2859, align 4
  %t1977 = load i32, i32* %t2860, align 4
  %t1978 = sdiv i32 %t1977, 2
  store i32 %t1978, i32* %t2860, align 4
  %t1980 = load i32, i32* %t2858, align 4
  %t1981 = add i32 %t1980, 1
  store i32 %t1981, i32* %t2858, align 4
  br label %B4128
B4147:                               	; preds = %B4146, %B4149
  br label %B4136
B4160:                               	; preds = %B4153
  %t1994 = load i32, i32* %t2860, align 4
  %t1995 = srem i32 %t1994, 2
  %t1998 = icmp ne i32 %t1995, 0
  br i1 %t1998, label %B4158, label %B4165
B4162:                               	; preds = %B4153
  br label %B4159
B4154:                               	; preds = %B4157
  %t2015 = load i32, i32* %t2857, align 4
  store i32 %t2015, i32* %t4120, align 4
  %t2016 = icmp sgt i32 1, 15
  br i1 %t2016, label %B4168, label %B4173
B4211:                               	; preds = %B4209, %B4210
  br label %B4205
B4210:                               	; preds = %B4214
  %t2084 = load i32, i32* %t2859, align 4
  %t2085 = load i32, i32* %t2860, align 4
  %t2086 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2085
  %t4217 = load i32, i32* %t2086, align 4
  %t2087 = sdiv i32 %t2084, %t4217
  store i32 %t2087, i32* %t2857, align 4
  br label %B4211
B4205:                               	; preds = %B4204, %B4211
  br label %B4193
B4333:                               	; preds = %B4332, %B4336
  br label %B4328
B4338:                               	; preds = %B4327
  %t2242 = load i32, i32* %t2857, align 4
  %t2243 = load i32, i32* %t2858, align 4
  %t2244 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2243
  %t4343 = load i32, i32* %t2244, align 4
  %t2245 = mul i32 1, %t4343
  %t2246 = add i32 %t2242, %t2245
  store i32 %t2246, i32* %t2857, align 4
  br label %B4339
B4341:                               	; preds = %B4327
  br label %B4339
B4345:                               	; preds = %B4344
  %t2268 = load i32, i32* %t2859, align 4
  %t2269 = srem i32 %t2268, 2
  %t2273 = icmp ne i32 %t2269, 0
  br i1 %t2273, label %B4352, label %B4354
B4349:                               	; preds = %B4344
  br label %B4346
B4404:                               	; preds = %B4398
  %t2355 = load i32, i32* %t2857, align 4
  %t2356 = load i32, i32* %t2858, align 4
  %t2357 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2356
  %t4409 = load i32, i32* %t2357, align 4
  %t2358 = mul i32 1, %t4409
  %t2359 = add i32 %t2355, %t2358
  store i32 %t2359, i32* %t2857, align 4
  br label %B4405
B4408:                               	; preds = %B4398
  br label %B4405
B4399:                               	; preds = %B4402
  %t2360 = load i32, i32* %t2860, align 4
  %t2361 = srem i32 %t2360, 2
  %t2368 = icmp ne i32 %t2361, 0
  br i1 %t2368, label %B4410, label %B4413
B4416:                               	; preds = %B4394, %B4423
  %t2387 = load i32, i32* %t2858, align 4
  %t2388 = icmp slt i32 %t2387, 16
  br i1 %t2388, label %B4417, label %B4421
B4463:                               	; preds = %B4461, %B4462
  br label %B4457
B4462:                               	; preds = %B4466
  store i32 0, i32* %t2857, align 4
  br label %B4463
B4467:                               	; preds = %B4456
  %t2465 = load i32, i32* %t2859, align 4
  %t2466 = icmp sgt i32 %t2465, 32767
  br i1 %t2466, label %B4473, label %B4478
B4472:                               	; preds = %B4456
  br label %B4468
B4533:                               	; preds = %B4527
  %t2552 = load i32, i32* %t2857, align 4
  %t2553 = load i32, i32* %t2858, align 4
  %t2554 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2553
  %t4538 = load i32, i32* %t2554, align 4
  %t2555 = mul i32 1, %t4538
  %t2556 = add i32 %t2552, %t2555
  store i32 %t2556, i32* %t2857, align 4
  br label %B4534
B4537:                               	; preds = %B4527
  br label %B4534
B4528:                               	; preds = %B4531
  %t2557 = load i32, i32* %t2860, align 4
  %t2558 = srem i32 %t2557, 2
  %t2565 = icmp ne i32 %t2558, 0
  br i1 %t2565, label %B4539, label %B4542
B4545:                               	; preds = %B4523, %B4552
  %t2584 = load i32, i32* %t2858, align 4
  %t2585 = icmp slt i32 %t2584, 16
  br i1 %t2585, label %B4546, label %B4550
B4599:                               	; preds = %B4594
  %t2669 = load i32, i32* %t2860, align 4
  %t2670 = srem i32 %t2669, 2
  %t2671 = icmp eq i32 %t2670, 0
  br i1 %t2671, label %B4605, label %B4609
B4603:                               	; preds = %B4594
  br label %B4600
B4595:                               	; preds = %B4598
  %t2698 = load i32, i32* %t2857, align 4
  store i32 %t2698, i32* %t4586, align 4
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2702 = load i32, i32* %t4584, align 4
  store i32 %t2702, i32* %t2859, align 4
  %t2704 = load i32, i32* %t4585, align 4
  store i32 %t2704, i32* %t2860, align 4
  br label %B4617
B4662:                               	; preds = %B4656
  store i32 65535, i32* %t2857, align 4
  br label %B4664
B4667:                               	; preds = %B4656
  br label %B4663
B4657:                               	; preds = %B4661
  %t2781 = load i32, i32* %t2860, align 4
  %t2782 = icmp sgt i32 %t2781, 0
  br i1 %t2782, label %B4668, label %B4673
B3716:                               	; preds = %B3718
  %t1323 = load i32, i32* %t2857, align 4
  %t1324 = load i32, i32* %t2858, align 4
  %t1325 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1324
  %t3725 = load i32, i32* %t1325, align 4
  %t1326 = mul i32 1, %t3725
  %t1327 = add i32 %t1323, %t1326
  store i32 %t1327, i32* %t2857, align 4
  br label %B3717
B3723:                               	; preds = %B3718
  br label %B3717
B3717:                               	; preds = %B3716, %B3720, %B3723
  %t1329 = load i32, i32* %t2859, align 4
  %t1330 = sdiv i32 %t1329, 2
  store i32 %t1330, i32* %t2859, align 4
  %t1332 = load i32, i32* %t2860, align 4
  %t1333 = sdiv i32 %t1332, 2
  store i32 %t1333, i32* %t2860, align 4
  %t1335 = load i32, i32* %t2858, align 4
  %t1336 = add i32 %t1335, 1
  store i32 %t1336, i32* %t2858, align 4
  br label %B3710
B3902:                               	; preds = %B3896, %B3909
  %t1586 = load i32, i32* %t2858, align 4
  %t1587 = icmp slt i32 %t1586, 16
  br i1 %t1587, label %B3903, label %B3907
B3969:                               	; preds = %B3967, %B3976
  %t1732 = load i32, i32* %t2857, align 4
  store i32 %t1732, i32* %t3919, align 4
  %t1734 = load i32, i32* %t3920, align 4
  store i32 %t1734, i32* %t3918, align 4
  br label %B3921
B3968:                               	; preds = %B3972
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1703 = load i32, i32* %t3919, align 4
  %t1704 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t3973 = load i32, i32* %t1704, align 4
  %t1705 = mul i32 %t1703, %t3973
  store i32 %t1705, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B3974
B4098:                               	; preds = %B4096, %B4105
  %t1929 = load i32, i32* %t2857, align 4
  store i32 %t1929, i32* %t4048, align 4
  %t1931 = load i32, i32* %t4049, align 4
  store i32 %t1931, i32* %t4047, align 4
  br label %B4050
B4097:                               	; preds = %B4101
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t1900 = load i32, i32* %t4048, align 4
  %t1901 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4102 = load i32, i32* %t1901, align 4
  %t1902 = mul i32 %t1900, %t4102
  store i32 %t1902, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4103
B4158:                               	; preds = %B4160
  %t2000 = load i32, i32* %t2857, align 4
  %t2001 = load i32, i32* %t2858, align 4
  %t2002 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2001
  %t4167 = load i32, i32* %t2002, align 4
  %t2003 = mul i32 1, %t4167
  %t2004 = add i32 %t2000, %t2003
  store i32 %t2004, i32* %t2857, align 4
  br label %B4159
B4165:                               	; preds = %B4160
  br label %B4159
B4159:                               	; preds = %B4158, %B4162, %B4165
  %t2006 = load i32, i32* %t2859, align 4
  %t2007 = sdiv i32 %t2006, 2
  store i32 %t2007, i32* %t2859, align 4
  %t2009 = load i32, i32* %t2860, align 4
  %t2010 = sdiv i32 %t2009, 2
  store i32 %t2010, i32* %t2860, align 4
  %t2012 = load i32, i32* %t2858, align 4
  %t2013 = add i32 %t2012, 1
  store i32 %t2013, i32* %t2858, align 4
  br label %B4152
B4168:                               	; preds = %B4154
  store i32 0, i32* %t2857, align 4
  br label %B4170
B4173:                               	; preds = %B4154
  br label %B4169
B4328:                               	; preds = %B4333, %B4339
  %t2250 = load i32, i32* %t2859, align 4
  %t2251 = sdiv i32 %t2250, 2
  store i32 %t2251, i32* %t2859, align 4
  %t2253 = load i32, i32* %t2860, align 4
  %t2254 = sdiv i32 %t2253, 2
  store i32 %t2254, i32* %t2860, align 4
  %t2256 = load i32, i32* %t2858, align 4
  %t2257 = add i32 %t2256, 1
  store i32 %t2257, i32* %t2858, align 4
  br label %B4320
B4339:                               	; preds = %B4338, %B4341
  br label %B4328
B4352:                               	; preds = %B4345
  %t2270 = load i32, i32* %t2860, align 4
  %t2271 = srem i32 %t2270, 2
  %t2274 = icmp ne i32 %t2271, 0
  br i1 %t2274, label %B4350, label %B4357
B4354:                               	; preds = %B4345
  br label %B4351
B4346:                               	; preds = %B4349
  %t2291 = load i32, i32* %t2857, align 4
  store i32 %t2291, i32* %t4312, align 4
  %t2292 = icmp sgt i32 1, 15
  br i1 %t2292, label %B4360, label %B4365
B4405:                               	; preds = %B4404, %B4408
  br label %B4400
B4410:                               	; preds = %B4399
  %t2363 = load i32, i32* %t2857, align 4
  %t2364 = load i32, i32* %t2858, align 4
  %t2365 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2364
  %t4415 = load i32, i32* %t2365, align 4
  %t2366 = mul i32 1, %t4415
  %t2367 = add i32 %t2363, %t2366
  store i32 %t2367, i32* %t2857, align 4
  br label %B4411
B4413:                               	; preds = %B4399
  br label %B4411
B4417:                               	; preds = %B4416
  %t2389 = load i32, i32* %t2859, align 4
  %t2390 = srem i32 %t2389, 2
  %t2394 = icmp ne i32 %t2390, 0
  br i1 %t2394, label %B4424, label %B4426
B4421:                               	; preds = %B4416
  br label %B4418
B4457:                               	; preds = %B4463, %B4469
  %t2488 = load i32, i32* %t2857, align 4
  store i32 %t2488, i32* %t4282, align 4
  br label %B4284
B4473:                               	; preds = %B4467
  %t2468 = load i32, i32* %t2859, align 4
  %t2469 = load i32, i32* %t2860, align 4
  %t2470 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2469
  %t4479 = load i32, i32* %t2470, align 4
  %t2471 = sdiv i32 %t2468, %t4479
  store i32 %t2471, i32* %t2859, align 4
  %t2473 = load i32, i32* %t2859, align 4
  %t2474 = add i32 %t2473, 65536
  %t2475 = load i32, i32* %t2860, align 4
  %t2476 = sub i32 15, %t2475
  %t2477 = add i32 %t2476, 1
  %t2478 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2477
  %t4480 = load i32, i32* %t2478, align 4
  %t2479 = sub i32 %t2474, %t4480
  store i32 %t2479, i32* %t2857, align 4
  br label %B4475
B4478:                               	; preds = %B4467
  br label %B4474
B4468:                               	; preds = %B4472
  %t2486 = load i32, i32* %t2859, align 4
  store i32 %t2486, i32* %t2857, align 4
  br label %B4469
B4534:                               	; preds = %B4533, %B4537
  br label %B4529
B4539:                               	; preds = %B4528
  %t2560 = load i32, i32* %t2857, align 4
  %t2561 = load i32, i32* %t2858, align 4
  %t2562 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2561
  %t4544 = load i32, i32* %t2562, align 4
  %t2563 = mul i32 1, %t4544
  %t2564 = add i32 %t2560, %t2563
  store i32 %t2564, i32* %t2857, align 4
  br label %B4540
B4542:                               	; preds = %B4528
  br label %B4540
B4546:                               	; preds = %B4545
  %t2586 = load i32, i32* %t2859, align 4
  %t2587 = srem i32 %t2586, 2
  %t2591 = icmp ne i32 %t2587, 0
  br i1 %t2591, label %B4553, label %B4555
B4550:                               	; preds = %B4545
  br label %B4547
B4605:                               	; preds = %B4599
  %t2673 = load i32, i32* %t2857, align 4
  %t2674 = load i32, i32* %t2858, align 4
  %t2675 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2674
  %t4610 = load i32, i32* %t2675, align 4
  %t2676 = mul i32 1, %t4610
  %t2677 = add i32 %t2673, %t2676
  store i32 %t2677, i32* %t2857, align 4
  br label %B4606
B4609:                               	; preds = %B4599
  br label %B4606
B4600:                               	; preds = %B4603
  %t2678 = load i32, i32* %t2860, align 4
  %t2679 = srem i32 %t2678, 2
  %t2686 = icmp ne i32 %t2679, 0
  br i1 %t2686, label %B4611, label %B4614
B4617:                               	; preds = %B4595, %B4624
  %t2705 = load i32, i32* %t2858, align 4
  %t2706 = icmp slt i32 %t2705, 16
  br i1 %t2706, label %B4618, label %B4622
B4664:                               	; preds = %B4662, %B4663
  br label %B4658
B4663:                               	; preds = %B4667
  store i32 0, i32* %t2857, align 4
  br label %B4664
B4668:                               	; preds = %B4657
  %t2783 = load i32, i32* %t2859, align 4
  %t2784 = icmp sgt i32 %t2783, 32767
  br i1 %t2784, label %B4674, label %B4679
B4673:                               	; preds = %B4657
  br label %B4669
B3903:                               	; preds = %B3902
  %t1588 = load i32, i32* %t2859, align 4
  %t1589 = srem i32 %t1588, 2
  %t1593 = icmp ne i32 %t1589, 0
  br i1 %t1593, label %B3910, label %B3912
B3907:                               	; preds = %B3902
  br label %B3904
B3974:                               	; preds = %B3968, %B3981
  %t1707 = load i32, i32* %t2858, align 4
  %t1708 = icmp slt i32 %t1707, 16
  br i1 %t1708, label %B3975, label %B3979
B4103:                               	; preds = %B4097, %B4110
  %t1904 = load i32, i32* %t2858, align 4
  %t1905 = icmp slt i32 %t1904, 16
  br i1 %t1905, label %B4104, label %B4108
B4170:                               	; preds = %B4168, %B4177
  %t2050 = load i32, i32* %t2857, align 4
  store i32 %t2050, i32* %t4120, align 4
  %t2052 = load i32, i32* %t4121, align 4
  store i32 %t2052, i32* %t4119, align 4
  br label %B4122
B4169:                               	; preds = %B4173
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2021 = load i32, i32* %t4120, align 4
  %t2022 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4174 = load i32, i32* %t2022, align 4
  %t2023 = mul i32 %t2021, %t4174
  store i32 %t2023, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4175
B4350:                               	; preds = %B4352
  %t2276 = load i32, i32* %t2857, align 4
  %t2277 = load i32, i32* %t2858, align 4
  %t2278 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2277
  %t4359 = load i32, i32* %t2278, align 4
  %t2279 = mul i32 1, %t4359
  %t2280 = add i32 %t2276, %t2279
  store i32 %t2280, i32* %t2857, align 4
  br label %B4351
B4357:                               	; preds = %B4352
  br label %B4351
B4351:                               	; preds = %B4350, %B4354, %B4357
  %t2282 = load i32, i32* %t2859, align 4
  %t2283 = sdiv i32 %t2282, 2
  store i32 %t2283, i32* %t2859, align 4
  %t2285 = load i32, i32* %t2860, align 4
  %t2286 = sdiv i32 %t2285, 2
  store i32 %t2286, i32* %t2860, align 4
  %t2288 = load i32, i32* %t2858, align 4
  %t2289 = add i32 %t2288, 1
  store i32 %t2289, i32* %t2858, align 4
  br label %B4344
B4360:                               	; preds = %B4346
  store i32 0, i32* %t2857, align 4
  br label %B4362
B4365:                               	; preds = %B4346
  br label %B4361
B4400:                               	; preds = %B4405, %B4411
  %t2371 = load i32, i32* %t2859, align 4
  %t2372 = sdiv i32 %t2371, 2
  store i32 %t2372, i32* %t2859, align 4
  %t2374 = load i32, i32* %t2860, align 4
  %t2375 = sdiv i32 %t2374, 2
  store i32 %t2375, i32* %t2860, align 4
  %t2377 = load i32, i32* %t2858, align 4
  %t2378 = add i32 %t2377, 1
  store i32 %t2378, i32* %t2858, align 4
  br label %B4392
B4411:                               	; preds = %B4410, %B4413
  br label %B4400
B4424:                               	; preds = %B4417
  %t2391 = load i32, i32* %t2860, align 4
  %t2392 = srem i32 %t2391, 2
  %t2395 = icmp ne i32 %t2392, 0
  br i1 %t2395, label %B4422, label %B4429
B4426:                               	; preds = %B4417
  br label %B4423
B4418:                               	; preds = %B4421
  %t2412 = load i32, i32* %t2857, align 4
  store i32 %t2412, i32* %t4384, align 4
  %t2413 = icmp sgt i32 1, 15
  br i1 %t2413, label %B4432, label %B4437
B4475:                               	; preds = %B4473, %B4474
  br label %B4469
B4474:                               	; preds = %B4478
  %t2481 = load i32, i32* %t2859, align 4
  %t2482 = load i32, i32* %t2860, align 4
  %t2483 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2482
  %t4481 = load i32, i32* %t2483, align 4
  %t2484 = sdiv i32 %t2481, %t4481
  store i32 %t2484, i32* %t2857, align 4
  br label %B4475
B4469:                               	; preds = %B4468, %B4475
  br label %B4457
B4529:                               	; preds = %B4534, %B4540
  %t2568 = load i32, i32* %t2859, align 4
  %t2569 = sdiv i32 %t2568, 2
  store i32 %t2569, i32* %t2859, align 4
  %t2571 = load i32, i32* %t2860, align 4
  %t2572 = sdiv i32 %t2571, 2
  store i32 %t2572, i32* %t2860, align 4
  %t2574 = load i32, i32* %t2858, align 4
  %t2575 = add i32 %t2574, 1
  store i32 %t2575, i32* %t2858, align 4
  br label %B4521
B4540:                               	; preds = %B4539, %B4542
  br label %B4529
B4553:                               	; preds = %B4546
  %t2588 = load i32, i32* %t2860, align 4
  %t2589 = srem i32 %t2588, 2
  %t2592 = icmp ne i32 %t2589, 0
  br i1 %t2592, label %B4551, label %B4558
B4555:                               	; preds = %B4546
  br label %B4552
B4547:                               	; preds = %B4550
  %t2609 = load i32, i32* %t2857, align 4
  store i32 %t2609, i32* %t4513, align 4
  %t2610 = icmp sgt i32 1, 15
  br i1 %t2610, label %B4561, label %B4566
B4606:                               	; preds = %B4605, %B4609
  br label %B4601
B4611:                               	; preds = %B4600
  %t2681 = load i32, i32* %t2857, align 4
  %t2682 = load i32, i32* %t2858, align 4
  %t2683 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2682
  %t4616 = load i32, i32* %t2683, align 4
  %t2684 = mul i32 1, %t4616
  %t2685 = add i32 %t2681, %t2684
  store i32 %t2685, i32* %t2857, align 4
  br label %B4612
B4614:                               	; preds = %B4600
  br label %B4612
B4618:                               	; preds = %B4617
  %t2707 = load i32, i32* %t2859, align 4
  %t2708 = srem i32 %t2707, 2
  %t2712 = icmp ne i32 %t2708, 0
  br i1 %t2712, label %B4625, label %B4627
B4622:                               	; preds = %B4617
  br label %B4619
B4658:                               	; preds = %B4664, %B4670
  %t2806 = load i32, i32* %t2857, align 4
  store i32 %t2806, i32* %t4483, align 4
  br label %B4485
B4674:                               	; preds = %B4668
  %t2786 = load i32, i32* %t2859, align 4
  %t2787 = load i32, i32* %t2860, align 4
  %t2788 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2787
  %t4680 = load i32, i32* %t2788, align 4
  %t2789 = sdiv i32 %t2786, %t4680
  store i32 %t2789, i32* %t2859, align 4
  %t2791 = load i32, i32* %t2859, align 4
  %t2792 = add i32 %t2791, 65536
  %t2793 = load i32, i32* %t2860, align 4
  %t2794 = sub i32 15, %t2793
  %t2795 = add i32 %t2794, 1
  %t2796 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2795
  %t4681 = load i32, i32* %t2796, align 4
  %t2797 = sub i32 %t2792, %t4681
  store i32 %t2797, i32* %t2857, align 4
  br label %B4676
B4679:                               	; preds = %B4668
  br label %B4675
B4669:                               	; preds = %B4673
  %t2804 = load i32, i32* %t2859, align 4
  store i32 %t2804, i32* %t2857, align 4
  br label %B4670
B3910:                               	; preds = %B3903
  %t1590 = load i32, i32* %t2860, align 4
  %t1591 = srem i32 %t1590, 2
  %t1594 = icmp ne i32 %t1591, 0
  br i1 %t1594, label %B3908, label %B3915
B3912:                               	; preds = %B3903
  br label %B3909
B3904:                               	; preds = %B3907
  br label %B3897
B3975:                               	; preds = %B3974
  %t1709 = load i32, i32* %t2859, align 4
  %t1710 = srem i32 %t1709, 2
  %t1714 = icmp ne i32 %t1710, 0
  br i1 %t1714, label %B3982, label %B3984
B3979:                               	; preds = %B3974
  br label %B3976
B4104:                               	; preds = %B4103
  %t1906 = load i32, i32* %t2859, align 4
  %t1907 = srem i32 %t1906, 2
  %t1911 = icmp ne i32 %t1907, 0
  br i1 %t1911, label %B4111, label %B4113
B4108:                               	; preds = %B4103
  br label %B4105
B4175:                               	; preds = %B4169, %B4182
  %t2025 = load i32, i32* %t2858, align 4
  %t2026 = icmp slt i32 %t2025, 16
  br i1 %t2026, label %B4176, label %B4180
B4362:                               	; preds = %B4360, %B4369
  %t2326 = load i32, i32* %t2857, align 4
  store i32 %t2326, i32* %t4312, align 4
  %t2328 = load i32, i32* %t4313, align 4
  store i32 %t2328, i32* %t4311, align 4
  br label %B4314
B4361:                               	; preds = %B4365
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2297 = load i32, i32* %t4312, align 4
  %t2298 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4366 = load i32, i32* %t2298, align 4
  %t2299 = mul i32 %t2297, %t4366
  store i32 %t2299, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4367
B4422:                               	; preds = %B4424
  %t2397 = load i32, i32* %t2857, align 4
  %t2398 = load i32, i32* %t2858, align 4
  %t2399 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2398
  %t4431 = load i32, i32* %t2399, align 4
  %t2400 = mul i32 1, %t4431
  %t2401 = add i32 %t2397, %t2400
  store i32 %t2401, i32* %t2857, align 4
  br label %B4423
B4429:                               	; preds = %B4424
  br label %B4423
B4423:                               	; preds = %B4422, %B4426, %B4429
  %t2403 = load i32, i32* %t2859, align 4
  %t2404 = sdiv i32 %t2403, 2
  store i32 %t2404, i32* %t2859, align 4
  %t2406 = load i32, i32* %t2860, align 4
  %t2407 = sdiv i32 %t2406, 2
  store i32 %t2407, i32* %t2860, align 4
  %t2409 = load i32, i32* %t2858, align 4
  %t2410 = add i32 %t2409, 1
  store i32 %t2410, i32* %t2858, align 4
  br label %B4416
B4432:                               	; preds = %B4418
  store i32 0, i32* %t2857, align 4
  br label %B4434
B4437:                               	; preds = %B4418
  br label %B4433
B4551:                               	; preds = %B4553
  %t2594 = load i32, i32* %t2857, align 4
  %t2595 = load i32, i32* %t2858, align 4
  %t2596 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2595
  %t4560 = load i32, i32* %t2596, align 4
  %t2597 = mul i32 1, %t4560
  %t2598 = add i32 %t2594, %t2597
  store i32 %t2598, i32* %t2857, align 4
  br label %B4552
B4558:                               	; preds = %B4553
  br label %B4552
B4552:                               	; preds = %B4551, %B4555, %B4558
  %t2600 = load i32, i32* %t2859, align 4
  %t2601 = sdiv i32 %t2600, 2
  store i32 %t2601, i32* %t2859, align 4
  %t2603 = load i32, i32* %t2860, align 4
  %t2604 = sdiv i32 %t2603, 2
  store i32 %t2604, i32* %t2860, align 4
  %t2606 = load i32, i32* %t2858, align 4
  %t2607 = add i32 %t2606, 1
  store i32 %t2607, i32* %t2858, align 4
  br label %B4545
B4561:                               	; preds = %B4547
  store i32 0, i32* %t2857, align 4
  br label %B4563
B4566:                               	; preds = %B4547
  br label %B4562
B4601:                               	; preds = %B4606, %B4612
  %t2689 = load i32, i32* %t2859, align 4
  %t2690 = sdiv i32 %t2689, 2
  store i32 %t2690, i32* %t2859, align 4
  %t2692 = load i32, i32* %t2860, align 4
  %t2693 = sdiv i32 %t2692, 2
  store i32 %t2693, i32* %t2860, align 4
  %t2695 = load i32, i32* %t2858, align 4
  %t2696 = add i32 %t2695, 1
  store i32 %t2696, i32* %t2858, align 4
  br label %B4593
B4612:                               	; preds = %B4611, %B4614
  br label %B4601
B4625:                               	; preds = %B4618
  %t2709 = load i32, i32* %t2860, align 4
  %t2710 = srem i32 %t2709, 2
  %t2713 = icmp ne i32 %t2710, 0
  br i1 %t2713, label %B4623, label %B4630
B4627:                               	; preds = %B4618
  br label %B4624
B4619:                               	; preds = %B4622
  %t2730 = load i32, i32* %t2857, align 4
  store i32 %t2730, i32* %t4585, align 4
  %t2731 = icmp sgt i32 1, 15
  br i1 %t2731, label %B4633, label %B4638
B4676:                               	; preds = %B4674, %B4675
  br label %B4670
B4675:                               	; preds = %B4679
  %t2799 = load i32, i32* %t2859, align 4
  %t2800 = load i32, i32* %t2860, align 4
  %t2801 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2800
  %t4682 = load i32, i32* %t2801, align 4
  %t2802 = sdiv i32 %t2799, %t4682
  store i32 %t2802, i32* %t2857, align 4
  br label %B4676
B4670:                               	; preds = %B4669, %B4676
  br label %B4658
B3908:                               	; preds = %B3910
  %t1596 = load i32, i32* %t2857, align 4
  %t1597 = load i32, i32* %t2858, align 4
  %t1598 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1597
  %t3917 = load i32, i32* %t1598, align 4
  %t1599 = mul i32 1, %t3917
  %t1600 = add i32 %t1596, %t1599
  store i32 %t1600, i32* %t2857, align 4
  br label %B3909
B3915:                               	; preds = %B3910
  br label %B3909
B3909:                               	; preds = %B3908, %B3912, %B3915
  %t1602 = load i32, i32* %t2859, align 4
  %t1603 = sdiv i32 %t1602, 2
  store i32 %t1603, i32* %t2859, align 4
  %t1605 = load i32, i32* %t2860, align 4
  %t1606 = sdiv i32 %t1605, 2
  store i32 %t1606, i32* %t2860, align 4
  %t1608 = load i32, i32* %t2858, align 4
  %t1609 = add i32 %t1608, 1
  store i32 %t1609, i32* %t2858, align 4
  br label %B3902
B3982:                               	; preds = %B3975
  %t1711 = load i32, i32* %t2860, align 4
  %t1712 = srem i32 %t1711, 2
  %t1715 = icmp ne i32 %t1712, 0
  br i1 %t1715, label %B3980, label %B3987
B3984:                               	; preds = %B3975
  br label %B3981
B3976:                               	; preds = %B3979
  br label %B3969
B4111:                               	; preds = %B4104
  %t1908 = load i32, i32* %t2860, align 4
  %t1909 = srem i32 %t1908, 2
  %t1912 = icmp ne i32 %t1909, 0
  br i1 %t1912, label %B4109, label %B4116
B4113:                               	; preds = %B4104
  br label %B4110
B4105:                               	; preds = %B4108
  br label %B4098
B4176:                               	; preds = %B4175
  %t2027 = load i32, i32* %t2859, align 4
  %t2028 = srem i32 %t2027, 2
  %t2032 = icmp ne i32 %t2028, 0
  br i1 %t2032, label %B4183, label %B4185
B4180:                               	; preds = %B4175
  br label %B4177
B4367:                               	; preds = %B4361, %B4374
  %t2301 = load i32, i32* %t2858, align 4
  %t2302 = icmp slt i32 %t2301, 16
  br i1 %t2302, label %B4368, label %B4372
B4434:                               	; preds = %B4432, %B4441
  %t2447 = load i32, i32* %t2857, align 4
  store i32 %t2447, i32* %t4384, align 4
  %t2449 = load i32, i32* %t4385, align 4
  store i32 %t2449, i32* %t4383, align 4
  br label %B4386
B4433:                               	; preds = %B4437
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2418 = load i32, i32* %t4384, align 4
  %t2419 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4438 = load i32, i32* %t2419, align 4
  %t2420 = mul i32 %t2418, %t4438
  store i32 %t2420, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4439
B4563:                               	; preds = %B4561, %B4570
  %t2644 = load i32, i32* %t2857, align 4
  store i32 %t2644, i32* %t4513, align 4
  %t2646 = load i32, i32* %t4514, align 4
  store i32 %t2646, i32* %t4512, align 4
  br label %B4515
B4562:                               	; preds = %B4566
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2615 = load i32, i32* %t4513, align 4
  %t2616 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4567 = load i32, i32* %t2616, align 4
  %t2617 = mul i32 %t2615, %t4567
  store i32 %t2617, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4568
B4623:                               	; preds = %B4625
  %t2715 = load i32, i32* %t2857, align 4
  %t2716 = load i32, i32* %t2858, align 4
  %t2717 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2716
  %t4632 = load i32, i32* %t2717, align 4
  %t2718 = mul i32 1, %t4632
  %t2719 = add i32 %t2715, %t2718
  store i32 %t2719, i32* %t2857, align 4
  br label %B4624
B4630:                               	; preds = %B4625
  br label %B4624
B4624:                               	; preds = %B4623, %B4627, %B4630
  %t2721 = load i32, i32* %t2859, align 4
  %t2722 = sdiv i32 %t2721, 2
  store i32 %t2722, i32* %t2859, align 4
  %t2724 = load i32, i32* %t2860, align 4
  %t2725 = sdiv i32 %t2724, 2
  store i32 %t2725, i32* %t2860, align 4
  %t2727 = load i32, i32* %t2858, align 4
  %t2728 = add i32 %t2727, 1
  store i32 %t2728, i32* %t2858, align 4
  br label %B4617
B4633:                               	; preds = %B4619
  store i32 0, i32* %t2857, align 4
  br label %B4635
B4638:                               	; preds = %B4619
  br label %B4634
B3980:                               	; preds = %B3982
  %t1717 = load i32, i32* %t2857, align 4
  %t1718 = load i32, i32* %t2858, align 4
  %t1719 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1718
  %t3989 = load i32, i32* %t1719, align 4
  %t1720 = mul i32 1, %t3989
  %t1721 = add i32 %t1717, %t1720
  store i32 %t1721, i32* %t2857, align 4
  br label %B3981
B3987:                               	; preds = %B3982
  br label %B3981
B3981:                               	; preds = %B3980, %B3984, %B3987
  %t1723 = load i32, i32* %t2859, align 4
  %t1724 = sdiv i32 %t1723, 2
  store i32 %t1724, i32* %t2859, align 4
  %t1726 = load i32, i32* %t2860, align 4
  %t1727 = sdiv i32 %t1726, 2
  store i32 %t1727, i32* %t2860, align 4
  %t1729 = load i32, i32* %t2858, align 4
  %t1730 = add i32 %t1729, 1
  store i32 %t1730, i32* %t2858, align 4
  br label %B3974
B4109:                               	; preds = %B4111
  %t1914 = load i32, i32* %t2857, align 4
  %t1915 = load i32, i32* %t2858, align 4
  %t1916 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t1915
  %t4118 = load i32, i32* %t1916, align 4
  %t1917 = mul i32 1, %t4118
  %t1918 = add i32 %t1914, %t1917
  store i32 %t1918, i32* %t2857, align 4
  br label %B4110
B4116:                               	; preds = %B4111
  br label %B4110
B4110:                               	; preds = %B4109, %B4113, %B4116
  %t1920 = load i32, i32* %t2859, align 4
  %t1921 = sdiv i32 %t1920, 2
  store i32 %t1921, i32* %t2859, align 4
  %t1923 = load i32, i32* %t2860, align 4
  %t1924 = sdiv i32 %t1923, 2
  store i32 %t1924, i32* %t2860, align 4
  %t1926 = load i32, i32* %t2858, align 4
  %t1927 = add i32 %t1926, 1
  store i32 %t1927, i32* %t2858, align 4
  br label %B4103
B4183:                               	; preds = %B4176
  %t2029 = load i32, i32* %t2860, align 4
  %t2030 = srem i32 %t2029, 2
  %t2033 = icmp ne i32 %t2030, 0
  br i1 %t2033, label %B4181, label %B4188
B4185:                               	; preds = %B4176
  br label %B4182
B4177:                               	; preds = %B4180
  br label %B4170
B4368:                               	; preds = %B4367
  %t2303 = load i32, i32* %t2859, align 4
  %t2304 = srem i32 %t2303, 2
  %t2308 = icmp ne i32 %t2304, 0
  br i1 %t2308, label %B4375, label %B4377
B4372:                               	; preds = %B4367
  br label %B4369
B4439:                               	; preds = %B4433, %B4446
  %t2422 = load i32, i32* %t2858, align 4
  %t2423 = icmp slt i32 %t2422, 16
  br i1 %t2423, label %B4440, label %B4444
B4568:                               	; preds = %B4562, %B4575
  %t2619 = load i32, i32* %t2858, align 4
  %t2620 = icmp slt i32 %t2619, 16
  br i1 %t2620, label %B4569, label %B4573
B4635:                               	; preds = %B4633, %B4642
  %t2765 = load i32, i32* %t2857, align 4
  store i32 %t2765, i32* %t4585, align 4
  %t2767 = load i32, i32* %t4586, align 4
  store i32 %t2767, i32* %t4584, align 4
  br label %B4587
B4634:                               	; preds = %B4638
  store i32 0, i32* %t2857, align 4
  store i32 0, i32* %t2858, align 4
  %t2736 = load i32, i32* %t4585, align 4
  %t2737 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
  %t4639 = load i32, i32* %t2737, align 4
  %t2738 = mul i32 %t2736, %t4639
  store i32 %t2738, i32* %t2859, align 4
  store i32 65535, i32* %t2860, align 4
  br label %B4640
B4181:                               	; preds = %B4183
  %t2035 = load i32, i32* %t2857, align 4
  %t2036 = load i32, i32* %t2858, align 4
  %t2037 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2036
  %t4190 = load i32, i32* %t2037, align 4
  %t2038 = mul i32 1, %t4190
  %t2039 = add i32 %t2035, %t2038
  store i32 %t2039, i32* %t2857, align 4
  br label %B4182
B4188:                               	; preds = %B4183
  br label %B4182
B4182:                               	; preds = %B4181, %B4185, %B4188
  %t2041 = load i32, i32* %t2859, align 4
  %t2042 = sdiv i32 %t2041, 2
  store i32 %t2042, i32* %t2859, align 4
  %t2044 = load i32, i32* %t2860, align 4
  %t2045 = sdiv i32 %t2044, 2
  store i32 %t2045, i32* %t2860, align 4
  %t2047 = load i32, i32* %t2858, align 4
  %t2048 = add i32 %t2047, 1
  store i32 %t2048, i32* %t2858, align 4
  br label %B4175
B4375:                               	; preds = %B4368
  %t2305 = load i32, i32* %t2860, align 4
  %t2306 = srem i32 %t2305, 2
  %t2309 = icmp ne i32 %t2306, 0
  br i1 %t2309, label %B4373, label %B4380
B4377:                               	; preds = %B4368
  br label %B4374
B4369:                               	; preds = %B4372
  br label %B4362
B4440:                               	; preds = %B4439
  %t2424 = load i32, i32* %t2859, align 4
  %t2425 = srem i32 %t2424, 2
  %t2429 = icmp ne i32 %t2425, 0
  br i1 %t2429, label %B4447, label %B4449
B4444:                               	; preds = %B4439
  br label %B4441
B4569:                               	; preds = %B4568
  %t2621 = load i32, i32* %t2859, align 4
  %t2622 = srem i32 %t2621, 2
  %t2626 = icmp ne i32 %t2622, 0
  br i1 %t2626, label %B4576, label %B4578
B4573:                               	; preds = %B4568
  br label %B4570
B4640:                               	; preds = %B4634, %B4647
  %t2740 = load i32, i32* %t2858, align 4
  %t2741 = icmp slt i32 %t2740, 16
  br i1 %t2741, label %B4641, label %B4645
B4373:                               	; preds = %B4375
  %t2311 = load i32, i32* %t2857, align 4
  %t2312 = load i32, i32* %t2858, align 4
  %t2313 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2312
  %t4382 = load i32, i32* %t2313, align 4
  %t2314 = mul i32 1, %t4382
  %t2315 = add i32 %t2311, %t2314
  store i32 %t2315, i32* %t2857, align 4
  br label %B4374
B4380:                               	; preds = %B4375
  br label %B4374
B4374:                               	; preds = %B4373, %B4377, %B4380
  %t2317 = load i32, i32* %t2859, align 4
  %t2318 = sdiv i32 %t2317, 2
  store i32 %t2318, i32* %t2859, align 4
  %t2320 = load i32, i32* %t2860, align 4
  %t2321 = sdiv i32 %t2320, 2
  store i32 %t2321, i32* %t2860, align 4
  %t2323 = load i32, i32* %t2858, align 4
  %t2324 = add i32 %t2323, 1
  store i32 %t2324, i32* %t2858, align 4
  br label %B4367
B4447:                               	; preds = %B4440
  %t2426 = load i32, i32* %t2860, align 4
  %t2427 = srem i32 %t2426, 2
  %t2430 = icmp ne i32 %t2427, 0
  br i1 %t2430, label %B4445, label %B4452
B4449:                               	; preds = %B4440
  br label %B4446
B4441:                               	; preds = %B4444
  br label %B4434
B4576:                               	; preds = %B4569
  %t2623 = load i32, i32* %t2860, align 4
  %t2624 = srem i32 %t2623, 2
  %t2627 = icmp ne i32 %t2624, 0
  br i1 %t2627, label %B4574, label %B4581
B4578:                               	; preds = %B4569
  br label %B4575
B4570:                               	; preds = %B4573
  br label %B4563
B4641:                               	; preds = %B4640
  %t2742 = load i32, i32* %t2859, align 4
  %t2743 = srem i32 %t2742, 2
  %t2747 = icmp ne i32 %t2743, 0
  br i1 %t2747, label %B4648, label %B4650
B4645:                               	; preds = %B4640
  br label %B4642
B4445:                               	; preds = %B4447
  %t2432 = load i32, i32* %t2857, align 4
  %t2433 = load i32, i32* %t2858, align 4
  %t2434 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2433
  %t4454 = load i32, i32* %t2434, align 4
  %t2435 = mul i32 1, %t4454
  %t2436 = add i32 %t2432, %t2435
  store i32 %t2436, i32* %t2857, align 4
  br label %B4446
B4452:                               	; preds = %B4447
  br label %B4446
B4446:                               	; preds = %B4445, %B4449, %B4452
  %t2438 = load i32, i32* %t2859, align 4
  %t2439 = sdiv i32 %t2438, 2
  store i32 %t2439, i32* %t2859, align 4
  %t2441 = load i32, i32* %t2860, align 4
  %t2442 = sdiv i32 %t2441, 2
  store i32 %t2442, i32* %t2860, align 4
  %t2444 = load i32, i32* %t2858, align 4
  %t2445 = add i32 %t2444, 1
  store i32 %t2445, i32* %t2858, align 4
  br label %B4439
B4574:                               	; preds = %B4576
  %t2629 = load i32, i32* %t2857, align 4
  %t2630 = load i32, i32* %t2858, align 4
  %t2631 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2630
  %t4583 = load i32, i32* %t2631, align 4
  %t2632 = mul i32 1, %t4583
  %t2633 = add i32 %t2629, %t2632
  store i32 %t2633, i32* %t2857, align 4
  br label %B4575
B4581:                               	; preds = %B4576
  br label %B4575
B4575:                               	; preds = %B4574, %B4578, %B4581
  %t2635 = load i32, i32* %t2859, align 4
  %t2636 = sdiv i32 %t2635, 2
  store i32 %t2636, i32* %t2859, align 4
  %t2638 = load i32, i32* %t2860, align 4
  %t2639 = sdiv i32 %t2638, 2
  store i32 %t2639, i32* %t2860, align 4
  %t2641 = load i32, i32* %t2858, align 4
  %t2642 = add i32 %t2641, 1
  store i32 %t2642, i32* %t2858, align 4
  br label %B4568
B4648:                               	; preds = %B4641
  %t2744 = load i32, i32* %t2860, align 4
  %t2745 = srem i32 %t2744, 2
  %t2748 = icmp ne i32 %t2745, 0
  br i1 %t2748, label %B4646, label %B4653
B4650:                               	; preds = %B4641
  br label %B4647
B4642:                               	; preds = %B4645
  br label %B4635
B4646:                               	; preds = %B4648
  %t2750 = load i32, i32* %t2857, align 4
  %t2751 = load i32, i32* %t2858, align 4
  %t2752 = getelementptr inbounds [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %t2751
  %t4655 = load i32, i32* %t2752, align 4
  %t2753 = mul i32 1, %t4655
  %t2754 = add i32 %t2750, %t2753
  store i32 %t2754, i32* %t2857, align 4
  br label %B4647
B4653:                               	; preds = %B4648
  br label %B4647
B4647:                               	; preds = %B4646, %B4650, %B4653
  %t2756 = load i32, i32* %t2859, align 4
  %t2757 = sdiv i32 %t2756, 2
  store i32 %t2757, i32* %t2859, align 4
  %t2759 = load i32, i32* %t2860, align 4
  %t2760 = sdiv i32 %t2759, 2
  store i32 %t2760, i32* %t2860, align 4
  %t2762 = load i32, i32* %t2858, align 4
  %t2763 = add i32 %t2762, 1
  store i32 %t2763, i32* %t2858, align 4
  br label %B4640
}
define i32 @main() {
B4716:
  %t2855 = call i32 @long_func()
  ret i32 %t2855
}
declare void @putint(i32)
declare void @putch(i32)
