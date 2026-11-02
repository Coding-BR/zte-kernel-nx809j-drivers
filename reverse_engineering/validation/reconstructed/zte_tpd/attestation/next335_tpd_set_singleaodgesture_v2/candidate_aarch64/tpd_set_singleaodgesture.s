	.text
	.file	"tpd_set_singleaodgesture_aarch64_assembly_input.c"
	.globl	tpd_set_singleaodgesture        // -- Begin function tpd_set_singleaodgesture
	.p2align	2
	.type	tpd_set_singleaodgesture,@function
tpd_set_singleaodgesture:               // @tpd_set_singleaodgesture
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x20, [x0, #3512]
	mov	x29, sp
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.ne	.LBB0_2
// %bb.1:
	ldr	w2, [x20, #1464]
	ldr	w8, [x20, #1468]
	cmp	w1, #0
	//APP
	//NO_APP
	cset	w9, gt
	orr	w8, w2, w8
	//APP
	//NO_APP
	str	w9, [x20, #1460]
	orr	w8, w8, w9
	str	w8, [x20, #1456]
	b	.LBB0_3
.LBB0_2:
	adrp	x0, unk_3B5E0
	add	x0, x0, :lo12:unk_3B5E0
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
	ldr	w2, [x20, #1464]
.LBB0_3:
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
	adrp	x0, unk_3526D
	add	x0, x0, :lo12:unk_3526D
	mov	x1, x19
	bl	printk
	ldr	w2, [x20, #1460]
	adrp	x0, unk_33365
	add	x0, x0, :lo12:unk_33365
	mov	x1, x19
	bl	printk
	ldr	w2, [x20, #1456]
	adrp	x0, unk_35831
	add	x0, x0, :lo12:unk_35831
	mov	x1, x19
	bl	printk
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_singleaodgesture, .Lfunc_end0-tpd_set_singleaodgesture
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_singleaodgesture"
	.size	.L.str, 25

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_3B5E0
	.addrsig_sym unk_3526D
	.addrsig_sym unk_33365
	.addrsig_sym unk_35831
