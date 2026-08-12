	.text
	.file	"syna_tcm_update_mtp_data_aarch64_assembly_input.c"
	.globl	syna_tcm_update_mtp_data        // -- Begin function syna_tcm_update_mtp_data
	.p2align	2
	.type	syna_tcm_update_mtp_data,@function
syna_tcm_update_mtp_data:               // @syna_tcm_update_mtp_data
// %bb.0:
	sub	sp, sp, #224
	movi	v0.2d, #0000000000000000
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stp	x26, x25, [sp, #160]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            // 16-byte Folded Spill
	stp	q0, q0, [sp, #16]
	stp	q0, q0, [sp, #48]
	stp	q0, q0, [sp, #80]
	stp	q0, q0, [sp, #112]
	str	q0, [sp]
	cbz	x0, .LBB0_5
// %bb.1:
	cbz	x1, .LBB0_5
// %bb.2:
	mov	w21, w2
	cbz	w2, .LBB0_5
// %bb.3:
	mov	w24, w3
	mov	x19, x0
	mov	x23, x1
	mov	w22, w4
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
	b	.LBB0_33
.LBB0_6:
	mov	w25, wzr
	mov	w20, wzr
.LBB0_7:
	mov	x8, sp
	add	x0, x8, #80
	bl	mutex_init
	mov	w8, #1                          // =0x1
	mov	x1, sp
	mov	x0, x19
	mov	w2, w25
	mov	w3, w20
	str	w8, [x19, #904]
	bl	syna_tcm_set_up_flash_access
	tbnz	w0, #31, .LBB0_23
// %bb.8:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_23
// %bb.9:
	ldrb	w8, [x8]
	cmp	w8, #3
	b.lo	.LBB0_23
// %bb.10:
	ldr	w8, [sp, #44]
	cbz	w8, .LBB0_23
// %bb.11:
	neg	w9, w8
	sub	w10, w24, #1
	mov	w26, wzr
	cmp	w10, w9
	b.hs	.LBB0_13
// %bb.12:
	add	w10, w10, w8
	udiv	w10, w10, w8
	mul	w26, w10, w8
.LBB0_13:
	cmp	w9, w21
	b.hs	.LBB0_15
// %bb.14:
	mov	w25, wzr
	b	.LBB0_16
.LBB0_15:
	add	w9, w21, w8
	sub	w9, w9, #1
	udiv	w9, w9, w8
	mul	w25, w9, w8
.LBB0_16:
	cmp	w26, #0
	mov	w0, #-22                        // =0xffffffea
	ccmp	w24, #0, #4, eq
	b.ne	.LBB0_23
// %bb.17:
	cmp	w25, w21
	b.lo	.LBB0_23
// %bb.18:
	ldr	w24, [sp, #60]
	eor	w8, w26, #0x7fffffff
	cmp	w24, w8
	b.hi	.LBB0_23
// %bb.19:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_22
// %bb.20:
	mov	w1, w25
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB0_22
// %bb.21:
	mov	w2, w21
	mov	x1, x23
	mov	x21, x0
	bl	memcpy
	mov	x1, sp
	add	w2, w24, w26
	mov	x0, x19
	mov	x3, x21
	mov	w4, w25
	mov	w5, w22
	bl	syna_tcm_write_flash
	cmp	w0, #0
	csel	w0, w0, w25, lt
	b	.LBB0_23
.LBB0_22:
	mov	w0, #-243                       // =0xffffff0d
.LBB0_23:
	ldrb	w8, [x19, #9]
	mov	w21, w0
	cmp	w8, #11
	b.ne	.LBB0_25
// %bb.24:
	mov	x0, x19
	mov	w1, #1                          // =0x1
	mov	w2, w20
	bl	syna_tcm_switch_fw_mode
.LBB0_25:
	ldrb	w8, [sp, #128]
	str	wzr, [x19, #904]
	cbz	w8, .LBB0_27
// %bb.26:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_27:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_30
// %bb.28:
	ldr	x1, [sp, #64]
	cbz	x1, .LBB0_30
// %bb.29:
	bl	devm_kfree
	b	.LBB0_32
.LBB0_30:
	cbnz	x0, .LBB0_32
// %bb.31:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_32:
	mov	w0, w21
.LBB0_33:
	ldp	x20, x19, [sp, #208]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	syna_tcm_update_mtp_data, .Lfunc_end0-syna_tcm_update_mtp_data
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_update_mtp_data"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Temporary buffer release required\\n"
	.size	.L.str.2, 53

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0013[error] %s: Managed free unavailable\\n"
	.size	.L.str.3, 44

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
