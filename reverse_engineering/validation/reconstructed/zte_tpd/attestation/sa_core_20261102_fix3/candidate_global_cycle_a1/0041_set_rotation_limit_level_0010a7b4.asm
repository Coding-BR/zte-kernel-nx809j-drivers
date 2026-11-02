
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000256f8 <set_rotation_limit_level>:
   256f8: d503233f     	paciasp
   256fc: d100c3ff     	sub	sp, sp, #0x30
   25700: a9017bfd     	stp	x29, x30, [sp, #0x10]
   25704: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25708: 910043fd     	add	x29, sp, #0x10
   2570c: d5384108     	mrs	x8, SP_EL0
   25710: aa0203f3     	mov	x19, x2
   25714: aa0103e0     	mov	x0, x1
   25718: f9438908     	ldr	x8, [x8, #0x710]
   2571c: 910013e3     	add	x3, sp, #0x4
   25720: aa0203e1     	mov	x1, x2
   25724: 52800142     	mov	w2, #0xa                // =10
   25728: f90007e8     	str	x8, [sp, #0x8]
   2572c: 90000008     	adrp	x8, 0x25000 <tp_glove_read>
		000000000002572c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25730: f9400114     	ldr	x20, [x8]
		0000000000025730:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25734: b90007ff     	str	wzr, [sp, #0x4]
   25738: 94000000     	bl	0x25738 <set_rotation_limit_level+0x40>
		0000000000025738:  R_AARCH64_CALL26	kstrtouint_from_user
   2573c: 340001a0     	cbz	w0, 0x25770 <set_rotation_limit_level+0x78>
   25740: 928002b3     	mov	x19, #-0x16             // =-22
   25744: d5384108     	mrs	x8, SP_EL0
   25748: f9438908     	ldr	x8, [x8, #0x710]
   2574c: f94007e9     	ldr	x9, [sp, #0x8]
   25750: eb09011f     	cmp	x8, x9
   25754: 54000321     	b.ne	0x257b8 <set_rotation_limit_level+0xc0>
   25758: aa1303e0     	mov	x0, x19
   2575c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25760: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25764: 9100c3ff     	add	sp, sp, #0x30
   25768: d50323bf     	autiasp
   2576c: d65f03c0     	ret
   25770: b94007e2     	ldr	w2, [sp, #0x4]
   25774: 90000000     	adrp	x0, 0x25000 <tp_glove_read>
		0000000000025774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   25778: 91000000     	add	x0, x0, #0x0
		0000000000025778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   2577c: 90000001     	adrp	x1, 0x25000 <tp_glove_read>
		000000000002577c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182e
   25780: 91000021     	add	x1, x1, #0x0
		0000000000025780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182e
   25784: 94000000     	bl	0x25784 <set_rotation_limit_level+0x8c>
		0000000000025784:  R_AARCH64_CALL26	_printk
   25788: f9474288     	ldr	x8, [x20, #0xe80]
   2578c: b4fffdc8     	cbz	x8, 0x25744 <set_rotation_limit_level+0x4c>
   25790: b94007e1     	ldr	w1, [sp, #0x4]
   25794: aa1403e0     	mov	x0, x20
   25798: b85fc110     	ldur	w16, [x8, #-0x4]
   2579c: 72969331     	movk	w17, #0xb499
   257a0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   257a4: 6b11021f     	cmp	w16, w17
   257a8: 54000040     	b.eq	0x257b0 <set_rotation_limit_level+0xb8>
   257ac: d4304500     	brk	#0x8228
   257b0: d63f0100     	blr	x8
   257b4: 17ffffe4     	b	0x25744 <set_rotation_limit_level+0x4c>
   257b8: 94000000     	bl	0x257b8 <set_rotation_limit_level+0xc0>
		00000000000257b8:  R_AARCH64_CALL26	__stack_chk_fail
