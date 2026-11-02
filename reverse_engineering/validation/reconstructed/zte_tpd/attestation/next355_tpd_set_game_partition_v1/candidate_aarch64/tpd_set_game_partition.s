	.text
	.file	"tpd_set_game_partition_aarch64_assembly_input.c"
	.globl	tpd_set_game_partition          // -- Begin function tpd_set_game_partition
	.p2align	2
	.type	tpd_set_game_partition,@function
tpd_set_game_partition:                 // @tpd_set_game_partition
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x0, unk_3A85B
	add	x0, x0, :lo12:unk_3A85B
	mov	x2, x1
	mov	x29, sp
	bl	printk
	mov	w0, wzr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	tpd_set_game_partition, .Lfunc_end0-tpd_set_game_partition
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tpd_set_game_partition"
	.size	.L.str, 23

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unk_3A85B
