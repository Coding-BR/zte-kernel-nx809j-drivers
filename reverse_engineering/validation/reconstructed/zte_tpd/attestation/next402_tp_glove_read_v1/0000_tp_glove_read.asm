
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e1b4 <tp_glove_read>:
   1e1b4: d503233f     	paciasp
   1e1b8: d10143ff     	sub	sp, sp, #0x50
   1e1bc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1e1c0: a90357f6     	stp	x22, x21, [sp, #0x30]
   1e1c4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1e1c8: 910083fd     	add	x29, sp, #0x20
   1e1cc: d5384108     	mrs	x8, SP_EL0
   1e1d0: aa1f03e0     	mov	x0, xzr
   1e1d4: f9438908     	ldr	x8, [x8, #0x710]
   1e1d8: f81f83a8     	stur	x8, [x29, #-0x8]
   1e1dc: f9400068     	ldr	x8, [x3]
   1e1e0: f90007ff     	str	xzr, [sp, #0x8]
   1e1e4: b4000188     	cbz	x8, 0x1e214 <tp_glove_read+0x60>
   1e1e8: d5384108     	mrs	x8, SP_EL0
   1e1ec: f9438908     	ldr	x8, [x8, #0x710]
   1e1f0: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e1f4: eb09011f     	cmp	x8, x9
   1e1f8: 54000541     	b.ne	0x1e2a0 <tp_glove_read+0xec>
   1e1fc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1e200: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1e204: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1e208: 910143ff     	add	sp, sp, #0x50
   1e20c: d50323bf     	autiasp
   1e210: d65f03c0     	ret
   1e214: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x424>
		000000000001e214:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e218: f9000bff     	str	xzr, [sp, #0x10]
   1e21c: aa0103f5     	mov	x21, x1
   1e220: f9400116     	ldr	x22, [x8]
		000000000001e220:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e224: aa0203f4     	mov	x20, x2
   1e228: aa0303f3     	mov	x19, x3
   1e22c: f94726c8     	ldr	x8, [x22, #0xe48]
   1e230: b4000128     	cbz	x8, 0x1e254 <tp_glove_read+0xa0>
   1e234: aa1603e0     	mov	x0, x22
   1e238: b85fc110     	ldur	w16, [x8, #-0x4]
   1e23c: 7281af31     	movk	w17, #0xd79
   1e240: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e244: 6b11021f     	cmp	w16, w17
   1e248: 54000040     	b.eq	0x1e250 <tp_glove_read+0x9c>
   1e24c: d4304500     	brk	#0x8228
   1e250: d63f0100     	blr	x8
   1e254: b9400ac2     	ldr	w2, [x22, #0x8]
   1e258: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x424>
		000000000001e258:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
   1e25c: 91000000     	add	x0, x0, #0x0
		000000000001e25c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
   1e260: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x424>
		000000000001e260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d96
   1e264: 91000021     	add	x1, x1, #0x0
		000000000001e264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d96
   1e268: 94000000     	bl	0x1e268 <tp_glove_read+0xb4>
		000000000001e268:  R_AARCH64_CALL26	_printk
   1e26c: b9400ac3     	ldr	w3, [x22, #0x8]
   1e270: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
   1e274: 91000042     	add	x2, x2, #0x0
		000000000001e274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
   1e278: 910023e0     	add	x0, sp, #0x8
   1e27c: 52800141     	mov	w1, #0xa                // =10
   1e280: 94000000     	bl	0x1e280 <tp_glove_read+0xcc>
		000000000001e280:  R_AARCH64_CALL26	snprintf
   1e284: 93407c04     	sxtw	x4, w0
   1e288: 910023e3     	add	x3, sp, #0x8
   1e28c: aa1403e1     	mov	x1, x20
   1e290: aa1503e0     	mov	x0, x21
   1e294: aa1303e2     	mov	x2, x19
   1e298: 94000000     	bl	0x1e298 <tp_glove_read+0xe4>
		000000000001e298:  R_AARCH64_CALL26	simple_read_from_buffer
   1e29c: 17ffffd3     	b	0x1e1e8 <tp_glove_read+0x34>
   1e2a0: 94000000     	bl	0x1e2a0 <tp_glove_read+0xec>
		000000000001e2a0:  R_AARCH64_CALL26	__stack_chk_fail
