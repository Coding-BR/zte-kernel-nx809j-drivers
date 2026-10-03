	.text
	.file	"syna_tcm_detect_device_aarch64_assembly_input.c"
	.globl	syna_tcm_detect_device          // -- Begin function syna_tcm_detect_device
	.p2align	2
	.type	syna_tcm_detect_device,@function
syna_tcm_detect_device:                 // @syna_tcm_detect_device
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	cbz	x0, .LBB0_10
// %bb.1:
	and	w8, w1, #0xf
	strh	wzr, [x0, #8]
	cmp	w8, #2
	b.eq	.LBB0_11
// %bb.2:
	cmp	w8, #1
	b.ne	.LBB0_12
// %bb.3:
	mov	w20, w1
	ubfx	w1, w1, #7, #1
	and	w2, w2, #0x1
	mov	x19, x0
	bl	syna_tcm_v1_detect
	tbnz	w0, #31, .LBB0_17
// %bb.4:
	ldr	x9, [x19, #920]
	cbz	x9, .LBB0_16
// %bb.5:
	ldr	x9, [x19, #912]
	mov	x8, x19
	cbz	x9, .LBB0_16
// %bb.6:
	tbnz	w20, #7, .LBB0_20
// %bb.7:
	ldrb	w2, [x8, #9]
	cmp	w2, #11
	b.eq	.LBB0_21
// %bb.8:
	cmp	w2, #1
	b.ne	.LBB0_22
// %bb.9:
	ldr	w2, [x8, #12]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	add	x3, x8, #130
	bl	printk
	b	.LBB0_23
.LBB0_10:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_13
.LBB0_11:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	mov	w2, #2                          // =0x2
	bl	printk
	b	.LBB0_14
.LBB0_12:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
.LBB0_13:
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	bl	printk
.LBB0_14:
	mov	w0, #-241                       // =0xffffff0f
.LBB0_15:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.LBB0_16:
	adrp	x19, .L__func__.syna_tcm_detect_device
	add	x19, x19, :lo12:.L__func__.syna_tcm_detect_device
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	mov	x1, x19
	bl	printk
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	mov	x1, x19
	bl	printk
	mov	w0, #-245                       // =0xffffff0b
	b	.LBB0_15
.LBB0_17:
	ldr	w8, [x19, #584]
	cbz	w8, .LBB0_19
// %bb.18:
	ldr	x8, [x19, #576]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	ldrb	w2, [x8]
	ldrb	w3, [x8, #1]
	ldrb	w4, [x8, #2]
	ldrb	w5, [x8, #3]
	bl	printk
.LBB0_19:
	mov	w0, #-245                       // =0xffffff0b
	b	.LBB0_15
.LBB0_20:
	mov	w0, #1                          // =0x1
	b	.LBB0_15
.LBB0_21:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	bl	printk
	b	.LBB0_23
.LBB0_22:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L__func__.syna_tcm_detect_device
	add	x1, x1, :lo12:.L__func__.syna_tcm_detect_device
	bl	printk
.LBB0_23:
	//APP
	//NO_APP
	ldrb	w0, [x19, #9]
	b	.LBB0_15
.Lfunc_end0:
	.size	syna_tcm_detect_device, .Lfunc_end0-syna_tcm_detect_device
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L__func__.syna_tcm_detect_device,@object // @__func__.syna_tcm_detect_device
.L__func__.syna_tcm_detect_device:
	.asciz	"syna_tcm_detect_device"
	.size	.L__func__.syna_tcm_detect_device, 23

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\0013[error] %s: Fail to detect TouchComm v1 device, %02x %02x %02x %02x ...\n"
	.size	.L.str.1, 75

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Invalid TouchCom R/W operations\n"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0013[error] %s: Fail to allocate the handler for TouchComm device\n"
	.size	.L.str.3, 65

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0016[info ] %s: Device in Application FW, build id: %d, %s\n"
	.size	.L.str.4, 58

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0016[info ] %s: Device in Bootloader\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\0014[warn ] %s: Found TouchCom device, but unknown mode:0x%02x detected\n"
	.size	.L.str.6, 71

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\0013[error] %s: Implementations of Touchcomm v%d is not built in\n"
	.size	.L.str.7, 64

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\0013[error] %s: Invalid version of TouchComm protocol\n"
	.size	.L.str.8, 53

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
