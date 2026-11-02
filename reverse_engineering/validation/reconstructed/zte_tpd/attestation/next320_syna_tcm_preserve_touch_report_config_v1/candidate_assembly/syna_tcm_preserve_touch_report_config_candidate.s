	.text
	.file	"syna_tcm_preserve_touch_report_config_aarch64_assembly_input.c"
	.globl	syna_tcm_preserve_touch_report_config // -- Begin function syna_tcm_preserve_touch_report_config
	.p2align	2
	.type	syna_tcm_preserve_touch_report_config,@function
syna_tcm_preserve_touch_report_config:  // @syna_tcm_preserve_touch_report_config
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	cbz	x0, .LBB0_5
// %bb.1:
	ldrb	w8, [x0, #9]
	mov	x19, x0
	cmp	w8, #1
	b.ne	.LBB0_6
// %bb.2:
	mov	w20, w1
	cbnz	w1, .LBB0_10
// %bb.3:
	ldr	x8, [x19, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_9
// %bb.4:
	ldr	w20, [x19, #524]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	b	.LBB0_10
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_7
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_7:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
.LBB0_8:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.LBB0_9:
	mov	w20, wzr
.LBB0_10:
	ldr	x8, [x19, #920]
	mov	x0, x19
	mov	w1, #37                         // =0x25
	mov	x2, xzr
	mov	w3, wzr
	mov	x4, xzr
	mov	w5, w20
	blr	x8
	tbnz	w0, #31, .LBB0_21
// %bb.11:
	ldr	x8, [x19, #328]
	cbz	x8, .LBB0_23
// %bb.12:
	ldr	w8, [x19, #336]
	cbz	w8, .LBB0_24
// %bb.13:
	ldrb	w2, [x19, #392]
	cbz	w2, .LBB0_15
// %bb.14:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	printk
.LBB0_15:
	add	x0, x19, #344
	bl	mutex_lock
	ldrb	w8, [x19, #392]
	ldrb	w2, [x19, #464]
	add	w8, w8, #1
	strb	w8, [x19, #392]
	cbz	w2, .LBB0_17
// %bb.16:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	printk
.LBB0_17:
	add	x0, x19, #416
	bl	mutex_lock
	ldrb	w8, [x19, #464]
	ldr	w20, [x19, #340]
	mov	w9, #1                          // =0x1
	ldr	w2, [x19, #408]
	ldr	x0, [x19, #400]
	str	w9, [x19, #908]
	add	w8, w8, #1
	cmp	w20, w2
	strb	w8, [x19, #464]
	b.ls	.LBB0_32
// %bb.18:
	cbz	x0, .LBB0_26
// %bb.19:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_25
// %bb.20:
	ldr	x1, [x19, #400]
	bl	devm_kfree
	b	.LBB0_26
.LBB0_21:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w20, w0
	mov	x0, x8
	bl	printk
	mov	w0, w20
.LBB0_22:
	str	wzr, [x19, #908]
	b	.LBB0_8
.LBB0_23:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	b	.LBB0_7
.LBB0_24:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	b	.LBB0_7
.LBB0_25:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	printk
.LBB0_26:
	bl	syna_request_managed_device
	cbnz	x0, .LBB0_28
// %bb.27:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	printk
	str	xzr, [x19, #400]
	str	wzr, [x19, #408]
	bl	syna_request_managed_device
.LBB0_28:
	cmp	w20, #1
	b.lt	.LBB0_42
// %bb.29:
	cbz	x0, .LBB0_42
// %bb.30:
	mov	x1, x20
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	str	x0, [x19, #400]
	cbz	x0, .LBB0_44
// %bb.31:
	mov	x2, x20
	str	w20, [x19, #408]
.LBB0_32:
	mov	w1, wzr
	bl	memset
	ldr	x0, [x19, #400]
	str	wzr, [x19, #412]
	cbz	x0, .LBB0_35
// %bb.33:
	ldr	w8, [x19, #336]
	cmp	w20, w8
	b.hi	.LBB0_35
// %bb.34:
	ldr	w8, [x19, #408]
	cmp	w20, w8
	b.ls	.LBB0_43
.LBB0_35:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	ldrb	w2, [x19, #464]
	cmp	w2, #1
	b.ne	.LBB0_37
// %bb.36:
	mov	w8, wzr
	b	.LBB0_38
.LBB0_37:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	printk
	ldrb	w8, [x19, #464]
	sub	w8, w8, #1
.LBB0_38:
	add	x0, x19, #416
	strb	w8, [x19, #464]
	bl	mutex_unlock
	ldrb	w2, [x19, #392]
	cmp	w2, #1
	b.ne	.LBB0_40
// %bb.39:
	mov	w8, wzr
	b	.LBB0_41
.LBB0_40:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	printk
	ldrb	w8, [x19, #392]
	sub	w8, w8, #1
.LBB0_41:
	add	x0, x19, #344
	strb	w8, [x19, #392]
	bl	mutex_unlock
	str	wzr, [x19, #908]
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_8
.LBB0_42:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	w2, w20
	bl	printk
	str	xzr, [x19, #400]
	b	.LBB0_45
.LBB0_43:
	ldr	x1, [x19, #328]
	mov	x2, x20
	bl	memcpy
	add	x0, x19, #400
	str	w20, [x19, #412]
	bl	syna_tcm_preserve_buf_unlock
	add	x0, x19, #328
	bl	syna_tcm_preserve_buf_unlock
	ldr	x1, [x19, #400]
	mov	x0, x19
	mov	w2, w20
	bl	syna_tcm_preserve_decode_format
	mov	w0, wzr
	b	.LBB0_22
.LBB0_44:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	w2, w20
	bl	printk
.LBB0_45:
	add	x0, x19, #400
	str	wzr, [x19, #408]
	bl	syna_tcm_preserve_buf_unlock
	add	x0, x19, #328
	bl	syna_tcm_preserve_buf_unlock
	str	wzr, [x19, #908]
	mov	w0, #-243                       // =0xffffff0d
	b	.LBB0_8
.Lfunc_end0:
	.size	syna_tcm_preserve_touch_report_config, .Lfunc_end0-syna_tcm_preserve_touch_report_config
                                        // -- End function
	.p2align	2                               // -- Begin function syna_tcm_preserve_buf_unlock
	.type	syna_tcm_preserve_buf_unlock,@function
syna_tcm_preserve_buf_unlock:           // @syna_tcm_preserve_buf_unlock
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldrb	w2, [x0, #64]
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x19, x0
	mov	x29, sp
	cmp	w2, #1
	b.ne	.LBB1_2
// %bb.1:
	mov	w8, wzr
	b	.LBB1_3
.LBB1_2:
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	printk
	ldrb	w8, [x19, #64]
	sub	w8, w8, #1
.LBB1_3:
	add	x0, x19, #16
	strb	w8, [x19, #64]
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	b	mutex_unlock
.Lfunc_end1:
	.size	syna_tcm_preserve_buf_unlock, .Lfunc_end1-syna_tcm_preserve_buf_unlock
                                        // -- End function
	.p2align	2                               // -- Begin function syna_tcm_preserve_decode_format
	.type	syna_tcm_preserve_decode_format,@function
syna_tcm_preserve_decode_format:        // @syna_tcm_preserve_decode_format
// %bb.0:
	cbz	w2, .LBB2_16
// %bb.1:
	mov	w15, wzr
	mov	w13, wzr
	mov	w8, wzr
	mov	w12, wzr
	mov	w11, wzr
	mov	w10, wzr
	mov	w9, wzr
	b	.LBB2_4
.LBB2_2:                                //   in Loop: Header=BB2_4 Depth=1
	cmp	w16, #0
	cset	w11, ne
	and	w12, w11, w12
.LBB2_3:                                //   in Loop: Header=BB2_4 Depth=1
	cmp	w14, w2
	mov	w15, w14
	b.hs	.LBB2_17
.LBB2_4:                                // =>This Inner Loop Header: Depth=1
	mov	w14, w15
	ldrb	w16, [x1, x14]
	add	x14, x14, #1
	cmp	w16, #2
	b.ls	.LBB2_2
// %bb.5:                               //   in Loop: Header=BB2_4 Depth=1
	cmp	w16, #4
	b.eq	.LBB2_8
// %bb.6:                               //   in Loop: Header=BB2_4 Depth=1
	cmp	w16, #3
	b.ne	.LBB2_10
// %bb.7:                               //   in Loop: Header=BB2_4 Depth=1
	mov	w11, wzr
	str	w14, [x0, #472]
	mov	w12, #1                         // =0x1
	b	.LBB2_3
.LBB2_8:                                //   in Loop: Header=BB2_4 Depth=1
	add	w10, w10, #7
	tst	w11, #0x1
	csel	w10, w10, w13, ne
	tbz	w12, #0, .LBB2_12
// %bb.9:                               //   in Loop: Header=BB2_4 Depth=1
	add	w8, w8, #7
	mov	w12, #1                         // =0x1
	mov	w13, w10
	and	w8, w8, #0xfffffff8
	b	.LBB2_3
.LBB2_10:                               //   in Loop: Header=BB2_4 Depth=1
	ldrb	w16, [x1, x14]
	add	w14, w15, #2
	add	w15, w13, w16
	tbz	w12, #0, .LBB2_13
// %bb.11:                              //   in Loop: Header=BB2_4 Depth=1
	tst	w11, #0x1
	add	w8, w8, w16
	mov	w12, #1                         // =0x1
	csel	w13, w15, w13, ne
	b	.LBB2_3
.LBB2_12:                               //   in Loop: Header=BB2_4 Depth=1
	mov	w12, wzr
	mov	w13, w10
	b	.LBB2_3
.LBB2_13:                               //   in Loop: Header=BB2_4 Depth=1
	tbz	w11, #0, .LBB2_15
// %bb.14:                              //   in Loop: Header=BB2_4 Depth=1
	mov	w12, wzr
	mov	w11, #1                         // =0x1
	mov	w13, w15
	b	.LBB2_3
.LBB2_15:                               //   in Loop: Header=BB2_4 Depth=1
	mov	w11, wzr
	mov	w12, wzr
	add	w9, w9, w16
	b	.LBB2_3
.LBB2_16:
	mov	w9, wzr
	mov	w8, wzr
	mov	w13, wzr
.LBB2_17:
	str	w9, [x0, #480]
	str	w13, [x0, #476]
	str	w8, [x0, #484]
	ret
.Lfunc_end2:
	.size	syna_tcm_preserve_decode_format, .Lfunc_end2-syna_tcm_preserve_decode_format
                                        // -- End function
	.globl	syna_tcm_preserve_touch_report_config_aarch64_probe // -- Begin function syna_tcm_preserve_touch_report_config_aarch64_probe
	.p2align	2
	.type	syna_tcm_preserve_touch_report_config_aarch64_probe,@function
syna_tcm_preserve_touch_report_config_aarch64_probe: // @syna_tcm_preserve_touch_report_config_aarch64_probe
// %bb.0:
	mov	w1, wzr
	b	syna_tcm_preserve_touch_report_config
.Lfunc_end3:
	.size	syna_tcm_preserve_touch_report_config_aarch64_probe, .Lfunc_end3-syna_tcm_preserve_touch_report_config_aarch64_probe
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Invalid tcm device handle\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_preserve_touch_report_config"
	.size	.L.str.1, 38

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s: Device is not in application fw mode\n"
	.size	.L.str.2, 42

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%s: Failed to request touch report configuration\n"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%s: Response buffer is unavailable\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%s: Response buffer has no capacity\n"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"%s: Invalid managed device\n"
	.size	.L.str.7, 28

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"syna_pal_mem_free"
	.size	.L.str.8, 18

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"syna_pal_mem_alloc"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"%s: Failed to allocate %u bytes\n"
	.size	.L.str.10, 33

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"syna_tcm_buf_alloc"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"%s: Response copy bounds are invalid\n"
	.size	.L.str.12, 38

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"%s: Buffer access out-of balance, %d\n"
	.size	.L.str.13, 38

	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"syna_tcm_buf_lock"
	.size	.L.str.14, 18

	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"syna_tcm_buf_unlock"
	.size	.L.str.15, 20

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
