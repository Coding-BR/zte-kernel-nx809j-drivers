	.text
	.file	"tpd_get_singleaodgesture_aarch64_assembly_input.c"
	.globl	tpd_get_singleaodgesture        // -- Begin function tpd_get_singleaodgesture
	.p2align	2
	.type	tpd_get_singleaodgesture,@function
tpd_get_singleaodgesture:               // @tpd_get_singleaodgesture
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	x8, [x0, #3512]
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	adrp	x20, .L.str
	add	x20, x20, :lo12:.L.str
	mov	x29, sp
	ldr	w2, [x8, #1460]
	mov	x1, x20
	str	w2, [x0, #1104]
	adrp	x0, :got:unk_32825
	ldr	x0, [x0, :got_lo12:unk_32825]
	bl	printk
	adrp	x0, :got:unk_3A057
	ldr	w2, [x19, #1104]
	mov	x1, x20
	ldr	x0, [x0, :got_lo12:unk_3A057]
	bl	printk
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_get_singleaodgesture, .Lfunc_end0-tpd_get_singleaodgesture
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_get_singleaodgesture"
	.size	.L.str, 25

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
