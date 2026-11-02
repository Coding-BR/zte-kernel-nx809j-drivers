	.text
	.file	"tpd_set_display_rotation_aarch64_assembly_input.c"
	.globl	tpd_set_display_rotation        // -- Begin function tpd_set_display_rotation
	.p2align	2
	.type	tpd_set_display_rotation,@function
tpd_set_display_rotation:               // @tpd_set_display_rotation
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	mov	w22, w1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	ldr	x20, [x0, #3512]
	adrp	x0, unk_34878
	add	x0, x0, :lo12:unk_34878
	mov	x29, sp
	bl	printk
	cbz	x20, .LBB0_4
// %bb.1:
	ldr	x9, [x20, #624]
	ldr	x8, [x20]
	ldr	w10, [x9, #184]
	cbz	w10, .LBB0_3
// %bb.2:
	ldrb	w9, [x9, #188]
	tbnz	w9, #0, .LBB0_5
.LBB0_3:
	ldr	w21, [x8, #524]
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_14
.LBB0_5:
	mov	w21, wzr
.LBB0_6:
	str	w22, [x19, #16]
	adrp	x0, unk_37B3D
	add	x0, x0, :lo12:unk_37B3D
	str	w22, [x20, #1544]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	w2, [x19, #16]
	bl	printk
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.eq	.LBB0_11
// %bb.7:
	adrp	x0, unk_3C397
	add	x0, x0, :lo12:unk_3C397
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, wzr
	bl	printk
	mov	w0, #200                        // =0xc8
	bl	msleep
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.eq	.LBB0_11
// %bb.8:
	adrp	x0, unk_3C397
	add	x0, x0, :lo12:unk_3C397
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #1                          // =0x1
	bl	printk
	mov	w0, #200                        // =0xc8
	bl	msleep
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.eq	.LBB0_11
// %bb.9:
	adrp	x0, unk_3C397
	add	x0, x0, :lo12:unk_3C397
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #2                          // =0x2
	bl	printk
	mov	w0, #200                        // =0xc8
	bl	msleep
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.eq	.LBB0_11
// %bb.10:
	adrp	x0, unk_3C397
	add	x0, x0, :lo12:unk_3C397
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #3                          // =0x3
	bl	printk
	mov	w0, #200                        // =0xc8
	bl	msleep
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.ne	.LBB0_15
.LBB0_11:
	ldr	w1, [x19, #16]
	mov	x0, x20
	mov	w2, w21
	bl	syna_dev_set_display_rotation
	tbz	w0, #31, .LBB0_13
// %bb.12:
	adrp	x0, unk_36936
	add	x0, x0, :lo12:unk_36936
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_13:
	ldr	w0, [x19, #16]
.LBB0_14:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.LBB0_15:
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
	adrp	x0, unk_3C397
	add	x0, x0, :lo12:unk_3C397
	mov	x1, x19
	mov	w2, #4                          // =0x4
	bl	printk
	mov	w0, #200                        // =0xc8
	bl	msleep
	adrp	x0, unk_38BA1
	add	x0, x0, :lo12:unk_38BA1
	mov	x1, x19
	bl	printk
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_14
.Lfunc_end0:
	.size	tpd_set_display_rotation, .Lfunc_end0-tpd_set_display_rotation
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_display_rotation"
	.size	.L.str, 25

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_34878
	.addrsig_sym unk_37B3D
	.addrsig_sym unk_3C397
	.addrsig_sym unk_38BA1
	.addrsig_sym unk_36936
