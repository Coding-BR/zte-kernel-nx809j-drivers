
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005548 <get_tp_report_rate>:
    5548: d503233f     	paciasp
    554c: d10143ff     	sub	sp, sp, #0x50
    5550: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5554: a90357f6     	stp	x22, x21, [sp, #0x30]
    5558: a9044ff4     	stp	x20, x19, [sp, #0x40]
    555c: 910083fd     	add	x29, sp, #0x20
    5560: d5384108     	mrs	x8, SP_EL0
    5564: aa1f03e0     	mov	x0, xzr
    5568: f9438908     	ldr	x8, [x8, #0x710]
    556c: f81f83a8     	stur	x8, [x29, #-0x8]
    5570: f9400068     	ldr	x8, [x3]
    5574: 790023ff     	strh	wzr, [sp, #0x10]
    5578: f90007ff     	str	xzr, [sp, #0x8]
    557c: b4000188     	cbz	x8, 0x55ac <get_tp_report_rate+0x64>
    5580: d5384108     	mrs	x8, SP_EL0
    5584: f9438908     	ldr	x8, [x8, #0x710]
    5588: f85f83a9     	ldur	x9, [x29, #-0x8]
    558c: eb09011f     	cmp	x8, x9
    5590: 54000521     	b.ne	0x5634 <get_tp_report_rate+0xec>
    5594: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5598: a94357f6     	ldp	x22, x21, [sp, #0x30]
    559c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    55a0: 910143ff     	add	sp, sp, #0x50
    55a4: d50323bf     	autiasp
    55a8: d65f03c0     	ret
    55ac: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000055ac:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    55b0: aa0103f5     	mov	x21, x1
    55b4: aa0203f4     	mov	x20, x2
    55b8: f9400116     	ldr	x22, [x8]
		00000000000055b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    55bc: aa0303f3     	mov	x19, x3
    55c0: f9478ec8     	ldr	x8, [x22, #0xf18]
    55c4: b4000128     	cbz	x8, 0x55e8 <get_tp_report_rate+0xa0>
    55c8: aa1603e0     	mov	x0, x22
    55cc: b85fc110     	ldur	w16, [x8, #-0x4]
    55d0: 7281af31     	movk	w17, #0xd79
    55d4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    55d8: 6b11021f     	cmp	w16, w17
    55dc: 54000040     	b.eq	0x55e4 <get_tp_report_rate+0x9c>
    55e0: d4304500     	brk	#0x8228
    55e4: d63f0100     	blr	x8
    55e8: b94466c2     	ldr	w2, [x22, #0x464]
    55ec: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000055ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    55f0: 91000000     	add	x0, x0, #0x0
		00000000000055f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    55f4: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000055f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1816
    55f8: 91000021     	add	x1, x1, #0x0
		00000000000055f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1816
    55fc: 94000000     	bl	0x55fc <get_tp_report_rate+0xb4>
		00000000000055fc:  R_AARCH64_CALL26	_printk
    5600: b94466c3     	ldr	w3, [x22, #0x464]
    5604: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    5608: 91000042     	add	x2, x2, #0x0
		0000000000005608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    560c: 910023e0     	add	x0, sp, #0x8
    5610: 52800141     	mov	w1, #0xa                // =10
    5614: 94000000     	bl	0x5614 <get_tp_report_rate+0xcc>
		0000000000005614:  R_AARCH64_CALL26	snprintf
    5618: 93407c04     	sxtw	x4, w0
    561c: 910023e3     	add	x3, sp, #0x8
    5620: aa1403e1     	mov	x1, x20
    5624: aa1503e0     	mov	x0, x21
    5628: aa1303e2     	mov	x2, x19
    562c: 94000000     	bl	0x562c <get_tp_report_rate+0xe4>
		000000000000562c:  R_AARCH64_CALL26	simple_read_from_buffer
    5630: 17ffffd4     	b	0x5580 <get_tp_report_rate+0x38>
    5634: 94000000     	bl	0x5634 <get_tp_report_rate+0xec>
		0000000000005634:  R_AARCH64_CALL26	__stack_chk_fail
