	.text
	.file	"syna_charger_notify_call_aarch64_assembly_input.c"
	.globl	syna_charger_notify_call        // -- Begin function syna_charger_notify_call
	.p2align	2
	.type	syna_charger_notify_call,@function
syna_charger_notify_call:               // @syna_charger_notify_call
// %bb.0:
	cbz	x1, .LBB0_2
// %bb.1:
	mov	w0, wzr
	ret
.LBB0_2:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	x8, [x2]
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x29, sp
	ldr	x20, [x8]
	mov	x0, x20
	bl	strcmp
	cbz	w0, .LBB0_6
// %bb.3:
	ldrb	w8, [x20]
	cmp	w8, #97
	b.ne	.LBB0_7
// %bb.4:
	ldrb	w8, [x20, #1]
	cmp	w8, #99
	b.ne	.LBB0_7
// %bb.5:
	ldrb	w8, [x20, #2]
	cbnz	w8, .LBB0_7
.LBB0_6:
	ldur	x1, [x19, #-8]
	sub	x2, x19, #112
	mov	w0, #32                         // =0x20
	mov	w3, #125                        // =0x7d
	bl	queue_delayed_work_on
.LBB0_7:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	syna_charger_notify_call, .Lfunc_end0-syna_charger_notify_call
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"usb"
	.size	.L.str, 4

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
