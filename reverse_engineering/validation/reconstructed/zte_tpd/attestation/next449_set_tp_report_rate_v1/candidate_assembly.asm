
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254d8 <set_tp_report_rate>:
   254d8: d503233f     	paciasp
   254dc: d100c3ff     	sub	sp, sp, #0x30
   254e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   254e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   254e8: 910043fd     	add	x29, sp, #0x10
   254ec: d5384108     	mrs	x8, SP_EL0
   254f0: aa0203f3     	mov	x19, x2
   254f4: aa0103e0     	mov	x0, x1
   254f8: f9438908     	ldr	x8, [x8, #0x710]
   254fc: 910013e3     	add	x3, sp, #0x4
   25500: aa0203e1     	mov	x1, x2
   25504: 52800142     	mov	w2, #0xa                // =10
   25508: f90007e8     	str	x8, [sp, #0x8]
   2550c: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x4e0>
		000000000002550c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25510: f9400114     	ldr	x20, [x8]
		0000000000025510:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25514: b90007ff     	str	wzr, [sp, #0x4]
   25518: 94000000     	bl	0x25518 <set_tp_report_rate+0x40>
		0000000000025518:  R_AARCH64_CALL26	kstrtouint_from_user
   2551c: 340001a0     	cbz	w0, 0x25550 <set_tp_report_rate+0x78>
   25520: 928002b3     	mov	x19, #-0x16             // =-22
   25524: d5384108     	mrs	x8, SP_EL0
   25528: f9438908     	ldr	x8, [x8, #0x710]
   2552c: f94007e9     	ldr	x9, [sp, #0x8]
   25530: eb09011f     	cmp	x8, x9
   25534: 54000321     	b.ne	0x25598 <set_tp_report_rate+0xc0>
   25538: aa1303e0     	mov	x0, x19
   2553c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25540: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25544: 9100c3ff     	add	sp, sp, #0x30
   25548: d50323bf     	autiasp
   2554c: d65f03c0     	ret
   25550: b94007e2     	ldr	w2, [sp, #0x4]
   25554: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x4e0>
		0000000000025554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x384d
   25558: 91000000     	add	x0, x0, #0x0
		0000000000025558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x384d
   2555c: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x4e0>
		000000000002555c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f92
   25560: 91000021     	add	x1, x1, #0x0
		0000000000025560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f92
   25564: 94000000     	bl	0x25564 <set_tp_report_rate+0x8c>
		0000000000025564:  R_AARCH64_CALL26	_printk
   25568: f9478a88     	ldr	x8, [x20, #0xf10]
   2556c: b4fffdc8     	cbz	x8, 0x25524 <set_tp_report_rate+0x4c>
   25570: b94007e1     	ldr	w1, [sp, #0x4]
   25574: aa1403e0     	mov	x0, x20
   25578: b85fc110     	ldur	w16, [x8, #-0x4]
   2557c: 72969331     	movk	w17, #0xb499
   25580: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25584: 6b11021f     	cmp	w16, w17
   25588: 54000040     	b.eq	0x25590 <set_tp_report_rate+0xb8>
   2558c: d4304500     	brk	#0x8228
   25590: d63f0100     	blr	x8
   25594: 17ffffe4     	b	0x25524 <set_tp_report_rate+0x4c>
   25598: 94000000     	bl	0x25598 <set_tp_report_rate+0xc0>
		0000000000025598:  R_AARCH64_CALL26	__stack_chk_fail
