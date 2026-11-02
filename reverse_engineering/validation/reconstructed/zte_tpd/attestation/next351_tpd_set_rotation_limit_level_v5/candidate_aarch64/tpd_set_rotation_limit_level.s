	.text
	.file	"tpd_set_rotation_limit_level_aarch64_assembly_input.c"
	.globl	tpd_set_rotation_limit_level    // -- Begin function tpd_set_rotation_limit_level
	.p2align	2
	.type	tpd_set_rotation_limit_level,@function
tpd_set_rotation_limit_level:           // @tpd_set_rotation_limit_level
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	w21, w1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x20, x0
	ldr	x19, [x0, #3512]
	adrp	x0, unk_34878
	add	x0, x0, :lo12:unk_34878
	mov	x29, sp
	bl	printk
	cbz	x19, .LBB0_4
// %bb.1:
	ldr	x9, [x19, #624]
	ldr	x8, [x19]
	ldr	w10, [x9, #184]
	cbz	w10, .LBB0_3
// %bb.2:
	ldrb	w9, [x9, #188]
	tbnz	w9, #0, .LBB0_5
.LBB0_3:
	ldr	w2, [x8, #524]
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_11
.LBB0_5:
	mov	w2, wzr
.LBB0_6:
	ldr	w8, [x19, #1404]
	cmp	w21, #3
	mov	w9, #3                          // =0x3
	csel	w9, w21, w9, lt
	cmp	w8, #1
	str	w9, [x19, #1548]
	b.ne	.LBB0_9
// %bb.7:
	ldr	w1, [x20, #16]
	mov	x0, x19
	bl	syna_dev_set_display_rotation
	cbz	w0, .LBB0_11
// %bb.8:
	adrp	x0, unk_3220D
	add	x0, x0, :lo12:unk_3220D
	b	.LBB0_10
.LBB0_9:
	adrp	x0, unk_3B5E0
	add	x0, x0, :lo12:unk_3B5E0
.LBB0_10:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
	mov	w0, wzr
.LBB0_11:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_rotation_limit_level, .Lfunc_end0-tpd_set_rotation_limit_level
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_rotation_limit_level"
	.size	.L.str, 29

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_34878
	.addrsig_sym unk_3220D
	.addrsig_sym unk_3B5E0
