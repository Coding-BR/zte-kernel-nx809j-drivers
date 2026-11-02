
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015988 <set_play_game>:
   15988: d503233f     	paciasp
   1598c: d100c3ff     	sub	sp, sp, #0x30
   15990: a9017bfd     	stp	x29, x30, [sp, #0x10]
   15994: a9024ff4     	stp	x20, x19, [sp, #0x20]
   15998: 910043fd     	add	x29, sp, #0x10
   1599c: d5384108     	mrs	x8, SP_EL0
   159a0: aa0203f3     	mov	x19, x2
   159a4: aa0103e0     	mov	x0, x1
   159a8: f9438908     	ldr	x8, [x8, #0x710]
   159ac: 910013e3     	add	x3, sp, #0x4
   159b0: aa0203e1     	mov	x1, x2
   159b4: 52800142     	mov	w2, #0xa                // =10
   159b8: f90007e8     	str	x8, [sp, #0x8]
   159bc: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000159bc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   159c0: f9400114     	ldr	x20, [x8]
		00000000000159c0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   159c4: b90007ff     	str	wzr, [sp, #0x4]
   159c8: 94000000     	bl	0x159c8 <set_play_game+0x40>
		00000000000159c8:  R_AARCH64_CALL26	kstrtouint_from_user
   159cc: 340001a0     	cbz	w0, 0x15a00 <set_play_game+0x78>
   159d0: 928002b3     	mov	x19, #-0x16             // =-22
   159d4: d5384108     	mrs	x8, SP_EL0
   159d8: f9438908     	ldr	x8, [x8, #0x710]
   159dc: f94007e9     	ldr	x9, [sp, #0x8]
   159e0: eb09011f     	cmp	x8, x9
   159e4: 54000321     	b.ne	0x15a48 <set_play_game+0xc0>
   159e8: aa1303e0     	mov	x0, x19
   159ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   159f0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   159f4: 9100c3ff     	add	sp, sp, #0x30
   159f8: d50323bf     	autiasp
   159fc: d65f03c0     	ret
   15a00: b94007e2     	ldr	w2, [sp, #0x4]
   15a04: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
   15a08: 91000000     	add	x0, x0, #0x0
		0000000000015a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
   15a0c: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6f1
   15a10: 91000021     	add	x1, x1, #0x0
		0000000000015a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6f1
   15a14: 94000000     	bl	0x15a14 <set_play_game+0x8c>
		0000000000015a14:  R_AARCH64_CALL26	_printk
   15a18: f9478688     	ldr	x8, [x20, #0xf08]
   15a1c: b4fffdc8     	cbz	x8, 0x159d4 <set_play_game+0x4c>
   15a20: b94007e1     	ldr	w1, [sp, #0x4]
   15a24: aa1403e0     	mov	x0, x20
   15a28: b85fc110     	ldur	w16, [x8, #-0x4]
   15a2c: 72969331     	movk	w17, #0xb499
   15a30: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   15a34: 6b11021f     	cmp	w16, w17
   15a38: 54000040     	b.eq	0x15a40 <set_play_game+0xb8>
   15a3c: d4304500     	brk	#0x8228
   15a40: d63f0100     	blr	x8
   15a44: 17ffffe4     	b	0x159d4 <set_play_game+0x4c>
   15a48: 94000000     	bl	0x15a48 <set_play_game+0xc0>
		0000000000015a48:  R_AARCH64_CALL26	__stack_chk_fail
