	.text
	.file	"syna_tcm_string_change_aarch64_assembly_input.c"
	.globl	string_change                   // -- Begin function string_change
	.p2align	2
	.type	string_change,@function
string_change:                          // @string_change
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	mov	x19, x2
	cbz	x1, .LBB0_14
// %bb.1:
	ldrb	w8, [x1]
	mov	x20, x1
	cbz	w8, .LBB0_14
// %bb.2:
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	x0, x20
	bl	strlen
	mov	x22, x0
	add	x0, x0, #1
	mov	w1, wzr
	bl	kmalloc
	cbz	x0, .LBB0_16
// %bb.3:
	add	x2, x22, #1
	mov	x1, x20
	mov	x21, x0
	bl	memcpy
	mov	x0, x20
	bl	strlen
	add	x0, x0, x0, lsl #1
	mov	w1, wzr
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	kmalloc
	mov	x20, x0
	cbz	x0, .LBB0_18
// %bb.4:
	mov	x0, x21
	mov	w1, #58                         // =0x3a
	bl	strchr
	mov	x23, x0
	cbz	x0, .LBB0_6
// %bb.5:
	strb	wzr, [x23], #1
.LBB0_6:
	stur	x21, [x29, #-8]
	ldrb	w8, [x21]
	cbz	w8, .LBB0_17
// %bb.7:
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	sub	x0, x29, #8
	bl	strsep
	cbz	x0, .LBB0_17
// %bb.8:
	mov	x22, xzr
	mov	w28, wzr
	mov	w25, wzr
	mov	w26, #1                         // =0x1
	adrp	x24, .L.str
	add	x24, x24, :lo12:.L.str
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_10 Depth=1
	sub	x0, x29, #8
	mov	x1, x24
	bl	strsep
	cbz	x0, .LBB0_19
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	bl	trim
	ldrb	w8, [x0]
	cbz	w8, .LBB0_9
// %bb.11:                              //   in Loop: Header=BB0_10 Depth=1
	mov	x1, xzr
	mov	w2, #16                         // =0x10
	bl	simple_strtoul
	tbnz	w22, #31, .LBB0_51
// %bb.12:                              //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	x8, x22
	b.ls	.LBB0_51
// %bb.13:                              //   in Loop: Header=BB0_10 Depth=1
	cmp	w26, #0
	strb	w0, [x20, x22]
	add	x22, x22, #1
	csinc	w25, w25, wzr, eq
	csel	w28, w28, w0, eq
	mov	w26, wzr
	b	.LBB0_9
.LBB0_14:
	mov	w0, #1                          // =0x1
	mov	w1, wzr
	bl	kzalloc
	mov	x20, x0
	mov	x22, xzr
	cbz	x0, .LBB0_52
// %bb.15:
	strb	wzr, [x20]
	b	.LBB0_52
.LBB0_16:
	mov	x22, xzr
	mov	x20, xzr
	b	.LBB0_52
.LBB0_17:
	mov	w24, wzr
	mov	w28, wzr
	mov	x22, xzr
	cbnz	x23, .LBB0_20
	b	.LBB0_50
.LBB0_18:
	mov	x0, x21
	bl	kfree
	mov	x22, xzr
	b	.LBB0_52
.LBB0_19:
	cmp	w25, #0
	cset	w24, ne
	cbz	x23, .LBB0_50
.LBB0_20:
	ldrb	w8, [x23]
	cbz	w8, .LBB0_50
// %bb.21:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	sub	x0, x29, #16
	stur	x23, [x29, #-16]
	bl	strsep
	cbz	x0, .LBB0_50
// %bb.22:
	adrp	x26, .L.str.1
	add	x26, x26, :lo12:.L.str.1
	mov	w23, #1                         // =0x1
	stp	w24, w28, [sp]                  // 8-byte Folded Spill
	b	.LBB0_26
.LBB0_23:                               //   in Loop: Header=BB0_26 Depth=1
	mov	w24, w26
	mov	x26, x28
	ldr	w28, [sp, #4]                   // 4-byte Folded Reload
.LBB0_24:                               //   in Loop: Header=BB0_26 Depth=1
	mov	w23, wzr
.LBB0_25:                               //   in Loop: Header=BB0_26 Depth=1
	sub	x0, x29, #16
	mov	x1, x26
	bl	strsep
	cbz	x0, .LBB0_50
.LBB0_26:                               // =>This Inner Loop Header: Depth=1
	bl	trim
	ldrb	w8, [x0]
	cbz	w8, .LBB0_25
// %bb.27:                              //   in Loop: Header=BB0_26 Depth=1
	cmp	w23, #0
	mov	x27, x0
	csel	w8, wzr, w24, ne
	cmp	w8, #1
	b.ne	.LBB0_31
// %bb.28:                              //   in Loop: Header=BB0_26 Depth=1
	tbnz	w22, #31, .LBB0_51
// %bb.29:                              //   in Loop: Header=BB0_26 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	x8, x22
	b.ls	.LBB0_51
// %bb.30:                              //   in Loop: Header=BB0_26 Depth=1
	add	x8, x22, #1
	strb	w28, [x20, x22]
	mov	x22, x8
.LBB0_31:                               //   in Loop: Header=BB0_26 Depth=1
	mov	x0, x27
	mov	w1, #58                         // =0x3a
	bl	strchr
	cbz	x0, .LBB0_36
// %bb.32:                              //   in Loop: Header=BB0_26 Depth=1
	strb	wzr, [x0], #1
	mov	x23, x0
	mov	x0, x27
	bl	trim
	mov	x27, x23
	cbz	x0, .LBB0_36
// %bb.33:                              //   in Loop: Header=BB0_26 Depth=1
	mov	x1, xzr
	mov	w2, #16                         // =0x10
	bl	simple_strtoul
	tbnz	w22, #31, .LBB0_51
// %bb.34:                              //   in Loop: Header=BB0_26 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	cmp	x8, x22
	b.ls	.LBB0_51
// %bb.35:                              //   in Loop: Header=BB0_26 Depth=1
	add	x8, x22, #1
	mov	x28, x26
	mov	w26, w24
	strb	w0, [x20, x22]
	mov	x22, x8
	b	.LBB0_37
.LBB0_36:                               //   in Loop: Header=BB0_26 Depth=1
	mov	x28, x26
	mov	w26, w24
.LBB0_37:                               //   in Loop: Header=BB0_26 Depth=1
	mov	x0, x27
	bl	trim
	adrp	x24, .L.str
	add	x24, x24, :lo12:.L.str
	str	x0, [sp, #24]
	add	x0, sp, #24
	mov	x1, x24
	bl	strsep
	mov	x23, x0
	add	x0, sp, #24
	mov	x1, x24
	bl	strsep
	mov	x25, x0
	add	x0, sp, #24
	mov	x1, x24
	bl	strsep
	mov	x27, x0
	add	x0, sp, #24
	mov	x1, x24
	bl	strsep
	cbz	x23, .LBB0_23
// %bb.38:                              //   in Loop: Header=BB0_26 Depth=1
	cbz	x25, .LBB0_23
// %bb.39:                              //   in Loop: Header=BB0_26 Depth=1
	cbz	x27, .LBB0_23
// %bb.40:                              //   in Loop: Header=BB0_26 Depth=1
	mov	x8, x0
	cbz	x0, .LBB0_23
// %bb.41:                              //   in Loop: Header=BB0_26 Depth=1
	mov	x0, x23
	mov	x23, x8
	bl	trim
	mov	x26, x0
	mov	x0, x25
	bl	trim
	mov	x25, x0
	mov	x0, x27
	bl	trim
	mov	x24, x0
	mov	x0, x23
	bl	trim
	mov	x23, x0
	mov	x0, x26
	mov	x1, xzr
	mov	w2, #10                         // =0xa
	bl	simple_strtoul
	mov	x28, x0
	mov	x0, x25
	mov	x1, xzr
	mov	w2, #10                         // =0xa
	bl	simple_strtoul
	mov	x27, x0
	mov	x0, x24
	mov	x1, xzr
	mov	w2, #10                         // =0xa
	bl	simple_strtoul
	mov	x26, x0
	mov	x0, x23
	mov	x1, xzr
	mov	w2, #10                         // =0xa
	bl	simple_strtoul
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	x25, x0
	adrp	x0, :got:unk_33FD8
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	ldr	w23, [x8, #1544]
	ldr	x0, [x0, :got_lo12:unk_33FD8]
	mov	w2, w23
	bl	zte_tpd_aarch64_printk
	cmp	w23, #1
	b.eq	.LBB0_44
// %bb.42:                              //   in Loop: Header=BB0_26 Depth=1
	mov	x11, x28
	ldr	w28, [sp, #4]                   // 4-byte Folded Reload
	cmp	w23, #3
	b.ne	.LBB0_45
// %bb.43:                              //   in Loop: Header=BB0_26 Depth=1
	mov	w10, #2688                      // =0xa80
	mov	w9, #-1                         // =0xffffffff
	mov	w12, #10                        // =0xa
	sub	w8, w10, w26
	sub	w11, w10, w11
	madd	w10, w8, w12, w9
	add	w15, w11, w11, lsl #2
	mov	w11, #1                         // =0x1
	madd	w9, w25, w12, w9
	add	w12, w27, w27, lsl #2
	orr	w8, w11, w15, lsl #1
	lsr	w15, w15, #7
	orr	w11, w11, w12, lsl #1
	ubfx	w12, w12, #7, #24
	lsr	w13, w10, #8
	lsr	w14, w9, #8
	b	.LBB0_46
.LBB0_44:                               //   in Loop: Header=BB0_26 Depth=1
	mov	w11, #1216                      // =0x4c0
	mov	w9, #-1                         // =0xffffffff
	mov	w12, #10                        // =0xa
	sub	w10, w11, w27
	madd	w8, w26, w12, w9
	sub	w11, w11, w25
	madd	w9, w10, w12, w9
	add	w13, w28, w28, lsl #2
	add	w12, w11, w11, lsl #2
	mov	w11, #1                         // =0x1
	adrp	x26, .L.str.1
	add	x26, x26, :lo12:.L.str.1
	ldp	w24, w28, [sp]                  // 8-byte Folded Reload
	orr	w10, w11, w13, lsl #1
	orr	w11, w11, w12, lsl #1
	ubfx	w12, w12, #7, #24
	lsr	w13, w13, #7
	lsr	w14, w9, #8
	lsr	w15, w8, #8
	b	.LBB0_47
.LBB0_45:                               //   in Loop: Header=BB0_26 Depth=1
	mov	w11, wzr
	mov	w12, wzr
	mov	w10, wzr
	mov	w13, wzr
	mov	w9, wzr
	mov	w14, wzr
	mov	w8, wzr
	mov	w15, wzr
.LBB0_46:                               //   in Loop: Header=BB0_26 Depth=1
	ldr	w24, [sp]                       // 4-byte Folded Reload
	adrp	x26, .L.str.1
	add	x26, x26, :lo12:.L.str.1
.LBB0_47:                               //   in Loop: Header=BB0_26 Depth=1
	tbnz	w22, #31, .LBB0_51
// %bb.48:                              //   in Loop: Header=BB0_26 Depth=1
	ldr	x17, [sp, #16]                  // 8-byte Folded Reload
	add	x16, x22, #8
	cmp	x16, x17
	b.hi	.LBB0_51
// %bb.49:                              //   in Loop: Header=BB0_26 Depth=1
	add	x17, x20, x22
	mov	x22, x16
	strb	w11, [x17]
	strb	w12, [x17, #1]
	strb	w10, [x17, #2]
	strb	w13, [x17, #3]
	strb	w9, [x17, #4]
	strb	w14, [x17, #5]
	strb	w8, [x17, #6]
	strb	w15, [x17, #7]
	b	.LBB0_24
.LBB0_50:
	mov	x0, x21
	bl	kfree
	b	.LBB0_52
.LBB0_51:
	mov	x22, xzr
.LBB0_52:
	mov	x0, x20
	str	w22, [x19]
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	string_change, .Lfunc_end0-string_change
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	","
	.size	.L.str, 2

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"change_coordinate"
	.size	.L.str.2, 18

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
