	.text
	.file	"syna_tcm_identify_aarch64_assembly_input.c"
	.globl	syna_tcm_identify               // -- Begin function syna_tcm_identify
	.p2align	2
	.type	syna_tcm_identify,@function
syna_tcm_identify:                      // @syna_tcm_identify
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_4
// %bb.1:
	mov	w21, w2
	mov	x19, x0
	mov	x20, x1
	cbnz	w2, .LBB0_6
// %bb.2:
	ldr	x8, [x19, #72]
	ldrb	w8, [x8, #20]
	tbz	w8, #0, .LBB0_5
// %bb.3:
	mov	w21, wzr
	b	.LBB0_6
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w21, #-241                      // =0xffffff0f
	b	.LBB0_19
.LBB0_5:
	ldr	w21, [x19, #524]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_6:
	ldr	x8, [x19, #920]
	mov	x0, x19
	mov	w1, #2                          // =0x2
	mov	x2, xzr
	mov	w3, wzr
	mov	x4, xzr
	mov	w5, w21
	blr	x8
	mov	w21, w0
	tbnz	w0, #31, .LBB0_14
// %bb.7:
	ldrb	w2, [x19, #129]
	ldrb	w3, [x19, #128]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	strb	w2, [x19, #9]
	bl	printk
	cbz	x20, .LBB0_19
// %bb.8:
	ldrb	w2, [x19, #392]
	cbz	w2, .LBB0_10
// %bb.9:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	printk
.LBB0_10:
	add	x0, x19, #344
	bl	mutex_lock
	ldr	w9, [x19, #340]
	ldrb	w8, [x19, #392]
	mov	w10, #48                        // =0x30
	ldr	x1, [x19, #328]
	cmp	w9, #48
	add	w8, w8, #1
	csel	w4, w9, w10, lo
	strb	w8, [x19, #392]
	cbz	x1, .LBB0_13
// %bb.11:
	ldr	w2, [x19, #336]
	cmp	w4, w2
	b.ls	.LBB0_15
// %bb.12:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	mov	w3, #48                         // =0x30
                                        // kill: def $w4 killed $w4 killed $x4
	bl	printk
.LBB0_13:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	add	x0, x19, #328
	bl	syna_tcm_buf_unlock_0
	mov	w21, #-22                       // =0xffffffea
	b	.LBB0_19
.LBB0_14:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #2                          // =0x2
	bl	printk
	b	.LBB0_19
.LBB0_15:
	mov	x0, x20
	mov	x2, x4
	bl	memcpy
	ldrb	w2, [x19, #392]
	cmp	w2, #1
	b.ne	.LBB0_17
// %bb.16:
	mov	w8, wzr
	b	.LBB0_18
.LBB0_17:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
	ldrb	w8, [x19, #392]
	sub	w8, w8, #1
.LBB0_18:
	add	x0, x19, #344
	strb	w8, [x19, #392]
	bl	mutex_unlock
	mov	w21, wzr
.LBB0_19:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	mov	w0, w21
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_identify, .Lfunc_end0-syna_tcm_identify
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_identify"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.2, 67

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Fail to send command 0x%02x\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0016[info ] %s: TCM Fw mode: 0x%02x, TCM ver.: %d\n"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0013[error] %s: Buffer access out-of balance, %d\n"
	.size	.L.str.5, 48

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"syna_tcm_buf_lock"
	.size	.L.str.6, 18

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
	.size	.L.str.7, 62

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"syna_pal_mem_cpy"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"syna_tcm_buf_unlock"
	.size	.L.str.9, 20

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"\0013[error] %s: Fail to copy identify info to caller\n"
	.size	.L.str.10, 52

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
