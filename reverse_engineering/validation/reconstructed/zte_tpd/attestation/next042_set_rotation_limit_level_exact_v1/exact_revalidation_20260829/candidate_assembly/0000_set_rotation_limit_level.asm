
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002569c <set_rotation_limit_level>:
   2569c: d503233f     	paciasp
   256a0: d100c3ff     	sub	sp, sp, #0x30
   256a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   256a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   256ac: 910043fd     	add	x29, sp, #0x10
   256b0: d5384108     	mrs	x8, SP_EL0
   256b4: aa0203f3     	mov	x19, x2
   256b8: aa0103e0     	mov	x0, x1
   256bc: f9438908     	ldr	x8, [x8, #0x710]
   256c0: 910013e3     	add	x3, sp, #0x4
   256c4: aa0203e1     	mov	x1, x2
   256c8: 52800142     	mov	w2, #0xa                // =10
   256cc: f90007e8     	str	x8, [sp, #0x8]
   256d0: 90000008     	adrp	x8, 0x25000 <tp_glove_read+0x5c>
		00000000000256d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   256d4: f9400114     	ldr	x20, [x8]
		00000000000256d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   256d8: b90007ff     	str	wzr, [sp, #0x4]
   256dc: 94000000     	bl	0x256dc <set_rotation_limit_level+0x40>
		00000000000256dc:  R_AARCH64_CALL26	kstrtouint_from_user
   256e0: 340001a0     	cbz	w0, 0x25714 <set_rotation_limit_level+0x78>
   256e4: 928002b3     	mov	x19, #-0x16             // =-22
   256e8: d5384108     	mrs	x8, SP_EL0
   256ec: f9438908     	ldr	x8, [x8, #0x710]
   256f0: f94007e9     	ldr	x9, [sp, #0x8]
   256f4: eb09011f     	cmp	x8, x9
   256f8: 54000321     	b.ne	0x2575c <set_rotation_limit_level+0xc0>
   256fc: aa1303e0     	mov	x0, x19
   25700: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25704: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25708: 9100c3ff     	add	sp, sp, #0x30
   2570c: d50323bf     	autiasp
   25710: d65f03c0     	ret
   25714: b94007e2     	ldr	w2, [sp, #0x4]
   25718: 90000000     	adrp	x0, 0x25000 <tp_glove_read+0x5c>
		0000000000025718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629a
   2571c: 91000000     	add	x0, x0, #0x0
		000000000002571c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629a
   25720: 90000001     	adrp	x1, 0x25000 <tp_glove_read+0x5c>
		0000000000025720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182e
   25724: 91000021     	add	x1, x1, #0x0
		0000000000025724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182e
   25728: 94000000     	bl	0x25728 <set_rotation_limit_level+0x8c>
		0000000000025728:  R_AARCH64_CALL26	_printk
   2572c: f9474288     	ldr	x8, [x20, #0xe80]
   25730: b4fffdc8     	cbz	x8, 0x256e8 <set_rotation_limit_level+0x4c>
   25734: b94007e1     	ldr	w1, [sp, #0x4]
   25738: aa1403e0     	mov	x0, x20
   2573c: b85fc110     	ldur	w16, [x8, #-0x4]
   25740: 72969331     	movk	w17, #0xb499
   25744: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25748: 6b11021f     	cmp	w16, w17
   2574c: 54000040     	b.eq	0x25754 <set_rotation_limit_level+0xb8>
   25750: d4304500     	brk	#0x8228
   25754: d63f0100     	blr	x8
   25758: 17ffffe4     	b	0x256e8 <set_rotation_limit_level+0x4c>
   2575c: 94000000     	bl	0x2575c <set_rotation_limit_level+0xc0>
		000000000002575c:  R_AARCH64_CALL26	__stack_chk_fail
