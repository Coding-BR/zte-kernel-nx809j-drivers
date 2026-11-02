
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000157c0 <set_one_key>:
   157c0: d503233f     	paciasp
   157c4: d100c3ff     	sub	sp, sp, #0x30
   157c8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   157cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   157d0: 910043fd     	add	x29, sp, #0x10
   157d4: d5384108     	mrs	x8, SP_EL0
   157d8: aa0203f3     	mov	x19, x2
   157dc: aa0103e0     	mov	x0, x1
   157e0: f9438908     	ldr	x8, [x8, #0x710]
   157e4: 910013e3     	add	x3, sp, #0x4
   157e8: aa0203e1     	mov	x1, x2
   157ec: 52800142     	mov	w2, #0xa                // =10
   157f0: f90007e8     	str	x8, [sp, #0x8]
   157f4: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000157f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   157f8: f9400114     	ldr	x20, [x8]
		00000000000157f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   157fc: b90007ff     	str	wzr, [sp, #0x4]
   15800: 94000000     	bl	0x15800 <set_one_key+0x40>
		0000000000015800:  R_AARCH64_CALL26	kstrtouint_from_user
   15804: 340001a0     	cbz	w0, 0x15838 <set_one_key+0x78>
   15808: 928002b3     	mov	x19, #-0x16             // =-22
   1580c: d5384108     	mrs	x8, SP_EL0
   15810: f9438908     	ldr	x8, [x8, #0x710]
   15814: f94007e9     	ldr	x9, [sp, #0x8]
   15818: eb09011f     	cmp	x8, x9
   1581c: 54000381     	b.ne	0x1588c <set_one_key+0xcc>
   15820: aa1303e0     	mov	x0, x19
   15824: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15828: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1582c: 9100c3ff     	add	sp, sp, #0x30
   15830: d50323bf     	autiasp
   15834: d65f03c0     	ret
   15838: b94007e8     	ldr	w8, [sp, #0x4]
   1583c: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		000000000001583c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15840: 91000000     	add	x0, x0, #0x0
		0000000000015840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15844: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ff1
   15848: 91000021     	add	x1, x1, #0x0
		0000000000015848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ff1
   1584c: 7100011f     	cmp	w8, #0x0
   15850: 1a9f07e2     	cset	w2, ne
   15854: b90007e2     	str	w2, [sp, #0x4]
   15858: 94000000     	bl	0x15858 <set_one_key+0x98>
		0000000000015858:  R_AARCH64_CALL26	_printk
   1585c: f9477e88     	ldr	x8, [x20, #0xef8]
   15860: b4fffd68     	cbz	x8, 0x1580c <set_one_key+0x4c>
   15864: b94007e1     	ldr	w1, [sp, #0x4]
   15868: aa1403e0     	mov	x0, x20
   1586c: b85fc110     	ldur	w16, [x8, #-0x4]
   15870: 72969331     	movk	w17, #0xb499
   15874: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15878: 6b11021f     	cmp	w16, w17
   1587c: 54000040     	b.eq	0x15884 <set_one_key+0xc4>
   15880: d4304500     	brk	#0x8228
   15884: d63f0100     	blr	x8
   15888: 17ffffe1     	b	0x1580c <set_one_key+0x4c>
   1588c: 94000000     	bl	0x1588c <set_one_key+0xcc>
		000000000001588c:  R_AARCH64_CALL26	__stack_chk_fail
