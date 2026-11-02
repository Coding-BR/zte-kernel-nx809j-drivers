
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025000 <tp_glove_read>:
   25000: d503233f     	paciasp
   25004: d10143ff     	sub	sp, sp, #0x50
   25008: a9027bfd     	stp	x29, x30, [sp, #0x20]
   2500c: a90357f6     	stp	x22, x21, [sp, #0x30]
   25010: a9044ff4     	stp	x20, x19, [sp, #0x40]
   25014: 910083fd     	add	x29, sp, #0x20
   25018: d5384108     	mrs	x8, SP_EL0
   2501c: aa1f03e0     	mov	x0, xzr
   25020: f9438908     	ldr	x8, [x8, #0x710]
   25024: f81f83a8     	stur	x8, [x29, #-0x8]
   25028: f9400068     	ldr	x8, [x3]
   2502c: 790023ff     	strh	wzr, [sp, #0x10]
   25030: f90007ff     	str	xzr, [sp, #0x8]
   25034: b4000188     	cbz	x8, 0x25064 <tp_glove_read+0x64>
   25038: d5384108     	mrs	x8, SP_EL0
   2503c: f9438908     	ldr	x8, [x8, #0x710]
   25040: f85f83a9     	ldur	x9, [x29, #-0x8]
   25044: eb09011f     	cmp	x8, x9
   25048: 54000521     	b.ne	0x250ec <tp_glove_read+0xec>
   2504c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25050: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25054: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25058: 910143ff     	add	sp, sp, #0x50
   2505c: d50323bf     	autiasp
   25060: d65f03c0     	ret
   25064: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		0000000000025064:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25068: aa0103f5     	mov	x21, x1
   2506c: aa0203f4     	mov	x20, x2
   25070: f9400116     	ldr	x22, [x8]
		0000000000025070:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25074: aa0303f3     	mov	x19, x3
   25078: f94726c8     	ldr	x8, [x22, #0xe48]
   2507c: b4000128     	cbz	x8, 0x250a0 <tp_glove_read+0xa0>
   25080: aa1603e0     	mov	x0, x22
   25084: b85fc110     	ldur	w16, [x8, #-0x4]
   25088: 7281af31     	movk	w17, #0xd79
   2508c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25090: 6b11021f     	cmp	w16, w17
   25094: 54000040     	b.eq	0x2509c <tp_glove_read+0x9c>
   25098: d4304500     	brk	#0x8228
   2509c: d63f0100     	blr	x8
   250a0: b9400ac2     	ldr	w2, [x22, #0x8]
   250a4: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		00000000000250a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   250a8: 91000000     	add	x0, x0, #0x0
		00000000000250a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   250ac: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		00000000000250ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6a3
   250b0: 91000021     	add	x1, x1, #0x0
		00000000000250b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6a3
   250b4: 94000000     	bl	0x250b4 <tp_glove_read+0xb4>
		00000000000250b4:  R_AARCH64_CALL26	_printk
   250b8: b9400ac3     	ldr	w3, [x22, #0x8]
   250bc: 90000002     	adrp	x2, 0x25000 <tp_glove_read>
		00000000000250bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   250c0: 91000042     	add	x2, x2, #0x0
		00000000000250c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   250c4: 910023e0     	add	x0, sp, #0x8
   250c8: 52800141     	mov	w1, #0xa                // =10
   250cc: 94000000     	bl	0x250cc <tp_glove_read+0xcc>
		00000000000250cc:  R_AARCH64_CALL26	snprintf
   250d0: 93407c04     	sxtw	x4, w0
   250d4: 910023e3     	add	x3, sp, #0x8
   250d8: aa1403e1     	mov	x1, x20
   250dc: aa1503e0     	mov	x0, x21
   250e0: aa1303e2     	mov	x2, x19
   250e4: 94000000     	bl	0x250e4 <tp_glove_read+0xe4>
		00000000000250e4:  R_AARCH64_CALL26	simple_read_from_buffer
   250e8: 17ffffd4     	b	0x25038 <tp_glove_read+0x38>
   250ec: 94000000     	bl	0x250ec <tp_glove_read+0xec>
		00000000000250ec:  R_AARCH64_CALL26	__stack_chk_fail
