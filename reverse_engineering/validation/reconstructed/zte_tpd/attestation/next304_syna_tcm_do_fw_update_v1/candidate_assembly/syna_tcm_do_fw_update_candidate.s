	.text
	.file	"syna_tcm_do_fw_update_aarch64_assembly_input.c"
	.globl	syna_tcm_do_fw_update           // -- Begin function syna_tcm_do_fw_update
	.p2align	2
	.type	syna_tcm_do_fw_update,@function
syna_tcm_do_fw_update:                  // @syna_tcm_do_fw_update
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	stp	x28, x25, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	sub	sp, sp, #784
	mov	w24, w2
	mov	x25, x1
	mov	x19, x0
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #784                        // =0x310
	mov	w23, w4
	mov	w22, w3
	bl	memset
	cbz	x19, .LBB0_5
// %bb.1:
	cbz	x25, .LBB0_5
// %bb.2:
	cbz	w24, .LBB0_5
// %bb.3:
	cbz	w22, .LBB0_6
// %bb.4:
	lsr	w21, w22, #16
	ldr	w20, [x19, #488]
	and	w22, w22, #0xffff
	b	.LBB0_7
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_15
.LBB0_6:
	mov	w20, wzr
	mov	w21, wzr
.LBB0_7:
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #784                        // =0x310
	bl	memset
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	x2, sp
	mov	x0, x25
	mov	w1, w24
	bl	syna_tcm_parse_fw_image
	tbnz	w0, #31, .LBB0_11
// %bb.8:
	tbz	w23, #0, .LBB0_12
.LBB0_9:
	mov	w2, #9                          // =0x9
.LBB0_10:
	mov	x1, sp
	mov	x0, x19
	mov	w3, w21
	mov	w4, w22
	mov	w5, w20
	mov	w6, #1                          // =0x1
	bl	syna_tcm_do_fw_update_ex
	b	.LBB0_15
.LBB0_11:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w19, w0
	mov	x0, x8
	bl	printk
	mov	w0, w19
	b	.LBB0_15
.LBB0_12:
	ldr	w8, [sp, #128]
	cmp	w8, #33
	b.hi	.LBB0_16
// %bb.13:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
.LBB0_14:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, wzr
.LBB0_15:
	add	sp, sp, #784
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x25, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ret
.LBB0_16:
	ldrb	w8, [x19, #8]
	ldr	x9, [sp, #120]
	mov	w10, #16                        // =0x10
	cmp	w8, #2
	mov	w8, #14                         // =0xe
	csel	x8, x10, x8, eq
	ldr	w10, [x19, #12]
	add	x8, x9, x8
	ldr	w9, [x8]
	cmp	w9, w10
	b.ne	.LBB0_9
// %bb.17:
	ldrb	w10, [x19, #192]
	cmp	w10, w9, uxtb
	b.ne	.LBB0_34
// %bb.18:
	lsr	w10, w9, #8
	ldrb	w11, [x19, #193]
	cmp	w11, w10, uxtb
	b.ne	.LBB0_34
// %bb.19:
	lsr	w10, w9, #16
	ldrb	w11, [x19, #194]
	cmp	w11, w10, uxtb
	b.ne	.LBB0_34
// %bb.20:
	ldrb	w10, [x19, #195]
	cmp	w10, w9, lsr #24
	b.ne	.LBB0_34
// %bb.21:
	ldrb	w9, [x8, #4]
	ldrb	w10, [x19, #196]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.22:
	ldrb	w9, [x8, #5]
	ldrb	w10, [x19, #197]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.23:
	ldrb	w9, [x8, #6]
	ldrb	w10, [x19, #198]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.24:
	ldrb	w9, [x8, #7]
	ldrb	w10, [x19, #199]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.25:
	ldrb	w9, [x8, #8]
	ldrb	w10, [x19, #200]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.26:
	ldrb	w9, [x8, #9]
	ldrb	w10, [x19, #201]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.27:
	ldrb	w9, [x8, #10]
	ldrb	w10, [x19, #202]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.28:
	ldrb	w9, [x8, #11]
	ldrb	w10, [x19, #203]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.29:
	ldrb	w9, [x8, #12]
	ldrb	w10, [x19, #204]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.30:
	ldrb	w9, [x8, #13]
	ldrb	w10, [x19, #205]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.31:
	ldrb	w9, [x8, #14]
	ldrb	w10, [x19, #206]
	cmp	w9, w10
	b.ne	.LBB0_34
// %bb.32:
	ldrb	w8, [x8, #15]
	ldrb	w9, [x19, #207]
	cmp	w8, w9
	b.ne	.LBB0_34
// %bb.33:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	b	.LBB0_14
.LBB0_34:
	mov	w2, #1                          // =0x1
	b	.LBB0_10
.Lfunc_end0:
	.size	syna_tcm_do_fw_update, .Lfunc_end0-syna_tcm_do_fw_update
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_do_fw_update"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0016[info] %s: Parsing firmware image\\n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0013[error] %s: Firmware parse failed\\n"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\0016[info] %s: Image identification is unavailable\\n"
	.size	.L.str.4, 54

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\\0016[info] %s: Image already matches device\\n"
	.size	.L.str.5, 47

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
