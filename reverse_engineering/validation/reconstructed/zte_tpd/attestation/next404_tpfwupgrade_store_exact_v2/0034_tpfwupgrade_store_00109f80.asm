
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000036f8 <tpfwupgrade_store>:
    36f8: d503233f     	paciasp
    36fc: d10103ff     	sub	sp, sp, #0x40
    3700: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3704: a90257f6     	stp	x22, x21, [sp, #0x20]
    3708: a9034ff4     	stp	x20, x19, [sp, #0x30]
    370c: 910043fd     	add	x29, sp, #0x10
    3710: d5384108     	mrs	x8, SP_EL0
    3714: aa0203f3     	mov	x19, x2
    3718: aa0103e0     	mov	x0, x1
    371c: f9438908     	ldr	x8, [x8, #0x710]
    3720: 910013e3     	add	x3, sp, #0x4
    3724: aa0203e1     	mov	x1, x2
    3728: 52800142     	mov	w2, #0xa                // =10
    372c: f90007e8     	str	x8, [sp, #0x8]
    3730: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003730:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3734: f9400114     	ldr	x20, [x8]
		0000000000003734:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3738: b90007ff     	str	wzr, [sp, #0x4]
    373c: 94000000     	bl	0x373c <tpfwupgrade_store+0x44>
		000000000000373c:  R_AARCH64_CALL26	kstrtouint_from_user
    3740: 340001c0     	cbz	w0, 0x3778 <tpfwupgrade_store+0x80>
    3744: 928002b3     	mov	x19, #-0x16             // =-22
    3748: d5384108     	mrs	x8, SP_EL0
    374c: f9438908     	ldr	x8, [x8, #0x710]
    3750: f94007e9     	ldr	x9, [sp, #0x8]
    3754: eb09011f     	cmp	x8, x9
    3758: 54000ae1     	b.ne	0x38b4 <tpfwupgrade_store+0x1bc>
    375c: aa1303e0     	mov	x0, x19
    3760: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    3764: a94257f6     	ldp	x22, x21, [sp, #0x20]
    3768: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    376c: 910103ff     	add	sp, sp, #0x40
    3770: d50323bf     	autiasp
    3774: d65f03c0     	ret
    3778: b94007e2     	ldr	w2, [sp, #0x4]
    377c: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		000000000000377c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    3780: 91000000     	add	x0, x0, #0x0
		0000000000003780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    3784: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6
    3788: 91000021     	add	x1, x1, #0x0
		0000000000003788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6
    378c: 94000000     	bl	0x378c <tpfwupgrade_store+0x94>
		000000000000378c:  R_AARCH64_CALL26	_printk
    3790: 91318280     	add	x0, x20, #0xc60
    3794: 94000000     	bl	0x3794 <tpfwupgrade_store+0x9c>
		0000000000003794:  R_AARCH64_CALL26	mutex_lock
    3798: b94007e8     	ldr	w8, [sp, #0x4]
    379c: f9462e80     	ldr	x0, [x20, #0xc58]
    37a0: 71002d1f     	cmp	w8, #0xb
    37a4: 54000443     	b.lo	0x382c <tpfwupgrade_store+0x134>
    37a8: b40000e0     	cbz	x0, 0x37c4 <tpfwupgrade_store+0xcc>
    37ac: f9400408     	ldr	x8, [x0, #0x8]
    37b0: b4000088     	cbz	x8, 0x37c0 <tpfwupgrade_store+0xc8>
    37b4: aa0803e0     	mov	x0, x8
    37b8: 94000000     	bl	0x37b8 <tpfwupgrade_store+0xc0>
		00000000000037b8:  R_AARCH64_CALL26	vfree
    37bc: f9462e80     	ldr	x0, [x20, #0xc58]
    37c0: 94000000     	bl	0x37c0 <tpfwupgrade_store+0xc8>
		00000000000037c0:  R_AARCH64_CALL26	kfree
    37c4: b9044a9f     	str	wzr, [x20, #0x448]
    37c8: d503201f     	nop
    37cc: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		00000000000037cc:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    37d0: 5281b801     	mov	w1, #0xdc0              // =3520
    37d4: 52800302     	mov	w2, #0x18               // =24
    37d8: f9400100     	ldr	x0, [x8]
		00000000000037d8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    37dc: 94000000     	bl	0x37dc <tpfwupgrade_store+0xe4>
		00000000000037dc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    37e0: f9062e80     	str	x0, [x20, #0xc58]
    37e4: b4000840     	cbz	x0, 0x38ec <tpfwupgrade_store+0x1f4>
    37e8: d503201f     	nop
    37ec: b94007e8     	ldr	w8, [sp, #0x4]
    37f0: 91006100     	add	x0, x8, #0x18
    37f4: 94000000     	bl	0x37f4 <tpfwupgrade_store+0xfc>
		00000000000037f4:  R_AARCH64_CALL26	vmalloc_noprof
    37f8: f9462e88     	ldr	x8, [x20, #0xc58]
    37fc: f9000500     	str	x0, [x8, #0x8]
    3800: f9462e88     	ldr	x8, [x20, #0xc58]
    3804: f9400509     	ldr	x9, [x8, #0x8]
    3808: b4000489     	cbz	x9, 0x3898 <tpfwupgrade_store+0x1a0>
    380c: b94007e9     	ldr	w9, [sp, #0x4]
    3810: 2a1f03e1     	mov	w1, wzr
    3814: f9000109     	str	x9, [x8]
    3818: 91006122     	add	x2, x9, #0x18
    381c: f9462e88     	ldr	x8, [x20, #0xc58]
    3820: f9400500     	ldr	x0, [x8, #0x8]
    3824: 94000000     	bl	0x3824 <tpfwupgrade_store+0x12c>
		0000000000003824:  R_AARCH64_CALL26	memset
    3828: 14000019     	b	0x388c <tpfwupgrade_store+0x194>
    382c: b4000300     	cbz	x0, 0x388c <tpfwupgrade_store+0x194>
    3830: f9470e88     	ldr	x8, [x20, #0xe18]
    3834: b4000188     	cbz	x8, 0x3864 <tpfwupgrade_store+0x16c>
    3838: aa1403e0     	mov	x0, x20
    383c: aa1f03e1     	mov	x1, xzr
    3840: 2a1f03e2     	mov	w2, wzr
    3844: b85fc110     	ldur	w16, [x8, #-0x4]
    3848: 728a1491     	movk	w17, #0x50a4
    384c: 72a9aed1     	movk	w17, #0x4d76, lsl #16
    3850: 6b11021f     	cmp	w16, w17
    3854: 54000040     	b.eq	0x385c <tpfwupgrade_store+0x164>
    3858: d4304500     	brk	#0x8228
    385c: d63f0100     	blr	x8
    3860: f9462e80     	ldr	x0, [x20, #0xc58]
    3864: f9400408     	ldr	x8, [x0, #0x8]
    3868: b40000c8     	cbz	x8, 0x3880 <tpfwupgrade_store+0x188>
    386c: aa0803e0     	mov	x0, x8
    3870: 94000000     	bl	0x3870 <tpfwupgrade_store+0x178>
		0000000000003870:  R_AARCH64_CALL26	vfree
    3874: f9462e88     	ldr	x8, [x20, #0xc58]
    3878: f900051f     	str	xzr, [x8, #0x8]
    387c: f9462e80     	ldr	x0, [x20, #0xc58]
    3880: 94000000     	bl	0x3880 <tpfwupgrade_store+0x188>
		0000000000003880:  R_AARCH64_CALL26	kfree
    3884: f9062e9f     	str	xzr, [x20, #0xc58]
    3888: b9044a9f     	str	wzr, [x20, #0x448]
    388c: 91318280     	add	x0, x20, #0xc60
    3890: 94000000     	bl	0x3890 <tpfwupgrade_store+0x198>
		0000000000003890:  R_AARCH64_CALL26	mutex_unlock
    3894: 17ffffad     	b	0x3748 <tpfwupgrade_store+0x50>
    3898: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa49d
    389c: 91000000     	add	x0, x0, #0x0
		000000000000389c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa49d
    38a0: 94000000     	bl	0x38a0 <tpfwupgrade_store+0x1a8>
		00000000000038a0:  R_AARCH64_CALL26	_printk
    38a4: f9462e80     	ldr	x0, [x20, #0xc58]
    38a8: 94000000     	bl	0x38a8 <tpfwupgrade_store+0x1b0>
		00000000000038a8:  R_AARCH64_CALL26	kfree
    38ac: 92800173     	mov	x19, #-0xc              // =-12
    38b0: 17fffff7     	b	0x388c <tpfwupgrade_store+0x194>
    38b4: 94000000     	bl	0x38b4 <tpfwupgrade_store+0x1bc>
		00000000000038b4:  R_AARCH64_CALL26	__stack_chk_fail
    38b8: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		00000000000038b8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
    38bc: d5384115     	mrs	x21, SP_EL0
    38c0: f9402ab6     	ldr	x22, [x21, #0x50]
    38c4: f9400100     	ldr	x0, [x8]
		00000000000038c4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
    38c8: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		00000000000038c8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    38cc: 91000108     	add	x8, x8, #0x0
		00000000000038cc:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    38d0: 5281b801     	mov	w1, #0xdc0              // =3520
    38d4: 52800302     	mov	w2, #0x18               // =24
    38d8: f9002aa8     	str	x8, [x21, #0x50]
    38dc: 94000000     	bl	0x38dc <tpfwupgrade_store+0x1e4>
		00000000000038dc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    38e0: f9002ab6     	str	x22, [x21, #0x50]
    38e4: f9062e80     	str	x0, [x20, #0xc58]
    38e8: b5fff800     	cbnz	x0, 0x37e8 <tpfwupgrade_store+0xf0>
    38ec: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		00000000000038ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb42
    38f0: 91000000     	add	x0, x0, #0x0
		00000000000038f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb42
    38f4: 94000000     	bl	0x38f4 <tpfwupgrade_store+0x1fc>
		00000000000038f4:  R_AARCH64_CALL26	_printk
    38f8: 92800173     	mov	x19, #-0xc              // =-12
    38fc: 17ffffe4     	b	0x388c <tpfwupgrade_store+0x194>
    3900: b94007e8     	ldr	w8, [sp, #0x4]
    3904: d5384115     	mrs	x21, SP_EL0
    3908: f9402ab6     	ldr	x22, [x21, #0x50]
    390c: 90000009     	adrp	x9, 0x3000 <tp_module_info_read+0x104>
		000000000000390c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    3910: 91000129     	add	x9, x9, #0x0
		0000000000003910:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    3914: 91006100     	add	x0, x8, #0x18
    3918: f9002aa9     	str	x9, [x21, #0x50]
    391c: 94000000     	bl	0x391c <tpfwupgrade_store+0x224>
		000000000000391c:  R_AARCH64_CALL26	vmalloc_noprof
    3920: f9002ab6     	str	x22, [x21, #0x50]
    3924: 17ffffb5     	b	0x37f8 <tpfwupgrade_store+0x100>
