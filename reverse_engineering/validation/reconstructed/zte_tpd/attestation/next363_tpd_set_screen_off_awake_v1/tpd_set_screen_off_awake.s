	.text
	.file	"tpd_set_screen_off_awake_aarch64_assembly_input.c"
	.globl	tpd_set_screen_off_awake        // -- Begin function tpd_set_screen_off_awake
	.p2align	2
	.type	tpd_set_screen_off_awake,@function
tpd_set_screen_off_awake:               // @tpd_set_screen_off_awake
// %bb.0:
	ldr	x8, [x0, #3512]
	ldr	w9, [x8, #1404]
	str	w1, [x8, #1524]
	cmp	w9, #1
	b.ne	.LBB0_2
// %bb.1:
	str	w1, [x8, #1520]
	adrp	x8, is_screen_off_awake_mode
	mov	w0, wzr
	str	w1, [x8, :lo12:is_screen_off_awake_mode]
	ret
.LBB0_2:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, unk_3B5E0
	add	x0, x0, :lo12:unk_3B5E0
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x29, sp
	bl	printk
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	tpd_set_screen_off_awake, .Lfunc_end0-tpd_set_screen_off_awake
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_screen_off_awake"
	.size	.L.str, 25

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_3B5E0
