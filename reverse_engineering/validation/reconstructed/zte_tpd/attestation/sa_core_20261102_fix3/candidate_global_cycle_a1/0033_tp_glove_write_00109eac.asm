
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000250f4 <tp_glove_write>:
   250f4: d503233f     	paciasp
   250f8: d100c3ff     	sub	sp, sp, #0x30
   250fc: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25100: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25104: 910043fd     	add	x29, sp, #0x10
   25108: d5384108     	mrs	x8, SP_EL0
   2510c: aa0203f3     	mov	x19, x2
   25110: aa0103e0     	mov	x0, x1
   25114: f9438908     	ldr	x8, [x8, #0x710]
   25118: 910013e3     	add	x3, sp, #0x4
   2511c: aa0203e1     	mov	x1, x2
   25120: 52800142     	mov	w2, #0xa                // =10
   25124: f90007e8     	str	x8, [sp, #0x8]
   25128: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025128:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2512c: f9400114     	ldr	x20, [x8]
		000000000002512c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25130: b90007ff     	str	wzr, [sp, #0x4]
   25134: 94000000     	bl	0x25134 <tp_glove_write+0x40>
		0000000000025134:  R_AARCH64_CALL26	kstrtouint_from_user
   25138: 340001a0     	cbz	w0, 0x2516c <tp_glove_write+0x78>
   2513c: 928002b3     	mov	x19, #-0x16             // =-22
   25140: d5384108     	mrs	x8, SP_EL0
   25144: f9438908     	ldr	x8, [x8, #0x710]
   25148: f94007e9     	ldr	x9, [sp, #0x8]
   2514c: eb09011f     	cmp	x8, x9
   25150: 54000381     	b.ne	0x251c0 <tp_glove_write+0xcc>
   25154: aa1303e0     	mov	x0, x19
   25158: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   2515c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25160: 9100c3ff     	add	sp, sp, #0x30
   25164: d50323bf     	autiasp
   25168: d65f03c0     	ret
   2516c: b94007e8     	ldr	w8, [sp, #0x4]
   25170: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17b45
   25174: 91000000     	add	x0, x0, #0x0
		0000000000025174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17b45
   25178: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		0000000000025178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d4c
   2517c: 91000021     	add	x1, x1, #0x0
		000000000002517c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d4c
   25180: 7100011f     	cmp	w8, #0x0
   25184: 1a9f07e2     	cset	w2, ne
   25188: b90007e2     	str	w2, [sp, #0x4]
   2518c: 94000000     	bl	0x2518c <tp_glove_write+0x98>
		000000000002518c:  R_AARCH64_CALL26	_printk
   25190: f9472a88     	ldr	x8, [x20, #0xe50]
   25194: b4fffd68     	cbz	x8, 0x25140 <tp_glove_write+0x4c>
   25198: b94007e1     	ldr	w1, [sp, #0x4]
   2519c: aa1403e0     	mov	x0, x20
   251a0: b85fc110     	ldur	w16, [x8, #-0x4]
   251a4: 72969331     	movk	w17, #0xb499
   251a8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   251ac: 6b11021f     	cmp	w16, w17
   251b0: 54000040     	b.eq	0x251b8 <tp_glove_write+0xc4>
   251b4: d4304500     	brk	#0x8228
   251b8: d63f0100     	blr	x8
   251bc: 17ffffe1     	b	0x25140 <tp_glove_write+0x4c>
   251c0: 94000000     	bl	0x251c0 <tp_glove_write+0xcc>
		00000000000251c0:  R_AARCH64_CALL26	__stack_chk_fail
