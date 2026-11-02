	.text
	.section	.note.gnu.property,"a",@note
	.p2align	3, 0x0
	.word	4
	.word	16
	.word	5
	.asciz	"GNU"
	.word	3221225472
	.word	4
	.word	7
	.word	0
.Lsec_end0:
	.text
	.file	"tpd_test_cmd_store_aarch64_assembly_input.c"
	.globl	tpd_test_cmd_store              // -- Begin function tpd_test_cmd_store
	.p2align	2
	.type	tpd_test_cmd_store,@function
tpd_test_cmd_store:                     // @tpd_test_cmd_store
// %bb.0:
	hint	#25
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x19, [x0, #3512]
	mov	x29, sp
	ldr	w8, [x19, #1404]
	cmp	w8, #1
	b.ne	.LBB0_5
// %bb.1:
	adrp	x0, :got:unk_34878
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_34878]
	bl	printk
	mov	x0, x19
	bl	syna_testing_pt01_zte
	tbnz	w0, #31, .LBB0_6
// %bb.2:
	mov	x0, x19
	bl	syna_testing_pt05_zte
	tbnz	w0, #31, .LBB0_7
// %bb.3:
	mov	x0, x19
	bl	syna_testing_pt0a_zte
	mov	w20, w0
	tbz	w0, #31, .LBB0_9
// %bb.4:
	adrp	x0, :got:unk_3A6C6
	ldr	x0, [x0, :got_lo12:unk_3A6C6]
	b	.LBB0_8
.LBB0_5:
	adrp	x0, :got:unk_3B5E0
	mov	w20, wzr
	ldr	x0, [x0, :got_lo12:unk_3B5E0]
	b	.LBB0_8
.LBB0_6:
	mov	w20, w0
	adrp	x0, :got:unk_3458E
	ldr	x0, [x0, :got_lo12:unk_3458E]
	b	.LBB0_8
.LBB0_7:
	mov	w20, w0
	adrp	x0, :got:unk_3C89A
	ldr	x0, [x0, :got_lo12:unk_3C89A]
.LBB0_8:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_9:
	ldr	x0, [x19, #624]
	bl	syna_spi_hw_reset
	adrp	x0, :got:unk_38B8E
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	ldr	x0, [x0, :got_lo12:unk_38B8E]
	bl	printk
	mov	w0, w20
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	hint	#29
	ret
.Lfunc_end0:
	.size	tpd_test_cmd_store, .Lfunc_end0-tpd_test_cmd_store
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_test_cmd_store"
	.size	.L.str, 19

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
