	.text
	.file	"tpd_set_play_game_aarch64_assembly_input.c"
	.globl	tpd_set_play_game               // -- Begin function tpd_set_play_game
	.p2align	2
	.type	tpd_set_play_game,@function
tpd_set_play_game:                      // @tpd_set_play_game
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	w21, w1
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
	ldr	x8, [x20, #624]
	ldr	w9, [x8, #184]
	cbz	w9, .LBB0_3
// %bb.2:
	ldrb	w8, [x8, #188]
	tbnz	w8, #0, .LBB0_5
.LBB0_3:
	ldr	x8, [x20]
	ldr	w2, [x8, #524]
	b	.LBB0_6
.LBB0_4:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_12
.LBB0_5:
	mov	w2, wzr
.LBB0_6:
	ldr	w8, [x20, #1404]
	cmp	w8, #1
	b.ne	.LBB0_9
// %bb.7:
	ldr	w8, [x20, #1500]
	cmp	w8, w21
	b.ne	.LBB0_13
// %bb.8:
	adrp	x0, unk_32D58
	add	x0, x0, :lo12:unk_32D58
	b	.LBB0_10
.LBB0_9:
	adrp	x0, unk_3B5E0
	add	x0, x0, :lo12:unk_3B5E0
.LBB0_10:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_11:
	ldr	w0, [x19, #16]
.LBB0_12:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.LBB0_13:
	mov	x0, x20
	mov	w1, w21
	str	w21, [x20, #1500]
	bl	syna_dev_set_play_game
	tbz	w0, #31, .LBB0_11
// %bb.14:
	adrp	x0, unk_34BC7
	add	x0, x0, :lo12:unk_34BC7
	b	.LBB0_10
.Lfunc_end0:
	.size	tpd_set_play_game, .Lfunc_end0-tpd_set_play_game
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_play_game"
	.size	.L.str, 18

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_34878
	.addrsig_sym unk_32D58
	.addrsig_sym unk_34BC7
	.addrsig_sym unk_3B5E0
