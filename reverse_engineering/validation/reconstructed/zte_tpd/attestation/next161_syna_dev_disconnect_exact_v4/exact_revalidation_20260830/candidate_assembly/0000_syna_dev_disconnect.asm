
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c9c8 <syna_dev_disconnect>:
   1c9c8: d503233f     	paciasp
   1c9cc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c9d0: a90157f6     	stp	x22, x21, [sp, #0x10]
   1c9d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c9d8: 910003fd     	mov	x29, sp
   1c9dc: 39560808     	ldrb	w8, [x0, #0x582]
   1c9e0: 35000088     	cbnz	w8, 0x1c9f0 <syna_dev_disconnect+0x28>
   1c9e4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c9e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3320
   1c9e8: 91000000     	add	x0, x0, #0x0
		000000000001c9e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3320
   1c9ec: 1400004e     	b	0x1cb24 <syna_dev_disconnect+0x15c>
   1c9f0: b9457c08     	ldr	w8, [x0, #0x57c]
   1c9f4: f9413814     	ldr	x20, [x0, #0x270]
   1c9f8: aa0003f3     	mov	x19, x0
   1c9fc: 71000d1f     	cmp	w8, #0x3
   1ca00: 54000121     	b.ne	0x1ca24 <syna_dev_disconnect+0x5c>
   1ca04: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ca04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888a
   1ca08: 91000000     	add	x0, x0, #0x0
		000000000001ca08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888a
   1ca0c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ca0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1ca10: 91000021     	add	x1, x1, #0x0
		000000000001ca10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1ca14: 94000000     	bl	0x1ca14 <syna_dev_disconnect+0x4c>
		000000000001ca14:  R_AARCH64_CALL26	_printk
   1ca18: f940c288     	ldr	x8, [x20, #0x180]
   1ca1c: b50006a8     	cbnz	x8, 0x1caf0 <syna_dev_disconnect+0x128>
   1ca20: 1400003d     	b	0x1cb14 <syna_dev_disconnect+0x14c>
   1ca24: f9421a68     	ldr	x8, [x19, #0x430]
   1ca28: b4000108     	cbz	x8, 0x1ca48 <syna_dev_disconnect+0x80>
   1ca2c: 910f2260     	add	x0, x19, #0x3c8
   1ca30: 94000000     	bl	0x1ca30 <syna_dev_disconnect+0x68>
		000000000001ca30:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1ca34: f9421a60     	ldr	x0, [x19, #0x430]
   1ca38: 94000000     	bl	0x1ca38 <syna_dev_disconnect+0x70>
		000000000001ca38:  R_AARCH64_CALL26	__flush_workqueue
   1ca3c: f9421a60     	ldr	x0, [x19, #0x430]
   1ca40: 94000000     	bl	0x1ca40 <syna_dev_disconnect+0x78>
		000000000001ca40:  R_AARCH64_CALL26	destroy_workqueue
   1ca44: f9021a7f     	str	xzr, [x19, #0x430]
   1ca48: b940ba88     	ldr	w8, [x20, #0xb8]
   1ca4c: 34000428     	cbz	w8, 0x1cad0 <syna_dev_disconnect+0x108>
   1ca50: f9413a75     	ldr	x21, [x19, #0x270]
   1ca54: 94000000     	bl	0x1ca54 <syna_dev_disconnect+0x8c>
		000000000001ca54:  R_AARCH64_CALL26	syna_request_managed_device
   1ca58: b5000080     	cbnz	x0, 0x1ca68 <syna_dev_disconnect+0xa0>
   1ca5c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001ca5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1ca60: 91000000     	add	x0, x0, #0x0
		000000000001ca60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1ca64: 14000018     	b	0x1cac4 <syna_dev_disconnect+0xfc>
   1ca68: b940baa1     	ldr	w1, [x21, #0xb8]
   1ca6c: 7100043f     	cmp	w1, #0x1
   1ca70: 5400030b     	b.lt	0x1cad0 <syna_dev_disconnect+0x108>
   1ca74: f94022a8     	ldr	x8, [x21, #0x40]
   1ca78: b40001a8     	cbz	x8, 0x1caac <syna_dev_disconnect+0xe4>
   1ca7c: aa0003f6     	mov	x22, x0
   1ca80: 910022a0     	add	x0, x21, #0x8
   1ca84: 2a1f03e1     	mov	w1, wzr
   1ca88: b85fc110     	ldur	w16, [x8, #-0x4]
   1ca8c: 728c3631     	movk	w17, #0x61b1
   1ca90: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ca94: 6b11021f     	cmp	w16, w17
   1ca98: 54000040     	b.eq	0x1caa0 <syna_dev_disconnect+0xd8>
   1ca9c: d4304500     	brk	#0x8228
   1caa0: d63f0100     	blr	x8
   1caa4: b940baa1     	ldr	w1, [x21, #0xb8]
   1caa8: aa1603e0     	mov	x0, x22
   1caac: aa1303e2     	mov	x2, x19
   1cab0: 94000000     	bl	0x1cab0 <syna_dev_disconnect+0xe8>
		000000000001cab0:  R_AARCH64_CALL26	devm_free_irq
   1cab4: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cf0
   1cab8: 91000000     	add	x0, x0, #0x0
		000000000001cab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cf0
   1cabc: b900babf     	str	wzr, [x21, #0xb8]
   1cac0: 3902f2bf     	strb	wzr, [x21, #0xbc]
   1cac4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   1cac8: 91000021     	add	x1, x1, #0x0
		000000000001cac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   1cacc: 94000000     	bl	0x1cacc <syna_dev_disconnect+0x104>
		000000000001cacc:  R_AARCH64_CALL26	_printk
   1cad0: f941da60     	ldr	x0, [x19, #0x3b0]
   1cad4: b4000060     	cbz	x0, 0x1cae0 <syna_dev_disconnect+0x118>
   1cad8: 94000000     	bl	0x1cad8 <syna_dev_disconnect+0x110>
		000000000001cad8:  R_AARCH64_CALL26	input_unregister_device
   1cadc: f901da7f     	str	xzr, [x19, #0x3b0]
   1cae0: f901de7f     	str	xzr, [x19, #0x3b8]
   1cae4: b903c27f     	str	wzr, [x19, #0x3c0]
   1cae8: f940c288     	ldr	x8, [x20, #0x180]
   1caec: b4000148     	cbz	x8, 0x1cb14 <syna_dev_disconnect+0x14c>
   1caf0: aa1403e0     	mov	x0, x20
   1caf4: 2a1f03e1     	mov	w1, wzr
   1caf8: b85fc110     	ldur	w16, [x8, #-0x4]
   1cafc: 72850571     	movk	w17, #0x282b
   1cb00: 72abe611     	movk	w17, #0x5f30, lsl #16
   1cb04: 6b11021f     	cmp	w16, w17
   1cb08: 54000040     	b.eq	0x1cb10 <syna_dev_disconnect+0x148>
   1cb0c: d4304500     	brk	#0x8228
   1cb10: d63f0100     	blr	x8
   1cb14: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cb14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cca
   1cb18: 91000000     	add	x0, x0, #0x0
		000000000001cb18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cca
   1cb1c: b9057e7f     	str	wzr, [x19, #0x57c]
   1cb20: 39160a7f     	strb	wzr, [x19, #0x582]
   1cb24: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cb24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1cb28: 91000021     	add	x1, x1, #0x0
		000000000001cb28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1cb2c: 90000002     	adrp	x2, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001cb2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1cb30: 91000042     	add	x2, x2, #0x0
		000000000001cb30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1cb34: 94000000     	bl	0x1cb34 <syna_dev_disconnect+0x16c>
		000000000001cb34:  R_AARCH64_CALL26	_printk
   1cb38: 2a1f03e0     	mov	w0, wzr
   1cb3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1cb40: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1cb44: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1cb48: d50323bf     	autiasp
   1cb4c: d65f03c0     	ret
