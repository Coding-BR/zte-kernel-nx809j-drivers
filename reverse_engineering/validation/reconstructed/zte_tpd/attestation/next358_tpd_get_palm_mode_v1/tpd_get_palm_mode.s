	.text
	.file	"tpd_get_palm_mode_aarch64_assembly_input.c"
	.globl	tpd_get_palm_mode               // -- Begin function tpd_get_palm_mode
	.p2align	2
	.type	tpd_get_palm_mode,@function
tpd_get_palm_mode:                      // @tpd_get_palm_mode
// %bb.0:
	ldr	x9, [x0, #3512]
	mov	x8, x0
	mov	w0, wzr
	ldr	w9, [x9, #1508]
	str	w9, [x8, #1144]
	ret
.Lfunc_end0:
	.size	tpd_get_palm_mode, .Lfunc_end0-tpd_get_palm_mode
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
