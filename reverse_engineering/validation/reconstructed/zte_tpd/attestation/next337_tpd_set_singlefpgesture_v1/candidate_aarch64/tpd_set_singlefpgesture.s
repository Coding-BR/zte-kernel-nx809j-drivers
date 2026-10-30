	.text
	.file	"tpd_set_singlefpgesture_aarch64_assembly_input.c"
	.globl	tpd_set_singlefpgesture         // -- Begin function tpd_set_singlefpgesture
	.p2align	2
	.type	tpd_set_singlefpgesture,@function
tpd_set_singlefpgesture:                // @tpd_set_singlefpgesture
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x20, [x0, #3512]
	mov	x29, sp
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.ne	.LBB0_2
// %bb.1:
	ldr	w8, [x20, #1460]
	ldr	w9, [x20, #1468]
	cmp	w1, #0
	//APP
	//NO_APP
	cset	w2, gt
	orr	w8, w8, w9
	//APP
	//NO_APP
	str	w2, [x20, #1464]
	orr	w8, w8, w2
	str	w8, [x20, #1456]
	b	.LBB0_3
.LBB0_2:
	adrp	x0, :got:unk_3B5E0
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_3B5E0]
	bl	printk
	ldr	w2, [x20, #1464]
.LBB0_3:
	adrp	x0, :got:unk_3526D
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_3526D]
	mov	x1, x19
	bl	printk
	adrp	x0, :got:unk_33365
	ldr	w2, [x20, #1460]
	mov	x1, x19
	ldr	x0, [x0, :got_lo12:unk_33365]
	bl	printk
	adrp	x0, :got:unk_35831
	ldr	w2, [x20, #1456]
	mov	x1, x19
	ldr	x0, [x0, :got_lo12:unk_35831]
	bl	printk
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_singlefpgesture, .Lfunc_end0-tpd_set_singlefpgesture
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_singlefpgesture"
	.size	.L.str, 24

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
