	.text
	.file	"tpd_enable_wakegesture_aarch64_assembly_input.c"
	.globl	tpd_enable_wakegesture          // -- Begin function tpd_enable_wakegesture
	.p2align	2
	.type	tpd_enable_wakegesture,@function
tpd_enable_wakegesture:                 // @tpd_enable_wakegesture
// %bb.0:
	ldr	x8, [x0, #3512]
	ldr	w9, [x8, #1404]
	cmp	w9, #1
	b.ne	.LBB0_2
// %bb.1:
	mov	w0, wzr
	str	w1, [x8, #1476]
	ret
.LBB0_2:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, :got:unk_3B5E0
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_3B5E0]
	mov	x29, sp
	bl	printk
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	tpd_enable_wakegesture, .Lfunc_end0-tpd_enable_wakegesture
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_enable_wakegesture"
	.size	.L.str, 23

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
