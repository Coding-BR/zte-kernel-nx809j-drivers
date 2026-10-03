
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254c8 <set_follow_hand_level>:
   254c8: d503233f     	paciasp
   254cc: d100c3ff     	sub	sp, sp, #0x30
   254d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   254d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   254d8: 910043fd     	add	x29, sp, #0x10
   254dc: d5384108     	mrs	x8, SP_EL0
   254e0: aa0203f3     	mov	x19, x2
   254e4: aa0103e0     	mov	x0, x1
   254e8: f9438908     	ldr	x8, [x8, #0x710]
   254ec: 910013e3     	add	x3, sp, #0x4
   254f0: aa0203e1     	mov	x1, x2
   254f4: 52800142     	mov	w2, #0xa                // =10
   254f8: f90007e8     	str	x8, [sp, #0x8]
   254fc: 90000008     	adrp	x8, 0x25000 <set_one_key+0x78>
		00000000000254fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25500: f9400114     	ldr	x20, [x8]
		0000000000025500:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25504: b90007ff     	str	wzr, [sp, #0x4]
   25508: 94000000     	bl	0x25508 <set_follow_hand_level+0x40>
		0000000000025508:  R_AARCH64_CALL26	kstrtouint_from_user
   2550c: 340001a0     	cbz	w0, 0x25540 <set_follow_hand_level+0x78>
   25510: 928002b3     	mov	x19, #-0x16             // =-22
   25514: d5384108     	mrs	x8, SP_EL0
   25518: f9438908     	ldr	x8, [x8, #0x710]
   2551c: f94007e9     	ldr	x9, [sp, #0x8]
   25520: eb09011f     	cmp	x8, x9
   25524: 54000321     	b.ne	0x25588 <set_follow_hand_level+0xc0>
   25528: aa1303e0     	mov	x0, x19
   2552c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25530: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25534: 9100c3ff     	add	sp, sp, #0x30
   25538: d50323bf     	autiasp
   2553c: d65f03c0     	ret
   25540: b94007e2     	ldr	w2, [sp, #0x4]
   25544: 90000000     	adrp	x0, 0x25000 <set_one_key+0x78>
		0000000000025544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x384d
   25548: 91000000     	add	x0, x0, #0x0
		0000000000025548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x384d
   2554c: 90000001     	adrp	x1, 0x25000 <set_one_key+0x78>
		000000000002554c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4955
   25550: 91000021     	add	x1, x1, #0x0
		0000000000025550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4955
   25554: 94000000     	bl	0x25554 <set_follow_hand_level+0x8c>
		0000000000025554:  R_AARCH64_CALL26	_printk
   25558: f9479288     	ldr	x8, [x20, #0xf20]
   2555c: b4fffdc8     	cbz	x8, 0x25514 <set_follow_hand_level+0x4c>
   25560: b94007e1     	ldr	w1, [sp, #0x4]
   25564: aa1403e0     	mov	x0, x20
   25568: b85fc110     	ldur	w16, [x8, #-0x4]
   2556c: 72969331     	movk	w17, #0xb499
   25570: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25574: 6b11021f     	cmp	w16, w17
   25578: 54000040     	b.eq	0x25580 <set_follow_hand_level+0xb8>
   2557c: d4304500     	brk	#0x8228
   25580: d63f0100     	blr	x8
   25584: 17ffffe4     	b	0x25514 <set_follow_hand_level+0x4c>
   25588: 94000000     	bl	0x25588 <set_follow_hand_level+0xc0>
		0000000000025588:  R_AARCH64_CALL26	__stack_chk_fail
