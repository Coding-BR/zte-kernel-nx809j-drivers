	.text
	.file	"syna_tcm_write_flash_aarch64_assembly_input.c"
	.globl	syna_tcm_write_flash            // -- Begin function syna_tcm_write_flash
	.p2align	2
	.type	syna_tcm_write_flash,@function
syna_tcm_write_flash:                   // @syna_tcm_write_flash
// %bb.0:
	sub	sp, sp, #128
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	mov	x23, x0
	mov	w0, #-241                       // =0xffffff0f
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	cbz	x23, .LBB0_48
// %bb.1:
	mov	x19, x1
	cbz	x1, .LBB0_48
// %bb.2:
	ldp	w20, w8, [x19, #44]
	mov	w26, w5
	mov	w22, w4
	cbz	w4, .LBB0_4
// %bb.3:
	cbz	w20, .LBB0_48
.LBB0_4:
	cbz	w20, .LBB0_6
// %bb.5:
	udiv	w8, w8, w20
	mul	w25, w8, w20
	cbnz	w22, .LBB0_7
	b	.LBB0_8
.LBB0_6:
	mov	w25, wzr
	cbz	w22, .LBB0_8
.LBB0_7:
	cbz	w25, .LBB0_48
.LBB0_8:
	ldrb	w8, [x19, #128]
	ldr	x9, [x23, #72]
	mov	w21, w2
	stur	x3, [x29, #-8]                  // 8-byte Folded Spill
	str	x9, [sp]                        // 8-byte Folded Spill
	cbz	w8, .LBB0_10
// %bb.9:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_10:
	add	x0, x19, #80
	bl	mutex_lock
	ldrb	w8, [x19, #128]
	add	w8, w8, #1
	strb	w8, [x19, #128]
	cbz	w22, .LBB0_35
// %bb.11:
	stur	w21, [x29, #-12]                // 4-byte Folded Spill
	mov	w24, wzr
	sub	w8, w20, #1
	mov	w21, w22
	stp	w26, w8, [sp, #12]              // 8-byte Folded Spill
	str	w25, [sp, #8]                   // 4-byte Folded Spill
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	cmp	w21, w25
	csel	w28, w21, w25, lo
	cmn	w28, #3
	b.hi	.LBB0_36
// %bb.13:                              //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [x19, #72]
	add	w25, w28, #2
	ldr	x27, [x19, #64]
	cmp	w8, w25
	b.lo	.LBB0_15
// %bb.14:                              //   in Loop: Header=BB0_12 Depth=1
	cbnz	x27, .LBB0_22
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=1
	cbz	x27, .LBB0_18
// %bb.16:                              //   in Loop: Header=BB0_12 Depth=1
	bl	syna_request_managed_device
	cbz	x0, .LBB0_19
// %bb.17:                              //   in Loop: Header=BB0_12 Depth=1
	mov	x1, x27
	bl	devm_kfree
	str	xzr, [x19, #64]
.LBB0_18:                               //   in Loop: Header=BB0_12 Depth=1
	bl	syna_request_managed_device
	cbnz	x0, .LBB0_20
	b	.LBB0_41
.LBB0_19:                               //   in Loop: Header=BB0_12 Depth=1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	printk
	bl	syna_request_managed_device
	cbz	x0, .LBB0_41
.LBB0_20:                               //   in Loop: Header=BB0_12 Depth=1
	mov	x1, x25
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	str	x0, [x19, #64]
	cbz	x0, .LBB0_40
// %bb.21:                              //   in Loop: Header=BB0_12 Depth=1
	mov	x27, x0
	mov	w8, w25
	str	w25, [x19, #72]
.LBB0_22:                               //   in Loop: Header=BB0_12 Depth=1
	cmp	w8, w25
	b.lo	.LBB0_36
// %bb.23:                              //   in Loop: Header=BB0_12 Depth=1
	mov	w2, w8
	mov	x0, x27
	mov	w1, wzr
	bl	memset
	ldur	w8, [x29, #-12]                 // 4-byte Folded Reload
	str	wzr, [x19, #76]
	add	w8, w24, w8
	udiv	w8, w8, w20
	lsr	w9, w8, #8
	strb	w8, [x27]
	strb	w9, [x27, #1]
	ldur	x9, [x29, #-8]                  // 8-byte Folded Reload
	cbz	x9, .LBB0_37
// %bb.24:                              //   in Loop: Header=BB0_12 Depth=1
	sub	w8, w22, w24
	cmp	w8, w28
	b.lo	.LBB0_37
// %bb.25:                              //   in Loop: Header=BB0_12 Depth=1
	add	x1, x9, w24, uxtw
	add	x0, x27, #2
	mov	x2, x28
	bl	memcpy
	ldrb	w8, [x23, #9]
	cmp	w8, #11
	b.eq	.LBB0_27
// %bb.26:                              //   in Loop: Header=BB0_12 Depth=1
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	printk
.LBB0_27:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	add	w8, w8, w28
	udiv	w8, w8, w20
	mul	w8, w8, w26
	cmp	w8, #999
	b.hi	.LBB0_31
// %bb.28:                              //   in Loop: Header=BB0_12 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	cbz	x8, .LBB0_30
// %bb.29:                              //   in Loop: Header=BB0_12 Depth=1
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_32
.LBB0_30:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	w26, [x23, #524]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	printk
	ldr	x8, [x23, #920]
	cbnz	x8, .LBB0_33
	b	.LBB0_38
.LBB0_31:                               //   in Loop: Header=BB0_12 Depth=1
	mov	w9, #19923                      // =0x4dd3
	movk	w9, #4194, lsl #16
	umull	x8, w8, w9
	lsr	x26, x8, #38
	ldr	x8, [x23, #920]
	cbnz	x8, .LBB0_33
	b	.LBB0_38
.LBB0_32:                               //   in Loop: Header=BB0_12 Depth=1
	mov	w26, wzr
	ldr	x8, [x23, #920]
	cbz	x8, .LBB0_38
.LBB0_33:                               //   in Loop: Header=BB0_12 Depth=1
	mov	x0, x23
	mov	w1, #18                         // =0x12
	mov	x2, x27
	mov	w3, w25
	mov	x4, xzr
	mov	w5, w26
	blr	x8
	tbnz	w0, #31, .LBB0_39
// %bb.34:                              //   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [x19, #144]
	subs	w21, w21, w28
	add	w24, w28, w24
	ldp	w25, w26, [sp, #8]              // 8-byte Folded Reload
	add	w8, w8, w28
	str	w8, [x19, #144]
	b.ne	.LBB0_12
	b	.LBB0_43
.LBB0_35:
	mov	w0, wzr
	b	.LBB0_44
.LBB0_36:
	mov	w20, #-22                       // =0xffffffea
	b	.LBB0_42
.LBB0_37:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	mov	w20, #-22                       // =0xffffffea
	b	.LBB0_42
.LBB0_38:
	mov	w20, #-241                      // =0xffffff0f
	b	.LBB0_42
.LBB0_39:
	mov	w20, w0
	b	.LBB0_42
.LBB0_40:
	str	wzr, [x19, #72]
.LBB0_41:
	mov	w20, #-243                      // =0xffffff0d
.LBB0_42:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	printk
	mov	w0, w20
.LBB0_43:
	ldrb	w8, [x19, #128]
.LBB0_44:
	and	w8, w8, #0xff
	mov	w20, w0
	cmp	w8, #1
	b.ne	.LBB0_46
// %bb.45:
	mov	w8, wzr
	b	.LBB0_47
.LBB0_46:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	printk
	ldrb	w8, [x19, #128]
	sub	w8, w8, #1
.LBB0_47:
	add	x0, x19, #80
	strb	w8, [x19, #128]
	bl	mutex_unlock
	mov	w0, w20
.LBB0_48:
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	syna_tcm_write_flash, .Lfunc_end0-syna_tcm_write_flash
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Temporary buffer already locked\\n"
	.size	.L.str, 51

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_buf_lock"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Managed free unavailable\\n"
	.size	.L.str.2, 44

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"syna_pal_mem_free"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\0013[error] %s: Copy bounds invalid\\n"
	.size	.L.str.4, 39

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"syna_tcm_write_flash"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\\0013[error] %s: Firmware mode is not bootloader\\n"
	.size	.L.str.6, 51

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"syna_tcm_reflash_send_command"
	.size	.L.str.7, 30

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\\0016[info] %s: Using command delay\\n"
	.size	.L.str.8, 38

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\\0013[error] %s: Flash write failed\\n"
	.size	.L.str.9, 38

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"\\0013[error] %s: Temporary buffer unlock\\n"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"syna_tcm_buf_unlock"
	.size	.L.str.11, 20

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
