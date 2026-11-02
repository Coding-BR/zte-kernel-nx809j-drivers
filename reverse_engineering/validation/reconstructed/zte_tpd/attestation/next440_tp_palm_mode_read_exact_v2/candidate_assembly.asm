
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e68c <tp_palm_mode_read>:
   1e68c: d503233f     	paciasp
   1e690: d10143ff     	sub	sp, sp, #0x50
   1e694: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1e698: a90357f6     	stp	x22, x21, [sp, #0x30]
   1e69c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1e6a0: 910083fd     	add	x29, sp, #0x20
   1e6a4: d5384108     	mrs	x8, SP_EL0
   1e6a8: aa1f03e0     	mov	x0, xzr
   1e6ac: f9438908     	ldr	x8, [x8, #0x710]
   1e6b0: f81f83a8     	stur	x8, [x29, #-0x8]
   1e6b4: f9400068     	ldr	x8, [x3]
   1e6b8: 790023ff     	strh	wzr, [sp, #0x10]
   1e6bc: f90007ff     	str	xzr, [sp, #0x8]
   1e6c0: b4000188     	cbz	x8, 0x1e6f0 <tp_palm_mode_read+0x64>
   1e6c4: d5384108     	mrs	x8, SP_EL0
   1e6c8: f9438908     	ldr	x8, [x8, #0x710]
   1e6cc: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e6d0: eb09011f     	cmp	x8, x9
   1e6d4: 54000521     	b.ne	0x1e778 <tp_palm_mode_read+0xec>
   1e6d8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1e6dc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1e6e0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1e6e4: 910143ff     	add	sp, sp, #0x50
   1e6e8: d50323bf     	autiasp
   1e6ec: d65f03c0     	ret
   1e6f0: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e6f0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e6f4: aa0103f5     	mov	x21, x1
   1e6f8: aa0203f4     	mov	x20, x2
   1e6fc: f9400116     	ldr	x22, [x8]
		000000000001e6fc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e700: aa0303f3     	mov	x19, x3
   1e704: f947d6c8     	ldr	x8, [x22, #0xfa8]
   1e708: b4000128     	cbz	x8, 0x1e72c <tp_palm_mode_read+0xa0>
   1e70c: aa1603e0     	mov	x0, x22
   1e710: b85fc110     	ldur	w16, [x8, #-0x4]
   1e714: 7281af31     	movk	w17, #0xd79
   1e718: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e71c: 6b11021f     	cmp	w16, w17
   1e720: 54000040     	b.eq	0x1e728 <tp_palm_mode_read+0x9c>
   1e724: d4304500     	brk	#0x8228
   1e728: d63f0100     	blr	x8
   1e72c: b9447ac2     	ldr	w2, [x22, #0x478]
   1e730: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba4
   1e734: 91000000     	add	x0, x0, #0x0
		000000000001e734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba4
   1e738: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2388
   1e73c: 91000021     	add	x1, x1, #0x0
		000000000001e73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2388
   1e740: 94000000     	bl	0x1e740 <tp_palm_mode_read+0xb4>
		000000000001e740:  R_AARCH64_CALL26	_printk
   1e744: b9447ac3     	ldr	w3, [x22, #0x478]
   1e748: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48f2
   1e74c: 91000042     	add	x2, x2, #0x0
		000000000001e74c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48f2
   1e750: 910023e0     	add	x0, sp, #0x8
   1e754: 52800141     	mov	w1, #0xa                // =10
   1e758: 94000000     	bl	0x1e758 <tp_palm_mode_read+0xcc>
		000000000001e758:  R_AARCH64_CALL26	snprintf
   1e75c: 93407c04     	sxtw	x4, w0
   1e760: 910023e3     	add	x3, sp, #0x8
   1e764: aa1403e1     	mov	x1, x20
   1e768: aa1503e0     	mov	x0, x21
   1e76c: aa1303e2     	mov	x2, x19
   1e770: 94000000     	bl	0x1e770 <tp_palm_mode_read+0xe4>
		000000000001e770:  R_AARCH64_CALL26	simple_read_from_buffer
   1e774: 17ffffd4     	b	0x1e6c4 <tp_palm_mode_read+0x38>
   1e778: 94000000     	bl	0x1e778 <tp_palm_mode_read+0xec>
		000000000001e778:  R_AARCH64_CALL26	__stack_chk_fail
