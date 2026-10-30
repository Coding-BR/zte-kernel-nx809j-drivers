	.text
	.file	"syna_pal_mem_alloc_aarch64_assembly_input.c"
	.globl	syna_pal_mem_alloc              // -- Begin function syna_pal_mem_alloc
	.p2align	2
	.type	syna_pal_mem_alloc,@function
syna_pal_mem_alloc:                     // @syna_pal_mem_alloc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	w19, w0
	bl	syna_request_managed_device
	cbz	x0, .LBB0_3
// %bb.1:
	cmp	w19, #0
	b.le	.LBB0_4
// %bb.2:
	mov	w1, w19
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w2, #3520                       // =0xdc0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	b	devm_kmalloc
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_5:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	x0, xzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_pal_mem_alloc, .Lfunc_end0-syna_pal_mem_alloc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid managed device\\n"
	.size	.L.str, 42

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_pal_mem_alloc"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str.2, 37

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
