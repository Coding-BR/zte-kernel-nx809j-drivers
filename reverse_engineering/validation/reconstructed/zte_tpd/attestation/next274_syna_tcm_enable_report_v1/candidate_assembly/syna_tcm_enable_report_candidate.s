	.text
	.file	"syna_tcm_enable_report_aarch64_assembly_input.c"
	.globl	syna_tcm_enable_report          // -- Begin function syna_tcm_enable_report
	.p2align	2
	.type	syna_tcm_enable_report,@function
syna_tcm_enable_report:                 // @syna_tcm_enable_report
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	mov	x29, sp
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	strb	w1, [x29, #28]
	cbz	x0, .LBB0_5
// %bb.1:
	ldrb	w8, [x0, #9]
	cmp	w8, #1
	b.ne	.LBB0_6
// %bb.2:
	mov	w19, w3
	cbnz	w3, .LBB0_8
// %bb.3:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_7
// %bb.4:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	ldr	w19, [x0, #524]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x20, x0
	mov	x0, x8
	mov	w21, w2
	bl	printk
	mov	x0, x20
	mov	w2, w21
	b	.LBB0_8
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_10
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, w8
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_10
.LBB0_7:
	mov	w19, wzr
.LBB0_8:
	tst	w2, #0x1
	mov	w8, #5                          // =0x5
	ldr	x9, [x0, #920]
	cinc	w20, w8, eq
	mov	w21, w2
	add	x2, x29, #28
	mov	w1, w20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w5, w19
	blr	x9
	tbz	w0, #31, .LBB0_10
// %bb.9:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	tst	w21, #0x1
	adrp	x9, .L.str.5
	add	x9, x9, :lo12:.L.str.5
	ldrb	w4, [x29, #28]
	csel	x3, x9, x8, ne
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	and	w2, w20, #0xff
	mov	w19, w0
	mov	x0, x8
	bl	printk
	mov	w0, w19
.LBB0_10:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_enable_report, .Lfunc_end0-syna_tcm_enable_report
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_enable_report"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Device is not in application fw mode, mode: %x\n"
	.size	.L.str.2, 62

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.3, 67

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0013[error] %s: Fail to send command 0x%02x to %s 0x%02x report\n"
	.size	.L.str.4, 63

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"enable"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"disable"
	.size	.L.str.6, 8

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
