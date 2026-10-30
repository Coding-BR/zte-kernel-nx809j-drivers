	.text
	.file	"syna_tcm_send_command_aarch64_assembly_input.c"
	.globl	syna_tcm_send_command           // -- Begin function syna_tcm_send_command
	.p2align	2
	.type	syna_tcm_send_command,@function
syna_tcm_send_command:                  // @syna_tcm_send_command
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	mov	x29, sp
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	strb	wzr, [x29, #28]
	cbz	x0, .LBB0_4
// %bb.1:
	mov	x19, x5
	mov	x21, x4
	mov	x20, x0
	mov	w22, w1
	cbnz	w6, .LBB0_6
// %bb.2:
	ldr	x8, [x20, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_5
// %bb.3:
	ldr	w25, [x20, #524]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x23, x3
	mov	x24, x2
	bl	printk
	mov	w6, w25
	mov	x2, x24
	mov	x3, x23
	b	.LBB0_6
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_20
.LBB0_5:
	mov	w6, wzr
.LBB0_6:
	ldr	x8, [x20, #920]
	add	x4, x29, #28
	mov	x0, x20
	mov	w1, w22
	mov	w5, w6
                                        // kill: def $w3 killed $w3 killed $x3
	blr	x8
	tbz	w0, #31, .LBB0_8
// %bb.7:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	and	w2, w22, #0xff
	mov	w22, w0
	mov	x0, x8
	bl	printk
	mov	w0, w22
.LBB0_8:
	cbz	x21, .LBB0_10
// %bb.9:
	ldrb	w8, [x29, #28]
	strb	w8, [x21]
.LBB0_10:
	cbz	x19, .LBB0_20
// %bb.11:
	ldrb	w8, [x29, #28]
	sub	w9, w8, #16
	cmp	w9, #238
	b.hi	.LBB0_15
// %bb.12:
	ldr	w8, [x20, #268]
	cbz	w8, .LBB0_20
// %bb.13:
	add	x1, x20, #256
	mov	w20, w0
	mov	x0, x19
	bl	syna_tcm_buf_copy_2
	mov	w8, w0
	mov	w0, w20
	tbz	w8, #31, .LBB0_20
// %bb.14:
	ldrb	w2, [x29, #28]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	b	.LBB0_19
.LBB0_15:
	sub	w8, w8, #1
	cmp	w8, #14
	b.hi	.LBB0_20
// %bb.16:
	ldr	w8, [x20, #340]
	cbz	w8, .LBB0_20
// %bb.17:
	add	x1, x20, #328
	mov	w20, w0
	mov	x0, x19
	bl	syna_tcm_buf_copy_2
	mov	w8, w0
	mov	w0, w20
	tbz	w8, #31, .LBB0_20
// %bb.18:
	ldrb	w2, [x29, #28]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
.LBB0_19:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-243                       // =0xffffff0d
.LBB0_20:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_send_command, .Lfunc_end0-syna_tcm_send_command
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_send_command"
	.size	.L.str.1, 22

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
	.asciz	"\0013[error] %s: Fail to copy report data, report type: %x\n"
	.size	.L.str.4, 57

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0013[error] %s: Fail to copy response data, status code: %x\n"
	.size	.L.str.5, 59

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
