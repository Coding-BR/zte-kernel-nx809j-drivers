	.text
	.file	"syna_tcm_update_lockdown_config_aarch64_assembly_input.c"
	.globl	syna_tcm_update_lockdown_config // -- Begin function syna_tcm_update_lockdown_config
	.p2align	2
	.type	syna_tcm_update_lockdown_config,@function
syna_tcm_update_lockdown_config:        // @syna_tcm_update_lockdown_config
// %bb.0:
	sub	sp, sp, #320
	movi	v0.2d, #0000000000000000
	stp	x29, x30, [sp, #240]            // 16-byte Folded Spill
	add	x29, sp, #240
	stp	x28, x25, [sp, #256]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #288]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            // 16-byte Folded Spill
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [sp, #160]
	stp	q0, q0, [sp, #192]
	str	q0, [sp, #80]
	str	xzr, [sp, #64]
	stp	q0, q0, [sp]
	stp	q0, q0, [sp, #32]
	cbz	x0, .LBB0_7
// %bb.1:
	cbz	x1, .LBB0_7
// %bb.2:
	ldr	w8, [x1]
	cbz	w8, .LBB0_7
// %bb.3:
	ldrb	w8, [x1, #624]
	cmp	w8, #1
	b.ne	.LBB0_8
// %bb.4:
	mov	x19, x0
	sub	x0, x29, #8
	mov	x23, x1
	add	x1, x1, #632
	mov	w21, w2
	mov	w2, #8                          // =0x8
	bl	memcpy
	ldur	x8, [x29, #-8]
	mov	x1, x23
	cbz	x8, .LBB0_8
// %bb.5:
	ldr	w24, [x1, #640]
	cmp	w24, #7
	b.hi	.LBB0_11
// %bb.6:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	b	.LBB0_9
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_9
.LBB0_8:
	ldrb	w0, [x1, #648]
	bl	syna_tcm_get_partition_id_string
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_9:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
.LBB0_10:
	ldp	x20, x19, [sp, #304]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #288]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            // 16-byte Folded Reload
	ldp	x28, x25, [sp, #256]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #240]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.LBB0_11:
	sub	x0, x29, #8
	add	x1, x1, #632
	mov	w2, #8                          // =0x8
	bl	memcpy
	cbz	w21, .LBB0_13
// %bb.12:
	ldr	w22, [x19, #524]
	ldr	w20, [x19, #488]
	b	.LBB0_14
.LBB0_13:
	mov	w22, wzr
	mov	w20, wzr
.LBB0_14:
	add	x8, sp, #80
	ldur	x25, [x29, #-8]
	add	x0, x8, #80
	bl	mutex_init
	mov	x8, sp
	add	x0, x8, #16
	bl	mutex_init
	mov	w8, #1                          // =0x1
	mov	x0, x19
	add	x1, sp, #80
	mov	w2, w22
	mov	w3, w20
	str	w8, [x19, #904]
	bl	syna_tcm_set_up_flash_access
	tbnz	w0, #31, .LBB0_23
// %bb.15:
	add	x1, sp, #80
	mov	x2, sp
	mov	x0, x19
	mov	w3, w22
	bl	syna_tcm_read_flash_boot_config
	tbnz	w0, #31, .LBB0_23
// %bb.16:
	ldr	x8, [sp]
	mov	w0, #-22                        // =0xffffffea
	cbz	x8, .LBB0_23
// %bb.17:
	ldr	w9, [sp, #12]
	mov	x22, x19
	subs	w9, w9, #7
	b.lo	.LBB0_24
// %bb.18:
	ldrsb	w8, [x8, w9, uxtw]
	tbnz	w8, #31, .LBB0_21
// %bb.19:
	add	x1, sp, #80
	add	x2, x23, #624
	mov	x0, x22
	bl	syna_tcm_check_flash_block
	cmp	w0, #0
	b.le	.LBB0_22
// %bb.20:
	ldr	w8, [sp, #136]
	add	x9, x25, x24
	add	x1, sp, #80
	sub	x3, x9, #8
	mov	x0, x19
	mov	w4, #8                          // =0x8
	add	w8, w24, w8
	mov	w5, w21
	mov	x22, x19
	sub	w2, w8, #8
	mov	w21, #8                         // =0x8
	bl	syna_tcm_write_flash
	cmp	w0, #0
	csel	w0, w0, w21, lt
	b	.LBB0_24
.LBB0_21:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	x22, x19
	mov	w0, wzr
	b	.LBB0_24
.LBB0_22:
	ldrb	w8, [x23, #648]
	mov	w21, w0
	mov	w0, w8
	bl	syna_tcm_get_partition_id_string
	mov	w0, w21
.LBB0_23:
	mov	x22, x19
.LBB0_24:
	ldrb	w8, [x22, #9]
	mov	w21, w0
	cmp	w8, #11
	b.ne	.LBB0_26
// %bb.25:
	mov	x0, x19
	mov	w1, #1                          // =0x1
	mov	w2, w20
	bl	syna_tcm_switch_fw_mode
	mov	w0, w21
	mov	x22, x19
.LBB0_26:
	ldrb	w8, [sp, #208]
	str	wzr, [x22, #904]
	cbz	w8, .LBB0_28
// %bb.27:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w0, w21
.LBB0_28:
	ldr	x8, [sp]
	cbz	x8, .LBB0_33
// %bb.29:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_31
// %bb.30:
	ldr	x1, [sp]
	bl	devm_kfree
	b	.LBB0_32
.LBB0_31:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_32:
	mov	w0, w21
.LBB0_33:
	ldr	x8, [sp, #144]
	cbz	x8, .LBB0_10
// %bb.34:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_36
// %bb.35:
	ldr	x1, [sp, #144]
	bl	devm_kfree
	b	.LBB0_37
.LBB0_36:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_37:
	mov	w0, w21
	b	.LBB0_10
.Lfunc_end0:
	.size	syna_tcm_update_lockdown_config, .Lfunc_end0-syna_tcm_update_lockdown_config
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\0013[error] %s: Invalid parameter\\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_update_lockdown_config"
	.size	.L.str.1, 32

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\\0013[error] %s: Lockdown partition unavailable\\n"
	.size	.L.str.2, 50

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\\0013[error] %s: Lockdown partition is too short\\n"
	.size	.L.str.3, 51

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\\0016[info] %s: Lockdown is already unavailable\\n"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\\0013[error] %s: Temporary buffer release required\\n"
	.size	.L.str.5, 53

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\\0013[error] %s: Managed free unavailable\\n"
	.size	.L.str.6, 44

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
