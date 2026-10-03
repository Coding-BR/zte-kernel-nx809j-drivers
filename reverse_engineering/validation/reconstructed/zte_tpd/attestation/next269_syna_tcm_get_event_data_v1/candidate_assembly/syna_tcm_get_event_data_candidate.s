	.text
	.file	"syna_tcm_get_event_data_aarch64_assembly_input.c"
	.globl	syna_tcm_get_event_data         // -- Begin function syna_tcm_get_event_data
	.p2align	2
	.type	syna_tcm_get_event_data,@function
syna_tcm_get_event_data:                // @syna_tcm_get_event_data
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_12
// %bb.1:
	cbz	x1, .LBB0_13
// %bb.2:
	ldr	x8, [x0, #912]
	mov	x21, x2
	mov	x20, x0
	mov	x19, x1
	blr	x8
	tbnz	w0, #31, .LBB0_15
// %bb.3:
	cbz	x21, .LBB0_17
// %bb.4:
	ldrb	w2, [x19]
	mov	x8, x21
	sub	w9, w2, #255
	cmn	w9, #239
	b.lo	.LBB0_8
// %bb.5:
	ldr	w10, [x20, #268]
	cbz	w10, .LBB0_17
// %bb.6:
	add	x1, x20, #256
	mov	x0, x8
	bl	syna_tcm_buf_copy_2
	ldrb	w2, [x19]
	tbnz	w0, #31, .LBB0_18
// %bb.7:
	mov	w0, wzr
	mov	x8, x21
.LBB0_8:
	sub	w9, w2, #1
	cmp	w9, #14
	b.hi	.LBB0_17
// %bb.9:
	ldr	w9, [x20, #340]
	cbz	w9, .LBB0_17
// %bb.10:
	add	x1, x20, #328
	mov	x0, x8
	bl	syna_tcm_buf_copy_2
	tbnz	w0, #31, .LBB0_19
// %bb.11:
	mov	w0, wzr
	b	.LBB0_17
.LBB0_12:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_14
.LBB0_13:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
.LBB0_14:
	adrp	x1, .L__func__.syna_tcm_get_event_data
	add	x1, x1, :lo12:.L__func__.syna_tcm_get_event_data
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_17
.LBB0_15:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	adrp	x1, .L__func__.syna_tcm_get_event_data
	add	x1, x1, :lo12:.L__func__.syna_tcm_get_event_data
	mov	w19, w0
	mov	x0, x8
	bl	printk
.LBB0_16:
	mov	w0, w19
.LBB0_17:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.LBB0_18:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	b	.LBB0_20
.LBB0_19:
	ldrb	w2, [x19]
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
.LBB0_20:
	adrp	x1, .L__func__.syna_tcm_get_event_data
	add	x1, x1, :lo12:.L__func__.syna_tcm_get_event_data
	mov	w19, w0
	mov	x0, x8
	bl	printk
	b	.LBB0_16
.Lfunc_end0:
	.size	syna_tcm_get_event_data, .Lfunc_end0-syna_tcm_get_event_data
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L__func__.syna_tcm_get_event_data,@object // @__func__.syna_tcm_get_event_data
.L__func__.syna_tcm_get_event_data:
	.asciz	"syna_tcm_get_event_data"
	.size	.L__func__.syna_tcm_get_event_data, 24

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\0013[error] %s: Invalid parameter\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Fail to read messages\n"
	.size	.L.str.2, 37

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Fail to copy data, report type: %x\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0013[error] %s: Fail to copy data, status code: %x\n"
	.size	.L.str.4, 50

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
