
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000259a0 <tp_single_tap_read>:
   259a0: d503233f     	paciasp
   259a4: d10143ff     	sub	sp, sp, #0x50
   259a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   259ac: a90357f6     	stp	x22, x21, [sp, #0x30]
   259b0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   259b4: 910083fd     	add	x29, sp, #0x20
   259b8: d5384108     	mrs	x8, SP_EL0
   259bc: aa1f03e0     	mov	x0, xzr
   259c0: f9438908     	ldr	x8, [x8, #0x710]
   259c4: f81f83a8     	stur	x8, [x29, #-0x8]
   259c8: f9400068     	ldr	x8, [x3]
   259cc: 790023ff     	strh	wzr, [sp, #0x10]
   259d0: f90007ff     	str	xzr, [sp, #0x8]
   259d4: b4000188     	cbz	x8, 0x25a04 <tp_single_tap_read+0x64>
   259d8: d5384108     	mrs	x8, SP_EL0
   259dc: f9438908     	ldr	x8, [x8, #0x710]
   259e0: f85f83a9     	ldur	x9, [x29, #-0x8]
   259e4: eb09011f     	cmp	x8, x9
   259e8: 54000521     	b.ne	0x25a8c <tp_single_tap_read+0xec>
   259ec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   259f0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   259f4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   259f8: 910143ff     	add	sp, sp, #0x50
   259fc: d50323bf     	autiasp
   25a00: d65f03c0     	ret
   25a04: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025a04:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25a08: aa0103f5     	mov	x21, x1
   25a0c: aa0203f4     	mov	x20, x2
   25a10: f9400116     	ldr	x22, [x8]
		0000000000025a10:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25a14: aa0303f3     	mov	x19, x3
   25a18: f9475ec8     	ldr	x8, [x22, #0xeb8]
   25a1c: b4000128     	cbz	x8, 0x25a40 <tp_single_tap_read+0xa0>
   25a20: aa1603e0     	mov	x0, x22
   25a24: b85fc110     	ldur	w16, [x8, #-0x4]
   25a28: 7281af31     	movk	w17, #0xd79
   25a2c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25a30: 6b11021f     	cmp	w16, w17
   25a34: 54000040     	b.eq	0x25a3c <tp_single_tap_read+0x9c>
   25a38: d4304500     	brk	#0x8228
   25a3c: d63f0100     	blr	x8
   25a40: b9444ec2     	ldr	w2, [x22, #0x44c]
   25a44: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   25a48: 91000000     	add	x0, x0, #0x0
		0000000000025a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   25a4c: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9158
   25a50: 91000021     	add	x1, x1, #0x0
		0000000000025a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9158
   25a54: 94000000     	bl	0x25a54 <tp_single_tap_read+0xb4>
		0000000000025a54:  R_AARCH64_CALL26	_printk
   25a58: b9444ec3     	ldr	w3, [x22, #0x44c]
   25a5c: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		0000000000025a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25a60: 91000042     	add	x2, x2, #0x0
		0000000000025a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25a64: 910023e0     	add	x0, sp, #0x8
   25a68: 52800141     	mov	w1, #0xa                // =10
   25a6c: 94000000     	bl	0x25a6c <tp_single_tap_read+0xcc>
		0000000000025a6c:  R_AARCH64_CALL26	snprintf
   25a70: 93407c04     	sxtw	x4, w0
   25a74: 910023e3     	add	x3, sp, #0x8
   25a78: aa1403e1     	mov	x1, x20
   25a7c: aa1503e0     	mov	x0, x21
   25a80: aa1303e2     	mov	x2, x19
   25a84: 94000000     	bl	0x25a84 <tp_single_tap_read+0xe4>
		0000000000025a84:  R_AARCH64_CALL26	simple_read_from_buffer
   25a88: 17ffffd4     	b	0x259d8 <tp_single_tap_read+0x38>
   25a8c: 94000000     	bl	0x25a8c <tp_single_tap_read+0xec>
		0000000000025a8c:  R_AARCH64_CALL26	__stack_chk_fail
