	.text
	.file	"tpd_get_stability_level_aarch64_assembly_input.c"
	.globl	tpd_get_stability_level         // -- Begin function tpd_get_stability_level
	.p2align	2
	.type	tpd_get_stability_level,@function
tpd_get_stability_level:                // @tpd_get_stability_level
// %bb.0:
	ldr	x9, [x0, #3512]
	mov	x8, x0
	mov	w0, wzr
	ldr	w9, [x9, #1540]
	str	w9, [x8, #1132]
	ret
.Lfunc_end0:
	.size	tpd_get_stability_level, .Lfunc_end0-tpd_get_stability_level
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
