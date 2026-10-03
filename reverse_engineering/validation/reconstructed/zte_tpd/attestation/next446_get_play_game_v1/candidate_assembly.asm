
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254c4 <get_play_game>:
   254c4: d503233f     	paciasp
   254c8: d10143ff     	sub	sp, sp, #0x50
   254cc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254d0: a90357f6     	stp	x22, x21, [sp, #0x30]
   254d4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254d8: 910083fd     	add	x29, sp, #0x20
   254dc: d5384108     	mrs	x8, SP_EL0
   254e0: aa1f03e0     	mov	x0, xzr
   254e4: f9438908     	ldr	x8, [x8, #0x710]
   254e8: f81f83a8     	stur	x8, [x29, #-0x8]
   254ec: f9400068     	ldr	x8, [x3]
   254f0: 790023ff     	strh	wzr, [sp, #0x10]
   254f4: f90007ff     	str	xzr, [sp, #0x8]
   254f8: b4000188     	cbz	x8, 0x25528 <get_play_game+0x64>
   254fc: d5384108     	mrs	x8, SP_EL0
   25500: f9438908     	ldr	x8, [x8, #0x710]
   25504: f85f83a9     	ldur	x9, [x29, #-0x8]
   25508: eb09011f     	cmp	x8, x9
   2550c: 54000521     	b.ne	0x255b0 <get_play_game+0xec>
   25510: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25514: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25518: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2551c: 910143ff     	add	sp, sp, #0x50
   25520: d50323bf     	autiasp
   25524: d65f03c0     	ret
   25528: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x244>
		0000000000025528:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2552c: aa0103f5     	mov	x21, x1
   25530: aa0203f4     	mov	x20, x2
   25534: f9400116     	ldr	x22, [x8]
		0000000000025534:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25538: aa0303f3     	mov	x19, x3
   2553c: f94782c8     	ldr	x8, [x22, #0xf00]
   25540: b4000128     	cbz	x8, 0x25564 <get_play_game+0xa0>
   25544: aa1603e0     	mov	x0, x22
   25548: b85fc110     	ldur	w16, [x8, #-0x4]
   2554c: 7281af31     	movk	w17, #0xd79
   25550: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25554: 6b11021f     	cmp	w16, w17
   25558: 54000040     	b.eq	0x25560 <get_play_game+0x9c>
   2555c: d4304500     	brk	#0x8228
   25560: d63f0100     	blr	x8
   25564: b9445ec2     	ldr	w2, [x22, #0x45c]
   25568: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x244>
		0000000000025568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a1
   2556c: 91000000     	add	x0, x0, #0x0
		000000000002556c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a1
   25570: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x244>
		0000000000025570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2190
   25574: 91000021     	add	x1, x1, #0x0
		0000000000025574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2190
   25578: 94000000     	bl	0x25578 <get_play_game+0xb4>
		0000000000025578:  R_AARCH64_CALL26	_printk
   2557c: b9445ec3     	ldr	w3, [x22, #0x45c]
   25580: 90000002     	adrp	x2, 0x25000 <tp_edge_report_limit_read+0x244>
		0000000000025580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25584: 91000042     	add	x2, x2, #0x0
		0000000000025584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   25588: 910023e0     	add	x0, sp, #0x8
   2558c: 52800141     	mov	w1, #0xa                // =10
   25590: 94000000     	bl	0x25590 <get_play_game+0xcc>
		0000000000025590:  R_AARCH64_CALL26	snprintf
   25594: 93407c04     	sxtw	x4, w0
   25598: 910023e3     	add	x3, sp, #0x8
   2559c: aa1403e1     	mov	x1, x20
   255a0: aa1503e0     	mov	x0, x21
   255a4: aa1303e2     	mov	x2, x19
   255a8: 94000000     	bl	0x255a8 <get_play_game+0xe4>
		00000000000255a8:  R_AARCH64_CALL26	simple_read_from_buffer
   255ac: 17ffffd4     	b	0x254fc <get_play_game+0x38>
   255b0: 94000000     	bl	0x255b0 <get_play_game+0xec>
		00000000000255b0:  R_AARCH64_CALL26	__stack_chk_fail
