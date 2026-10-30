	.text
	.file	"syna_tcm_wait_for_report_aarch64_assembly_input.c"
	.globl	syna_tcm_wait_for_report        // -- Begin function syna_tcm_wait_for_report
	.p2align	2
	.type	syna_tcm_wait_for_report,@function
syna_tcm_wait_for_report:               // @syna_tcm_wait_for_report
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	mov	x29, sp
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	strb	wzr, [x29, #28]
	cbz	x0, .LBB0_6
// %bb.1:
	mov	x19, x2
	cbz	x2, .LBB0_7
// %bb.2:
	ldrb	w2, [x0, #9]
	mov	x21, x0
	cmp	w2, #1
	b.ne	.LBB0_9
// %bb.3:
	ldr	x23, [x21, #72]
	mov	w20, w4
	mov	w22, w3
	ldrb	w8, [x23, #20]
	cmp	w8, #1
	b.ne	.LBB0_10
// %bb.4:
	ldr	x8, [x23, #56]
	cbz	x8, .LBB0_10
// %bb.5:
	add	x0, x21, #80
	mov	w24, w1
	bl	mutex_lock
	ldr	x8, [x23, #56]
	mov	x0, x23
	mov	w1, wzr
	blr	x8
	cmp	w0, #1
	add	x0, x21, #80
	cset	w25, lt
	bl	mutex_unlock
	mov	w1, w24
	b	.LBB0_11
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_8
.LBB0_7:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_8:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_26
.LBB0_9:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_26
.LBB0_10:
	mov	w25, #1                         // =0x1
.LBB0_11:
	and	w23, w1, #0xff
	mov	w24, w22
	cmp	w22, #1
	b.ge	.LBB0_13
	b	.LBB0_14
.LBB0_12:                               //   in Loop: Header=BB0_14 Depth=1
	add	w24, w24, w22
	cmp	w22, #1
	b.lt	.LBB0_14
.LBB0_13:
	mov	w0, w22
	bl	msleep
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	add	x1, x29, #28
	mov	x0, x21
	mov	x2, x19
	bl	syna_tcm_get_event_data
	tbnz	w0, #31, .LBB0_17
// %bb.15:                              //   in Loop: Header=BB0_14 Depth=1
	ldrb	w8, [x29, #28]
	cmp	w8, w23
	b.ne	.LBB0_17
// %bb.16:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	w8, [x19, #12]
	cbnz	w8, .LBB0_18
.LBB0_17:                               //   in Loop: Header=BB0_14 Depth=1
	cmp	w24, w20
	b.lo	.LBB0_12
.LBB0_18:
	tbnz	w25, #0, .LBB0_22
// %bb.19:
	ldr	x22, [x21, #72]
	ldrb	w8, [x22, #20]
	tbz	w8, #0, .LBB0_22
// %bb.20:
	ldr	x8, [x22, #56]
	cbz	x8, .LBB0_22
// %bb.21:
	mov	w25, w0
	add	x0, x21, #80
	bl	mutex_lock
	ldr	x8, [x22, #56]
	mov	x0, x22
	mov	w1, #1                          // =0x1
	blr	x8
	add	x0, x21, #80
	bl	mutex_unlock
	mov	w0, w25
.LBB0_22:
	cmp	w24, w20
	b.lo	.LBB0_26
// %bb.23:
	ldrb	w8, [x29, #28]
	cmp	w8, w23
	b.ne	.LBB0_25
// %bb.24:
	ldr	w8, [x19, #12]
	cbnz	w8, .LBB0_26
.LBB0_25:
	mov	w0, #-244                       // =0xffffff0c
.LBB0_26:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_wait_for_report, .Lfunc_end0-syna_tcm_wait_for_report
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_wait_for_report"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Invalid event data buffer\n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Device is not in application fw mode, mode: %x\n"
	.size	.L.str.3, 62

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
