
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025494 <get_stability_level>:
   25494: d503233f     	paciasp
   25498: d10143ff     	sub	sp, sp, #0x50
   2549c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   254a0: a90357f6     	stp	x22, x21, [sp, #0x30]
   254a4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   254a8: 910083fd     	add	x29, sp, #0x20
   254ac: d5384108     	mrs	x8, SP_EL0
   254b0: aa1f03e0     	mov	x0, xzr
   254b4: f9438908     	ldr	x8, [x8, #0x710]
   254b8: f81f83a8     	stur	x8, [x29, #-0x8]
   254bc: f9400068     	ldr	x8, [x3]
   254c0: 790023ff     	strh	wzr, [sp, #0x10]
   254c4: f90007ff     	str	xzr, [sp, #0x8]
   254c8: b4000188     	cbz	x8, 0x254f8 <get_stability_level+0x64>
   254cc: d5384108     	mrs	x8, SP_EL0
   254d0: f9438908     	ldr	x8, [x8, #0x710]
   254d4: f85f83a9     	ldur	x9, [x29, #-0x8]
   254d8: eb09011f     	cmp	x8, x9
   254dc: 54000521     	b.ne	0x25580 <get_stability_level+0xec>
   254e0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   254e4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   254e8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   254ec: 910143ff     	add	sp, sp, #0x50
   254f0: d50323bf     	autiasp
   254f4: d65f03c0     	ret
   254f8: 90000008     	adrp	x8, 0x25000 <get_play_game+0xa0>
		00000000000254f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   254fc: aa0103f5     	mov	x21, x1
   25500: aa0203f4     	mov	x20, x2
   25504: f9400116     	ldr	x22, [x8]
		0000000000025504:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25508: aa0303f3     	mov	x19, x3
   2550c: f9479ec8     	ldr	x8, [x22, #0xf38]
   25510: b4000128     	cbz	x8, 0x25534 <get_stability_level+0xa0>
   25514: aa1603e0     	mov	x0, x22
   25518: b85fc110     	ldur	w16, [x8, #-0x4]
   2551c: 7281af31     	movk	w17, #0xd79
   25520: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25524: 6b11021f     	cmp	w16, w17
   25528: 54000040     	b.eq	0x25530 <get_stability_level+0x9c>
   2552c: d4304500     	brk	#0x8228
   25530: d63f0100     	blr	x8
   25534: b9446ec2     	ldr	w2, [x22, #0x46c]
   25538: 90000000     	adrp	x0, 0x25000 <get_play_game+0xa0>
		0000000000025538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a1
   2553c: 91000000     	add	x0, x0, #0x0
		000000000002553c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a1
   25540: 90000001     	adrp	x1, 0x25000 <get_play_game+0xa0>
		0000000000025540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4b
   25544: 91000021     	add	x1, x1, #0x0
		0000000000025544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4b
   25548: 94000000     	bl	0x25548 <get_stability_level+0xb4>
		0000000000025548:  R_AARCH64_CALL26	_printk
   2554c: b9446ec3     	ldr	w3, [x22, #0x46c]
   25550: 90000002     	adrp	x2, 0x25000 <get_play_game+0xa0>
		0000000000025550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b0
   25554: 91000042     	add	x2, x2, #0x0
		0000000000025554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b0
   25558: 910023e0     	add	x0, sp, #0x8
   2555c: 52800141     	mov	w1, #0xa                // =10
   25560: 94000000     	bl	0x25560 <get_stability_level+0xcc>
		0000000000025560:  R_AARCH64_CALL26	snprintf
   25564: 93407c04     	sxtw	x4, w0
   25568: 910023e3     	add	x3, sp, #0x8
   2556c: aa1403e1     	mov	x1, x20
   25570: aa1503e0     	mov	x0, x21
   25574: aa1303e2     	mov	x2, x19
   25578: 94000000     	bl	0x25578 <get_stability_level+0xe4>
		0000000000025578:  R_AARCH64_CALL26	simple_read_from_buffer
   2557c: 17ffffd4     	b	0x254cc <get_stability_level+0x38>
   25580: 94000000     	bl	0x25580 <get_stability_level+0xec>
		0000000000025580:  R_AARCH64_CALL26	__stack_chk_fail
