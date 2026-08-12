	.text
	.file	"syna_tcm_update_flash_block_aarch64_assembly_input.c"
	.globl	syna_tcm_update_flash_block     // -- Begin function syna_tcm_update_flash_block
	.p2align	2
	.type	syna_tcm_update_flash_block,@function
syna_tcm_update_flash_block:            // @syna_tcm_update_flash_block
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	stur	wzr, [x29, #-4]
	cbz	x0, .LBB0_10
// %bb.1:
	mov	x20, x1
	cbz	x1, .LBB0_10
// %bb.2:
	mov	x19, x2
	cbz	x2, .LBB0_10
// %bb.3:
	ldr	x26, [x0, #72]
	mov	x1, x20
	mov	x2, x19
	mov	w23, w5
	mov	w24, w3
	mov	w21, w4
	mov	x22, x0
	bl	syna_tcm_check_flash_block
	tbnz	w0, #31, .LBB0_11
// %bb.4:
	cbz	w0, .LBB0_30
// %bb.5:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldr	w27, [x20, #44]
	tbnz	w23, #0, .LBB0_23
// %bb.6:
	ldr	w9, [x19, #16]
	cbz	w9, .LBB0_23
// %bb.7:
	ldr	w10, [x20, #40]
	cbz	w10, .LBB0_9
// %bb.8:
	ldr	w11, [x19, #20]
	udiv	w8, w11, w10
	msub	w11, w8, w10, w11
	cbz	w11, .LBB0_13
.LBB0_9:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	b	.LBB0_12
.LBB0_10:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_30
.LBB0_11:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_12:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_30
.LBB0_13:
	add	w9, w10, w9
	sub	w9, w9, #1
	udiv	w9, w9, w10
	orr	w10, w9, w8
	cmp	w10, #256
	b.lo	.LBB0_15
// %bb.14:
	lsr	w10, w8, #8
	mov	w3, #4                          // =0x4
	sturh	w9, [x29, #-2]
	b	.LBB0_16
.LBB0_15:
	mov	w3, #2                          // =0x2
	mov	w10, w9
.LBB0_16:
	mul	w5, w9, w24
	mov	x0, x22
	sturb	w8, [x29, #-4]
	sturb	w10, [x29, #-3]
	cbnz	w5, .LBB0_21
// %bb.17:
	cbz	x26, .LBB0_19
// %bb.18:
	ldrb	w8, [x26, #20]
	tbnz	w8, #0, .LBB0_20
.LBB0_19:
	ldr	w5, [x0, #524]
	b	.LBB0_21
.LBB0_20:
	mov	w5, wzr
.LBB0_21:
	ldr	x8, [x0, #920]
	cbz	x8, .LBB0_63
// %bb.22:
	sub	x2, x29, #4
	mov	w1, #17                         // =0x11
	mov	x4, xzr
	blr	x8
	tbnz	w0, #31, .LBB0_64
.LBB0_23:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldr	w4, [x19, #16]
	cbz	w4, .LBB0_28
// %bb.24:
	cbz	w27, .LBB0_26
// %bb.25:
	ldr	w2, [x19, #20]
	udiv	w8, w2, w27
	msub	w8, w8, w27, w2
	cbz	w8, .LBB0_31
.LBB0_26:
	mov	w23, #-241                      // =0xffffff0f
.LBB0_27:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, w23
	b	.LBB0_30
.LBB0_28:
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_29:
	mov	w0, wzr
.LBB0_30:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.LBB0_31:
	tbnz	w23, #0, .LBB0_34
// %bb.32:
	ldr	x3, [x19, #8]
	mov	x0, x22
	mov	x1, x20
	mov	w5, w21
	bl	syna_tcm_write_flash
	tbz	w0, #31, .LBB0_29
// %bb.33:
	mov	w23, w0
	b	.LBB0_27
.LBB0_34:
	ldrb	w8, [x20, #136]
	tbz	w8, #0, .LBB0_26
// %bb.35:
	ldr	w8, [x20, #48]
	udiv	w9, w8, w27
	mul	w23, w9, w27
	sub	w9, w8, w23
	cmp	w8, w9
	b.eq	.LBB0_26
// %bb.36:
	ldr	x8, [x19, #8]
	cbz	x8, .LBB0_65
// %bb.37:
	add	x0, x20, #80
	bl	mutex_lock
	ldrb	w8, [x20, #128]
	ldr	w28, [x19, #16]
	add	w9, w8, #1
	strb	w9, [x20, #128]
	cbz	w28, .LBB0_62
// %bb.38:
	ldr	w8, [x19, #20]
	sub	w9, w27, #1
	mov	w24, wzr
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	add	w9, w9, w28
	udiv	w8, w8, w27
	udiv	w9, w9, w27
	add	w8, w8, w9
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	lsr	w8, w8, #8
	stp	w23, w8, [sp]                   // 8-byte Folded Spill
.LBB0_39:                               // =>This Inner Loop Header: Depth=1
	cmp	w28, w23
	csel	w23, w28, w23, lo
	cmn	w23, #7
	b.hi	.LBB0_66
// %bb.40:                              //   in Loop: Header=BB0_39 Depth=1
	ldr	w8, [x20, #72]
	add	w25, w23, #6
	ldr	x0, [x20, #64]
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	cmp	w8, w25
	b.hs	.LBB0_44
// %bb.41:                              //   in Loop: Header=BB0_39 Depth=1
	mov	x25, x0
	bl	syna_request_managed_device
	cbz	x25, .LBB0_46
// %bb.42:                              //   in Loop: Header=BB0_39 Depth=1
	cbz	x0, .LBB0_45
// %bb.43:                              //   in Loop: Header=BB0_39 Depth=1
	ldr	x1, [x20, #64]
	mov	x25, x0
	bl	devm_kfree
	mov	x0, x25
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	b	.LBB0_47
.LBB0_44:                               //   in Loop: Header=BB0_39 Depth=1
	cbnz	x0, .LBB0_49
	b	.LBB0_66
.LBB0_45:                               //   in Loop: Header=BB0_39 Depth=1
	bl	syna_request_managed_device
.LBB0_46:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	cbz	x0, .LBB0_70
.LBB0_47:                               //   in Loop: Header=BB0_39 Depth=1
	mov	x1, x25
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	str	x0, [x20, #64]
	cbz	x0, .LBB0_71
// %bb.48:                              //   in Loop: Header=BB0_39 Depth=1
	mov	w8, w25
	str	w25, [x20, #72]
.LBB0_49:                               //   in Loop: Header=BB0_39 Depth=1
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	str	wzr, [x20, #76]
	ldr	x9, [x20, #64]
	ldr	w10, [sp, #12]                  // 4-byte Folded Reload
	ldr	w8, [x19, #16]
	add	w10, w10, w23
	cmp	w28, w8
	udiv	w10, w10, w27
	cset	w8, eq
	strb	w8, [x9]
	ldr	w8, [x19, #20]
	ldr	x9, [x20, #64]
	add	w8, w8, w24
	udiv	w8, w8, w27
	strb	w8, [x9, #2]
	lsr	w8, w8, #8
	ldr	x9, [x20, #64]
	strb	w8, [x9, #3]
	ldr	w9, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [x20, #64]
	strb	w9, [x8, #4]
	mul	w9, w10, w21
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	ldr	x8, [x20, #64]
	strb	w10, [x8, #5]
	cmp	w9, #999
	ldr	x8, [x19, #8]
	b.hi	.LBB0_53
// %bb.50:                              //   in Loop: Header=BB0_39 Depth=1
	mov	x9, x22
	cbz	x26, .LBB0_52
// %bb.51:                              //   in Loop: Header=BB0_39 Depth=1
	ldrb	w10, [x26, #20]
	tbnz	w10, #0, .LBB0_54
.LBB0_52:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w25, [x9, #524]
	b	.LBB0_55
.LBB0_53:                               //   in Loop: Header=BB0_39 Depth=1
	mov	w10, #19923                     // =0x4dd3
	movk	w10, #4194, lsl #16
	umull	x9, w9, w10
	lsr	x25, x9, #38
	b	.LBB0_55
.LBB0_54:                               //   in Loop: Header=BB0_39 Depth=1
	mov	w25, wzr
.LBB0_55:                               //   in Loop: Header=BB0_39 Depth=1
	ldr	w9, [x19, #16]
	sub	w9, w9, w24
	cmp	w9, w23
	b.lo	.LBB0_67
// %bb.56:                              //   in Loop: Header=BB0_39 Depth=1
	ldr	w9, [x20, #72]
	mov	w0, #-22                        // =0xffffffea
	sub	w9, w9, #6
	cmp	w23, w9
	b.hi	.LBB0_69
// %bb.57:                              //   in Loop: Header=BB0_39 Depth=1
	cbz	x8, .LBB0_69
// %bb.58:                              //   in Loop: Header=BB0_39 Depth=1
	add	x1, x8, w24, uxtw
	ldr	x8, [x20, #64]
	mov	x2, x23
	add	x0, x8, #6
	bl	memcpy
	ldr	x8, [x22, #920]
	cbz	x8, .LBB0_68
// %bb.59:                              //   in Loop: Header=BB0_39 Depth=1
	ldr	x2, [x20, #64]
	mov	x0, x22
	mov	w1, #254                        // =0xfe
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x4, xzr
	mov	w5, w25
                                        // kill: def $w3 killed $w3 killed $x3
	blr	x8
	tbnz	w0, #31, .LBB0_69
// %bb.60:                              //   in Loop: Header=BB0_39 Depth=1
	subs	w28, w28, w23
	add	w24, w24, w23
	ldr	w23, [sp]                       // 4-byte Folded Reload
	b.ne	.LBB0_39
// %bb.61:
	ldrb	w8, [x20, #128]
	sub	w8, w8, #1
.LBB0_62:
	add	x0, x20, #80
	strb	w8, [x20, #128]
	bl	mutex_unlock
	b	.LBB0_29
.LBB0_63:
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_30
.LBB0_64:
	ldrb	w8, [x19, #24]
	mov	w19, w0
	mov	w0, w8
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, w19
	b	.LBB0_30
.LBB0_65:
	mov	w23, #-22                       // =0xffffffea
	b	.LBB0_27
.LBB0_66:
	mov	w23, #-22                       // =0xffffffea
	b	.LBB0_72
.LBB0_67:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_69
.LBB0_68:
	mov	w0, #-241                       // =0xffffff0f
.LBB0_69:
	mov	w23, w0
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	adrp	x21, .L.str.8
	add	x21, x21, :lo12:.L.str.8
	adrp	x22, .L.str.1
	add	x22, x22, :lo12:.L.str.1
	mov	x2, x0
	mov	x0, x21
	mov	x1, x22
	bl	printk
	ldrb	w8, [x20, #128]
	add	x0, x20, #80
	sub	w8, w8, #1
	strb	w8, [x20, #128]
	bl	mutex_unlock
	ldrb	w0, [x19, #24]
	bl	syna_tcm_get_partition_id_string
	mov	x2, x0
	mov	x0, x21
	mov	x1, x22
	bl	printk
	b	.LBB0_27
.LBB0_70:
	str	xzr, [x20, #64]
.LBB0_71:
	mov	w23, #-243                      // =0xffffff0d
	str	wzr, [x20, #72]
.LBB0_72:
	ldrb	w8, [x20, #128]
	add	x0, x20, #80
	sub	w8, w8, #1
	strb	w8, [x20, #128]
	bl	mutex_unlock
	b	.LBB0_27
.Lfunc_end0:
	.size	syna_tcm_update_flash_block, .Lfunc_end0-syna_tcm_update_flash_block
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_update_flash_block"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Flash block check failed for %s\\n"
	.size	.L.str.2, 51

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0016[info] %s: Updating partition %s\\n"
	.size	.L.str.3, 40

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\0013[error] %s: Erase geometry invalid for %s\\n"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\\0013[error] %s: Erase failed for %s\\n"
	.size	.L.str.5, 39

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\\0016[info] %s: Writing partition %s\\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\\0016[info] %s: Empty partition %s\\n"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\\0013[error] %s: Optimized write failed for %s\\n"
	.size	.L.str.8, 49

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\\0013[error] %s: Write failed for %s\\n"
	.size	.L.str.9, 39

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
