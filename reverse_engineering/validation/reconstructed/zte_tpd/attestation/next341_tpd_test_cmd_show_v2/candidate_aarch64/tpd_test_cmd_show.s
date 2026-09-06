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
	.file	"tpd_test_cmd_show_aarch64_assembly_input.c"
	.globl	tpd_test_cmd_show               // -- Begin function tpd_test_cmd_show
	.p2align	2
	.type	tpd_test_cmd_show,@function
tpd_test_cmd_show:                      // @tpd_test_cmd_show
// %bb.0:
	hint	#25
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	adrp	x0, :got:unk_34878
	mov	x19, x1
	ldr	x0, [x0, :got_lo12:unk_34878]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	x29, sp
	bl	printk
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	mov	x0, x19
	mov	w1, #4096                       // =0x1000
	mov	w3, wzr
	mov	w4, #16                         // =0x10
	mov	w5, #37                         // =0x25
	mov	w6, wzr
	bl	snprintf
	//APP
	//NO_APP
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	hint	#29
	ret
.Lfunc_end0:
	.size	tpd_test_cmd_show, .Lfunc_end0-tpd_test_cmd_show
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_test_cmd_show"
	.size	.L.str, 18

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%d,%d,%d,%d"
	.size	.L.str.1, 12

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
