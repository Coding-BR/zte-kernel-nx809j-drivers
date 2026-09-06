	.text
	.file	"syna_tcm_set_up_flash_access_aarch64_assembly_input.c"
	.globl	syna_tcm_set_up_flash_access    // -- Begin function syna_tcm_set_up_flash_access
	.p2align	2
	.type	syna_tcm_set_up_flash_access,@function
syna_tcm_set_up_flash_access:           // @syna_tcm_set_up_flash_access
// %bb.0:
	sub	sp, sp, #96
	movi	v0.2d, #0000000000000000
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	stp	q0, q0, [sp, #16]
	str	q0, [sp]
	cbz	x1, .LBB0_10
// %bb.1:
	mov	x19, x1
	mov	x20, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w22, w3
	mov	w21, w2
	bl	printk
	mov	x1, sp
	mov	x0, x20
	mov	w2, w21
	bl	syna_tcm_identify
	tbnz	w0, #31, .LBB0_12
// %bb.2:
	ldrb	w8, [sp, #1]
	cmp	w8, #1
	b.ne	.LBB0_4
// %bb.3:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	x0, x20
	mov	w1, #11                         // =0xb
	mov	w2, w22
	bl	syna_tcm_switch_fw_mode
	tbnz	w0, #31, .LBB0_18
.LBB0_4:
	ldrb	w8, [x20, #9]
	cmp	w8, #11
	b.ne	.LBB0_13
// %bb.5:
	mov	x8, xzr
	mov	w9, #1                          // =0x1
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_7 Depth=1
	add	x8, x8, #1
	cmp	x8, #16
	b.eq	.LBB0_14
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	add	x10, x20, x8
	ldrb	w11, [x10, #130]
	cmp	w11, #58
	b.ne	.LBB0_6
// %bb.8:                               //   in Loop: Header=BB0_7 Depth=1
	ldrb	w10, [x10, #133]
	tbz	w10, #5, .LBB0_6
// %bb.9:                               //   in Loop: Header=BB0_7 Depth=1
	strb	w9, [x19, #136]
	b	.LBB0_6
.LBB0_10:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
.LBB0_11:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_21
.LBB0_12:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	b	.LBB0_20
.LBB0_13:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	b	.LBB0_20
.LBB0_14:
	add	x1, x20, #224
	mov	x0, x20
	mov	w2, w21
	str	x1, [x19, #32]
	bl	syna_tcm_get_boot_info
	tbnz	w0, #31, .LBB0_19
// %bb.15:
	ldr	x8, [x19, #32]
	ldrb	w9, [x8, #5]
	ldrb	w10, [x8, #4]
	ldrb	w12, [x8, #6]
	ldurh	w13, [x8, #7]
	lsl	w9, w9, #1
	lsl	w11, w10, #1
	str	w13, [x19, #48]
	orr	w9, w9, w12, lsl #9
	ldr	w12, [x20, #56]
	stp	w9, w11, [x19, #40]
	cbz	w12, .LBB0_22
// %bb.16:
	cmp	w11, w12
	b.ls	.LBB0_22
// %bb.17:
	str	w12, [x19, #44]
	b	.LBB0_23
.LBB0_18:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	b	.LBB0_20
.LBB0_19:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
.LBB0_20:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w19, w0
	mov	x0, x8
	bl	printk
	mov	w0, w19
.LBB0_21:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.LBB0_22:
	cbz	w10, .LBB0_28
.LBB0_23:
	cbz	w9, .LBB0_26
// %bb.24:
	ldrb	w10, [x8]
	cmp	w10, #3
	b.ne	.LBB0_27
// %bb.25:
	ldrb	w8, [x8, #20]
	mov	w0, wzr
	mul	w8, w9, w8
	str	w8, [x19, #60]
	b	.LBB0_21
.LBB0_26:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	b	.LBB0_11
.LBB0_27:
	mov	w0, wzr
	b	.LBB0_21
.LBB0_28:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	b	.LBB0_11
.Lfunc_end0:
	.size	syna_tcm_set_up_flash_access, .Lfunc_end0-syna_tcm_set_up_flash_access
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid access context\n"
	.size	.L.str, 38

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_set_up_flash_access"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0016[info] %s: identify timeout=%u\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Failed to identify device\n"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0016[info] %s: Switching to bootloader\n"
	.size	.L.str.4, 38

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0013[error] %s: Failed to switch firmware mode\n"
	.size	.L.str.5, 46

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\0013[error] %s: Device is not in bootloader mode\n"
	.size	.L.str.6, 48

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\0013[error] %s: Failed to read boot information\n"
	.size	.L.str.7, 47

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\0013[error] %s: Invalid write block size\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\0013[error] %s: Invalid erase page size\n"
	.size	.L.str.9, 39

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
