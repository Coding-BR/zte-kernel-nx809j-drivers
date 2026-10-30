	.text
	.file	"syna_tcm_switch_fw_mode_aarch64_assembly_input.c"
	.globl	syna_tcm_switch_fw_mode         // -- Begin function syna_tcm_switch_fw_mode
	.p2align	2
	.type	syna_tcm_switch_fw_mode,@function
syna_tcm_switch_fw_mode:                // @syna_tcm_switch_fw_mode
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_3
// %bb.1:
	cbz	w2, .LBB0_4
// %bb.2:
	ldr	w8, [x0, #488]
	cmp	w8, w2
	csel	w19, w8, w2, hi
	b	.LBB0_7
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_18
.LBB0_4:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbnz	w8, #0, .LBB0_6
// %bb.5:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	adrp	x9, .L__func__.syna_tcm_switch_fw_mode
	add	x9, x9, :lo12:.L__func__.syna_tcm_switch_fw_mode
	ldr	w19, [x0, #488]
	mov	x20, x0
	mov	x0, x8
	mov	w21, w1
	mov	x1, x9
	bl	printk
	mov	w1, w21
	mov	x0, x20
	b	.LBB0_7
.LBB0_6:
	mov	w19, wzr
.LBB0_7:
	and	w8, w1, #0xff
	cmp	w8, #11
	b.eq	.LBB0_13
// %bb.8:
	cmp	w8, #1
	b.ne	.LBB0_17
// %bb.9:
	ldrb	w8, [x0, #9]
	cmp	w8, #1
	b.eq	.LBB0_31
// %bb.10:
	cbnz	w19, .LBB0_20
// %bb.11:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbz	w8, #0, .LBB0_19
// %bb.12:
	mov	w19, wzr
	b	.LBB0_20
.LBB0_13:
	ldrb	w8, [x0, #9]
	cmp	w8, #11
	b.eq	.LBB0_31
// %bb.14:
	cbnz	w19, .LBB0_27
// %bb.15:
	ldr	x8, [x0, #72]
	ldrb	w8, [x8, #20]
	tbz	w8, #0, .LBB0_26
// %bb.16:
	mov	w19, wzr
	b	.LBB0_27
.LBB0_17:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_18:
	adrp	x1, .L__func__.syna_tcm_switch_fw_mode
	add	x1, x1, :lo12:.L__func__.syna_tcm_switch_fw_mode
	bl	printk
	mov	w0, #-241                       // =0xffffff0f
	b	.LBB0_38
.LBB0_19:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	ldr	w19, [x0, #488]
	adrp	x1, .L__func__.syna_tcm_run_application_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_application_fw
	mov	x20, x0
	mov	x0, x8
	bl	printk
	mov	x0, x20
.LBB0_20:
	ldr	x8, [x0, #920]
	mov	w1, #20                         // =0x14
	mov	x2, xzr
	mov	w3, wzr
	mov	x4, xzr
	mov	w5, w19
	mov	x20, x0
	blr	x8
	tbnz	w0, #31, .LBB0_23
// %bb.21:
	ldrb	w2, [x20, #9]
	cmp	w2, #1
	b.ne	.LBB0_24
// %bb.22:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L__func__.syna_tcm_run_application_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_application_fw
	b	.LBB0_30
.LBB0_23:
	mov	w19, w0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L__func__.syna_tcm_run_application_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_application_fw
	mov	w2, #20                         // =0x14
	bl	printk
	b	.LBB0_25
.LBB0_24:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L__func__.syna_tcm_run_application_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_application_fw
	bl	printk
	mov	w19, #-242                      // =0xffffff0e
.LBB0_25:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	b	.LBB0_37
.LBB0_26:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	ldr	w19, [x0, #488]
	adrp	x1, .L__func__.syna_tcm_run_bootloader_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_bootloader_fw
	mov	x20, x0
	mov	x0, x8
	bl	printk
	mov	x0, x20
.LBB0_27:
	ldr	x8, [x0, #920]
	mov	w1, #31                         // =0x1f
	mov	x2, xzr
	mov	w3, wzr
	mov	x4, xzr
	mov	w5, w19
	mov	x20, x0
	blr	x8
	tbnz	w0, #31, .LBB0_34
// %bb.28:
	ldrb	w2, [x20, #9]
	cmp	w2, #11
	b.ne	.LBB0_35
// %bb.29:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	adrp	x1, .L__func__.syna_tcm_run_bootloader_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_bootloader_fw
.LBB0_30:
	bl	printk
	mov	x0, x20
.LBB0_31:
	ldr	x8, [x0, #944]
	cbz	x8, .LBB0_33
// %bb.32:
	blr	x8
.LBB0_33:
	mov	w0, wzr
	b	.LBB0_38
.LBB0_34:
	mov	w19, w0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L__func__.syna_tcm_run_bootloader_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_bootloader_fw
	mov	w2, #31                         // =0x1f
	bl	printk
	b	.LBB0_36
.LBB0_35:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	adrp	x1, .L__func__.syna_tcm_run_bootloader_fw
	add	x1, x1, :lo12:.L__func__.syna_tcm_run_bootloader_fw
	bl	printk
	mov	w19, #-242                      // =0xffffff0e
.LBB0_36:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
.LBB0_37:
	adrp	x1, .L__func__.syna_tcm_switch_fw_mode
	add	x1, x1, :lo12:.L__func__.syna_tcm_switch_fw_mode
	bl	printk
	mov	w0, w19
.LBB0_38:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	syna_tcm_switch_fw_mode, .Lfunc_end0-syna_tcm_switch_fw_mode
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\0013[error] %s: Invalid tcm device handle\n"
	.size	.L.str, 41

	.type	.L__func__.syna_tcm_switch_fw_mode,@object // @__func__.syna_tcm_switch_fw_mode
.L__func__.syna_tcm_switch_fw_mode:
	.asciz	"syna_tcm_switch_fw_mode"
	.size	.L__func__.syna_tcm_switch_fw_mode, 24

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\0015[info ] %s: No support of ATTN, use polling mode instead\n"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\0013[error] %s: Invalid firmware mode requested\n"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
	.size	.L.str.3, 67

	.type	.L__func__.syna_tcm_run_application_fw,@object // @__func__.syna_tcm_run_application_fw
.L__func__.syna_tcm_run_application_fw:
	.asciz	"syna_tcm_run_application_fw"
	.size	.L__func__.syna_tcm_run_application_fw, 28

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"\0013[error] %s: Fail to send command 0x%02x\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\0016[info ] %s: Application Firmware (mode 0x%x) activated\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\0014[warn ] %s: Fail to enter application fw, mode: %x\n"
	.size	.L.str.6, 54

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\0013[error] %s: Fail to switch to application mode\n"
	.size	.L.str.7, 50

	.type	.L__func__.syna_tcm_run_bootloader_fw,@object // @__func__.syna_tcm_run_bootloader_fw
.L__func__.syna_tcm_run_bootloader_fw:
	.asciz	"syna_tcm_run_bootloader_fw"
	.size	.L__func__.syna_tcm_run_bootloader_fw, 27

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\0016[info ] %s: Bootloader Firmware (mode 0x%x) activated\n"
	.size	.L.str.8, 57

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\0013[error] %s: Fail to enter bootloader, mode: %x\n"
	.size	.L.str.9, 50

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"\0013[error] %s: Fail to switch to bootloader mode\n"
	.size	.L.str.10, 49

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
