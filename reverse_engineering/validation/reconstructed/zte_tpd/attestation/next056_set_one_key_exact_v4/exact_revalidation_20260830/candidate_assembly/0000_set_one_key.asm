
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015764 <set_one_key>:
   15764: d503233f     	paciasp
   15768: d100c3ff     	sub	sp, sp, #0x30
   1576c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15770: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15774: 910043fd     	add	x29, sp, #0x10
   15778: d5384108     	mrs	x8, SP_EL0
   1577c: aa0203f3     	mov	x19, x2
   15780: aa0103e0     	mov	x0, x1
   15784: f9438908     	ldr	x8, [x8, #0x710]
   15788: 910013e3     	add	x3, sp, #0x4
   1578c: aa0203e1     	mov	x1, x2
   15790: 52800142     	mov	w2, #0xa                // =10
   15794: f90007e8     	str	x8, [sp, #0x8]
   15798: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015798:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1579c: f9400114     	ldr	x20, [x8]
		000000000001579c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   157a0: b90007ff     	str	wzr, [sp, #0x4]
   157a4: 94000000     	bl	0x157a4 <set_one_key+0x40>
		00000000000157a4:  R_AARCH64_CALL26	kstrtouint_from_user
   157a8: 340001a0     	cbz	w0, 0x157dc <set_one_key+0x78>
   157ac: 928002b3     	mov	x19, #-0x16             // =-22
   157b0: d5384108     	mrs	x8, SP_EL0
   157b4: f9438908     	ldr	x8, [x8, #0x710]
   157b8: f94007e9     	ldr	x9, [sp, #0x8]
   157bc: eb09011f     	cmp	x8, x9
   157c0: 54000381     	b.ne	0x15830 <set_one_key+0xcc>
   157c4: aa1303e0     	mov	x0, x19
   157c8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   157cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   157d0: 9100c3ff     	add	sp, sp, #0x30
   157d4: d50323bf     	autiasp
   157d8: d65f03c0     	ret
   157dc: b94007e8     	ldr	w8, [sp, #0x4]
   157e0: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000157e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   157e4: 91000000     	add	x0, x0, #0x0
		00000000000157e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   157e8: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000157e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ff1
   157ec: 91000021     	add	x1, x1, #0x0
		00000000000157ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ff1
   157f0: 7100011f     	cmp	w8, #0x0
   157f4: 1a9f07e2     	cset	w2, ne
   157f8: b90007e2     	str	w2, [sp, #0x4]
   157fc: 94000000     	bl	0x157fc <set_one_key+0x98>
		00000000000157fc:  R_AARCH64_CALL26	_printk
   15800: f9477e88     	ldr	x8, [x20, #0xef8]
   15804: b4fffd68     	cbz	x8, 0x157b0 <set_one_key+0x4c>
   15808: b94007e1     	ldr	w1, [sp, #0x4]
   1580c: aa1403e0     	mov	x0, x20
   15810: b85fc110     	ldur	w16, [x8, #-0x4]
   15814: 72969331     	movk	w17, #0xb499
   15818: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1581c: 6b11021f     	cmp	w16, w17
   15820: 54000040     	b.eq	0x15828 <set_one_key+0xc4>
   15824: d4304500     	brk	#0x8228
   15828: d63f0100     	blr	x8
   1582c: 17ffffe1     	b	0x157b0 <set_one_key+0x4c>
   15830: 94000000     	bl	0x15830 <set_one_key+0xcc>
		0000000000015830:  R_AARCH64_CALL26	__stack_chk_fail
