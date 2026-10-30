
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001592c <set_play_game>:
   1592c: d503233f     	paciasp
   15930: d100c3ff     	sub	sp, sp, #0x30
   15934: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15938: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1593c: 910043fd     	add	x29, sp, #0x10
   15940: d5384108     	mrs	x8, SP_EL0
   15944: aa0203f3     	mov	x19, x2
   15948: aa0103e0     	mov	x0, x1
   1594c: f9438908     	ldr	x8, [x8, #0x710]
   15950: 910013e3     	add	x3, sp, #0x4
   15954: aa0203e1     	mov	x1, x2
   15958: 52800142     	mov	w2, #0xa                // =10
   1595c: f90007e8     	str	x8, [sp, #0x8]
   15960: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015960:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15964: f9400114     	ldr	x20, [x8]
		0000000000015964:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15968: b90007ff     	str	wzr, [sp, #0x4]
   1596c: 94000000     	bl	0x1596c <set_play_game+0x40>
		000000000001596c:  R_AARCH64_CALL26	kstrtouint_from_user
   15970: 340001a0     	cbz	w0, 0x159a4 <set_play_game+0x78>
   15974: 928002b3     	mov	x19, #-0x16             // =-22
   15978: d5384108     	mrs	x8, SP_EL0
   1597c: f9438908     	ldr	x8, [x8, #0x710]
   15980: f94007e9     	ldr	x9, [sp, #0x8]
   15984: eb09011f     	cmp	x8, x9
   15988: 54000321     	b.ne	0x159ec <set_play_game+0xc0>
   1598c: aa1303e0     	mov	x0, x19
   15990: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   15994: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   15998: 9100c3ff     	add	sp, sp, #0x30
   1599c: d50323bf     	autiasp
   159a0: d65f03c0     	ret
   159a4: b94007e2     	ldr	w2, [sp, #0x4]
   159a8: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000159a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   159ac: 91000000     	add	x0, x0, #0x0
		00000000000159ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   159b0: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000159b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6f1
   159b4: 91000021     	add	x1, x1, #0x0
		00000000000159b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6f1
   159b8: 94000000     	bl	0x159b8 <set_play_game+0x8c>
		00000000000159b8:  R_AARCH64_CALL26	_printk
   159bc: f9478688     	ldr	x8, [x20, #0xf08]
   159c0: b4fffdc8     	cbz	x8, 0x15978 <set_play_game+0x4c>
   159c4: b94007e1     	ldr	w1, [sp, #0x4]
   159c8: aa1403e0     	mov	x0, x20
   159cc: b85fc110     	ldur	w16, [x8, #-0x4]
   159d0: 72969331     	movk	w17, #0xb499
   159d4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   159d8: 6b11021f     	cmp	w16, w17
   159dc: 54000040     	b.eq	0x159e4 <set_play_game+0xb8>
   159e0: d4304500     	brk	#0x8228
   159e4: d63f0100     	blr	x8
   159e8: 17ffffe4     	b	0x15978 <set_play_game+0x4c>
   159ec: 94000000     	bl	0x159ec <set_play_game+0xc0>
		00000000000159ec:  R_AARCH64_CALL26	__stack_chk_fail
