
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000253fc <headset_state_show>:
   253fc: d503233f     	paciasp
   25400: d10183ff     	sub	sp, sp, #0x60
   25404: a9037bfd     	stp	x29, x30, [sp, #0x30]
   25408: a90457f6     	stp	x22, x21, [sp, #0x40]
   2540c: a9054ff4     	stp	x20, x19, [sp, #0x50]
   25410: 9100c3fd     	add	x29, sp, #0x30
   25414: d5384108     	mrs	x8, SP_EL0
   25418: aa1f03e0     	mov	x0, xzr
   2541c: f9438908     	ldr	x8, [x8, #0x710]
   25420: f81f83a8     	stur	x8, [x29, #-0x8]
   25424: f9400068     	ldr	x8, [x3]
   25428: f801e3ff     	stur	xzr, [sp, #0x1e]
   2542c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   25430: f90007ff     	str	xzr, [sp, #0x8]
   25434: b4000188     	cbz	x8, 0x25464 <headset_state_show+0x68>
   25438: d5384108     	mrs	x8, SP_EL0
   2543c: f9438908     	ldr	x8, [x8, #0x710]
   25440: f85f83a9     	ldur	x9, [x29, #-0x8]
   25444: eb09011f     	cmp	x8, x9
   25448: 54000521     	b.ne	0x254ec <headset_state_show+0xf0>
   2544c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   25450: a94457f6     	ldp	x22, x21, [sp, #0x40]
   25454: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   25458: 910183ff     	add	sp, sp, #0x60
   2545c: d50323bf     	autiasp
   25460: d65f03c0     	ret
   25464: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025464:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25468: aa0103f5     	mov	x21, x1
   2546c: aa0203f4     	mov	x20, x2
   25470: f9400116     	ldr	x22, [x8]
		0000000000025470:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25474: aa0303f3     	mov	x19, x3
   25478: f9473ec8     	ldr	x8, [x22, #0xe78]
   2547c: b4000128     	cbz	x8, 0x254a0 <headset_state_show+0xa4>
   25480: aa1603e0     	mov	x0, x22
   25484: b85fc110     	ldur	w16, [x8, #-0x4]
   25488: 7281af31     	movk	w17, #0xd79
   2548c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25490: 6b11021f     	cmp	w16, w17
   25494: 54000040     	b.eq	0x2549c <headset_state_show+0xa0>
   25498: d4304500     	brk	#0x8228
   2549c: d63f0100     	blr	x8
   254a0: 39405ec2     	ldrb	w2, [x22, #0x17]
   254a4: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		00000000000254a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   254a8: 91000000     	add	x0, x0, #0x0
		00000000000254a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   254ac: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		00000000000254ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc18e
   254b0: 91000021     	add	x1, x1, #0x0
		00000000000254b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc18e
   254b4: 94000000     	bl	0x254b4 <headset_state_show+0xb8>
		00000000000254b4:  R_AARCH64_CALL26	_printk
   254b8: 39405ec3     	ldrb	w3, [x22, #0x17]
   254bc: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		00000000000254bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae4a
   254c0: 91000042     	add	x2, x2, #0x0
		00000000000254c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae4a
   254c4: 910023e0     	add	x0, sp, #0x8
   254c8: 528003c1     	mov	w1, #0x1e               // =30
   254cc: 94000000     	bl	0x254cc <headset_state_show+0xd0>
		00000000000254cc:  R_AARCH64_CALL26	snprintf
   254d0: 93407c04     	sxtw	x4, w0
   254d4: 910023e3     	add	x3, sp, #0x8
   254d8: aa1403e1     	mov	x1, x20
   254dc: aa1503e0     	mov	x0, x21
   254e0: aa1303e2     	mov	x2, x19
   254e4: 94000000     	bl	0x254e4 <headset_state_show+0xe8>
		00000000000254e4:  R_AARCH64_CALL26	simple_read_from_buffer
   254e8: 17ffffd4     	b	0x25438 <headset_state_show+0x3c>
   254ec: 94000000     	bl	0x254ec <headset_state_show+0xf0>
		00000000000254ec:  R_AARCH64_CALL26	__stack_chk_fail
