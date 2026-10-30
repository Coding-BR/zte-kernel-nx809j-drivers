
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254c8 <get_one_key>:
   254c8: d503233f     	paciasp
   254cc: d10143ff     	sub	sp, sp, #0x50
   254d0: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254d4: a90357f6     	stp	x22, x21, [sp, #0x30]
   254d8: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254dc: 910083fd     	add	x29, sp, #0x20
   254e0: d5384108     	mrs	x8, SP_EL0
   254e4: aa1f03e0     	mov	x0, xzr
   254e8: f9438908     	ldr	x8, [x8, #0x710]
   254ec: f81f83a8     	stur	x8, [x29, #-0x8]
   254f0: f9400068     	ldr	x8, [x3]
   254f4: 790023ff     	strh	wzr, [sp, #0x10]
   254f8: f90007ff     	str	xzr, [sp, #0x8]
   254fc: b4000188     	cbz	x8, 0x2552c <get_one_key+0x64>
   25500: d5384108     	mrs	x8, SP_EL0
   25504: f9438908     	ldr	x8, [x8, #0x710]
   25508: f85f83a9     	ldur	x9, [x29, #-0x8]
   2550c: eb09011f     	cmp	x8, x9
   25510: 54000521     	b.ne	0x255b4 <get_one_key+0xec>
   25514: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   25518: a94357f6     	ldp	x22, x21, [sp, #0x30]
   2551c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   25520: 910143ff     	add	sp, sp, #0x50
   25524: d50323bf     	autiasp
   25528: d65f03c0     	ret
   2552c: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x78>
		000000000002552c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25530: aa0103f5     	mov	x21, x1
   25534: aa0203f4     	mov	x20, x2
   25538: f9400116     	ldr	x22, [x8]
		0000000000025538:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2553c: aa0303f3     	mov	x19, x3
   25540: f9477ac8     	ldr	x8, [x22, #0xef0]
   25544: b4000128     	cbz	x8, 0x25568 <get_one_key+0xa0>
   25548: aa1603e0     	mov	x0, x22
   2554c: b85fc110     	ldur	w16, [x8, #-0x4]
   25550: 7281af31     	movk	w17, #0xd79
   25554: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25558: 6b11021f     	cmp	w16, w17
   2555c: 54000040     	b.eq	0x25564 <get_one_key+0x9c>
   25560: d4304500     	brk	#0x8228
   25564: d63f0100     	blr	x8
   25568: b9445ac2     	ldr	w2, [x22, #0x458]
   2556c: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x78>
		000000000002556c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a1
   25570: 91000000     	add	x0, x0, #0x0
		0000000000025570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a1
   25574: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x78>
		0000000000025574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d9a
   25578: 91000021     	add	x1, x1, #0x0
		0000000000025578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d9a
   2557c: 94000000     	bl	0x2557c <get_one_key+0xb4>
		000000000002557c:  R_AARCH64_CALL26	_printk
   25580: b9445ac3     	ldr	w3, [x22, #0x458]
   25584: 90000002     	adrp	x2, 0x25000 <tp_edge_report_limit_read+0x78>
		0000000000025584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25588: 91000042     	add	x2, x2, #0x0
		0000000000025588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   2558c: 910023e0     	add	x0, sp, #0x8
   25590: 52800141     	mov	w1, #0xa                // =10
   25594: 94000000     	bl	0x25594 <get_one_key+0xcc>
		0000000000025594:  R_AARCH64_CALL26	snprintf
   25598: 93407c04     	sxtw	x4, w0
   2559c: 910023e3     	add	x3, sp, #0x8
   255a0: aa1403e1     	mov	x1, x20
   255a4: aa1503e0     	mov	x0, x21
   255a8: aa1303e2     	mov	x2, x19
   255ac: 94000000     	bl	0x255ac <get_one_key+0xe4>
		00000000000255ac:  R_AARCH64_CALL26	simple_read_from_buffer
   255b0: 17ffffd4     	b	0x25500 <get_one_key+0x38>
   255b4: 94000000     	bl	0x255b4 <get_one_key+0xec>
		00000000000255b4:  R_AARCH64_CALL26	__stack_chk_fail
