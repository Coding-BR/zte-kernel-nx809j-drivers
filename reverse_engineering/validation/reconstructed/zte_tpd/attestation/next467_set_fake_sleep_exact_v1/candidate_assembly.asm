
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252cc <set_fake_sleep>:
   252cc: d503233f     	paciasp
   252d0: d100c3ff     	sub	sp, sp, #0x30
   252d4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   252d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   252dc: 910043fd     	add	x29, sp, #0x10
   252e0: d5384108     	mrs	x8, SP_EL0
   252e4: aa0203f3     	mov	x19, x2
   252e8: aa0103e0     	mov	x0, x1
   252ec: f9438908     	ldr	x8, [x8, #0x710]
   252f0: 910013e3     	add	x3, sp, #0x4
   252f4: aa0203e1     	mov	x1, x2
   252f8: 52800142     	mov	w2, #0xa                // =10
   252fc: f90007e8     	str	x8, [sp, #0x8]
   25300: 90000008     	adrp	x8, 0x25000 <tp_game_partition_write+0x134>
		0000000000025300:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25304: f9400114     	ldr	x20, [x8]
		0000000000025304:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25308: b90007ff     	str	wzr, [sp, #0x4]
   2530c: 94000000     	bl	0x2530c <set_fake_sleep+0x40>
		000000000002530c:  R_AARCH64_CALL26	kstrtouint_from_user
   25310: 340001a0     	cbz	w0, 0x25344 <set_fake_sleep+0x78>
   25314: 928002b3     	mov	x19, #-0x16             // =-22
   25318: d5384108     	mrs	x8, SP_EL0
   2531c: f9438908     	ldr	x8, [x8, #0x710]
   25320: f94007e9     	ldr	x9, [sp, #0x8]
   25324: eb09011f     	cmp	x8, x9
   25328: 54000381     	b.ne	0x25398 <set_fake_sleep+0xcc>
   2532c: aa1303e0     	mov	x0, x19
   25330: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25334: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25338: 9100c3ff     	add	sp, sp, #0x30
   2533c: d50323bf     	autiasp
   25340: d65f03c0     	ret
   25344: b94007e8     	ldr	w8, [sp, #0x4]
   25348: 90000000     	adrp	x0, 0x25000 <tp_game_partition_write+0x134>
		0000000000025348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120b2
   2534c: 91000000     	add	x0, x0, #0x0
		000000000002534c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120b2
   25350: 90000001     	adrp	x1, 0x25000 <tp_game_partition_write+0x134>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12052
   25354: 91000021     	add	x1, x1, #0x0
		0000000000025354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12052
   25358: 7100011f     	cmp	w8, #0x0
   2535c: 1a9f07e2     	cset	w2, ne
   25360: b90007e2     	str	w2, [sp, #0x4]
   25364: 94000000     	bl	0x25364 <set_fake_sleep+0x98>
		0000000000025364:  R_AARCH64_CALL26	_printk
   25368: f947ea88     	ldr	x8, [x20, #0xfd0]
   2536c: b4fffd68     	cbz	x8, 0x25318 <set_fake_sleep+0x4c>
   25370: b94007e1     	ldr	w1, [sp, #0x4]
   25374: aa1403e0     	mov	x0, x20
   25378: b85fc110     	ldur	w16, [x8, #-0x4]
   2537c: 72969331     	movk	w17, #0xb499
   25380: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25384: 6b11021f     	cmp	w16, w17
   25388: 54000040     	b.eq	0x25390 <set_fake_sleep+0xc4>
   2538c: d4304500     	brk	#0x8228
   25390: d63f0100     	blr	x8
   25394: 17ffffe1     	b	0x25318 <set_fake_sleep+0x4c>
   25398: 94000000     	bl	0x25398 <set_fake_sleep+0xcc>
		0000000000025398:  R_AARCH64_CALL26	__stack_chk_fail
