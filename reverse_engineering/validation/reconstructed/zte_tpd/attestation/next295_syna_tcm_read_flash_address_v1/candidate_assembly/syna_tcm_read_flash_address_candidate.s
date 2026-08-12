	.text
	.file	"syna_tcm_read_flash_address_aarch64_assembly_input.c"
	.globl	syna_tcm_read_flash_address     // -- Begin function syna_tcm_read_flash_address
	.p2align	2
	.type	syna_tcm_read_flash_address,@function
syna_tcm_read_flash_address:            // @syna_tcm_read_flash_address
// %bb.0:
	sub	sp, sp, #240
	movi	v0.2d, #0000000000000000
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	str	x25, [sp, #176]                 // 8-byte Folded Spill
	stp	x24, x23, [sp, #192]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	stp	q0, q0, [sp]
	stp	q0, q0, [sp, #32]
	stp	q0, q0, [sp, #64]
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #128]
	cbz	x0, .LBB0_4
// %bb.1:
	mov	x21, x3
	cbz	x3, .LBB0_4
// %bb.2:
	ldrb	w25, [x0, #9]
	mov	w19, w4
	mov	x22, x2
	mov	x20, x0
	cbz	w4, .LBB0_5
// %bb.3:
	ldr	w3, [x20, #488]
	b	.LBB0_6
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	x0, #-241                       // =0xffffffffffffff0f
	b	.LBB0_34
.LBB0_5:
	mov	w3, wzr
.LBB0_6:
	mov	w23, w1
	cmp	w25, #11
	b.ne	.LBB0_8
// %bb.7:
	mov	w24, wzr
	b	.LBB0_9
.LBB0_8:
	mov	w2, w19
	mov	x1, sp
	mov	x0, x20
	bl	syna_tcm_set_up_flash_access
	mov	w24, w0
	tbnz	w0, #31, .LBB0_15
.LBB0_9:
	cbz	w22, .LBB0_25
// %bb.10:
	ldr	w8, [x21, #8]
	ldr	x0, [x21]
	cmp	w8, w22
	b.hs	.LBB0_14
// %bb.11:
	cbz	x0, .LBB0_17
// %bb.12:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_16
// %bb.13:
	ldr	x1, [x21]
	bl	devm_kfree
	b	.LBB0_17
.LBB0_14:
	and	x2, x22, #0xffffffff
	b	.LBB0_22
.LBB0_15:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
                                        // kill: def $w24 killed $w24 killed $x24 def $x24
	b	.LBB0_33
.LBB0_16:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	bl	syna_request_managed_device
	cbz	x0, .LBB0_36
.LBB0_17:
	bl	syna_request_managed_device
	cbz	x0, .LBB0_36
// %bb.18:
	ldr	x8, [x21]
	cbz	x8, .LBB0_20
// %bb.19:
	str	xzr, [x21]
.LBB0_20:
	and	x1, x22, #0xffffffff
	mov	w2, #3520                       // =0xdc0
	mov	x24, x1
	bl	devm_kmalloc
	str	x0, [x21]
	cbz	x0, .LBB0_35
// %bb.21:
	mov	x2, x24
	str	w22, [x21, #8]
.LBB0_22:
	mov	w1, wzr
	bl	memset
	ldr	x2, [x21]
	mov	x0, x20
	mov	w1, w23
	mov	w3, w22
	mov	w4, w19
	str	wzr, [x21, #12]
	bl	syna_tcm_read_flash
	mov	w24, w0
	tbnz	w0, #31, .LBB0_24
// %bb.23:
	str	w22, [x21, #12]
	cmp	w25, #1
	b.eq	.LBB0_26
	b	.LBB0_27
.LBB0_24:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_25:
	cmp	w25, #1
	b.ne	.LBB0_27
.LBB0_26:
	mov	x0, x20
	mov	w1, #1                          // =0x1
	mov	w2, w19
	bl	syna_tcm_switch_fw_mode
.LBB0_27:
	bl	syna_request_managed_device
	ldr	x1, [sp, #136]
	cbz	x0, .LBB0_30
// %bb.28:
	cbz	x1, .LBB0_30
// %bb.29:
	bl	devm_kfree
	b	.LBB0_33
.LBB0_30:
	cbnz	x0, .LBB0_33
// %bb.31:
	cbz	x1, .LBB0_33
// %bb.32:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
.LBB0_33:
	sxtw	x0, w24
.LBB0_34:
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldr	x25, [sp, #176]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #240
	ret
.LBB0_35:
	str	wzr, [x21, #8]
.LBB0_36:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	printk
	mov	w24, #-243                      // =0xffffff0d
	cmp	w25, #1
	b.eq	.LBB0_26
	b	.LBB0_27
.Lfunc_end0:
	.size	syna_tcm_read_flash_address, .Lfunc_end0-syna_tcm_read_flash_address
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid parameter\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_read_flash_address"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Failed to set up flash access\n"
	.size	.L.str.2, 45

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Failed to release flash buffer\n"
	.size	.L.str.3, 46

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0013[error] %s: Failed to allocate flash buffer\n"
	.size	.L.str.4, 47

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0013[error] %s: Failed to read flash address\n"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\0013[error] %s: Failed to release flash context\n"
	.size	.L.str.6, 47

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
