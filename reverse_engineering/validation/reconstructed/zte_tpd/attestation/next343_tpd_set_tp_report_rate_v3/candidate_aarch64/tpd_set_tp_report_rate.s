	.text
	.section	.note.gnu.property,"a",@note
	.p2align	3, 0x0
	.word	4
	.word	16
	.word	5
	.asciz	"GNU"
	.word	3221225472
	.word	4
	.word	7
	.word	0
.Lsec_end0:
	.text
	.file	"tpd_set_tp_report_rate_aarch64_assembly_input.c"
	.globl	tpd_set_tp_report_rate          // -- Begin function tpd_set_tp_report_rate
	.p2align	2
	.type	tpd_set_tp_report_rate,@function
tpd_set_tp_report_rate:                 // @tpd_set_tp_report_rate
// %bb.0:
	hint	#25
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x19, [x0, #3512]
	adrp	x0, :got:unk_34878
	ldr	x0, [x0, :got_lo12:unk_34878]
	mov	w20, w1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x29, sp
	bl	printk
	cbz	x19, .LBB0_4
// %bb.1:
	ldr	x8, [x19, #624]
	ldr	w9, [x8, #184]
	cbz	w9, .LBB0_3
// %bb.2:
	ldrb	w8, [x8, #188]
	tbnz	w8, #0, .LBB0_5
.LBB0_3:
	ldr	x8, [x19]
	ldr	w2, [x8, #524]
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_12
.LBB0_5:
	mov	w2, wzr
.LBB0_6:
	ldr	w8, [x19, #1404]
	cmp	w20, #4
	mov	w9, #4                          // =0x4
	csel	w1, w20, w9, lt
	cmp	w8, #1
	str	w1, [x19, #1528]
	b.ne	.LBB0_9
// %bb.7:
	mov	x0, x19
	bl	syna_dev_set_tp_report_rate
	tbz	w0, #31, .LBB0_11
// %bb.8:
	adrp	x0, :got:unk_37B12
	ldr	x0, [x0, :got_lo12:unk_37B12]
	b	.LBB0_10
.LBB0_9:
	adrp	x0, :got:unk_3B5E0
	ldr	x0, [x0, :got_lo12:unk_3B5E0]
.LBB0_10:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_11:
	mov	w0, wzr
.LBB0_12:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	hint	#29
	ret
.Lfunc_end0:
	.size	tpd_set_tp_report_rate, .Lfunc_end0-tpd_set_tp_report_rate
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_tp_report_rate"
	.size	.L.str, 23

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
