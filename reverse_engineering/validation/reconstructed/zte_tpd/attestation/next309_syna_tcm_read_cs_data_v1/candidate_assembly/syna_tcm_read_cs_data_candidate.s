	.text
	.file	"syna_tcm_read_cs_data_aarch64_assembly_input.c"
	.globl	syna_tcm_read_cs_data           // -- Begin function syna_tcm_read_cs_data
	.p2align	2
	.type	syna_tcm_read_cs_data,@function
syna_tcm_read_cs_data:                  // @syna_tcm_read_cs_data
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
	mov	w21, w2
	cbz	w2, .LBB0_5
// %bb.3:
	mov	x19, x0
	mov	w24, w3
	mov	w23, w4
	mov	x22, x1
	cbz	w4, .LBB0_6
// %bb.4:
	ldr	w25, [x19, #524]
	ldr	w20, [x19, #488]
	b	.LBB0_7
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_34
.LBB0_6:
	mov	w25, wzr
	mov	w20, wzr
.LBB0_7:
	add	x8, sp, #80
	add	x0, x8, #80
	bl	mutex_init
	mov	x8, sp
	add	x0, x8, #16
	bl	mutex_init
	add	x1, sp, #80
	mov	x0, x19
	mov	w2, w25
	mov	w3, w20
	bl	syna_tcm_set_up_flash_access
	tbnz	w0, #31, .LBB0_17
// %bb.8:
	ldr	w8, [sp, #124]
	cbz	w8, .LBB0_12
// %bb.9:
	neg	w9, w8
	cmp	w9, w21
	b.lo	.LBB0_11
// %bb.10:
	add	w9, w21, w8
	sub	w9, w9, #1
	udiv	w9, w9, w8
	mul	w3, w9, w8
	cbnz	w3, .LBB0_13
.LBB0_11:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB0_17
.LBB0_12:
	mov	w3, wzr
.LBB0_13:
	add	x1, sp, #80
	mov	x2, sp
	mov	x0, x19
	mov	w4, w24
	mov	w5, w23
	bl	syna_tcm_read_flash_boot_cs_config
	tbnz	w0, #31, .LBB0_17
// %bb.14:
	ldr	x1, [sp]
	mov	w0, #-22                        // =0xffffffea
	cbz	x1, .LBB0_17
// %bb.15:
	ldr	w8, [sp, #12]
	cmp	w8, w21
	b.lo	.LBB0_17
// %bb.16:
	mov	w2, w21
	mov	x0, x22
	bl	memcpy
	mov	w0, wzr
.LBB0_17:
	ldrb	w8, [x19, #9]
	mov	w21, w0
	cmp	w8, #11
	b.ne	.LBB0_19
// %bb.18:
	mov	x0, x19
	mov	w1, #1                          // =0x1
	mov	w2, w20
	bl	syna_tcm_switch_fw_mode
.LBB0_19:
	ldrb	w8, [sp, #64]
	cbz	w8, .LBB0_21
// %bb.20:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_21:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_24
// %bb.22:
	ldr	x1, [sp]
	cbz	x1, .LBB0_24
// %bb.23:
	bl	devm_kfree
	b	.LBB0_26
.LBB0_24:
	cbnz	x0, .LBB0_26
// %bb.25:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_26:
	ldrb	w8, [sp, #208]
	str	xzr, [sp]
	strb	wzr, [sp, #64]
	cbz	w8, .LBB0_28
// %bb.27:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_28:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_31
// %bb.29:
	ldr	x1, [sp, #144]
	cbz	x1, .LBB0_31
// %bb.30:
	bl	devm_kfree
	b	.LBB0_33
.LBB0_31:
	cbnz	x0, .LBB0_33
// %bb.32:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_33:
	mov	w0, w21
.LBB0_34:
	ldp	x20, x19, [sp, #288]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #272]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #256]            // 16-byte Folded Reload
	ldp	x28, x25, [sp, #240]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	syna_tcm_read_cs_data, .Lfunc_end0-syna_tcm_read_cs_data
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_read_cs_data"
	.size	.L.str.1, 22

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
