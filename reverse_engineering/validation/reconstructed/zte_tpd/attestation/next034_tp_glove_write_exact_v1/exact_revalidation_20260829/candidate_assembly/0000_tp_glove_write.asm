
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025098 <tp_glove_write>:
   25098: d503233f     	paciasp
   2509c: d100c3ff     	sub	sp, sp, #0x30
   250a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   250a4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   250a8: 910043fd     	add	x29, sp, #0x10
   250ac: d5384108     	mrs	x8, SP_EL0
   250b0: aa0203f3     	mov	x19, x2
   250b4: aa0103e0     	mov	x0, x1
   250b8: f9438908     	ldr	x8, [x8, #0x710]
   250bc: 910013e3     	add	x3, sp, #0x4
   250c0: aa0203e1     	mov	x1, x2
   250c4: 52800142     	mov	w2, #0xa                // =10
   250c8: f90007e8     	str	x8, [sp, #0x8]
   250cc: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000250cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   250d0: f9400114     	ldr	x20, [x8]
		00000000000250d0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   250d4: b90007ff     	str	wzr, [sp, #0x4]
   250d8: 94000000     	bl	0x250d8 <tp_glove_write+0x40>
		00000000000250d8:  R_AARCH64_CALL26	kstrtouint_from_user
   250dc: 340001a0     	cbz	w0, 0x25110 <tp_glove_write+0x78>
   250e0: 928002b3     	mov	x19, #-0x16             // =-22
   250e4: d5384108     	mrs	x8, SP_EL0
   250e8: f9438908     	ldr	x8, [x8, #0x710]
   250ec: f94007e9     	ldr	x9, [sp, #0x8]
   250f0: eb09011f     	cmp	x8, x9
   250f4: 54000381     	b.ne	0x25164 <tp_glove_write+0xcc>
   250f8: aa1303e0     	mov	x0, x19
   250fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25100: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25104: 9100c3ff     	add	sp, sp, #0x30
   25108: d50323bf     	autiasp
   2510c: d65f03c0     	ret
   25110: b94007e8     	ldr	w8, [sp, #0x4]
   25114: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   25118: 91000000     	add	x0, x0, #0x0
		0000000000025118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   2511c: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		000000000002511c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d4c
   25120: 91000021     	add	x1, x1, #0x0
		0000000000025120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d4c
   25124: 7100011f     	cmp	w8, #0x0
   25128: 1a9f07e2     	cset	w2, ne
   2512c: b90007e2     	str	w2, [sp, #0x4]
   25130: 94000000     	bl	0x25130 <tp_glove_write+0x98>
		0000000000025130:  R_AARCH64_CALL26	_printk
   25134: f9472a88     	ldr	x8, [x20, #0xe50]
   25138: b4fffd68     	cbz	x8, 0x250e4 <tp_glove_write+0x4c>
   2513c: b94007e1     	ldr	w1, [sp, #0x4]
   25140: aa1403e0     	mov	x0, x20
   25144: b85fc110     	ldur	w16, [x8, #-0x4]
   25148: 72969331     	movk	w17, #0xb499
   2514c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25150: 6b11021f     	cmp	w16, w17
   25154: 54000040     	b.eq	0x2515c <tp_glove_write+0xc4>
   25158: d4304500     	brk	#0x8228
   2515c: d63f0100     	blr	x8
   25160: 17ffffe1     	b	0x250e4 <tp_glove_write+0x4c>
   25164: 94000000     	bl	0x25164 <tp_glove_write+0xcc>
		0000000000025164:  R_AARCH64_CALL26	__stack_chk_fail
