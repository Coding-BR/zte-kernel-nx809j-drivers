	.text
	.file	"syna_tcm_update_cs_config_aarch64_assembly_input.c"
	.globl	syna_tcm_update_cs_config       // -- Begin function syna_tcm_update_cs_config
	.p2align	2
	.type	syna_tcm_update_cs_config,@function
syna_tcm_update_cs_config:              // @syna_tcm_update_cs_config
// %bb.0:
	sub	sp, sp, #304
	movi	v0.2d, #0000000000000000
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	stp	x28, x25, [sp, #240]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #256]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #272]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #288]            // 16-byte Folded Spill
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [sp, #160]
	stp	q0, q0, [sp, #192]
	str	q0, [sp, #80]
	str	xzr, [sp, #64]
	stp	q0, q0, [sp]
	stp	q0, q0, [sp, #32]
	cbz	x0, .LBB0_5
// %bb.1:
	cbz	x1, .LBB0_5
// %bb.2:
	cbz	w2, .LBB0_5
// %bb.3:
	mov	x19, x0
	mov	w23, w2
	mov	w24, w3
	mov	x25, x1
	mov	w21, w4
	cbz	w4, .LBB0_6
// %bb.4:
	ldr	w22, [x19, #524]
	ldr	w20, [x19, #488]
	b	.LBB0_7
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_43
.LBB0_6:
	mov	w22, wzr
	mov	w20, wzr
.LBB0_7:
	add	x8, sp, #80
	add	x0, x8, #80
	bl	mutex_init
	mov	x8, sp
	add	x0, x8, #16
	bl	mutex_init
	mov	w8, #1                          // =0x1
	add	x1, sp, #80
	mov	x0, x19
	mov	w2, w22
	mov	w3, w20
	str	w8, [x19, #904]
	bl	syna_tcm_set_up_flash_access
	tbnz	w0, #31, .LBB0_25
// %bb.8:
	add	x1, sp, #80
	mov	x2, sp
	mov	x0, x19
	mov	w3, w22
	bl	syna_tcm_read_flash_boot_config
	tbnz	w0, #31, .LBB0_25
// %bb.9:
	ldr	x8, [sp]
	mov	w22, #-22                       // =0xffffffea
	cbz	x8, .LBB0_26
// %bb.10:
	ldr	w9, [sp, #12]
	cmp	w9, #143
	b.lo	.LBB0_26
// %bb.11:
	add	w10, w9, #128
	mov	x12, #-128                      // =0xffffffffffffff80
	mov	x1, x25
	mov	w11, w23
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_13 Depth=1
	adds	x12, x12, #8
	sub	w10, w10, #8
	b.eq	.LBB0_16
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	subs	w13, w10, #143
	b.lo	.LBB0_12
// %bb.14:                              //   in Loop: Header=BB0_13 Depth=1
	sub	w14, w10, #135
	ldrsb	w14, [x8, w14, uxtw]
	tbz	w14, #31, .LBB0_12
// %bb.15:                              //   in Loop: Header=BB0_13 Depth=1
	ldrsb	w13, [x8, w13, uxtw]
	tbnz	w13, #31, .LBB0_12
	b	.LBB0_17
.LBB0_16:
	mov	w10, w9
.LBB0_17:
	sub	w10, w10, #136
	cmp	w10, w11
	b.lo	.LBB0_25
// %bb.18:
	ldr	w9, [sp, #124]
	cbz	w9, .LBB0_25
// %bb.19:
	neg	w11, w9
	cmp	w11, w24
	b.lo	.LBB0_58
// %bb.20:
	cbz	w24, .LBB0_23
// %bb.21:
	subs	w12, w24, #1
	add	w12, w12, w9
	udiv	w12, w12, w9
	mul	w24, w12, w9
	b.lo	.LBB0_23
// %bb.22:
	cbz	w24, .LBB0_58
.LBB0_23:
	cmp	w24, w10
	b.hs	.LBB0_54
// %bb.24:
	mvn	w12, w9
	mov	w24, w24
	b	.LBB0_46
.LBB0_25:
	mov	w22, w0
.LBB0_26:
	ldrb	w8, [x19, #9]
	cmp	w8, #11
	b.ne	.LBB0_28
// %bb.27:
	mov	x0, x19
	mov	w1, #1                          // =0x1
	mov	w2, w20
	bl	syna_tcm_switch_fw_mode
.LBB0_28:
	ldrb	w8, [sp, #64]
	str	wzr, [x19, #904]
	cbz	w8, .LBB0_30
// %bb.29:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_30:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_33
// %bb.31:
	ldr	x1, [sp]
	cbz	x1, .LBB0_33
// %bb.32:
	bl	devm_kfree
	b	.LBB0_35
.LBB0_33:
	cbnz	x0, .LBB0_35
// %bb.34:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_35:
	ldrb	w8, [sp, #208]
	str	xzr, [sp]
	strb	wzr, [sp, #64]
	cbz	w8, .LBB0_37
// %bb.36:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_37:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_40
// %bb.38:
	ldr	x1, [sp, #144]
	cbz	x1, .LBB0_40
// %bb.39:
	bl	devm_kfree
	b	.LBB0_42
.LBB0_40:
	cbnz	x0, .LBB0_42
// %bb.41:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_42:
	mov	w0, w22
.LBB0_43:
	ldp	x20, x19, [sp, #288]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #272]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #256]            // 16-byte Folded Reload
	ldp	x28, x25, [sp, #240]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.LBB0_44:                               //   in Loop: Header=BB0_46 Depth=1
	cmp	w24, w12
	b.hi	.LBB0_54
.LBB0_45:                               //   in Loop: Header=BB0_46 Depth=1
	add	x24, x24, x9
	cmp	w24, w10
	b.hs	.LBB0_54
.LBB0_46:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_48 Depth 2
	add	x14, x8, w24, uxtw
	ldrb	w13, [x14]
	cbnz	w13, .LBB0_44
// %bb.47:                              //   in Loop: Header=BB0_46 Depth=1
	mov	x13, xzr
.LBB0_48:                               //   Parent Loop BB0_46 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	w15, w24, w13
	cmp	w15, w10
	b.hs	.LBB0_52
// %bb.49:                              //   in Loop: Header=BB0_48 Depth=2
	ldrb	w15, [x14, x13]
	cbnz	w15, .LBB0_52
// %bb.50:                              //   in Loop: Header=BB0_48 Depth=2
	add	x13, x13, #1
	cmp	x9, x13
	b.ne	.LBB0_48
// %bb.51:                              //   in Loop: Header=BB0_46 Depth=1
	mov	w13, w9
.LBB0_52:                               //   in Loop: Header=BB0_46 Depth=1
	cmp	w24, w12
	b.hi	.LBB0_54
// %bb.53:                              //   in Loop: Header=BB0_46 Depth=1
	cmp	w13, w9
	b.ne	.LBB0_45
.LBB0_54:
	subs	w10, w10, w24
	mov	w22, w0
	b.lo	.LBB0_26
// %bb.55:
	cmp	w11, w23
	b.lo	.LBB0_58
// %bb.56:
	add	w11, w23, w9
	mov	w12, w23
	sub	w11, w11, #1
	udiv	w13, w11, w9
	mul	w22, w13, w9
	sub	w9, w11, w22
	cmp	w11, w9
	ccmp	w22, w10, #2, ne
	b.hi	.LBB0_58
// %bb.57:
	add	x23, x8, w24, uxtw
	mov	w2, w12
	mov	x0, x23
	bl	memcpy
	ldr	w8, [sp, #136]
	eor	w9, w24, #0x7fffffff
	cmp	w8, w9
	b.ls	.LBB0_59
.LBB0_58:
	mov	w22, #-22                       // =0xffffffea
	b	.LBB0_26
.LBB0_59:
	add	x1, sp, #80
	add	w2, w8, w24
	mov	x0, x19
	mov	x3, x23
	mov	w4, w22
	mov	w5, w21
	bl	syna_tcm_write_flash
	cmp	w0, #0
	csel	w22, w0, w22, lt
	b	.LBB0_26
.Lfunc_end0:
	.size	syna_tcm_update_cs_config, .Lfunc_end0-syna_tcm_update_cs_config
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_update_cs_config"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Temporary buffer release required\\n"
	.size	.L.str.2, 53

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0013[error] %s: Managed free unavailable\\n"
	.size	.L.str.3, 44

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\0013[error] %s: Temporary access release required\\n"
	.size	.L.str.4, 53

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
