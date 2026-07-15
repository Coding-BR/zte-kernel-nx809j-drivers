
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004738 <get_tp_noise_show>:
    4738: d503233f     	paciasp
    473c: d101c3ff     	sub	sp, sp, #0x70
    4740: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4744: f90023f7     	str	x23, [sp, #0x40]
    4748: a90557f6     	stp	x22, x21, [sp, #0x50]
    474c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    4750: 9100c3fd     	add	x29, sp, #0x30
    4754: d5384108     	mrs	x8, SP_EL0
    4758: aa1f03e0     	mov	x0, xzr
    475c: f9438908     	ldr	x8, [x8, #0x710]
    4760: f81f83a8     	stur	x8, [x29, #-0x8]
    4764: f9400068     	ldr	x8, [x3]
    4768: f801e3ff     	stur	xzr, [sp, #0x1e]
    476c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    4770: f90007ff     	str	xzr, [sp, #0x8]
    4774: b50003a8     	cbnz	x8, 0x47e8 <get_tp_noise_show+0xb0>
    4778: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004778:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    477c: aa0303f3     	mov	x19, x3
    4780: aa0203f4     	mov	x20, x2
    4784: f9400116     	ldr	x22, [x8]
		0000000000004784:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4788: aa0103f5     	mov	x21, x1
    478c: 913182c0     	add	x0, x22, #0xc60
    4790: 94000000     	bl	0x4790 <get_tp_noise_show+0x58>
		0000000000004790:  R_AARCH64_CALL26	mutex_lock
    4794: f94776c8     	ldr	x8, [x22, #0xee8]
    4798: b4000128     	cbz	x8, 0x47bc <get_tp_noise_show+0x84>
    479c: aa1603e0     	mov	x0, x22
    47a0: b85fc110     	ldur	w16, [x8, #-0x4]
    47a4: 7281af31     	movk	w17, #0xd79
    47a8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    47ac: 6b11021f     	cmp	w16, w17
    47b0: 54000040     	b.eq	0x47b8 <get_tp_noise_show+0x80>
    47b4: d4304500     	brk	#0x8228
    47b8: d63f0100     	blr	x8
    47bc: f9462ec8     	ldr	x8, [x22, #0xc58]
    47c0: b50002c8     	cbnz	x8, 0x4818 <get_tp_noise_show+0xe0>
    47c4: aa1f03f7     	mov	x23, xzr
    47c8: 913182c0     	add	x0, x22, #0xc60
    47cc: 94000000     	bl	0x47cc <get_tp_noise_show+0x94>
		00000000000047cc:  R_AARCH64_CALL26	mutex_unlock
    47d0: 910023e3     	add	x3, sp, #0x8
    47d4: aa1503e0     	mov	x0, x21
    47d8: aa1403e1     	mov	x1, x20
    47dc: aa1303e2     	mov	x2, x19
    47e0: aa1703e4     	mov	x4, x23
    47e4: 94000000     	bl	0x47e4 <get_tp_noise_show+0xac>
		00000000000047e4:  R_AARCH64_CALL26	simple_read_from_buffer
    47e8: d5384108     	mrs	x8, SP_EL0
    47ec: f9438908     	ldr	x8, [x8, #0x710]
    47f0: f85f83a9     	ldur	x9, [x29, #-0x8]
    47f4: eb09011f     	cmp	x8, x9
    47f8: 540002a1     	b.ne	0x484c <get_tp_noise_show+0x114>
    47fc: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    4800: f94023f7     	ldr	x23, [sp, #0x40]
    4804: a94557f6     	ldp	x22, x21, [sp, #0x50]
    4808: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    480c: 9101c3ff     	add	sp, sp, #0x70
    4810: d50323bf     	autiasp
    4814: d65f03c0     	ret
    4818: f9400103     	ldr	x3, [x8]
    481c: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		000000000000481c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7439
    4820: 91000042     	add	x2, x2, #0x0
		0000000000004820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7439
    4824: 910023e0     	add	x0, sp, #0x8
    4828: 528003c1     	mov	w1, #0x1e               // =30
    482c: 94000000     	bl	0x482c <get_tp_noise_show+0xf4>
		000000000000482c:  R_AARCH64_CALL26	snprintf
    4830: f9462ec8     	ldr	x8, [x22, #0xc58]
    4834: 93407c17     	sxtw	x23, w0
    4838: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37aa
    483c: 91000000     	add	x0, x0, #0x0
		000000000000483c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37aa
    4840: f9400101     	ldr	x1, [x8]
    4844: 94000000     	bl	0x4844 <get_tp_noise_show+0x10c>
		0000000000004844:  R_AARCH64_CALL26	_printk
    4848: 17ffffe0     	b	0x47c8 <get_tp_noise_show+0x90>
    484c: 94000000     	bl	0x484c <get_tp_noise_show+0x114>
		000000000000484c:  R_AARCH64_CALL26	__stack_chk_fail
