
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e85c <tp_pen_only_read>:
   1e85c: d503233f     	paciasp
   1e860: d10143ff     	sub	sp, sp, #0x50
   1e864: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1e868: a90357f6     	stp	x22, x21, [sp, #0x30]
   1e86c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1e870: 910083fd     	add	x29, sp, #0x20
   1e874: d5384108     	mrs	x8, SP_EL0
   1e878: aa1f03e0     	mov	x0, xzr
   1e87c: f9438908     	ldr	x8, [x8, #0x710]
   1e880: f81f83a8     	stur	x8, [x29, #-0x8]
   1e884: f9400068     	ldr	x8, [x3]
   1e888: 790023ff     	strh	wzr, [sp, #0x10]
   1e88c: f90007ff     	str	xzr, [sp, #0x8]
   1e890: b4000188     	cbz	x8, 0x1e8c0 <tp_pen_only_read+0x64>
   1e894: d5384108     	mrs	x8, SP_EL0
   1e898: f9438908     	ldr	x8, [x8, #0x710]
   1e89c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e8a0: eb09011f     	cmp	x8, x9
   1e8a4: 54000521     	b.ne	0x1e948 <tp_pen_only_read+0xec>
   1e8a8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1e8ac: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1e8b0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1e8b4: 910143ff     	add	sp, sp, #0x50
   1e8b8: d50323bf     	autiasp
   1e8bc: d65f03c0     	ret
   1e8c0: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001e8c0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e8c4: aa0103f5     	mov	x21, x1
   1e8c8: aa0203f4     	mov	x20, x2
   1e8cc: f9400116     	ldr	x22, [x8]
		000000000001e8cc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e8d0: aa0303f3     	mov	x19, x3
   1e8d4: f947c2c8     	ldr	x8, [x22, #0xf80]
   1e8d8: b4000128     	cbz	x8, 0x1e8fc <tp_pen_only_read+0xa0>
   1e8dc: aa1603e0     	mov	x0, x22
   1e8e0: b85fc110     	ldur	w16, [x8, #-0x4]
   1e8e4: 7281af31     	movk	w17, #0xd79
   1e8e8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e8ec: 6b11021f     	cmp	w16, w17
   1e8f0: 54000040     	b.eq	0x1e8f8 <tp_pen_only_read+0x9c>
   1e8f4: d4304500     	brk	#0x8228
   1e8f8: d63f0100     	blr	x8
   1e8fc: 395106c2     	ldrb	w2, [x22, #0x441]
   1e900: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001e900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2afa
   1e904: 91000000     	add	x0, x0, #0x0
		000000000001e904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2afa
   1e908: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001e908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ff6
   1e90c: 91000021     	add	x1, x1, #0x0
		000000000001e90c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ff6
   1e910: 94000000     	bl	0x1e910 <tp_pen_only_read+0xb4>
		000000000001e910:  R_AARCH64_CALL26	_printk
   1e914: 395106c3     	ldrb	w3, [x22, #0x441]
   1e918: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x3b4>
		000000000001e918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4916
   1e91c: 91000042     	add	x2, x2, #0x0
		000000000001e91c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4916
   1e920: 910023e0     	add	x0, sp, #0x8
   1e924: 52800141     	mov	w1, #0xa                // =10
   1e928: 94000000     	bl	0x1e928 <tp_pen_only_read+0xcc>
		000000000001e928:  R_AARCH64_CALL26	snprintf
   1e92c: 93407c04     	sxtw	x4, w0
   1e930: 910023e3     	add	x3, sp, #0x8
   1e934: aa1403e1     	mov	x1, x20
   1e938: aa1503e0     	mov	x0, x21
   1e93c: aa1303e2     	mov	x2, x19
   1e940: 94000000     	bl	0x1e940 <tp_pen_only_read+0xe4>
		000000000001e940:  R_AARCH64_CALL26	simple_read_from_buffer
   1e944: 17ffffd4     	b	0x1e894 <tp_pen_only_read+0x38>
   1e948: 94000000     	bl	0x1e948 <tp_pen_only_read+0xec>
		000000000001e948:  R_AARCH64_CALL26	__stack_chk_fail
