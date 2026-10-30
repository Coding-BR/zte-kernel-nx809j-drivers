
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254a4 <get_follow_hand_level>:
   254a4: d503233f     	paciasp
   254a8: d10143ff     	sub	sp, sp, #0x50
   254ac: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254b0: a90357f6     	stp	x22, x21, [sp, #0x30]
   254b4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254b8: 910083fd     	add	x29, sp, #0x20
   254bc: d5384108     	mrs	x8, SP_EL0
   254c0: aa1f03e0     	mov	x0, xzr
   254c4: f9438908     	ldr	x8, [x8, #0x710]
   254c8: f81f83a8     	stur	x8, [x29, #-0x8]
   254cc: f9400068     	ldr	x8, [x3]
   254d0: 790023ff     	strh	wzr, [sp, #0x10]
   254d4: f90007ff     	str	xzr, [sp, #0x8]
   254d8: b4000188     	cbz	x8, 0x25508 <get_follow_hand_level+0x64>
   254dc: d5384108     	mrs	x8, SP_EL0
   254e0: f9438908     	ldr	x8, [x8, #0x710]
   254e4: f85f83a9     	ldur	x9, [x29, #-0x8]
   254e8: eb09011f     	cmp	x8, x9
   254ec: 54000521     	b.ne	0x25590 <get_follow_hand_level+0xec>
   254f0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   254f4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   254f8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   254fc: 910143ff     	add	sp, sp, #0x50
   25500: d50323bf     	autiasp
   25504: d65f03c0     	ret
   25508: 90000008     	adrp	x8, 0x25000 <get_one_key+0x9c>
		0000000000025508:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2550c: aa0103f5     	mov	x21, x1
   25510: aa0203f4     	mov	x20, x2
   25514: f9400116     	ldr	x22, [x8]
		0000000000025514:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25518: aa0303f3     	mov	x19, x3
   2551c: f94796c8     	ldr	x8, [x22, #0xf28]
   25520: b4000128     	cbz	x8, 0x25544 <get_follow_hand_level+0xa0>
   25524: aa1603e0     	mov	x0, x22
   25528: b85fc110     	ldur	w16, [x8, #-0x4]
   2552c: 7281af31     	movk	w17, #0xd79
   25530: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25534: 6b11021f     	cmp	w16, w17
   25538: 54000040     	b.eq	0x25540 <get_follow_hand_level+0x9c>
   2553c: d4304500     	brk	#0x8228
   25540: d63f0100     	blr	x8
   25544: b9446ac2     	ldr	w2, [x22, #0x468]
   25548: 90000000     	adrp	x0, 0x25000 <get_one_key+0x9c>
		0000000000025548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a1
   2554c: 91000000     	add	x0, x0, #0x0
		000000000002554c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a1
   25550: 90000001     	adrp	x1, 0x25000 <get_one_key+0x9c>
		0000000000025550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2887
   25554: 91000021     	add	x1, x1, #0x0
		0000000000025554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2887
   25558: 94000000     	bl	0x25558 <get_follow_hand_level+0xb4>
		0000000000025558:  R_AARCH64_CALL26	_printk
   2555c: b9446ac3     	ldr	w3, [x22, #0x468]
   25560: 90000002     	adrp	x2, 0x25000 <get_one_key+0x9c>
		0000000000025560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25564: 91000042     	add	x2, x2, #0x0
		0000000000025564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   25568: 910023e0     	add	x0, sp, #0x8
   2556c: 52800141     	mov	w1, #0xa                // =10
   25570: 94000000     	bl	0x25570 <get_follow_hand_level+0xcc>
		0000000000025570:  R_AARCH64_CALL26	snprintf
   25574: 93407c04     	sxtw	x4, w0
   25578: 910023e3     	add	x3, sp, #0x8
   2557c: aa1403e1     	mov	x1, x20
   25580: aa1503e0     	mov	x0, x21
   25584: aa1303e2     	mov	x2, x19
   25588: 94000000     	bl	0x25588 <get_follow_hand_level+0xe4>
		0000000000025588:  R_AARCH64_CALL26	simple_read_from_buffer
   2558c: 17ffffd4     	b	0x254dc <get_follow_hand_level+0x38>
   25590: 94000000     	bl	0x25590 <get_follow_hand_level+0xec>
		0000000000025590:  R_AARCH64_CALL26	__stack_chk_fail
