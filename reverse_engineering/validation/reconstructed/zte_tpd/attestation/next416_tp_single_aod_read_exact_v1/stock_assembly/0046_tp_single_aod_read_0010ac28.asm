
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000043a0 <tp_single_aod_read>:
    43a0: d503233f     	paciasp
    43a4: d10143ff     	sub	sp, sp, #0x50
    43a8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    43ac: a90357f6     	stp	x22, x21, [sp, #0x30]
    43b0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    43b4: 910083fd     	add	x29, sp, #0x20
    43b8: d5384108     	mrs	x8, SP_EL0
    43bc: aa1f03e0     	mov	x0, xzr
    43c0: f9438908     	ldr	x8, [x8, #0x710]
    43c4: f81f83a8     	stur	x8, [x29, #-0x8]
    43c8: f9400068     	ldr	x8, [x3]
    43cc: 790023ff     	strh	wzr, [sp, #0x10]
    43d0: f90007ff     	str	xzr, [sp, #0x8]
    43d4: b4000188     	cbz	x8, 0x4404 <tp_single_aod_read+0x64>
    43d8: d5384108     	mrs	x8, SP_EL0
    43dc: f9438908     	ldr	x8, [x8, #0x710]
    43e0: f85f83a9     	ldur	x9, [x29, #-0x8]
    43e4: eb09011f     	cmp	x8, x9
    43e8: 54000521     	b.ne	0x448c <tp_single_aod_read+0xec>
    43ec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    43f0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    43f4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    43f8: 910143ff     	add	sp, sp, #0x50
    43fc: d50323bf     	autiasp
    4400: d65f03c0     	ret
    4404: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004404:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4408: aa0103f5     	mov	x21, x1
    440c: aa0203f4     	mov	x20, x2
    4410: f9400116     	ldr	x22, [x8]
		0000000000004410:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4414: aa0303f3     	mov	x19, x3
    4418: f94766c8     	ldr	x8, [x22, #0xec8]
    441c: b4000128     	cbz	x8, 0x4440 <tp_single_aod_read+0xa0>
    4420: aa1603e0     	mov	x0, x22
    4424: b85fc110     	ldur	w16, [x8, #-0x4]
    4428: 7281af31     	movk	w17, #0xd79
    442c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    4430: 6b11021f     	cmp	w16, w17
    4434: 54000040     	b.eq	0x443c <tp_single_aod_read+0x9c>
    4438: d4304500     	brk	#0x8228
    443c: d63f0100     	blr	x8
    4440: b94452c2     	ldr	w2, [x22, #0x450]
    4444: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a98
    4448: 91000000     	add	x0, x0, #0x0
		0000000000004448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a98
    444c: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		000000000000444c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9da4
    4450: 91000021     	add	x1, x1, #0x0
		0000000000004450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9da4
    4454: 94000000     	bl	0x4454 <tp_single_aod_read+0xb4>
		0000000000004454:  R_AARCH64_CALL26	_printk
    4458: b94452c3     	ldr	w3, [x22, #0x450]
    445c: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		000000000000445c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    4460: 91000042     	add	x2, x2, #0x0
		0000000000004460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    4464: 910023e0     	add	x0, sp, #0x8
    4468: 52800141     	mov	w1, #0xa                // =10
    446c: 94000000     	bl	0x446c <tp_single_aod_read+0xcc>
		000000000000446c:  R_AARCH64_CALL26	snprintf
    4470: 93407c04     	sxtw	x4, w0
    4474: 910023e3     	add	x3, sp, #0x8
    4478: aa1403e1     	mov	x1, x20
    447c: aa1503e0     	mov	x0, x21
    4480: aa1303e2     	mov	x2, x19
    4484: 94000000     	bl	0x4484 <tp_single_aod_read+0xe4>
		0000000000004484:  R_AARCH64_CALL26	simple_read_from_buffer
    4488: 17ffffd4     	b	0x43d8 <tp_single_aod_read+0x38>
    448c: 94000000     	bl	0x448c <tp_single_aod_read+0xec>
		000000000000448c:  R_AARCH64_CALL26	__stack_chk_fail
