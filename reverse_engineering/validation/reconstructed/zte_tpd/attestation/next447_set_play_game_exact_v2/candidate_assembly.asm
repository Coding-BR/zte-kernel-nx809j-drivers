
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254e8 <set_play_game>:
   254e8: d503233f     	paciasp
   254ec: d100c3ff     	sub	sp, sp, #0x30
   254f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   254f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   254f8: 910043fd     	add	x29, sp, #0x10
   254fc: d5384108     	mrs	x8, SP_EL0
   25500: aa0203f3     	mov	x19, x2
   25504: aa0103e0     	mov	x0, x1
   25508: f9438908     	ldr	x8, [x8, #0x710]
   2550c: 910013e3     	add	x3, sp, #0x4
   25510: aa0203e1     	mov	x1, x2
   25514: 52800142     	mov	w2, #0xa                // =10
   25518: f90007e8     	str	x8, [sp, #0x8]
   2551c: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x314>
		000000000002551c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25520: f9400114     	ldr	x20, [x8]
		0000000000025520:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25524: b90007ff     	str	wzr, [sp, #0x4]
   25528: 94000000     	bl	0x25528 <set_play_game+0x40>
		0000000000025528:  R_AARCH64_CALL26	kstrtouint_from_user
   2552c: 340001a0     	cbz	w0, 0x25560 <set_play_game+0x78>
   25530: 928002b3     	mov	x19, #-0x16             // =-22
   25534: d5384108     	mrs	x8, SP_EL0
   25538: f9438908     	ldr	x8, [x8, #0x710]
   2553c: f94007e9     	ldr	x9, [sp, #0x8]
   25540: eb09011f     	cmp	x8, x9
   25544: 54000321     	b.ne	0x255a8 <set_play_game+0xc0>
   25548: aa1303e0     	mov	x0, x19
   2554c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25550: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25554: 9100c3ff     	add	sp, sp, #0x30
   25558: d50323bf     	autiasp
   2555c: d65f03c0     	ret
   25560: b94007e2     	ldr	w2, [sp, #0x4]
   25564: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x314>
		0000000000025564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x384d
   25568: 91000000     	add	x0, x0, #0x0
		0000000000025568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x384d
   2556c: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x314>
		000000000002556c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b47
   25570: 91000021     	add	x1, x1, #0x0
		0000000000025570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b47
   25574: 94000000     	bl	0x25574 <set_play_game+0x8c>
		0000000000025574:  R_AARCH64_CALL26	_printk
   25578: f9478688     	ldr	x8, [x20, #0xf08]
   2557c: b4fffdc8     	cbz	x8, 0x25534 <set_play_game+0x4c>
   25580: b94007e1     	ldr	w1, [sp, #0x4]
   25584: aa1403e0     	mov	x0, x20
   25588: b85fc110     	ldur	w16, [x8, #-0x4]
   2558c: 72969331     	movk	w17, #0xb499
   25590: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25594: 6b11021f     	cmp	w16, w17
   25598: 54000040     	b.eq	0x255a0 <set_play_game+0xb8>
   2559c: d4304500     	brk	#0x8228
   255a0: d63f0100     	blr	x8
   255a4: 17ffffe4     	b	0x25534 <set_play_game+0x4c>
   255a8: 94000000     	bl	0x255a8 <set_play_game+0xc0>
		00000000000255a8:  R_AARCH64_CALL26	__stack_chk_fail
