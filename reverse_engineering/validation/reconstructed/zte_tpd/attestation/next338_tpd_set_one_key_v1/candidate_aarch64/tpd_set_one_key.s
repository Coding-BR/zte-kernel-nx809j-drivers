	.text
	.file	"tpd_set_one_key_aarch64_assembly_input.c"
	.globl	tpd_set_one_key                 // -- Begin function tpd_set_one_key
	.p2align	2
	.type	tpd_set_one_key,@function
tpd_set_one_key:                        // @tpd_set_one_key
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	ldr	x21, [x0, #3512]
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	adrp	x0, :got:unk_34878
	ldr	x0, [x0, :got_lo12:unk_34878]
	mov	w20, w1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
	cbz	x21, .LBB0_2
// %bb.1:
	mov	w0, wzr
	str	w20, [x21, #1492]
	str	w20, [x19, #1112]
	b	.LBB0_3
.LBB0_2:
	mov	w0, #-22                        // =0xffffffea
.LBB0_3:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_one_key, .Lfunc_end0-tpd_set_one_key
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_one_key"
	.size	.L.str, 16

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
