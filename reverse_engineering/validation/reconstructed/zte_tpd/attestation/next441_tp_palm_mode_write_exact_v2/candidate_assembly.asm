
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e780 <tp_palm_mode_write>:
   1e780: d503233f     	paciasp
   1e784: d100c3ff     	sub	sp, sp, #0x30
   1e788: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1e78c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1e790: 910043fd     	add	x29, sp, #0x10
   1e794: d5384108     	mrs	x8, SP_EL0
   1e798: aa0203f3     	mov	x19, x2
   1e79c: aa0103e0     	mov	x0, x1
   1e7a0: f9438908     	ldr	x8, [x8, #0x710]
   1e7a4: 910013e3     	add	x3, sp, #0x4
   1e7a8: aa0203e1     	mov	x1, x2
   1e7ac: 52800142     	mov	w2, #0xa                // =10
   1e7b0: f90007e8     	str	x8, [sp, #0x8]
   1e7b4: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e7b4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e7b8: f9400114     	ldr	x20, [x8]
		000000000001e7b8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e7bc: b90007ff     	str	wzr, [sp, #0x4]
   1e7c0: 94000000     	bl	0x1e7c0 <tp_palm_mode_write+0x40>
		000000000001e7c0:  R_AARCH64_CALL26	kstrtouint_from_user
   1e7c4: 340001a0     	cbz	w0, 0x1e7f8 <tp_palm_mode_write+0x78>
   1e7c8: 928002b3     	mov	x19, #-0x16             // =-22
   1e7cc: d5384108     	mrs	x8, SP_EL0
   1e7d0: f9438908     	ldr	x8, [x8, #0x710]
   1e7d4: f94007e9     	ldr	x9, [sp, #0x8]
   1e7d8: eb09011f     	cmp	x8, x9
   1e7dc: 54000381     	b.ne	0x1e84c <tp_palm_mode_write+0xcc>
   1e7e0: aa1303e0     	mov	x0, x19
   1e7e4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1e7e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1e7ec: 9100c3ff     	add	sp, sp, #0x30
   1e7f0: d50323bf     	autiasp
   1e7f4: d65f03c0     	ret
   1e7f8: b94007e8     	ldr	w8, [sp, #0x4]
   1e7fc: 90000000     	adrp	x0, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e7fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37f8
   1e800: 91000000     	add	x0, x0, #0x0
		000000000001e800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37f8
   1e804: 90000001     	adrp	x1, 0x1e000 <tp_ghost_check+0x3b8>
		000000000001e804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bc6
   1e808: 91000021     	add	x1, x1, #0x0
		000000000001e808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bc6
   1e80c: 7100011f     	cmp	w8, #0x0
   1e810: 1a9f07e2     	cset	w2, ne
   1e814: b90007e2     	str	w2, [sp, #0x4]
   1e818: 94000000     	bl	0x1e818 <tp_palm_mode_write+0x98>
		000000000001e818:  R_AARCH64_CALL26	_printk
   1e81c: f947da88     	ldr	x8, [x20, #0xfb0]
   1e820: b4fffd68     	cbz	x8, 0x1e7cc <tp_palm_mode_write+0x4c>
   1e824: b94007e1     	ldr	w1, [sp, #0x4]
   1e828: aa1403e0     	mov	x0, x20
   1e82c: b85fc110     	ldur	w16, [x8, #-0x4]
   1e830: 72969331     	movk	w17, #0xb499
   1e834: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   1e838: 6b11021f     	cmp	w16, w17
   1e83c: 54000040     	b.eq	0x1e844 <tp_palm_mode_write+0xc4>
   1e840: d4304500     	brk	#0x8228
   1e844: d63f0100     	blr	x8
   1e848: 17ffffe1     	b	0x1e7cc <tp_palm_mode_write+0x4c>
   1e84c: 94000000     	bl	0x1e84c <tp_palm_mode_write+0xcc>
		000000000001e84c:  R_AARCH64_CALL26	__stack_chk_fail
