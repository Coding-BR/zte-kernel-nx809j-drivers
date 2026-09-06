
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252c8 <set_screen_off_awake>:
   252c8: d503233f     	paciasp
   252cc: d100c3ff     	sub	sp, sp, #0x30
   252d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   252d4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   252d8: 910043fd     	add	x29, sp, #0x10
   252dc: d5384108     	mrs	x8, SP_EL0
   252e0: aa0203f3     	mov	x19, x2
   252e4: aa0103e0     	mov	x0, x1
   252e8: f9438908     	ldr	x8, [x8, #0x710]
   252ec: 910013e3     	add	x3, sp, #0x4
   252f0: aa0203e1     	mov	x1, x2
   252f4: 52800142     	mov	w2, #0xa                // =10
   252f8: f90007e8     	str	x8, [sp, #0x8]
   252fc: 90000008     	adrp	x8, 0x25000 <tp_fold_state_write+0xc8>
		00000000000252fc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25300: f9400114     	ldr	x20, [x8]
		0000000000025300:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25304: b90007ff     	str	wzr, [sp, #0x4]
   25308: 94000000     	bl	0x25308 <set_screen_off_awake+0x40>
		0000000000025308:  R_AARCH64_CALL26	kstrtouint_from_user
   2530c: 340001a0     	cbz	w0, 0x25340 <set_screen_off_awake+0x78>
   25310: 928002b3     	mov	x19, #-0x16             // =-22
   25314: d5384108     	mrs	x8, SP_EL0
   25318: f9438908     	ldr	x8, [x8, #0x710]
   2531c: f94007e9     	ldr	x9, [sp, #0x8]
   25320: eb09011f     	cmp	x8, x9
   25324: 54000381     	b.ne	0x25394 <set_screen_off_awake+0xcc>
   25328: aa1303e0     	mov	x0, x19
   2532c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25330: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25334: 9100c3ff     	add	sp, sp, #0x30
   25338: d50323bf     	autiasp
   2533c: d65f03c0     	ret
   25340: b94007e8     	ldr	w8, [sp, #0x4]
   25344: 90000000     	adrp	x0, 0x25000 <tp_fold_state_write+0xc8>
		0000000000025344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1209e
   25348: 91000000     	add	x0, x0, #0x0
		0000000000025348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1209e
   2534c: 90000001     	adrp	x1, 0x25000 <tp_fold_state_write+0xc8>
		000000000002534c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x124a0
   25350: 91000021     	add	x1, x1, #0x0
		0000000000025350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x124a0
   25354: 7100011f     	cmp	w8, #0x0
   25358: 1a9f07e2     	cset	w2, ne
   2535c: b90007e2     	str	w2, [sp, #0x4]
   25360: 94000000     	bl	0x25360 <set_screen_off_awake+0x98>
		0000000000025360:  R_AARCH64_CALL26	_printk
   25364: f947f288     	ldr	x8, [x20, #0xfe0]
   25368: b4fffd68     	cbz	x8, 0x25314 <set_screen_off_awake+0x4c>
   2536c: b94007e1     	ldr	w1, [sp, #0x4]
   25370: aa1403e0     	mov	x0, x20
   25374: b85fc110     	ldur	w16, [x8, #-0x4]
   25378: 72969331     	movk	w17, #0xb499
   2537c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25380: 6b11021f     	cmp	w16, w17
   25384: 54000040     	b.eq	0x2538c <set_screen_off_awake+0xc4>
   25388: d4304500     	brk	#0x8228
   2538c: d63f0100     	blr	x8
   25390: 17ffffe1     	b	0x25314 <set_screen_off_awake+0x4c>
   25394: 94000000     	bl	0x25394 <set_screen_off_awake+0xcc>
		0000000000025394:  R_AARCH64_CALL26	__stack_chk_fail
