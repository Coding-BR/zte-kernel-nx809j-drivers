
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eac4 <syna_dev_disconnect_stock_exact>:
   1eac4: d503233f     	paciasp
   1eac8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1eacc: a90157f6     	stp	x22, x21, [sp, #0x10]
   1ead0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1ead4: 910003fd     	mov	x29, sp
   1ead8: 39560808     	ldrb	w8, [x0, #0x582]
   1eadc: 35000088     	cbnz	w8, 0x1eaec <syna_dev_disconnect_stock_exact+0x28>
   1eae0: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x40>
		000000000001eae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3320
   1eae4: 91000000     	add	x0, x0, #0x0
		000000000001eae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3320
   1eae8: 1400004e     	b	0x1ec20 <syna_dev_disconnect_stock_exact+0x15c>
   1eaec: b9457c08     	ldr	w8, [x0, #0x57c]
   1eaf0: f9413814     	ldr	x20, [x0, #0x270]
   1eaf4: aa0003f3     	mov	x19, x0
   1eaf8: 71000d1f     	cmp	w8, #0x3
   1eafc: 54000121     	b.ne	0x1eb20 <syna_dev_disconnect_stock_exact+0x5c>
   1eb00: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x40>
		000000000001eb00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888a
   1eb04: 91000000     	add	x0, x0, #0x0
		000000000001eb04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888a
   1eb08: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x40>
		000000000001eb08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1eb0c: 91000021     	add	x1, x1, #0x0
		000000000001eb0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1eb10: 94000000     	bl	0x1eb10 <syna_dev_disconnect_stock_exact+0x4c>
		000000000001eb10:  R_AARCH64_CALL26	_printk
   1eb14: f940c288     	ldr	x8, [x20, #0x180]
   1eb18: b50006a8     	cbnz	x8, 0x1ebec <syna_dev_disconnect_stock_exact+0x128>
   1eb1c: 1400003d     	b	0x1ec10 <syna_dev_disconnect_stock_exact+0x14c>
   1eb20: f9421a68     	ldr	x8, [x19, #0x430]
   1eb24: b4000108     	cbz	x8, 0x1eb44 <syna_dev_disconnect_stock_exact+0x80>
   1eb28: 910f2260     	add	x0, x19, #0x3c8
   1eb2c: 94000000     	bl	0x1eb2c <syna_dev_disconnect_stock_exact+0x68>
		000000000001eb2c:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1eb30: f9421a60     	ldr	x0, [x19, #0x430]
   1eb34: 94000000     	bl	0x1eb34 <syna_dev_disconnect_stock_exact+0x70>
		000000000001eb34:  R_AARCH64_CALL26	__flush_workqueue
   1eb38: f9421a60     	ldr	x0, [x19, #0x430]
   1eb3c: 94000000     	bl	0x1eb3c <syna_dev_disconnect_stock_exact+0x78>
		000000000001eb3c:  R_AARCH64_CALL26	destroy_workqueue
   1eb40: f9021a7f     	str	xzr, [x19, #0x430]
   1eb44: b940ba88     	ldr	w8, [x20, #0xb8]
   1eb48: 34000428     	cbz	w8, 0x1ebcc <syna_dev_disconnect_stock_exact+0x108>
   1eb4c: f9413a75     	ldr	x21, [x19, #0x270]
   1eb50: 94000000     	bl	0x1eb50 <syna_dev_disconnect_stock_exact+0x8c>
		000000000001eb50:  R_AARCH64_CALL26	syna_request_managed_device
   1eb54: b5000080     	cbnz	x0, 0x1eb64 <syna_dev_disconnect_stock_exact+0xa0>
   1eb58: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x40>
		000000000001eb58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1eb5c: 91000000     	add	x0, x0, #0x0
		000000000001eb5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1eb60: 14000018     	b	0x1ebc0 <syna_dev_disconnect_stock_exact+0xfc>
   1eb64: b940baa1     	ldr	w1, [x21, #0xb8]
   1eb68: 7100043f     	cmp	w1, #0x1
   1eb6c: 5400030b     	b.lt	0x1ebcc <syna_dev_disconnect_stock_exact+0x108>
   1eb70: f94022a8     	ldr	x8, [x21, #0x40]
   1eb74: b40001a8     	cbz	x8, 0x1eba8 <syna_dev_disconnect_stock_exact+0xe4>
   1eb78: aa0003f6     	mov	x22, x0
   1eb7c: 910022a0     	add	x0, x21, #0x8
   1eb80: 2a1f03e1     	mov	w1, wzr
   1eb84: b85fc110     	ldur	w16, [x8, #-0x4]
   1eb88: 728c3631     	movk	w17, #0x61b1
   1eb8c: 72a685d1     	movk	w17, #0x342e, lsl #16
   1eb90: 6b11021f     	cmp	w16, w17
   1eb94: 54000040     	b.eq	0x1eb9c <syna_dev_disconnect_stock_exact+0xd8>
   1eb98: d4304500     	brk	#0x8228
   1eb9c: d63f0100     	blr	x8
   1eba0: b940baa1     	ldr	w1, [x21, #0xb8]
   1eba4: aa1603e0     	mov	x0, x22
   1eba8: aa1303e2     	mov	x2, x19
   1ebac: 94000000     	bl	0x1ebac <syna_dev_disconnect_stock_exact+0xe8>
		000000000001ebac:  R_AARCH64_CALL26	devm_free_irq
   1ebb0: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x40>
		000000000001ebb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cf0
   1ebb4: 91000000     	add	x0, x0, #0x0
		000000000001ebb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cf0
   1ebb8: b900babf     	str	wzr, [x21, #0xb8]
   1ebbc: 3902f2bf     	strb	wzr, [x21, #0xbc]
   1ebc0: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x40>
		000000000001ebc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   1ebc4: 91000021     	add	x1, x1, #0x0
		000000000001ebc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   1ebc8: 94000000     	bl	0x1ebc8 <syna_dev_disconnect_stock_exact+0x104>
		000000000001ebc8:  R_AARCH64_CALL26	_printk
   1ebcc: f941da60     	ldr	x0, [x19, #0x3b0]
   1ebd0: b4000060     	cbz	x0, 0x1ebdc <syna_dev_disconnect_stock_exact+0x118>
   1ebd4: 94000000     	bl	0x1ebd4 <syna_dev_disconnect_stock_exact+0x110>
		000000000001ebd4:  R_AARCH64_CALL26	input_unregister_device
   1ebd8: f901da7f     	str	xzr, [x19, #0x3b0]
   1ebdc: f901de7f     	str	xzr, [x19, #0x3b8]
   1ebe0: b903c27f     	str	wzr, [x19, #0x3c0]
   1ebe4: f940c288     	ldr	x8, [x20, #0x180]
   1ebe8: b4000148     	cbz	x8, 0x1ec10 <syna_dev_disconnect_stock_exact+0x14c>
   1ebec: aa1403e0     	mov	x0, x20
   1ebf0: 2a1f03e1     	mov	w1, wzr
   1ebf4: b85fc110     	ldur	w16, [x8, #-0x4]
   1ebf8: 72850571     	movk	w17, #0x282b
   1ebfc: 72abe611     	movk	w17, #0x5f30, lsl #16
   1ec00: 6b11021f     	cmp	w16, w17
   1ec04: 54000040     	b.eq	0x1ec0c <syna_dev_disconnect_stock_exact+0x148>
   1ec08: d4304500     	brk	#0x8228
   1ec0c: d63f0100     	blr	x8
   1ec10: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x40>
		000000000001ec10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cca
   1ec14: 91000000     	add	x0, x0, #0x0
		000000000001ec14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cca
   1ec18: b9057e7f     	str	wzr, [x19, #0x57c]
   1ec1c: 39160a7f     	strb	wzr, [x19, #0x582]
   1ec20: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x40>
		000000000001ec20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1ec24: 91000021     	add	x1, x1, #0x0
		000000000001ec24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1ec28: 90000002     	adrp	x2, 0x1e000 <report_ufp_uevent+0x40>
		000000000001ec28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1ec2c: 91000042     	add	x2, x2, #0x0
		000000000001ec2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1ec30: 94000000     	bl	0x1ec30 <syna_dev_disconnect_stock_exact+0x16c>
		000000000001ec30:  R_AARCH64_CALL26	_printk
   1ec34: 2a1f03e0     	mov	w0, wzr
   1ec38: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1ec3c: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1ec40: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1ec44: d50323bf     	autiasp
   1ec48: d65f03c0     	ret
