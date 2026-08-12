	.text
	.file	"syna_tcm_read_flash_aarch64_assembly_input.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function syna_tcm_read_flash
.LCPI0_0:
	.word	4294967295                      // 0xffffffff
	.word	4294967287                      // 0xfffffff7
	.word	4294967279                      // 0xffffffef
	.word	4294967271                      // 0xffffffe7
	.text
	.globl	syna_tcm_read_flash
	.p2align	2
	.type	syna_tcm_read_flash,@function
syna_tcm_read_flash:                    // @syna_tcm_read_flash
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	cbz	x2, .LBB0_7
// %bb.1:
	mov	w19, w1
	cbz	w1, .LBB0_8
// %bb.2:
	mov	w21, w3
	cbz	w3, .LBB0_8
// %bb.3:
	ldrb	w8, [x0, #8]
	mov	w20, w4
	mov	x22, x2
	mov	x23, x0
	cmp	w8, #2
	b.ne	.LBB0_12
// %bb.4:
	cmp	w21, #7
	b.lo	.LBB0_12
// %bb.5:
	ldr	w8, [x23, #60]
	cmp	w8, #6
	b.ne	.LBB0_12
// %bb.6:
	mov	w8, wzr
	mov	w28, wzr
	b	.LBB0_13
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_9
.LBB0_8:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_9:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_10:
	mov	w0, #-241                       // =0xffffff0f
.LBB0_11:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.LBB0_12:
	lsl	w8, w21, #1
	mov	w28, w21
	sub	w8, w8, #1
	udiv	w8, w8, w21
.LBB0_13:
	mov	w9, w20
	cmp	w8, #1
	mov	w24, wzr
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	adrp	x9, .LCPI0_0
	csinc	w25, w8, wzr, hi
	ldr	q0, [x9, :lo12:.LCPI0_0]
	str	q0, [sp]                        // 16-byte Folded Spill
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	sub	w8, w21, w24
	add	w19, w19, w24
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	cmp	w8, w28
	dup	v0.4s, w19
	ldr	q1, [sp]                        // 16-byte Folded Reload
	csel	w26, w8, w28, lo
	mov	x10, #63439                     // =0xf7cf
	ldrb	w2, [x23, #9]
	lsr	w8, w26, #1
	movk	x10, #58195, lsl #16
	cmp	w20, #0
	ushl	v0.4s, v0.4s, v1.4s
	movk	x10, #39845, lsl #32
	umull	x9, w9, w8
	movk	x10, #8388, lsl #48
	sturb	w8, [x29, #-4]
	xtn	v0.4h, v0.4s
	umulh	x9, x9, x10
	lsr	w10, w26, #9
	sturb	w10, [x29, #-3]
	uzp1	v0.8b, v0.8b, v0.8b
	lsr	x9, x9, #7
	csel	w27, wzr, w9, eq
	cmp	w2, #11
	stur	s0, [x29, #-8]
	b.eq	.LBB0_16
// %bb.15:                              //   in Loop: Header=BB0_14 Depth=1
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	printk
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=1
	cbnz	w27, .LBB0_20
// %bb.17:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [x23, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_19
// %bb.18:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	w27, [x23, #524]
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_14 Depth=1
	mov	w27, wzr
.LBB0_20:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [x23, #920]
	sub	x2, x29, #8
	mov	x0, x23
	mov	w1, #19                         // =0x13
	mov	w3, #6                          // =0x6
	mov	x4, xzr
	mov	w5, w27
	blr	x8
	tbnz	w0, #31, .LBB0_26
// %bb.21:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	w2, [x23, #340]
	cmp	w2, w26
	b.ne	.LBB0_27
// %bb.22:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	x1, [x23, #328]
	cbz	x1, .LBB0_28
// %bb.23:                              //   in Loop: Header=BB0_14 Depth=1
	ldr	w8, [x23, #336]
	cmp	w26, w8
	b.hi	.LBB0_29
// %bb.24:                              //   in Loop: Header=BB0_14 Depth=1
	add	x0, x22, w24, uxtw
	mov	x2, x26
	bl	memcpy
	subs	w25, w25, #1
	add	w24, w26, w24
	b.ne	.LBB0_14
// %bb.25:
	mov	w0, wzr
	b	.LBB0_11
.LBB0_26:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w20, w0
	mov	x0, x8
	bl	printk
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, w19
	mov	w3, w26
	bl	printk
	mov	w0, w20
	b	.LBB0_11
.LBB0_27:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w3, w26
	bl	printk
	b	.LBB0_10
.LBB0_28:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	b	.LBB0_30
.LBB0_29:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
.LBB0_30:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_11
.Lfunc_end0:
	.size	syna_tcm_read_flash, .Lfunc_end0-syna_tcm_read_flash
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid destination\n"
	.size	.L.str, 35

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_read_flash"
	.size	.L.str.1, 20

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Invalid address or length\n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0014[warn] %s: Unexpected firmware mode=%u\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"syna_tcm_reflash_send_command"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0013[error] %s: Flash command failed\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\0013[error] %s: address=%u length=%u\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\0013[error] %s: Response length=%u expected=%u\n"
	.size	.L.str.7, 46

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\0013[error] %s: Missing response or destination\n"
	.size	.L.str.8, 47

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\0013[error] %s: Response buffer too small\n"
	.size	.L.str.9, 41

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
