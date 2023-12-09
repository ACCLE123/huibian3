@map = global [10 x [10 x i32]] zeroinitializer, align 4
@indegree = global [10 x i32] zeroinitializer, align 4
@queue = global [10 x i32] zeroinitializer, align 4
define void @topo(i32 %t3) {
B88:
  %t93 = alloca i32, align 4
  %t92 = alloca i32, align 4
  %t91 = alloca i32, align 4
  %t90 = alloca i32, align 4
  %t89 = alloca i32, align 4
  store i32 %t3, i32* %t89, align 4
  store i32 0, i32* %t90, align 4
  store i32 0, i32* %t91, align 4
  store i32 1, i32* %t92, align 4
  store i32 1, i32* %t93, align 4
  br label %B94
B94:                               	; preds = %B88, %B115
  %t11 = load i32, i32* %t92, align 4
  %t12 = load i32, i32* %t89, align 4
  %t13 = icmp sle i32 %t11, %t12
  br i1 %t13, label %B95, label %B99
B95:                               	; preds = %B94
  store i32 1, i32* %t93, align 4
  br label %B100
B99:                               	; preds = %B94
  br label %B96
B100:                               	; preds = %B95, %B107
  %t15 = load i32, i32* %t93, align 4
  %t16 = load i32, i32* %t89, align 4
  %t17 = icmp sle i32 %t15, %t16
  br i1 %t17, label %B101, label %B105
B96:                               	; preds = %B99
  store i32 0, i32* %t92, align 4
  br label %B127
B101:                               	; preds = %B100
  %t18 = load i32, i32* %t93, align 4
  %t19 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t18
  %t108 = load i32, i32* %t19, align 4
  %t20 = icmp eq i32 %t108, 0
  br i1 %t20, label %B106, label %B111
B105:                               	; preds = %B100
  br label %B102
B127:                               	; preds = %B96, %B128
  %t55 = load i32, i32* %t92, align 4
  %t56 = load i32, i32* %t89, align 4
  %t57 = icmp slt i32 %t55, %t56
  br i1 %t57, label %B128, label %B132
B106:                               	; preds = %B101
  %t22 = load i32, i32* %t93, align 4
  store i32 %t22, i32* %t90, align 4
  br label %B102
B111:                               	; preds = %B101
  br label %B107
B102:                               	; preds = %B105, %B106
  %t28 = load i32, i32* %t90, align 4
  %t26 = load i32, i32* %t91, align 4
  %t27 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t26
  store i32 %t28, i32* %t27, align 4
  %t30 = load i32, i32* %t91, align 4
  %t31 = add i32 %t30, 1
  store i32 %t31, i32* %t91, align 4
  %t34 = sub i32 0, 1
  %t32 = load i32, i32* %t90, align 4
  %t33 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t32
  store i32 %t34, i32* %t33, align 4
  store i32 1, i32* %t93, align 4
  br label %B113
B128:                               	; preds = %B127
  %t58 = load i32, i32* %t92, align 4
  %t59 = getelementptr inbounds [10 x i32], [10 x i32]* @queue, i32 0, i32 %t58
  %t133 = load i32, i32* %t59, align 4
  call void @putint(i32 %t133)
  call void @putch(i32 10)
  %t61 = load i32, i32* %t92, align 4
  %t62 = add i32 %t61, 1
  store i32 %t62, i32* %t92, align 4
  br label %B127
B132:                               	; preds = %B127
  br label %B129
B107:                               	; preds = %B111, %B112
  %t24 = load i32, i32* %t93, align 4
  %t25 = add i32 %t24, 1
  store i32 %t25, i32* %t93, align 4
  br label %B100
B113:                               	; preds = %B102, %B120
  %t36 = load i32, i32* %t93, align 4
  %t37 = load i32, i32* %t89, align 4
  %t38 = icmp sle i32 %t36, %t37
  br i1 %t38, label %B114, label %B118
B129:                               	; preds = %B132
  ret void
B114:                               	; preds = %B113
  %t39 = load i32, i32* %t90, align 4
  %t41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t39
  %t40 = load i32, i32* %t93, align 4
  %t121 = getelementptr inbounds [10 x i32], [10 x i32]* %t41, i32 0, i32 %t40
  %t122 = load i32, i32* %t121, align 4
  %t47 = icmp ne i32 %t122, 0
  br i1 %t47, label %B119, label %B124
B118:                               	; preds = %B113
  br label %B115
B119:                               	; preds = %B114
  %t44 = load i32, i32* %t93, align 4
  %t45 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t44
  %t126 = load i32, i32* %t45, align 4
  %t46 = sub i32 %t126, 1
  %t42 = load i32, i32* %t93, align 4
  %t43 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t42
  store i32 %t46, i32* %t43, align 4
  br label %B120
B124:                               	; preds = %B114
  br label %B120
B115:                               	; preds = %B118
  %t52 = load i32, i32* %t92, align 4
  %t53 = add i32 %t52, 1
  store i32 %t53, i32* %t92, align 4
  br label %B94
B120:                               	; preds = %B119, %B124
  %t49 = load i32, i32* %t93, align 4
  %t50 = add i32 %t49, 1
  store i32 %t50, i32* %t93, align 4
  br label %B113
}
define i32 @main() {
B134:
  %t137 = alloca i32, align 4
  %t136 = alloca i32, align 4
  %t135 = alloca i32, align 4
  store i32 1, i32* %t137, align 4
  store i32 5, i32* %t135, align 4
  br label %B138
B138:                               	; preds = %B134, %B146
  %t67 = load i32, i32* %t137, align 4
  %t68 = load i32, i32* %t135, align 4
  %t69 = icmp sle i32 %t67, %t68
  br i1 %t69, label %B139, label %B143
B139:                               	; preds = %B138
  %t71 = call i32 @getint()
  store i32 %t71, i32* %t136, align 4
  br label %B144
B143:                               	; preds = %B138
  br label %B140
B144:                               	; preds = %B139, %B145
  %t72 = load i32, i32* %t136, align 4
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %B145, label %B149
B140:                               	; preds = %B143
  %t87 = load i32, i32* %t135, align 4
  call void @topo(i32 %t87)
  ret i32 0
B145:                               	; preds = %B144
  %t74 = load i32, i32* %t137, align 4
  %t76 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @map, i32 0, i32 %t74
  %t75 = load i32, i32* %t136, align 4
  %t150 = getelementptr inbounds [10 x i32], [10 x i32]* %t76, i32 0, i32 %t75
  store i32 1, i32* %t150, align 4
  %t79 = load i32, i32* %t136, align 4
  %t80 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t79
  %t151 = load i32, i32* %t80, align 4
  %t81 = add i32 %t151, 1
  %t77 = load i32, i32* %t136, align 4
  %t78 = getelementptr inbounds [10 x i32], [10 x i32]* @indegree, i32 0, i32 %t77
  store i32 %t81, i32* %t78, align 4
  %t83 = call i32 @getint()
  store i32 %t83, i32* %t136, align 4
  br label %B144
B149:                               	; preds = %B144
  br label %B146
B146:                               	; preds = %B149
  %t85 = load i32, i32* %t137, align 4
  %t86 = add i32 %t85, 1
  store i32 %t86, i32* %t137, align 4
  br label %B138
}
declare void @putint(i32)
declare void @putch(i32)
declare i32 @getint()
