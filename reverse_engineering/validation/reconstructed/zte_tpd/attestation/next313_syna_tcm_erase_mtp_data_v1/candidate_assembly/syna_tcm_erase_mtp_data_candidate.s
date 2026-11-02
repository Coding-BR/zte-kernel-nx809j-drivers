	.text
	.file	"syna_tcm_erase_mtp_data_aarch64_assembly_input.c"
	.globl	syna_tcm_erase_mtp_data_aarch64_probe // -- Begin function syna_tcm_erase_mtp_data_aarch64_probe
	.p2align	2
	.type	syna_tcm_erase_mtp_data_aarch64_probe,@function
syna_tcm_erase_mtp_data_aarch64_probe:  // @syna_tcm_erase_mtp_data_aarch64_probe
// %bb.0:
	mov	w1, #1                          // =0x1
	b	syna_tcm_erase_mtp_data
.Lfunc_end0:
	.size	syna_tcm_erase_mtp_data_aarch64_probe, .Lfunc_end0-syna_tcm_erase_mtp_data_aarch64_probe
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
