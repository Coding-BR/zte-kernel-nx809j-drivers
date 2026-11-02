
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ca24 <syna_dev_disconnect>:
   1ca24: d503233f     	paciasp
   1ca28: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1ca2c: a90157f6     	stp	x22, x21, [sp, #0x10]
   1ca30: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1ca34: 910003fd     	mov	x29, sp
   1ca38: 39560808     	ldrb	w8, [x0, #0x582]
   1ca3c: 35000088     	cbnz	w8, 0x1ca4c <syna_dev_disconnect+0x28>
   1ca40: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ca40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3320
   1ca44: 91000000     	add	x0, x0, #0x0
		000000000001ca44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3320
   1ca48: 1400004e     	b	0x1cb80 <syna_dev_disconnect+0x15c>
   1ca4c: b9457c08     	ldr	w8, [x0, #0x57c]
   1ca50: f9413814     	ldr	x20, [x0, #0x270]
   1ca54: aa0003f3     	mov	x19, x0
   1ca58: 71000d1f     	cmp	w8, #0x3
   1ca5c: 54000121     	b.ne	0x1ca80 <syna_dev_disconnect+0x5c>
   1ca60: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ca60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888a
   1ca64: 91000000     	add	x0, x0, #0x0
		000000000001ca64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888a
   1ca68: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ca68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1ca6c: 91000021     	add	x1, x1, #0x0
		000000000001ca6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1ca70: 94000000     	bl	0x1ca70 <syna_dev_disconnect+0x4c>
		000000000001ca70:  R_AARCH64_CALL26	_printk
   1ca74: f940c288     	ldr	x8, [x20, #0x180]
   1ca78: b50006a8     	cbnz	x8, 0x1cb4c <syna_dev_disconnect+0x128>
   1ca7c: 1400003d     	b	0x1cb70 <syna_dev_disconnect+0x14c>
   1ca80: f9421a68     	ldr	x8, [x19, #0x430]
   1ca84: b4000108     	cbz	x8, 0x1caa4 <syna_dev_disconnect+0x80>
   1ca88: 910f2260     	add	x0, x19, #0x3c8
   1ca8c: 94000000     	bl	0x1ca8c <syna_dev_disconnect+0x68>
		000000000001ca8c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1ca90: f9421a60     	ldr	x0, [x19, #0x430]
   1ca94: 94000000     	bl	0x1ca94 <syna_dev_disconnect+0x70>
		000000000001ca94:  R_AARCH64_CALL26	__flush_workqueue
   1ca98: f9421a60     	ldr	x0, [x19, #0x430]
   1ca9c: 94000000     	bl	0x1ca9c <syna_dev_disconnect+0x78>
		000000000001ca9c:  R_AARCH64_CALL26	destroy_workqueue
   1caa0: f9021a7f     	str	xzr, [x19, #0x430]
   1caa4: b940ba88     	ldr	w8, [x20, #0xb8]
   1caa8: 34000428     	cbz	w8, 0x1cb2c <syna_dev_disconnect+0x108>
   1caac: f9413a75     	ldr	x21, [x19, #0x270]
   1cab0: 94000000     	bl	0x1cab0 <syna_dev_disconnect+0x8c>
		000000000001cab0:  R_AARCH64_CALL26	syna_request_managed_device
   1cab4: b5000080     	cbnz	x0, 0x1cac4 <syna_dev_disconnect+0xa0>
   1cab8: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1cabc: 91000000     	add	x0, x0, #0x0
		000000000001cabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1cac0: 14000018     	b	0x1cb20 <syna_dev_disconnect+0xfc>
   1cac4: b940baa1     	ldr	w1, [x21, #0xb8]
   1cac8: 7100043f     	cmp	w1, #0x1
   1cacc: 5400030b     	b.lt	0x1cb2c <syna_dev_disconnect+0x108>
   1cad0: f94022a8     	ldr	x8, [x21, #0x40]
   1cad4: b40001a8     	cbz	x8, 0x1cb08 <syna_dev_disconnect+0xe4>
   1cad8: aa0003f6     	mov	x22, x0
   1cadc: 910022a0     	add	x0, x21, #0x8
   1cae0: 2a1f03e1     	mov	w1, wzr
   1cae4: b85fc110     	ldur	w16, [x8, #-0x4]
   1cae8: 728c3631     	movk	w17, #0x61b1
   1caec: 72a685d1     	movk	w17, #0x342e, lsl #16
   1caf0: 6b11021f     	cmp	w16, w17
   1caf4: 54000040     	b.eq	0x1cafc <syna_dev_disconnect+0xd8>
   1caf8: d4304500     	brk	#0x8228
   1cafc: d63f0100     	blr	x8
   1cb00: b940baa1     	ldr	w1, [x21, #0xb8]
   1cb04: aa1603e0     	mov	x0, x22
   1cb08: aa1303e2     	mov	x2, x19
   1cb0c: 94000000     	bl	0x1cb0c <syna_dev_disconnect+0xe8>
		000000000001cb0c:  R_AARCH64_CALL26	devm_free_irq
   1cb10: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cf0
   1cb14: 91000000     	add	x0, x0, #0x0
		000000000001cb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cf0
   1cb18: b900babf     	str	wzr, [x21, #0xb8]
   1cb1c: 3902f2bf     	strb	wzr, [x21, #0xbc]
   1cb20: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cb20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   1cb24: 91000021     	add	x1, x1, #0x0
		000000000001cb24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   1cb28: 94000000     	bl	0x1cb28 <syna_dev_disconnect+0x104>
		000000000001cb28:  R_AARCH64_CALL26	_printk
   1cb2c: f941da60     	ldr	x0, [x19, #0x3b0]
   1cb30: b4000060     	cbz	x0, 0x1cb3c <syna_dev_disconnect+0x118>
   1cb34: 94000000     	bl	0x1cb34 <syna_dev_disconnect+0x110>
		000000000001cb34:  R_AARCH64_CALL26	input_unregister_device
   1cb38: f901da7f     	str	xzr, [x19, #0x3b0]
   1cb3c: f901de7f     	str	xzr, [x19, #0x3b8]
   1cb40: b903c27f     	str	wzr, [x19, #0x3c0]
   1cb44: f940c288     	ldr	x8, [x20, #0x180]
   1cb48: b4000148     	cbz	x8, 0x1cb70 <syna_dev_disconnect+0x14c>
   1cb4c: aa1403e0     	mov	x0, x20
   1cb50: 2a1f03e1     	mov	w1, wzr
   1cb54: b85fc110     	ldur	w16, [x8, #-0x4]
   1cb58: 72850571     	movk	w17, #0x282b
   1cb5c: 72abe611     	movk	w17, #0x5f30, lsl #16
   1cb60: 6b11021f     	cmp	w16, w17
   1cb64: 54000040     	b.eq	0x1cb6c <syna_dev_disconnect+0x148>
   1cb68: d4304500     	brk	#0x8228
   1cb6c: d63f0100     	blr	x8
   1cb70: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cb70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cca
   1cb74: 91000000     	add	x0, x0, #0x0
		000000000001cb74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cca
   1cb78: b9057e7f     	str	wzr, [x19, #0x57c]
   1cb7c: 39160a7f     	strb	wzr, [x19, #0x582]
   1cb80: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cb80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1cb84: 91000021     	add	x1, x1, #0x0
		000000000001cb84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1cb88: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cb88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1cb8c: 91000042     	add	x2, x2, #0x0
		000000000001cb8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1cb90: 94000000     	bl	0x1cb90 <syna_dev_disconnect+0x16c>
		000000000001cb90:  R_AARCH64_CALL26	_printk
   1cb94: 2a1f03e0     	mov	w0, wzr
   1cb98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1cb9c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1cba0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1cba4: d50323bf     	autiasp
   1cba8: d65f03c0     	ret
