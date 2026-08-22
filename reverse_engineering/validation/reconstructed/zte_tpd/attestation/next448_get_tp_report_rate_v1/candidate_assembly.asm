
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254b4 <get_tp_report_rate>:
   254b4: d503233f     	paciasp
   254b8: d10143ff     	sub	sp, sp, #0x50
   254bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254c0: a90357f6     	stp	x22, x21, [sp, #0x30]
   254c4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254c8: 910083fd     	add	x29, sp, #0x20
   254cc: d5384108     	mrs	x8, SP_EL0
   254d0: aa1f03e0     	mov	x0, xzr
   254d4: f9438908     	ldr	x8, [x8, #0x710]
   254d8: f81f83a8     	stur	x8, [x29, #-0x8]
   254dc: f9400068     	ldr	x8, [x3]
   254e0: 790023ff     	strh	wzr, [sp, #0x10]
   254e4: f90007ff     	str	xzr, [sp, #0x8]
   254e8: b4000188     	cbz	x8, 0x25518 <get_tp_report_rate+0x64>
   254ec: d5384108     	mrs	x8, SP_EL0
   254f0: f9438908     	ldr	x8, [x8, #0x710]
   254f4: f85f83a9     	ldur	x9, [x29, #-0x8]
   254f8: eb09011f     	cmp	x8, x9
   254fc: 54000521     	b.ne	0x255a0 <get_tp_report_rate+0xec>
   25500: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25504: a94357f6     	ldp	x22, x21, [sp, #0x30]
   25508: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2550c: 910143ff     	add	sp, sp, #0x50
   25510: d50323bf     	autiasp
   25514: d65f03c0     	ret
   25518: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x410>
		0000000000025518:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2551c: aa0103f5     	mov	x21, x1
   25520: aa0203f4     	mov	x20, x2
   25524: f9400116     	ldr	x22, [x8]
		0000000000025524:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25528: aa0303f3     	mov	x19, x3
   2552c: f9478ec8     	ldr	x8, [x22, #0xf18]
   25530: b4000128     	cbz	x8, 0x25554 <get_tp_report_rate+0xa0>
   25534: aa1603e0     	mov	x0, x22
   25538: b85fc110     	ldur	w16, [x8, #-0x4]
   2553c: 7281af31     	movk	w17, #0xd79
   25540: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25544: 6b11021f     	cmp	w16, w17
   25548: 54000040     	b.eq	0x25550 <get_tp_report_rate+0x9c>
   2554c: d4304500     	brk	#0x8228
   25550: d63f0100     	blr	x8
   25554: b94466c2     	ldr	w2, [x22, #0x464]
   25558: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x410>
		0000000000025558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a1
   2555c: 91000000     	add	x0, x0, #0x0
		000000000002555c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a1
   25560: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x410>
		0000000000025560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ac
   25564: 91000021     	add	x1, x1, #0x0
		0000000000025564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ac
   25568: 94000000     	bl	0x25568 <get_tp_report_rate+0xb4>
		0000000000025568:  R_AARCH64_CALL26	_printk
   2556c: b94466c3     	ldr	w3, [x22, #0x464]
   25570: 90000002     	adrp	x2, 0x25000 <tp_edge_report_limit_read+0x410>
		0000000000025570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25574: 91000042     	add	x2, x2, #0x0
		0000000000025574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   25578: 910023e0     	add	x0, sp, #0x8
   2557c: 52800141     	mov	w1, #0xa                // =10
   25580: 94000000     	bl	0x25580 <get_tp_report_rate+0xcc>
		0000000000025580:  R_AARCH64_CALL26	snprintf
   25584: 93407c04     	sxtw	x4, w0
   25588: 910023e3     	add	x3, sp, #0x8
   2558c: aa1403e1     	mov	x1, x20
   25590: aa1503e0     	mov	x0, x21
   25594: aa1303e2     	mov	x2, x19
   25598: 94000000     	bl	0x25598 <get_tp_report_rate+0xe4>
		0000000000025598:  R_AARCH64_CALL26	simple_read_from_buffer
   2559c: 17ffffd4     	b	0x254ec <get_tp_report_rate+0x38>
   255a0: 94000000     	bl	0x255a0 <get_tp_report_rate+0xec>
		00000000000255a0:  R_AARCH64_CALL26	__stack_chk_fail
