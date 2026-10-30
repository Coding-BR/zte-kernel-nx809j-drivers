
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252d0 <tp_fold_state_write>:
   252d0: d503233f     	paciasp
   252d4: d100c3ff     	sub	sp, sp, #0x30
   252d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   252dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
   252e0: 910043fd     	add	x29, sp, #0x10
   252e4: d5384108     	mrs	x8, SP_EL0
   252e8: aa0203f3     	mov	x19, x2
   252ec: aa0103e0     	mov	x0, x1
   252f0: f9438908     	ldr	x8, [x8, #0x710]
   252f4: 910013e3     	add	x3, sp, #0x4
   252f8: aa0203e1     	mov	x1, x2
   252fc: 52800142     	mov	w2, #0xa                // =10
   25300: f90007e8     	str	x8, [sp, #0x8]
   25304: 90000008     	adrp	x8, 0x25000 <tp_game_partition_read+0x44>
		0000000000025304:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25308: f9400114     	ldr	x20, [x8]
		0000000000025308:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2530c: b90007ff     	str	wzr, [sp, #0x4]
   25310: 94000000     	bl	0x25310 <tp_fold_state_write+0x40>
		0000000000025310:  R_AARCH64_CALL26	kstrtouint_from_user
   25314: 340001a0     	cbz	w0, 0x25348 <tp_fold_state_write+0x78>
   25318: 928002b3     	mov	x19, #-0x16             // =-22
   2531c: d5384108     	mrs	x8, SP_EL0
   25320: f9438908     	ldr	x8, [x8, #0x710]
   25324: f94007e9     	ldr	x9, [sp, #0x8]
   25328: eb09011f     	cmp	x8, x9
   2532c: 54000381     	b.ne	0x2539c <tp_fold_state_write+0xcc>
   25330: aa1303e0     	mov	x0, x19
   25334: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25338: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   2533c: 9100c3ff     	add	sp, sp, #0x30
   25340: d50323bf     	autiasp
   25344: d65f03c0     	ret
   25348: b94007e8     	ldr	w8, [sp, #0x4]
   2534c: 90000000     	adrp	x0, 0x25000 <tp_game_partition_read+0x44>
		000000000002534c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120c0
   25350: 91000000     	add	x0, x0, #0x0
		0000000000025350:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120c0
   25354: 90000001     	adrp	x1, 0x25000 <tp_game_partition_read+0x44>
		0000000000025354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121d6
   25358: 91000021     	add	x1, x1, #0x0
		0000000000025358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121d6
   2535c: 7100011f     	cmp	w8, #0x0
   25360: 1a9f07e2     	cset	w2, ne
   25364: b90007e2     	str	w2, [sp, #0x4]
   25368: 94000000     	bl	0x25368 <tp_fold_state_write+0x98>
		0000000000025368:  R_AARCH64_CALL26	_printk
   2536c: f947e288     	ldr	x8, [x20, #0xfc0]
   25370: b4fffd68     	cbz	x8, 0x2531c <tp_fold_state_write+0x4c>
   25374: b94007e1     	ldr	w1, [sp, #0x4]
   25378: aa1403e0     	mov	x0, x20
   2537c: b85fc110     	ldur	w16, [x8, #-0x4]
   25380: 72969331     	movk	w17, #0xb499
   25384: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25388: 6b11021f     	cmp	w16, w17
   2538c: 54000040     	b.eq	0x25394 <tp_fold_state_write+0xc4>
   25390: d4304500     	brk	#0x8228
   25394: d63f0100     	blr	x8
   25398: 17ffffe1     	b	0x2531c <tp_fold_state_write+0x4c>
   2539c: 94000000     	bl	0x2539c <tp_fold_state_write+0xcc>
		000000000002539c:  R_AARCH64_CALL26	__stack_chk_fail
