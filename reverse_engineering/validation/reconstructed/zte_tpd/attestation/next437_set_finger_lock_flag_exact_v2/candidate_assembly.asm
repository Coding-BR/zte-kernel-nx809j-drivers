
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000023d8 <set_finger_lock_flag>:
    23d8: d503233f     	paciasp
    23dc: d100c3ff     	sub	sp, sp, #0x30
    23e0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    23e4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    23e8: 910043fd     	add	x29, sp, #0x10
    23ec: d5384108     	mrs	x8, SP_EL0
    23f0: aa0203f3     	mov	x19, x2
    23f4: aa0103e0     	mov	x0, x1
    23f8: f9438908     	ldr	x8, [x8, #0x710]
    23fc: 910013e3     	add	x3, sp, #0x4
    2400: aa0203e1     	mov	x1, x2
    2404: 52800142     	mov	w2, #0xa                // =10
    2408: f90007e8     	str	x8, [sp, #0x8]
    240c: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x60>
		000000000000240c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    2410: f9400114     	ldr	x20, [x8]
		0000000000002410:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2414: b90007ff     	str	wzr, [sp, #0x4]
    2418: 94000000     	bl	0x2418 <set_finger_lock_flag+0x40>
		0000000000002418:  R_AARCH64_CALL26	kstrtouint_from_user
    241c: 340001a0     	cbz	w0, 0x2450 <set_finger_lock_flag+0x78>
    2420: 928002b3     	mov	x19, #-0x16             // =-22
    2424: d5384108     	mrs	x8, SP_EL0
    2428: f9438908     	ldr	x8, [x8, #0x710]
    242c: f94007e9     	ldr	x9, [sp, #0x8]
    2430: eb09011f     	cmp	x8, x9
    2434: 54000421     	b.ne	0x24b8 <set_finger_lock_flag+0xe0>
    2438: aa1303e0     	mov	x0, x19
    243c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2440: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2444: 9100c3ff     	add	sp, sp, #0x30
    2448: d50323bf     	autiasp
    244c: d65f03c0     	ret
    2450: b94007e8     	ldr	w8, [sp, #0x4]
    2454: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x60>
		0000000000002454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3801
    2458: 91000000     	add	x0, x0, #0x0
		0000000000002458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3801
    245c: 90000001     	adrp	x1, 0x2000 <report_ufp_uevent+0x60>
		000000000000245c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5acc
    2460: 91000021     	add	x1, x1, #0x0
		0000000000002460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5acc
    2464: 7100011f     	cmp	w8, #0x0
    2468: 1a9f07e2     	cset	w2, ne
    246c: b90007e2     	str	w2, [sp, #0x4]
    2470: 94000000     	bl	0x2470 <set_finger_lock_flag+0x98>
		0000000000002470:  R_AARCH64_CALL26	_printk
    2474: b94007e8     	ldr	w8, [sp, #0x4]
    2478: b9047688     	str	w8, [x20, #0x474]
    247c: 34fffd48     	cbz	w8, 0x2424 <set_finger_lock_flag+0x4c>
    2480: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x60>
		0000000000002480:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    2484: 39400108     	ldrb	w8, [x8]
		0000000000002484:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    2488: 7100051f     	cmp	w8, #0x1
    248c: 54000081     	b.ne	0x249c <set_finger_lock_flag+0xc4>
    2490: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x60>
		0000000000002490:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    2494: 91000000     	add	x0, x0, #0x0
		0000000000002494:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    2498: 94000000     	bl	0x2498 <set_finger_lock_flag+0xc0>
		0000000000002498:  R_AARCH64_CALL26	complete
    249c: b9445a88     	ldr	w8, [x20, #0x458]
    24a0: 35fffc28     	cbnz	w8, 0x2424 <set_finger_lock_flag+0x4c>
    24a4: 52800c80     	mov	w0, #0x64               // =100
    24a8: 94000000     	bl	0x24a8 <set_finger_lock_flag+0xd0>
		00000000000024a8:  R_AARCH64_CALL26	msleep
    24ac: 2a1f03e0     	mov	w0, wzr
    24b0: 94000000     	bl	0x24b0 <set_finger_lock_flag+0xd8>
		00000000000024b0:  R_AARCH64_CALL26	report_ufp_uevent
    24b4: 17ffffdc     	b	0x2424 <set_finger_lock_flag+0x4c>
    24b8: 94000000     	bl	0x24b8 <set_finger_lock_flag+0xe0>
		00000000000024b8:  R_AARCH64_CALL26	__stack_chk_fail
