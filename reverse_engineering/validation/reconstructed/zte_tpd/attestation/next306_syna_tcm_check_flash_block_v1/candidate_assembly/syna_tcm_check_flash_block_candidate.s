	.text
	.file	"syna_tcm_check_flash_block_aarch64_assembly_input.c"
	.globl	syna_tcm_check_flash_block      // -- Begin function syna_tcm_check_flash_block
	.p2align	2
	.type	syna_tcm_check_flash_block,@function
syna_tcm_check_flash_block:             // @syna_tcm_check_flash_block
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	cbz	x1, .LBB0_6
// %bb.1:
	cbz	x2, .LBB0_7
// %bb.2:
	ldrb	w8, [x2, #24]
	sub	w8, w8, #1
	ror	w8, w8, #1
	cmp	w8, #2
	b.hi	.LBB0_12
// %bb.3:
	cmp	w8, #1
	b.eq	.LBB0_16
// %bb.4:
	cbnz	w8, .LBB0_15
// %bb.5:
	ldr	w8, [x2, #20]
	mov	w9, #-241                       // =0xffffff0f
	cmp	w8, #0
	csel	w0, w9, w8, eq
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
.LBB0_9:
	bl	printk
.LBB0_10:
	mov	w0, #-241                       // =0xffffff0f
.LBB0_11:
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.LBB0_12:
	cmp	w8, #9
	b.eq	.LBB0_22
// %bb.13:
	cmp	w8, #3
	b.ne	.LBB0_15
// %bb.14:
	ldr	w0, [x2, #16]
	b	.LBB0_11
.LBB0_15:
	mov	w0, wzr
	b	.LBB0_11
.LBB0_16:
	mov	x8, x0
	ldr	w0, [x2, #16]
	cbz	w0, .LBB0_11
// %bb.17:
	cbz	x8, .LBB0_10
// %bb.18:
	ldrh	w9, [x8, #184]
	ldr	w10, [x1, #44]
	ldrh	w8, [x8, #186]
	mul	w9, w10, w9
	orr	w10, w9, w8
	cbz	w10, .LBB0_11
// %bb.19:
	ldr	w10, [x2, #20]
	cmp	w10, w9
	b.ne	.LBB0_31
// %bb.20:
	cmp	w0, w8
	b.eq	.LBB0_11
// %bb.21:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w19, w0
	mov	x0, x8
	bl	printk
	mov	w0, w19
	b	.LBB0_11
.LBB0_22:
	ldr	w0, [x2, #16]
	cmp	w0, #7
	b.hi	.LBB0_24
// %bb.23:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	b	.LBB0_37
.LBB0_24:
	ldr	x8, [x1, #32]
	cbz	x8, .LBB0_29
// %bb.25:
	ldrb	w9, [x8]
	and	w10, w9, #0xfffffffd
	cmp	w10, #1
	b.ne	.LBB0_30
// %bb.26:
	cmp	w9, #1
	b.eq	.LBB0_32
// %bb.27:
	cmp	w9, #3
	b.ne	.LBB0_34
// %bb.28:
	mov	w9, #17                         // =0x11
	mov	w10, #16                        // =0x10
	b	.LBB0_33
.LBB0_29:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	b	.LBB0_37
.LBB0_30:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	b	.LBB0_37
.LBB0_31:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	b	.LBB0_9
.LBB0_32:
	mov	w9, #13                         // =0xd
	mov	w10, #12                        // =0xc
.LBB0_33:
	ldrb	w10, [x8, x10]
	ldrb	w8, [x8, x9]
	orr	w8, w10, w8, lsl #8
	b	.LBB0_35
.LBB0_34:
	mov	w8, wzr
.LBB0_35:
	ldr	w9, [x1, #44]
	mul	w8, w9, w8
	ldr	w9, [x2, #20]
	cmp	w9, w8
	b.eq	.LBB0_11
// %bb.36:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
.LBB0_37:
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	b	.LBB0_9
.Lfunc_end0:
	.size	syna_tcm_check_flash_block, .Lfunc_end0-syna_tcm_check_flash_block
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid access context\\n"
	.size	.L.str, 42

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_check_flash_block"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Invalid partition\\n"
	.size	.L.str.2, 37

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0013[error] %s: App config size mismatch\\n"
	.size	.L.str.3, 44

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"syna_tcm_check_flash_app_config"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\\0016[info] %s: App config length differs\\n"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\\0013[error] %s: Tool boot config is too short\\n"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"syna_tcm_check_flash_tool_boot_config"
	.size	.L.str.7, 38

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\\0013[error] %s: Missing boot information\\n"
	.size	.L.str.8, 44

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\\0013[error] %s: Unsupported boot version\\n"
	.size	.L.str.9, 44

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"\\0013[error] %s: Tool boot config size mismatch\\n"
	.size	.L.str.10, 50

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
