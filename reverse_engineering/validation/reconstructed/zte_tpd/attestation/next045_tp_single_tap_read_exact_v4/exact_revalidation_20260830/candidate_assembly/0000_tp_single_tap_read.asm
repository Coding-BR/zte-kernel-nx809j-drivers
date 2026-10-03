
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025944 <tp_single_tap_read>:
   25944: d503233f     	paciasp
   25948: d10143ff     	sub	sp, sp, #0x50
   2594c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25950: a90357f6     	stp	x22, x21, [sp, #0x30]
   25954: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25958: 910083fd     	add	x29, sp, #0x20
   2595c: d5384108     	mrs	x8, SP_EL0
   25960: aa1f03e0     	mov	x0, xzr
   25964: f9438908     	ldr	x8, [x8, #0x710]
   25968: f81f83a8     	stur	x8, [x29, #-0x8]
   2596c: f9400068     	ldr	x8, [x3]
   25970: 790023ff     	strh	wzr, [sp, #0x10]
   25974: f90007ff     	str	xzr, [sp, #0x8]
   25978: b4000188     	cbz	x8, 0x259a8 <tp_single_tap_read+0x64>
   2597c: d5384108     	mrs	x8, SP_EL0
   25980: f9438908     	ldr	x8, [x8, #0x710]
   25984: f85f83a9     	ldur	x9, [x29, #-0x8]
   25988: eb09011f     	cmp	x8, x9
   2598c: 54000521     	b.ne	0x25a30 <tp_single_tap_read+0xec>
   25990: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25994: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25998: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2599c: 910143ff     	add	sp, sp, #0x50
   259a0: d50323bf     	autiasp
   259a4: d65f03c0     	ret
   259a8: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000259a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   259ac: aa0103f5     	mov	x21, x1
   259b0: aa0203f4     	mov	x20, x2
   259b4: f9400116     	ldr	x22, [x8]
		00000000000259b4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   259b8: aa0303f3     	mov	x19, x3
   259bc: f9475ec8     	ldr	x8, [x22, #0xeb8]
   259c0: b4000128     	cbz	x8, 0x259e4 <tp_single_tap_read+0xa0>
   259c4: aa1603e0     	mov	x0, x22
   259c8: b85fc110     	ldur	w16, [x8, #-0x4]
   259cc: 7281af31     	movk	w17, #0xd79
   259d0: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   259d4: 6b11021f     	cmp	w16, w17
   259d8: 54000040     	b.eq	0x259e0 <tp_single_tap_read+0x9c>
   259dc: d4304500     	brk	#0x8228
   259e0: d63f0100     	blr	x8
   259e4: b9444ec2     	ldr	w2, [x22, #0x44c]
   259e8: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		00000000000259e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b36
   259ec: 91000000     	add	x0, x0, #0x0
		00000000000259ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b36
   259f0: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		00000000000259f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9158
   259f4: 91000021     	add	x1, x1, #0x0
		00000000000259f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9158
   259f8: 94000000     	bl	0x259f8 <tp_single_tap_read+0xb4>
		00000000000259f8:  R_AARCH64_CALL26	_printk
   259fc: b9444ec3     	ldr	w3, [x22, #0x44c]
   25a00: 90000002     	adrp	x2, 0x25000 <tp_glove_read+0x5c>
		0000000000025a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   25a04: 91000042     	add	x2, x2, #0x0
		0000000000025a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   25a08: 910023e0     	add	x0, sp, #0x8
   25a0c: 52800141     	mov	w1, #0xa                // =10
   25a10: 94000000     	bl	0x25a10 <tp_single_tap_read+0xcc>
		0000000000025a10:  R_AARCH64_CALL26	snprintf
   25a14: 93407c04     	sxtw	x4, w0
   25a18: 910023e3     	add	x3, sp, #0x8
   25a1c: aa1403e1     	mov	x1, x20
   25a20: aa1503e0     	mov	x0, x21
   25a24: aa1303e2     	mov	x2, x19
   25a28: 94000000     	bl	0x25a28 <tp_single_tap_read+0xe4>
		0000000000025a28:  R_AARCH64_CALL26	simple_read_from_buffer
   25a2c: 17ffffd4     	b	0x2597c <tp_single_tap_read+0x38>
   25a30: 94000000     	bl	0x25a30 <tp_single_tap_read+0xec>
		0000000000025a30:  R_AARCH64_CALL26	__stack_chk_fail
