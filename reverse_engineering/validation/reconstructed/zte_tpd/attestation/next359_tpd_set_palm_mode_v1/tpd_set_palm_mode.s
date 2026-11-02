	.text
	.file	"tpd_set_palm_mode_aarch64_assembly_input.c"
	.globl	tpd_set_palm_mode               // -- Begin function tpd_set_palm_mode
	.p2align	2
	.type	tpd_set_palm_mode,@function
tpd_set_palm_mode:                      // @tpd_set_palm_mode
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	ldr	x8, [x0, #3512]
	mov	w2, w1
	adrp	x0, unk_37B5F
	add	x0, x0, :lo12:unk_37B5F
	mov	x29, sp
	str	w1, [x8, #1508]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
	mov	w0, wzr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_palm_mode, .Lfunc_end0-tpd_set_palm_mode
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_palm_mode"
	.size	.L.str, 18

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_37B5F
