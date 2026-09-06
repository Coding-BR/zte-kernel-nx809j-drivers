	.text
	.file	"syna_tcm_buf_copy_2_aarch64_assembly_input.c"
	.globl	syna_tcm_buf_copy_2             // -- Begin function syna_tcm_buf_copy_2
	.p2align	2
	.type	syna_tcm_buf_copy_2,@function
syna_tcm_buf_copy_2:                    // @syna_tcm_buf_copy_2
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	ldrb	w2, [x0, #64]
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	adrp	x23, unk_38244
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x20, x1
	mov	x19, x0
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	cbz	w2, .LBB0_2
// %bb.1:
	ldr	x0, [x23, :lo12:unk_38244]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_2:
	add	x0, x19, #16
	bl	mutex_lock
	ldrb	w8, [x19, #64]
	add	w8, w8, #1
	strb	w8, [x19, #64]
	ldrb	w2, [x20, #64]
	cbz	w2, .LBB0_4
// %bb.3:
	ldr	x0, [x23, :lo12:unk_38244]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_4:
	add	x0, x20, #16
	bl	mutex_lock
	ldrb	w8, [x20, #64]
	ldr	w2, [x20, #12]
	add	w8, w8, #1
	strb	w8, [x20, #64]
	ldr	w9, [x19, #8]
	cmp	w9, w2
	b.hs	.LBB0_15
// %bb.5:
	cbz	x19, .LBB0_12
// %bb.6:
	add	w21, w2, #1
	ldr	x0, [x19]
	cmp	w9, w21
	b.hs	.LBB0_13
// %bb.7:
	mov	w24, w2
	cbz	x0, .LBB0_10
// %bb.8:
	mov	x22, x0
	bl	syna_request_managed_device
	cbz	x0, .LBB0_28
// %bb.9:
	mov	x1, x22
	bl	devm_kfree
.LBB0_10:
	bl	syna_request_managed_device
	cbnz	x0, .LBB0_29
// %bb.11:
	adrp	x22, unk_3BE43
	add	x22, x22, :lo12:unk_3BE43
	b	.LBB0_33
.LBB0_12:
	adrp	x8, unk_3BA82
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BA82]
	bl	printk
	b	.LBB0_35
.LBB0_13:
	mov	x21, x9
.LBB0_14:
	mov	w1, wzr
	mov	x2, x21
	bl	memset
	str	wzr, [x19, #12]
	ldr	w9, [x19, #8]
	ldr	w2, [x20, #12]
.LBB0_15:
	ldr	x0, [x19]
	cbz	x0, .LBB0_22
// %bb.16:
	ldr	x1, [x20]
	cbz	x1, .LBB0_22
// %bb.17:
	ldr	w8, [x20, #8]
	cmp	w2, w9
	b.hi	.LBB0_21
// %bb.18:
	cmp	w2, w8
	b.hi	.LBB0_21
// %bb.19:
	mov	w2, w2
	bl	memcpy
	ldr	w8, [x20, #12]
	str	w8, [x19, #12]
	ldrb	w2, [x20, #64]
	cmp	x2, #1
	b.ne	.LBB0_26
// %bb.20:
	mov	w8, wzr
	b	.LBB0_27
.LBB0_21:
	adrp	x9, unk_3944E
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	ldr	x0, [x9, :lo12:unk_3944E]
	mov	x2, x8
	bl	printk
	ldr	w2, [x20, #12]
.LBB0_22:
	adrp	x8, unk_34F34
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	ldr	x0, [x8, :lo12:unk_34F34]
	bl	printk
	ldrb	w2, [x20, #64]
	cmp	x2, #1
	b.ne	.LBB0_24
// %bb.23:
	mov	w8, wzr
	b	.LBB0_25
.LBB0_24:
	ldr	x0, [x23, :lo12:unk_38244]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	ldrb	w8, [x20, #64]
	sub	w8, w8, #1
.LBB0_25:
	add	x0, x20, #16
	strb	w8, [x20, #64]
	bl	mutex_unlock
	ldrb	w8, [x19, #64]
	mov	w20, #-22                       // =0xffffffea
	cmp	w8, #1
	b.ne	.LBB0_40
	b	.LBB0_39
.LBB0_26:
	ldr	x0, [x23, :lo12:unk_38244]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	ldrb	w8, [x20, #64]
	sub	w8, w8, #1
.LBB0_27:
	add	x0, x20, #16
	strb	w8, [x20, #64]
	bl	mutex_unlock
	ldrb	w8, [x19, #64]
	mov	w20, wzr
	mov	w9, wzr
	cmp	w8, #1
	b.eq	.LBB0_41
	b	.LBB0_40
.LBB0_28:
	adrp	x22, unk_3BE43
	add	x22, x22, :lo12:unk_3BE43
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	ldr	x0, [x22]
	bl	printk
	bl	syna_request_managed_device
	cbz	x0, .LBB0_33
.LBB0_29:
	mov	w8, #2147483646                 // =0x7ffffffe
	cmp	w24, w8
	b.hi	.LBB0_32
// %bb.30:
	mov	x1, x21
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	str	x0, [x19]
	cbz	x0, .LBB0_34
// %bb.31:
	str	w21, [x19, #8]
	b	.LBB0_14
.LBB0_32:
	adrp	x22, unk_38286
	add	x22, x22, :lo12:unk_38286
.LBB0_33:
	ldr	x0, [x22]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	printk
	str	xzr, [x19]
.LBB0_34:
	adrp	x8, unk_3703C
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3703C]
	mov	w2, w21
	bl	printk
	str	xzr, [x19, #8]
.LBB0_35:
	adrp	x8, unk_378CD
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	ldr	x0, [x8, :lo12:unk_378CD]
	ldr	w8, [x20, #12]
	add	w2, w8, #1
	bl	printk
	ldrb	w2, [x20, #64]
	cmp	x2, #1
	b.ne	.LBB0_37
// %bb.36:
	mov	w8, wzr
	b	.LBB0_38
.LBB0_37:
	ldr	x0, [x23, :lo12:unk_38244]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	ldrb	w8, [x20, #64]
	sub	w8, w8, #1
.LBB0_38:
	add	x0, x20, #16
	strb	w8, [x20, #64]
	bl	mutex_unlock
	ldrb	w8, [x19, #64]
	mov	w20, #-243                      // =0xffffff0d
	cmp	w8, #1
	b.ne	.LBB0_40
.LBB0_39:
	mov	w9, wzr
	b	.LBB0_41
.LBB0_40:
	ldr	x0, [x23, :lo12:unk_38244]
	mov	w2, w8
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	ldrb	w8, [x19, #64]
	sub	w9, w8, #1
.LBB0_41:
	add	x0, x19, #16
	strb	w9, [x19, #64]
	bl	mutex_unlock
	mov	w0, w20
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_buf_copy_2, .Lfunc_end0-syna_tcm_buf_copy_2
                                        // -- End function
	.type	unk_38244,@object               // @unk_38244
	.bss
	.globl	unk_38244
	.p2align	3, 0x0
unk_38244:
	.xword	0
	.size	unk_38244, 8

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syna_tcm_buf_lock"
	.size	.L.str, 18

	.type	unk_3BA82,@object               // @unk_3BA82
	.bss
	.globl	unk_3BA82
	.p2align	3, 0x0
unk_3BA82:
	.xword	0
	.size	unk_3BA82, 8

	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"syna_tcm_buf_alloc"
	.size	.L.str.1, 19

	.type	unk_3BE43,@object               // @unk_3BE43
	.bss
	.globl	unk_3BE43
	.p2align	3, 0x0
unk_3BE43:
	.xword	0
	.size	unk_3BE43, 8

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"syna_pal_mem_free"
	.size	.L.str.2, 18

	.type	unk_38286,@object               // @unk_38286
	.bss
	.globl	unk_38286
	.p2align	3, 0x0
unk_38286:
	.xword	0
	.size	unk_38286, 8

	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"syna_pal_mem_alloc"
	.size	.L.str.3, 19

	.type	unk_3703C,@object               // @unk_3703C
	.bss
	.globl	unk_3703C
	.p2align	3, 0x0
unk_3703C:
	.xword	0
	.size	unk_3703C, 8

	.type	unk_378CD,@object               // @unk_378CD
	.globl	unk_378CD
	.p2align	3, 0x0
unk_378CD:
	.xword	0
	.size	unk_378CD, 8

	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"syna_tcm_buf_copy"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"syna_tcm_buf_unlock"
	.size	.L.str.5, 20

	.type	unk_3944E,@object               // @unk_3944E
	.bss
	.globl	unk_3944E
	.p2align	3, 0x0
unk_3944E:
	.xword	0
	.size	unk_3944E, 8

	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"syna_pal_mem_cpy"
	.size	.L.str.6, 17

	.type	unk_34F34,@object               // @unk_34F34
	.bss
	.globl	unk_34F34
	.p2align	3, 0x0
unk_34F34:
	.xword	0
	.size	unk_34F34, 8

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
