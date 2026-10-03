
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002a8 <display_rotation_show>:
     2a8: d503233f     	paciasp
     2ac: d10183ff     	sub	sp, sp, #0x60
     2b0: a9037bfd     	stp	x29, x30, [sp, #0x30]
     2b4: a90457f6     	stp	x22, x21, [sp, #0x40]
     2b8: a9054ff4     	stp	x20, x19, [sp, #0x50]
     2bc: 9100c3fd     	add	x29, sp, #0x30
     2c0: d5384108     	mrs	x8, SP_EL0
     2c4: aa1f03e0     	mov	x0, xzr
     2c8: f9438908     	ldr	x8, [x8, #0x710]
     2cc: f81f83a8     	stur	x8, [x29, #-0x8]
     2d0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     2d4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     2d8: d5384108     	mrs	x8, SP_EL0
     2dc: f9400068     	ldr	x8, [x3]
     2e0: b4000188     	cbz	x8, 0x310 <display_rotation_show+0x68>
     2e4: d5384108     	mrs	x8, SP_EL0
     2e8: f9438908     	ldr	x8, [x8, #0x710]
     2ec: f85f83a9     	ldur	x9, [x29, #-0x8]
     2f0: eb09011f     	cmp	x8, x9
     2f4: 54000421     	b.ne	0x378 <display_rotation_show+0xd0>
     2f8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     2fc: a94457f6     	ldp	x22, x21, [sp, #0x40]
     300: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     304: 910183ff     	add	sp, sp, #0x60
     308: d50323bf     	autiasp
     30c: d65f03c0     	ret
     310: 90000008     	adrp	x8, 0x0 <_inline_copy_from_user>
		0000000000000310:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     314: 90000009     	adrp	x9, 0x0 <_inline_copy_from_user>
		0000000000000314:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d76
     318: 91000129     	add	x9, x9, #0x0
		0000000000000318:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d76
     31c: f9400116     	ldr	x22, [x8]
		000000000000031c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     320: 90000000     	adrp	x0, 0x0 <_inline_copy_from_user>
		0000000000000320:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
     324: 91000000     	add	x0, x0, #0x0
		0000000000000324:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
     328: aa0103f3     	mov	x19, x1
     32c: aa0903e1     	mov	x1, x9
     330: aa0203f4     	mov	x20, x2
     334: b94012c8     	ldr	w8, [x22, #0x10]
     338: aa0303f5     	mov	x21, x3
     33c: 2a0803e2     	mov	w2, w8
     340: 94000000     	bl	0x340 <display_rotation_show+0x98>
		0000000000000340:  R_AARCH64_CALL26	_printk
     344: b94012c3     	ldr	w3, [x22, #0x10]
     348: 90000002     	adrp	x2, 0x0 <_inline_copy_from_user>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab4
     34c: 91000042     	add	x2, x2, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab4
     350: 910023e0     	add	x0, sp, #0x8
     354: 528003c1     	mov	w1, #0x1e               // =30
     358: 94000000     	bl	0x358 <display_rotation_show+0xb0>
		0000000000000358:  R_AARCH64_CALL26	snprintf
     35c: 93407c04     	sxtw	x4, w0
     360: 910023e3     	add	x3, sp, #0x8
     364: aa1403e1     	mov	x1, x20
     368: aa1303e0     	mov	x0, x19
     36c: aa1503e2     	mov	x2, x21
     370: 94000000     	bl	0x370 <display_rotation_show+0xc8>
		0000000000000370:  R_AARCH64_CALL26	simple_read_from_buffer
     374: 17ffffdc     	b	0x2e4 <display_rotation_show+0x3c>
     378: 94000000     	bl	0x378 <display_rotation_show+0xd0>
		0000000000000378:  R_AARCH64_CALL26	__stack_chk_fail
