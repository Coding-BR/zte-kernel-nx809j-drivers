	.text
	.file	"syna_tcm_set_touch_report_config_aarch64_assembly_input.c"
	.globl	syna_tcm_set_touch_report_config // -- Begin function syna_tcm_set_touch_report_config
	.p2align	2
	.type	syna_tcm_set_touch_report_config,@function
syna_tcm_set_touch_report_config:       // @syna_tcm_set_touch_report_config
// %bb.0:
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	cbz	x0, .LBB0_8
// %bb.1:
	cbz	x1, .LBB0_9
// %bb.2:
	cbz	w2, .LBB0_9
// %bb.3:
	ldrb	w8, [x0, #9]
	cmp	w8, #1
	b.ne	.LBB0_13
// %bb.4:
	cbz	w3, .LBB0_14
// %bb.5:
	ldrh	w8, [x0, #176]
	cbz	w8, .LBB0_21
.LBB0_6:
	ldrh	w20, [x0, #188]
	cmp	w20, w2
	b.hs	.LBB0_16
// %bb.7:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	b	.LBB0_10
.LBB0_8:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_10
.LBB0_9:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_10:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_11:
	mov	w0, #-241                       // =0xffffff0f
.LBB0_12:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ret
.LBB0_13:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, w8
	bl	printk
	b	.LBB0_11
.LBB0_14:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_20
// %bb.15:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	ldr	w22, [x0, #524]
	mov	x19, x0
	mov	x0, x8
	mov	x20, x1
	mov	x1, x9
	mov	w21, w2
	bl	printk
	mov	x1, x20
	mov	w2, w21
	mov	w3, w22
	mov	x0, x19
	ldrh	w8, [x0, #176]
	cbnz	w8, .LBB0_6
	b	.LBB0_21
.LBB0_16:
	mov	x22, x1
	mov	w24, w2
	mov	w21, w3
	mov	x23, x0
	bl	syna_request_managed_device
	cbz	x0, .LBB0_22
// %bb.17:
	mov	x1, x20
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB0_23
// %bb.18:
	mov	w1, w20
	mov	x2, x22
	mov	w3, w24
	mov	w4, w24
	mov	x19, x0
	bl	syna_pal_mem_cpy_1
	adrp	x22, .L.str.9
	add	x22, x22, :lo12:.L.str.9
	tbnz	w0, #31, .LBB0_25
// %bb.19:
	ldr	x8, [x23, #920]
	mov	x0, x23
	mov	w1, #38                         // =0x26
	mov	x2, x19
	mov	w3, w20
	mov	x4, xzr
	mov	w5, w21
	blr	x8
	cmp	w0, #0
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	mov	w20, w0
	csel	x22, x22, x8, lt
	b	.LBB0_26
.LBB0_20:
	mov	w3, wzr
	ldrh	w8, [x0, #176]
	cbnz	w8, .LBB0_6
.LBB0_21:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	b	.LBB0_10
.LBB0_22:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	b	.LBB0_24
.LBB0_23:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
.LBB0_24:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-243                       // =0xffffff0d
	b	.LBB0_12
.LBB0_25:
	mov	w20, w0
.LBB0_26:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	x0, x22
	bl	printk
	mov	x0, x19
	bl	syna_pal_mem_free_0
	mov	w0, w20
	b	.LBB0_12
.Lfunc_end0:
	.size	syna_tcm_set_touch_report_config, .Lfunc_end0-syna_tcm_set_touch_report_config
                                        // -- End function
	.globl	syna_tcm_set_touch_report_config_aarch64_probe // -- Begin function syna_tcm_set_touch_report_config_aarch64_probe
	.p2align	2
	.type	syna_tcm_set_touch_report_config_aarch64_probe,@function
syna_tcm_set_touch_report_config_aarch64_probe: // @syna_tcm_set_touch_report_config_aarch64_probe
// %bb.0:
	mov	w2, #4                          // =0x4
	mov	w3, wzr
	b	syna_tcm_set_touch_report_config
.Lfunc_end1:
	.size	syna_tcm_set_touch_report_config_aarch64_probe, .Lfunc_end1-syna_tcm_set_touch_report_config_aarch64_probe
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Invalid tcm device handle\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_set_touch_report_config"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s: Invalid configuration buffer\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%s: Device is not in application fw mode, mode: %x\n"
	.size	.L.str.3, 52

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.4, 57

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%s: Touch report configuration is unavailable\n"
	.size	.L.str.5, 47

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%s: Configuration length exceeds device limit\n"
	.size	.L.str.6, 47

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"%s: Managed device is unavailable\n"
	.size	.L.str.7, 35

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%s: Failed to allocate configuration buffer\n"
	.size	.L.str.8, 45

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"%s: Failed to set touch report configuration\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"%s: Touch report configuration updated\n"
	.size	.L.str.10, 40

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
