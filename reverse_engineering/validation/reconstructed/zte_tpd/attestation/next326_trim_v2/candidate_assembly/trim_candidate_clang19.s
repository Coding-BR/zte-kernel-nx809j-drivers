	.text
	.file	"trim_aarch64_assembly_input.c"
	.p2align	2                               // -- Begin function trim
	.type	trim,@function
trim:                                   // @trim
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_8
// %bb.1:
	adrp	x20, :got:_ctype
	sub	x19, x0, #1
	sub	x21, x0, #2
	ldr	x20, [x20, :got_lo12:_ctype]
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19, #1]!
	add	x21, x21, #1
	ldrb	w9, [x20, x8]
	tbnz	w9, #5, .LBB0_2
// %bb.3:
	cbz	w8, .LBB0_9
// %bb.4:
	mov	x0, x19
	bl	strlen
	add	x8, x21, #1
	add	x10, x0, x21
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	mov	x9, x10
	cmp	x10, x8
	b.ls	.LBB0_7
// %bb.6:                               //   in Loop: Header=BB0_5 Depth=1
	mov	x10, x9
	ldrb	w11, [x10], #-1
	ldrb	w11, [x20, x11]
	tbnz	w11, #5, .LBB0_5
.LBB0_7:
	strb	wzr, [x9, #1]
	b	.LBB0_9
.LBB0_8:
	mov	x19, xzr
.LBB0_9:
	mov	x0, x19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	trim, .Lfunc_end0-trim
                                        // -- End function
	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
