
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002a020 <headset_state_show>:
   2a020: d503233f     	paciasp
   2a024: d10183ff     	sub	sp, sp, #0x60
   2a028: a9037bfd     	stp	x29, x30, [sp, #0x30]
   2a02c: a90457f6     	stp	x22, x21, [sp, #0x40]
   2a030: a9054ff4     	stp	x20, x19, [sp, #0x50]
   2a034: 9100c3fd     	add	x29, sp, #0x30
   2a038: d5384108     	mrs	x8, SP_EL0
   2a03c: aa1f03e0     	mov	x0, xzr
   2a040: f9438908     	ldr	x8, [x8, #0x710]
   2a044: f81f83a8     	stur	x8, [x29, #-0x8]
   2a048: f9400068     	ldr	x8, [x3]
   2a04c: f801e3ff     	stur	xzr, [sp, #0x1e]
   2a050: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   2a054: f90007ff     	str	xzr, [sp, #0x8]
   2a058: b4000188     	cbz	x8, 0x2a088 <headset_state_show+0x68>
   2a05c: d5384108     	mrs	x8, SP_EL0
   2a060: f9438908     	ldr	x8, [x8, #0x710]
   2a064: f85f83a9     	ldur	x9, [x29, #-0x8]
   2a068: eb09011f     	cmp	x8, x9
   2a06c: 54000521     	b.ne	0x2a110 <headset_state_show+0xf0>
   2a070: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   2a074: a94457f6     	ldp	x22, x21, [sp, #0x40]
   2a078: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   2a07c: 910183ff     	add	sp, sp, #0x60
   2a080: d50323bf     	autiasp
   2a084: d65f03c0     	ret
   2a088: 90000008     	adrp	x8, 0x2a000 <tpfwupgrade_store+0x214>
		000000000002a088:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2a08c: aa0103f5     	mov	x21, x1
   2a090: aa0203f4     	mov	x20, x2
   2a094: f9400116     	ldr	x22, [x8]
		000000000002a094:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2a098: aa0303f3     	mov	x19, x3
   2a09c: f9473ec8     	ldr	x8, [x22, #0xe78]
   2a0a0: b4000128     	cbz	x8, 0x2a0c4 <headset_state_show+0xa4>
   2a0a4: aa1603e0     	mov	x0, x22
   2a0a8: b85fc110     	ldur	w16, [x8, #-0x4]
   2a0ac: 7281af31     	movk	w17, #0xd79
   2a0b0: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   2a0b4: 6b11021f     	cmp	w16, w17
   2a0b8: 54000040     	b.eq	0x2a0c0 <headset_state_show+0xa0>
   2a0bc: d4304500     	brk	#0x8228
   2a0c0: d63f0100     	blr	x8
   2a0c4: 39405ec2     	ldrb	w2, [x22, #0x17]
   2a0c8: 90000000     	adrp	x0, 0x2a000 <tpfwupgrade_store+0x214>
		000000000002a0c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   2a0cc: 91000000     	add	x0, x0, #0x0
		000000000002a0cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   2a0d0: 90000001     	adrp	x1, 0x2a000 <tpfwupgrade_store+0x214>
		000000000002a0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc18e
   2a0d4: 91000021     	add	x1, x1, #0x0
		000000000002a0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc18e
   2a0d8: 94000000     	bl	0x2a0d8 <headset_state_show+0xb8>
		000000000002a0d8:  R_AARCH64_CALL26	_printk
   2a0dc: 39405ec3     	ldrb	w3, [x22, #0x17]
   2a0e0: 90000002     	adrp	x2, 0x2a000 <tpfwupgrade_store+0x214>
		000000000002a0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae4a
   2a0e4: 91000042     	add	x2, x2, #0x0
		000000000002a0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae4a
   2a0e8: 910023e0     	add	x0, sp, #0x8
   2a0ec: 528003c1     	mov	w1, #0x1e               // =30
   2a0f0: 94000000     	bl	0x2a0f0 <headset_state_show+0xd0>
		000000000002a0f0:  R_AARCH64_CALL26	snprintf
   2a0f4: 93407c04     	sxtw	x4, w0
   2a0f8: 910023e3     	add	x3, sp, #0x8
   2a0fc: aa1403e1     	mov	x1, x20
   2a100: aa1503e0     	mov	x0, x21
   2a104: aa1303e2     	mov	x2, x19
   2a108: 94000000     	bl	0x2a108 <headset_state_show+0xe8>
		000000000002a108:  R_AARCH64_CALL26	simple_read_from_buffer
   2a10c: 17ffffd4     	b	0x2a05c <headset_state_show+0x3c>
   2a110: 94000000     	bl	0x2a110 <headset_state_show+0xf0>
		000000000002a110:  R_AARCH64_CALL26	__stack_chk_fail
