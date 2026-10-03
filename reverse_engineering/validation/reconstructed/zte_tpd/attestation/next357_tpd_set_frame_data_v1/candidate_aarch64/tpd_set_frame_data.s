	.text
	.file	"tpd_set_frame_data_aarch64_assembly_input.c"
	.globl	tpd_set_frame_data              // -- Begin function tpd_set_frame_data
	.p2align	2
	.type	tpd_set_frame_data,@function
tpd_set_frame_data:                     // @tpd_set_frame_data
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	ldr	x19, [x0, #3512]
	mov	w20, w1
	adrp	x0, unk_34878
	add	x0, x0, :lo12:unk_34878
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	bl	printk
	cbz	x19, .LBB0_4
// %bb.1:
	ldr	x8, [x19, #624]
	ldr	w9, [x8, #184]
	cbz	w9, .LBB0_3
// %bb.2:
	ldrb	w8, [x8, #188]
	tbnz	w8, #0, .LBB0_5
.LBB0_3:
	ldr	x8, [x19]
	ldr	w21, [x8, #524]
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_12
.LBB0_5:
	mov	w21, wzr
.LBB0_6:
	ldr	w8, [x19, #1404]
	cmp	w8, #1
	b.ne	.LBB0_9
// %bb.7:
	mov	x0, x19
	str	w20, [x19, #1504]
	bl	zte_reset_frame_list
	mov	x0, x19
	mov	w1, w20
	mov	w2, w21
	bl	syna_dev_get_frame_data
	tbz	w0, #31, .LBB0_11
// %bb.8:
	adrp	x0, unk_345B2
	add	x0, x0, :lo12:unk_345B2
	b	.LBB0_10
.LBB0_9:
	adrp	x0, unk_3B5E0
	add	x0, x0, :lo12:unk_3B5E0
.LBB0_10:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_11:
	mov	w0, wzr
.LBB0_12:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_frame_data, .Lfunc_end0-tpd_set_frame_data
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_frame_data"
	.size	.L.str, 19

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_34878
	.addrsig_sym unk_345B2
	.addrsig_sym unk_3B5E0
