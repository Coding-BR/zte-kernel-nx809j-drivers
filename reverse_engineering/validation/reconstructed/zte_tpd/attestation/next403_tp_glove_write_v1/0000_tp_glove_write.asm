
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e2a8 <tp_glove_write>:
   1e2a8: d503233f     	paciasp
   1e2ac: d100c3ff     	sub	sp, sp, #0x30
   1e2b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1e2b4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1e2b8: 910043fd     	add	x29, sp, #0x10
   1e2bc: d5384108     	mrs	x8, SP_EL0
   1e2c0: aa0203f3     	mov	x19, x2
   1e2c4: aa0103e0     	mov	x0, x1
   1e2c8: f9438908     	ldr	x8, [x8, #0x710]
   1e2cc: 910013e3     	add	x3, sp, #0x4
   1e2d0: aa0203e1     	mov	x1, x2
   1e2d4: 52800142     	mov	w2, #0xa                // =10
   1e2d8: f90007e8     	str	x8, [sp, #0x8]
   1e2dc: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x424>
		000000000001e2dc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e2e0: f9400114     	ldr	x20, [x8]
		000000000001e2e0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e2e4: b90007ff     	str	wzr, [sp, #0x4]
   1e2e8: 94000000     	bl	0x1e2e8 <tp_glove_write+0x40>
		000000000001e2e8:  R_AARCH64_CALL26	kstrtouint_from_user
   1e2ec: 340001a0     	cbz	w0, 0x1e320 <tp_glove_write+0x78>
   1e2f0: 928002b3     	mov	x19, #-0x16             // =-22
   1e2f4: d5384108     	mrs	x8, SP_EL0
   1e2f8: f9438908     	ldr	x8, [x8, #0x710]
   1e2fc: f94007e9     	ldr	x9, [sp, #0x8]
   1e300: eb09011f     	cmp	x8, x9
   1e304: 54000381     	b.ne	0x1e374 <tp_glove_write+0xcc>
   1e308: aa1303e0     	mov	x0, x19
   1e30c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1e310: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1e314: 9100c3ff     	add	sp, sp, #0x30
   1e318: d50323bf     	autiasp
   1e31c: d65f03c0     	ret
   1e320: b94007e8     	ldr	w8, [sp, #0x4]
   1e324: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x424>
		000000000001e324:  R_AARCH64_ADR_PREL_PG_HI21	unk_328A8
   1e328: 91000000     	add	x0, x0, #0x0
		000000000001e328:  R_AARCH64_ADD_ABS_LO12_NC	unk_328A8
   1e32c: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x424>
		000000000001e32c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x375b
   1e330: 91000021     	add	x1, x1, #0x0
		000000000001e330:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x375b
   1e334: 7100011f     	cmp	w8, #0x0
   1e338: 1a9f07e2     	cset	w2, ne
   1e33c: b90007e2     	str	w2, [sp, #0x4]
   1e340: 94000000     	bl	0x1e340 <tp_glove_write+0x98>
		000000000001e340:  R_AARCH64_CALL26	_printk
   1e344: f9472a88     	ldr	x8, [x20, #0xe50]
   1e348: b4fffd68     	cbz	x8, 0x1e2f4 <tp_glove_write+0x4c>
   1e34c: b94007e1     	ldr	w1, [sp, #0x4]
   1e350: aa1403e0     	mov	x0, x20
   1e354: b85fc110     	ldur	w16, [x8, #-0x4]
   1e358: 72969331     	movk	w17, #0xb499
   1e35c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1e360: 6b11021f     	cmp	w16, w17
   1e364: 54000040     	b.eq	0x1e36c <tp_glove_write+0xc4>
   1e368: d4304500     	brk	#0x8228
   1e36c: d63f0100     	blr	x8
   1e370: 17ffffe1     	b	0x1e2f4 <tp_glove_write+0x4c>
   1e374: 94000000     	bl	0x1e374 <tp_glove_write+0xcc>
		000000000001e374:  R_AARCH64_CALL26	__stack_chk_fail
