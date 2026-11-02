	.text
	.file	"syna_tcm_get_app_info_aarch64_assembly_input.c"
	.globl	syna_tcm_get_app_info           // -- Begin function syna_tcm_get_app_info
	.p2align	2
	.type	syna_tcm_get_app_info,@function
syna_tcm_get_app_info:                  // @syna_tcm_get_app_info
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_5
// %bb.1:
	ldrb	w8, [x0, #9]
	mov	x19, x0
	cmp	w8, #1
	b.ne	.LBB0_6
// %bb.2:
	mov	x21, x1
	mov	w20, w2
	cbnz	w2, .LBB0_8
// %bb.3:
	ldr	x8, [x19, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_7
// %bb.4:
	ldr	w20, [x19, #524]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	b	.LBB0_8
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_30
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, w8
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_30
.LBB0_7:
	mov	w20, wzr
.LBB0_8:
	ldr	x8, [x19, #920]
	mov	x0, x19
	mov	w1, #32                         // =0x20
	mov	x2, xzr
	mov	w3, wzr
	mov	x4, xzr
	mov	w5, w20
	blr	x8
	tbnz	w0, #31, .LBB0_16
// %bb.9:
	ldr	w8, [x19, #340]
	ldrb	w2, [x19, #392]
	mov	w9, #48                         // =0x30
	cmp	w8, #48
	csel	w20, w8, w9, lo
	cbz	w2, .LBB0_11
// %bb.10:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	printk
.LBB0_11:
	add	x0, x19, #344
	bl	mutex_lock
	ldrb	w8, [x19, #392]
	ldr	x1, [x19, #328]
	add	w8, w8, #1
	strb	w8, [x19, #392]
	cbz	x1, .LBB0_14
// %bb.12:
	ldr	w2, [x19, #336]
	cmp	w20, w2
	b.ls	.LBB0_19
// %bb.13:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	mov	w3, #48                         // =0x30
	mov	w4, w20
	bl	printk
.LBB0_14:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldrb	w2, [x19, #392]
	cmp	w2, #1
	b.ne	.LBB0_17
// %bb.15:
	mov	w8, wzr
	b	.LBB0_18
.LBB0_16:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w19, w0
	mov	x0, x8
	mov	w2, #32                         // =0x20
	bl	printk
	mov	w0, w19
	b	.LBB0_30
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
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_30
.LBB0_19:
	add	x0, x19, #176
	mov	x2, x20
	bl	memcpy
	ldrb	w2, [x19, #392]
	cmp	w2, #1
	b.ne	.LBB0_21
// %bb.20:
	mov	w8, wzr
	b	.LBB0_22
.LBB0_21:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
	ldrb	w8, [x19, #392]
	sub	w8, w8, #1
.LBB0_22:
	add	x0, x19, #344
	strb	w8, [x19, #392]
	bl	mutex_unlock
	cbz	x21, .LBB0_24
// %bb.23:
	mov	x0, x21
	add	x1, x19, #176
	mov	x2, x20
	bl	memcpy
.LBB0_24:
	ldrh	w2, [x19, #178]
	cmp	w2, #255
	b.eq	.LBB0_27
// %bb.25:
	cbnz	w2, .LBB0_28
// %bb.26:
	ldrh	w8, [x19, #208]
	ldrh	w9, [x19, #210]
	mov	w0, wzr
	ldrh	w10, [x19, #218]
	ldr	q0, [x19, #192]
	stp	w8, w9, [x19, #16]
	ldrh	w8, [x19, #212]
	ldrh	w9, [x19, #216]
	stur	q0, [x19, #36]
	str	w8, [x19, #24]
	stp	w9, w10, [x19, #28]
	b	.LBB0_30
.LBB0_27:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	b	.LBB0_29
.LBB0_28:
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
.LBB0_29:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-242                       // =0xffffff0e
.LBB0_30:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_get_app_info, .Lfunc_end0-syna_tcm_get_app_info
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_get_app_info"
	.size	.L.str.1, 22

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
	.asciz	"\0013[error] %s: Fail to send command 0x%02x\n"
	.size	.L.str.4, 43

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
	.asciz	"\0013[error] %s: Bad application firmware, status: 0x%x\n"
	.size	.L.str.10, 54

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"\0013[error] %s: Incorrect application status, 0x%x\n"
	.size	.L.str.11, 50

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"\0013[error] %s: Fail to copy application info\n"
	.size	.L.str.12, 45

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
