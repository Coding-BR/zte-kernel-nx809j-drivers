
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e968 <syna_dev_disconnect_stock_exact>:
   1e968: d503233f     	paciasp
   1e96c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1e970: a90157f6     	stp	x22, x21, [sp, #0x10]
   1e974: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1e978: 910003fd     	mov	x29, sp
   1e97c: 39560808     	ldrb	w8, [x0, #0x582]
   1e980: 35000088     	cbnz	w8, 0x1e990 <syna_dev_disconnect_stock_exact+0x28>
   1e984: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001e984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3320
   1e988: 91000000     	add	x0, x0, #0x0
		000000000001e988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3320
   1e98c: 1400004e     	b	0x1eac4 <syna_dev_disconnect_stock_exact+0x15c>
   1e990: b9457c08     	ldr	w8, [x0, #0x57c]
   1e994: f9413814     	ldr	x20, [x0, #0x270]
   1e998: aa0003f3     	mov	x19, x0
   1e99c: 71000d1f     	cmp	w8, #0x3
   1e9a0: 54000121     	b.ne	0x1e9c4 <syna_dev_disconnect_stock_exact+0x5c>
   1e9a4: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001e9a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x888a
   1e9a8: 91000000     	add	x0, x0, #0x0
		000000000001e9a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x888a
   1e9ac: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001e9ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1e9b0: 91000021     	add	x1, x1, #0x0
		000000000001e9b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1e9b4: 94000000     	bl	0x1e9b4 <syna_dev_disconnect_stock_exact+0x4c>
		000000000001e9b4:  R_AARCH64_CALL26	_printk
   1e9b8: f940c288     	ldr	x8, [x20, #0x180]
   1e9bc: b50006a8     	cbnz	x8, 0x1ea90 <syna_dev_disconnect_stock_exact+0x128>
   1e9c0: 1400003d     	b	0x1eab4 <syna_dev_disconnect_stock_exact+0x14c>
   1e9c4: f9421a68     	ldr	x8, [x19, #0x430]
   1e9c8: b4000108     	cbz	x8, 0x1e9e8 <syna_dev_disconnect_stock_exact+0x80>
   1e9cc: 910f2260     	add	x0, x19, #0x3c8
   1e9d0: 94000000     	bl	0x1e9d0 <syna_dev_disconnect_stock_exact+0x68>
		000000000001e9d0:  R_AARCH64_CALL26	cancel_delayed_work_sync
   1e9d4: f9421a60     	ldr	x0, [x19, #0x430]
   1e9d8: 94000000     	bl	0x1e9d8 <syna_dev_disconnect_stock_exact+0x70>
		000000000001e9d8:  R_AARCH64_CALL26	__flush_workqueue
   1e9dc: f9421a60     	ldr	x0, [x19, #0x430]
   1e9e0: 94000000     	bl	0x1e9e0 <syna_dev_disconnect_stock_exact+0x78>
		000000000001e9e0:  R_AARCH64_CALL26	destroy_workqueue
   1e9e4: f9021a7f     	str	xzr, [x19, #0x430]
   1e9e8: b940ba88     	ldr	w8, [x20, #0xb8]
   1e9ec: 34000428     	cbz	w8, 0x1ea70 <syna_dev_disconnect_stock_exact+0x108>
   1e9f0: f9413a75     	ldr	x21, [x19, #0x270]
   1e9f4: 94000000     	bl	0x1e9f4 <syna_dev_disconnect_stock_exact+0x8c>
		000000000001e9f4:  R_AARCH64_CALL26	syna_request_managed_device
   1e9f8: b5000080     	cbnz	x0, 0x1ea08 <syna_dev_disconnect_stock_exact+0xa0>
   1e9fc: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001e9fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   1ea00: 91000000     	add	x0, x0, #0x0
		000000000001ea00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   1ea04: 14000018     	b	0x1ea64 <syna_dev_disconnect_stock_exact+0xfc>
   1ea08: b940baa1     	ldr	w1, [x21, #0xb8]
   1ea0c: 7100043f     	cmp	w1, #0x1
   1ea10: 5400030b     	b.lt	0x1ea70 <syna_dev_disconnect_stock_exact+0x108>
   1ea14: f94022a8     	ldr	x8, [x21, #0x40]
   1ea18: b40001a8     	cbz	x8, 0x1ea4c <syna_dev_disconnect_stock_exact+0xe4>
   1ea1c: aa0003f6     	mov	x22, x0
   1ea20: 910022a0     	add	x0, x21, #0x8
   1ea24: 2a1f03e1     	mov	w1, wzr
   1ea28: b85fc110     	ldur	w16, [x8, #-0x4]
   1ea2c: 728c3631     	movk	w17, #0x61b1
   1ea30: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ea34: 6b11021f     	cmp	w16, w17
   1ea38: 54000040     	b.eq	0x1ea40 <syna_dev_disconnect_stock_exact+0xd8>
   1ea3c: d4304500     	brk	#0x8228
   1ea40: d63f0100     	blr	x8
   1ea44: b940baa1     	ldr	w1, [x21, #0xb8]
   1ea48: aa1603e0     	mov	x0, x22
   1ea4c: aa1303e2     	mov	x2, x19
   1ea50: 94000000     	bl	0x1ea50 <syna_dev_disconnect_stock_exact+0xe8>
		000000000001ea50:  R_AARCH64_CALL26	devm_free_irq
   1ea54: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001ea54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cf0
   1ea58: 91000000     	add	x0, x0, #0x0
		000000000001ea58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cf0
   1ea5c: b900babf     	str	wzr, [x21, #0xb8]
   1ea60: 3902f2bf     	strb	wzr, [x21, #0xbc]
   1ea64: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001ea64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8318
   1ea68: 91000021     	add	x1, x1, #0x0
		000000000001ea68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8318
   1ea6c: 94000000     	bl	0x1ea6c <syna_dev_disconnect_stock_exact+0x104>
		000000000001ea6c:  R_AARCH64_CALL26	_printk
   1ea70: f941da60     	ldr	x0, [x19, #0x3b0]
   1ea74: b4000060     	cbz	x0, 0x1ea80 <syna_dev_disconnect_stock_exact+0x118>
   1ea78: 94000000     	bl	0x1ea78 <syna_dev_disconnect_stock_exact+0x110>
		000000000001ea78:  R_AARCH64_CALL26	input_unregister_device
   1ea7c: f901da7f     	str	xzr, [x19, #0x3b0]
   1ea80: f901de7f     	str	xzr, [x19, #0x3b8]
   1ea84: b903c27f     	str	wzr, [x19, #0x3c0]
   1ea88: f940c288     	ldr	x8, [x20, #0x180]
   1ea8c: b4000148     	cbz	x8, 0x1eab4 <syna_dev_disconnect_stock_exact+0x14c>
   1ea90: aa1403e0     	mov	x0, x20
   1ea94: 2a1f03e1     	mov	w1, wzr
   1ea98: b85fc110     	ldur	w16, [x8, #-0x4]
   1ea9c: 72850571     	movk	w17, #0x282b
   1eaa0: 72abe611     	movk	w17, #0x5f30, lsl #16
   1eaa4: 6b11021f     	cmp	w16, w17
   1eaa8: 54000040     	b.eq	0x1eab0 <syna_dev_disconnect_stock_exact+0x148>
   1eaac: d4304500     	brk	#0x8228
   1eab0: d63f0100     	blr	x8
   1eab4: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cca
   1eab8: 91000000     	add	x0, x0, #0x0
		000000000001eab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cca
   1eabc: b9057e7f     	str	wzr, [x19, #0x57c]
   1eac0: 39160a7f     	strb	wzr, [x19, #0x582]
   1eac4: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4
   1eac8: 91000021     	add	x1, x1, #0x0
		000000000001eac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4
   1eacc: 90000002     	adrp	x2, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eacc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38e4
   1ead0: 91000042     	add	x2, x2, #0x0
		000000000001ead0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38e4
   1ead4: 94000000     	bl	0x1ead4 <syna_dev_disconnect_stock_exact+0x16c>
		000000000001ead4:  R_AARCH64_CALL26	_printk
   1ead8: 2a1f03e0     	mov	w0, wzr
   1eadc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1eae0: a94157f6     	ldp	x22, x21, [sp, #0x10]
   1eae4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1eae8: d50323bf     	autiasp
   1eaec: d65f03c0     	ret
