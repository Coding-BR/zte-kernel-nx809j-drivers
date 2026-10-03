	.text
	.file	"tpd_get_frame_data_aarch64_assembly_input.c"
	.globl	tpd_get_frame_data              // -- Begin function tpd_get_frame_data
	.p2align	2
	.type	tpd_get_frame_data,@function
tpd_get_frame_data:                     // @tpd_get_frame_data
// %bb.0:
	ldr	x9, [x0, #3512]
	mov	x8, x0
	mov	w0, wzr
	ldr	w9, [x9, #1504]
	str	w9, [x8, #1120]
	ret
.Lfunc_end0:
	.size	tpd_get_frame_data, .Lfunc_end0-tpd_get_frame_data
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
