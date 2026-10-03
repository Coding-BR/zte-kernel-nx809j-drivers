
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252a4 <get_screen_off_awake>:
   252a4: d503233f     	paciasp
   252a8: d10143ff     	sub	sp, sp, #0x50
   252ac: a9027bfd     	stp	x29, x30, [sp, #0x20]
   252b0: a90357f6     	stp	x22, x21, [sp, #0x30]
   252b4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   252b8: 910083fd     	add	x29, sp, #0x20
   252bc: d5384108     	mrs	x8, SP_EL0
   252c0: aa1f03e0     	mov	x0, xzr
   252c4: f9438908     	ldr	x8, [x8, #0x710]
   252c8: f81f83a8     	stur	x8, [x29, #-0x8]
   252cc: f9400068     	ldr	x8, [x3]
   252d0: 790023ff     	strh	wzr, [sp, #0x10]
   252d4: f90007ff     	str	xzr, [sp, #0x8]
   252d8: b4000188     	cbz	x8, 0x25308 <get_screen_off_awake+0x64>
   252dc: d5384108     	mrs	x8, SP_EL0
   252e0: f9438908     	ldr	x8, [x8, #0x710]
   252e4: f85f83a9     	ldur	x9, [x29, #-0x8]
   252e8: eb09011f     	cmp	x8, x9
   252ec: 54000521     	b.ne	0x25390 <get_screen_off_awake+0xec>
   252f0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   252f4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   252f8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   252fc: 910143ff     	add	sp, sp, #0x50
   25300: d50323bf     	autiasp
   25304: d65f03c0     	ret
   25308: 90000008     	adrp	x8, 0x25000 <tp_fold_state_read+0xec>
		0000000000025308:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2530c: aa0103f5     	mov	x21, x1
   25310: aa0203f4     	mov	x20, x2
   25314: f9400116     	ldr	x22, [x8]
		0000000000025314:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25318: aa0303f3     	mov	x19, x3
   2531c: f947eec8     	ldr	x8, [x22, #0xfd8]
   25320: b4000128     	cbz	x8, 0x25344 <get_screen_off_awake+0xa0>
   25324: aa1603e0     	mov	x0, x22
   25328: b85fc110     	ldur	w16, [x8, #-0x4]
   2532c: 7281af31     	movk	w17, #0xd79
   25330: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   25334: 6b11021f     	cmp	w16, w17
   25338: 54000040     	b.eq	0x25340 <get_screen_off_awake+0x9c>
   2533c: d4304500     	brk	#0x8228
   25340: d63f0100     	blr	x8
   25344: b94486c2     	ldr	w2, [x22, #0x484]
   25348: 90000000     	adrp	x0, 0x25000 <tp_fold_state_read+0xec>
		0000000000025348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1230c
   2534c: 91000000     	add	x0, x0, #0x0
		000000000002534c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1230c
   25350: 90000001     	adrp	x1, 0x25000 <tp_fold_state_read+0xec>
		0000000000025350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1206e
   25354: 91000021     	add	x1, x1, #0x0
		0000000000025354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1206e
   25358: 94000000     	bl	0x25358 <get_screen_off_awake+0xb4>
		0000000000025358:  R_AARCH64_CALL26	_printk
   2535c: b94486c3     	ldr	w3, [x22, #0x484]
   25360: 90000002     	adrp	x2, 0x25000 <tp_fold_state_read+0xec>
		0000000000025360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121d4
   25364: 91000042     	add	x2, x2, #0x0
		0000000000025364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121d4
   25368: 910023e0     	add	x0, sp, #0x8
   2536c: 52800141     	mov	w1, #0xa                // =10
   25370: 94000000     	bl	0x25370 <get_screen_off_awake+0xcc>
		0000000000025370:  R_AARCH64_CALL26	snprintf
   25374: 93407c04     	sxtw	x4, w0
   25378: 910023e3     	add	x3, sp, #0x8
   2537c: aa1403e1     	mov	x1, x20
   25380: aa1503e0     	mov	x0, x21
   25384: aa1303e2     	mov	x2, x19
   25388: 94000000     	bl	0x25388 <get_screen_off_awake+0xe4>
		0000000000025388:  R_AARCH64_CALL26	simple_read_from_buffer
   2538c: 17ffffd4     	b	0x252dc <get_screen_off_awake+0x38>
   25390: 94000000     	bl	0x25390 <get_screen_off_awake+0xec>
		0000000000025390:  R_AARCH64_CALL26	__stack_chk_fail
