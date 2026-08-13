	.text
	.file	"tpd_get_one_key_aarch64_assembly_input.c"
	.globl	tpd_get_one_key                 // -- Begin function tpd_get_one_key
	.p2align	2
	.type	tpd_get_one_key,@function
tpd_get_one_key:                        // @tpd_get_one_key
// %bb.0:
	ldr	x9, [x0, #3512]
	mov	x8, x0
	mov	w0, wzr
	ldr	w9, [x9, #1492]
	str	w9, [x8, #1112]
	ret
.Lfunc_end0:
	.size	tpd_get_one_key, .Lfunc_end0-tpd_get_one_key
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
