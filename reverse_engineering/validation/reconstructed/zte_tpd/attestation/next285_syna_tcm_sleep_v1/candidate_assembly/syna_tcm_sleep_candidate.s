	.text
	.file	"syna_tcm_sleep_aarch64_assembly_input.c"
	.globl	syna_tcm_sleep                  // -- Begin function syna_tcm_sleep
	.p2align	2
	.type	syna_tcm_sleep,@function
syna_tcm_sleep:                         // @syna_tcm_sleep
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_4
// %bb.1:
	mov	w19, w2
	cbnz	w2, .LBB0_6
// %bb.2:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_5
// %bb.3:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	ldr	w19, [x0, #524]
	mov	x20, x0
	mov	x0, x8
	mov	w21, w1
	mov	x1, x9
	bl	printk
	mov	w1, w21
	mov	x0, x20
	b	.LBB0_6
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_8
.LBB0_5:
	mov	w19, wzr
.LBB0_6:
	tst	w1, #0x1
	mov	w8, #44                         // =0x2c
	ldr	x9, [x0, #920]
	cinc	w20, w8, eq
	mov	x2, xzr
	mov	w3, wzr
	mov	w1, w20
	mov	x4, xzr
	mov	w5, w19
	blr	x9
	mov	w19, w0
	mov	w0, wzr
	tbz	w19, #31, .LBB0_8
// %bb.7:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	and	w2, w20, #0xff
	bl	printk
	mov	w0, w19
.LBB0_8:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_sleep, .Lfunc_end0-syna_tcm_sleep
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_sleep"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.2, 67

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Fail to send command 0x%x\n"
	.size	.L.str.3, 41

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
