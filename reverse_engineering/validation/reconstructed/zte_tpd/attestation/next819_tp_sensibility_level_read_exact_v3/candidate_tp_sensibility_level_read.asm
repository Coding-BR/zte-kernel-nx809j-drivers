
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025488 <tp_sensibility_level_read>:
   25488: d503233f     	paciasp
   2548c: d10143ff     	sub	sp, sp, #0x50
   25490: a9027bfd     	stp	x29, x30, [sp, #0x20]
   25494: a90357f6     	stp	x22, x21, [sp, #0x30]
   25498: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2549c: 910083fd     	add	x29, sp, #0x20
   254a0: d5384108     	mrs	x8, SP_EL0
   254a4: aa1f03e0     	mov	x0, xzr
   254a8: f9438908     	ldr	x8, [x8, #0x710]
   254ac: f81f83a8     	stur	x8, [x29, #-0x8]
   254b0: f9400068     	ldr	x8, [x3]
   254b4: 790023ff     	strh	wzr, [sp, #0x10]
   254b8: f90007ff     	str	xzr, [sp, #0x8]
   254bc: b4000188     	cbz	x8, 0x254ec <tp_sensibility_level_read+0x64>
   254c0: d5384108     	mrs	x8, SP_EL0
   254c4: f9438908     	ldr	x8, [x8, #0x710]
   254c8: f85f83a9     	ldur	x9, [x29, #-0x8]
   254cc: eb09011f     	cmp	x8, x9
   254d0: 54000521     	b.ne	0x25574 <tp_sensibility_level_read+0xec>
   254d4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   254d8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   254dc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   254e0: 910143ff     	add	sp, sp, #0x50
   254e4: d50323bf     	autiasp
   254e8: d65f03c0     	ret
   254ec: 90000008     	adrp	x8, 0x25000 <get_tp_report_rate+0xac>
		00000000000254ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   254f0: aa0103f5     	mov	x21, x1
   254f4: aa0203f4     	mov	x20, x2
   254f8: f9400116     	ldr	x22, [x8]
		00000000000254f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   254fc: aa0303f3     	mov	x19, x3
   25500: f947b2c8     	ldr	x8, [x22, #0xf60]
   25504: b4000128     	cbz	x8, 0x25528 <tp_sensibility_level_read+0xa0>
   25508: aa1603e0     	mov	x0, x22
   2550c: b85fc110     	ldur	w16, [x8, #-0x4]
   25510: 7281af31     	movk	w17, #0xd79
   25514: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25518: 6b11021f     	cmp	w16, w17
   2551c: 54000040     	b.eq	0x25524 <tp_sensibility_level_read+0x9c>
   25520: d4304500     	brk	#0x8228
   25524: d63f0100     	blr	x8
   25528: 394102c2     	ldrb	w2, [x22, #0x40]
   2552c: 90000000     	adrp	x0, 0x25000 <get_tp_report_rate+0xac>
		000000000002552c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7369
   25530: 91000000     	add	x0, x0, #0x0
		0000000000025530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7369
   25534: 90000001     	adrp	x1, 0x25000 <get_tp_report_rate+0xac>
		0000000000025534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
   25538: 91000021     	add	x1, x1, #0x0
		0000000000025538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
   2553c: 94000000     	bl	0x2553c <tp_sensibility_level_read+0xb4>
		000000000002553c:  R_AARCH64_CALL26	_printk
   25540: 394102c3     	ldrb	w3, [x22, #0x40]
   25544: 90000002     	adrp	x2, 0x25000 <get_tp_report_rate+0xac>
		0000000000025544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25548: 91000042     	add	x2, x2, #0x0
		0000000000025548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   2554c: 910023e0     	add	x0, sp, #0x8
   25550: 52800141     	mov	w1, #0xa                // =10
   25554: 94000000     	bl	0x25554 <tp_sensibility_level_read+0xcc>
		0000000000025554:  R_AARCH64_CALL26	snprintf
   25558: 93407c04     	sxtw	x4, w0
   2555c: 910023e3     	add	x3, sp, #0x8
   25560: aa1403e1     	mov	x1, x20
   25564: aa1503e0     	mov	x0, x21
   25568: aa1303e2     	mov	x2, x19
   2556c: 94000000     	bl	0x2556c <tp_sensibility_level_read+0xe4>
		000000000002556c:  R_AARCH64_CALL26	simple_read_from_buffer
   25570: 17ffffd4     	b	0x254c0 <tp_sensibility_level_read+0x38>
   25574: 94000000     	bl	0x25574 <tp_sensibility_level_read+0xec>
		0000000000025574:  R_AARCH64_CALL26	__stack_chk_fail
