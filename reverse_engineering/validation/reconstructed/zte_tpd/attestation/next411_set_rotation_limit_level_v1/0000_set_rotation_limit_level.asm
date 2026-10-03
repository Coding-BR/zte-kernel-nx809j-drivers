
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000027d4 <set_rotation_limit_level>:
    27d4: d503233f     	paciasp
    27d8: d100c3ff     	sub	sp, sp, #0x30
    27dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    27e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    27e4: 910043fd     	add	x29, sp, #0x10
    27e8: d5384108     	mrs	x8, SP_EL0
    27ec: aa0203f3     	mov	x19, x2
    27f0: aa0103e0     	mov	x0, x1
    27f4: f9438908     	ldr	x8, [x8, #0x710]
    27f8: 910013e3     	add	x3, sp, #0x4
    27fc: aa0203e1     	mov	x1, x2
    2800: 52800142     	mov	w2, #0xa                // =10
    2804: f90007e8     	str	x8, [sp, #0x8]
    2808: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x54>
		0000000000002808:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    280c: f9400114     	ldr	x20, [x8]
		000000000000280c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    2810: b90007ff     	str	wzr, [sp, #0x4]
    2814: 94000000     	bl	0x2814 <set_rotation_limit_level+0x40>
		0000000000002814:  R_AARCH64_CALL26	kstrtouint_from_user
    2818: 340001a0     	cbz	w0, 0x284c <set_rotation_limit_level+0x78>
    281c: 928002b3     	mov	x19, #-0x16             // =-22
    2820: d5384108     	mrs	x8, SP_EL0
    2824: f9438908     	ldr	x8, [x8, #0x710]
    2828: f94007e9     	ldr	x9, [sp, #0x8]
    282c: eb09011f     	cmp	x8, x9
    2830: 54000321     	b.ne	0x2894 <set_rotation_limit_level+0xc0>
    2834: aa1303e0     	mov	x0, x19
    2838: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    283c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2840: 9100c3ff     	add	sp, sp, #0x30
    2844: d50323bf     	autiasp
    2848: d65f03c0     	ret
    284c: b94007e2     	ldr	w2, [sp, #0x4]
    2850: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x54>
		0000000000002850:  R_AARCH64_ADR_PREL_PG_HI21	unk_374F7
    2854: 91000000     	add	x0, x0, #0x0
		0000000000002854:  R_AARCH64_ADD_ABS_LO12_NC	unk_374F7
    2858: 90000001     	adrp	x1, 0x2000 <report_ufp_uevent+0x54>
		0000000000002858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf9
    285c: 91000021     	add	x1, x1, #0x0
		000000000000285c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf9
    2860: 94000000     	bl	0x2860 <set_rotation_limit_level+0x8c>
		0000000000002860:  R_AARCH64_CALL26	_printk
    2864: f9474288     	ldr	x8, [x20, #0xe80]
    2868: b4fffdc8     	cbz	x8, 0x2820 <set_rotation_limit_level+0x4c>
    286c: b94007e1     	ldr	w1, [sp, #0x4]
    2870: aa1403e0     	mov	x0, x20
    2874: b85fc110     	ldur	w16, [x8, #-0x4]
    2878: 72969331     	movk	w17, #0xb499
    287c: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    2880: 6b11021f     	cmp	w16, w17
    2884: 54000040     	b.eq	0x288c <set_rotation_limit_level+0xb8>
    2888: d4304500     	brk	#0x8228
    288c: d63f0100     	blr	x8
    2890: 17ffffe4     	b	0x2820 <set_rotation_limit_level+0x4c>
    2894: 94000000     	bl	0x2894 <set_rotation_limit_level+0xc0>
		0000000000002894:  R_AARCH64_CALL26	__stack_chk_fail
