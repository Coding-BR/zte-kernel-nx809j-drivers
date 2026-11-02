	.text
	.file	"tpd_init_tpinfo_aarch64_assembly_input.c"
	.globl	tpd_init_tpinfo                 // -- Begin function tpd_init_tpinfo
	.p2align	2
	.type	tpd_init_tpinfo,@function
tpd_init_tpinfo:                        // @tpd_init_tpinfo
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x0
	ldr	x20, [x0, #3512]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x29, sp
	bl	printk
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	//APP
	//NO_APP
	//APP
	mov	w9, #1                          // =0x1
	//NO_APP
	//APP
	ldp	x10, x8, [x8]
	//NO_APP
	str	w9, [x19, #3312]
	//APP
	mov	w9, #4                          // =0x4
	//NO_APP
	//APP
	mov	w0, wzr
	//NO_APP
	str	x10, [x19, #3352]
	ldr	x10, [x20]
	str	x8, [x19, #3360]
	ldr	w8, [x10, #12]
	//APP
	//NO_APP
	str	w9, [x19, #3348]
	ldr	x10, [x20]
	str	w8, [x19, #3328]
	ldrh	w10, [x10, #198]
	//APP
	rev16	w10, w10
	//NO_APP
	str	w10, [x19, #3332]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_init_tpinfo, .Lfunc_end0-tpd_init_tpinfo
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0016[info ] %s: enter\n"
	.size	.L.str, 21

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"tpd_init_tpinfo"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"synaptics_3910V"
	.size	.L.str.2, 16

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
