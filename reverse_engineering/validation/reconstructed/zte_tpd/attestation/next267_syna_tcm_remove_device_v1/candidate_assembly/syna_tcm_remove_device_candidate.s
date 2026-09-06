	.text
	.file	"syna_tcm_remove_device_aarch64_assembly_input.c"
	.globl	syna_tcm_remove_device          // -- Begin function syna_tcm_remove_device
	.p2align	2
	.type	syna_tcm_remove_device,@function
syna_tcm_remove_device:                 // @syna_tcm_remove_device
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	cbz	x0, .LBB0_6
// %bb.1:
	ldrb	w8, [x0, #784]
	mov	x19, x0
	adrp	x21, unk_34845
	cbz	w8, .LBB0_3
// %bb.2:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_3:
	ldr	x20, [x19, #720]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_7
// %bb.4:
	cbz	x20, .LBB0_8
// %bb.5:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_8
.LBB0_6:
	adrp	x8, unk_3365A
	add	x8, x8, :lo12:unk_3365A
	b	.LBB0_42
.LBB0_7:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_8:
	ldrb	w8, [x19, #712]
	str	xzr, [x19, #728]
	strb	wzr, [x19, #784]
	cbz	w8, .LBB0_10
// %bb.9:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_10:
	ldr	x20, [x19, #648]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_13
// %bb.11:
	cbz	x20, .LBB0_14
// %bb.12:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_14
.LBB0_13:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_14:
	ldrb	w8, [x19, #640]
	str	xzr, [x19, #656]
	strb	wzr, [x19, #712]
	cbz	w8, .LBB0_16
// %bb.15:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_16:
	ldr	x20, [x19, #576]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_19
// %bb.17:
	cbz	x20, .LBB0_20
// %bb.18:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_20
.LBB0_19:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_20:
	ldrb	w8, [x19, #464]
	str	xzr, [x19, #584]
	strb	wzr, [x19, #640]
	cbz	w8, .LBB0_22
// %bb.21:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_22:
	ldr	x20, [x19, #400]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_25
// %bb.23:
	cbz	x20, .LBB0_26
// %bb.24:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_26
.LBB0_25:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_26:
	ldrb	w8, [x19, #320]
	str	xzr, [x19, #408]
	strb	wzr, [x19, #464]
	cbz	w8, .LBB0_28
// %bb.27:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_28:
	ldr	x20, [x19, #256]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_31
// %bb.29:
	cbz	x20, .LBB0_32
// %bb.30:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_32
.LBB0_31:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_32:
	ldrb	w8, [x19, #392]
	str	xzr, [x19, #264]
	strb	wzr, [x19, #320]
	cbz	w8, .LBB0_34
// %bb.33:
	ldr	x0, [x21, :lo12:unk_34845]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	printk
.LBB0_34:
	ldr	x20, [x19, #328]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_37
// %bb.35:
	cbz	x20, .LBB0_38
// %bb.36:
	mov	x1, x20
	bl	devm_kfree
	b	.LBB0_38
.LBB0_37:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_38:
	str	xzr, [x19, #336]
	strb	wzr, [x19, #392]
	str	xzr, [x19]
	str	xzr, [x19, #72]
	bl	syna_request_managed_device
	cbz	x0, .LBB0_40
// %bb.39:
	mov	x1, x19
	bl	devm_kfree
	b	.LBB0_41
.LBB0_40:
	adrp	x8, unk_3BE43
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	ldr	x0, [x8, :lo12:unk_3BE43]
	bl	printk
.LBB0_41:
	adrp	x8, unk_3AC8E
	add	x8, x8, :lo12:unk_3AC8E
.LBB0_42:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	ldr	x0, [x8]
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	b	printk
.Lfunc_end0:
	.size	syna_tcm_remove_device, .Lfunc_end0-syna_tcm_remove_device
                                        // -- End function
	.type	unk_34845,@object               // @unk_34845
	.bss
	.globl	unk_34845
	.p2align	3, 0x0
unk_34845:
	.xword	0
	.size	unk_34845, 8

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syna_tcm_buf_release"
	.size	.L.str, 21

	.type	unk_3BE43,@object               // @unk_3BE43
	.bss
	.globl	unk_3BE43
	.p2align	3, 0x0
unk_3BE43:
	.xword	0
	.size	unk_3BE43, 8

	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"syna_pal_mem_free"
	.size	.L.str.1, 18

	.type	unk_3AC8E,@object               // @unk_3AC8E
	.bss
	.globl	unk_3AC8E
	.p2align	3, 0x0
unk_3AC8E:
	.xword	0
	.size	unk_3AC8E, 8

	.type	unk_3365A,@object               // @unk_3365A
	.globl	unk_3365A
	.p2align	3, 0x0
unk_3365A:
	.xword	0
	.size	unk_3365A, 8

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"syna_tcm_remove_device"
	.size	.L.str.2, 23

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
