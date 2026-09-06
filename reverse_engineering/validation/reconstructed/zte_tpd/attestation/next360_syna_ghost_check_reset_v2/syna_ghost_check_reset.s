	.text
	.file	"syna_ghost_check_reset_aarch64_assembly_input.c"
	.globl	syna_ghost_check_reset          // -- Begin function syna_ghost_check_reset
	.p2align	2
	.type	syna_ghost_check_reset,@function
syna_ghost_check_reset:                 // @syna_ghost_check_reset
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #3512]
	mov	x29, sp
	mov	x0, x19
	bl	syna_dev_free_input_events
	ldr	x0, [x19, #624]
	bl	syna_spi_hw_reset
	mov	x0, x19
	bl	syna_recovery_game_mode_after_reset
	mov	x0, x19
	mov	w1, wzr
	bl	syna_dev_set_screen_on_fp_mode
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_ghost_check_reset, .Lfunc_end0-syna_ghost_check_reset
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0016[info ] %s: SYNA_ghost_reset success"
	.size	.L.str, 39

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_ghost_check_reset"
	.size	.L.str.1, 23

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
