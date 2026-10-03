
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000671c <tp_fold_state_write>:
    671c: d503233f     	paciasp
    6720: d100c3ff     	sub	sp, sp, #0x30
    6724: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6728: a9024ff4     	stp	x20, x19, [sp, #0x20]
    672c: 910043fd     	add	x29, sp, #0x10
    6730: d5384108     	mrs	x8, SP_EL0
    6734: aa0203f3     	mov	x19, x2
    6738: aa0103e0     	mov	x0, x1
    673c: f9438908     	ldr	x8, [x8, #0x710]
    6740: 910013e3     	add	x3, sp, #0x4
    6744: aa0203e1     	mov	x1, x2
    6748: 52800142     	mov	w2, #0xa                // =10
    674c: f90007e8     	str	x8, [sp, #0x8]
    6750: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006750:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6754: f9400114     	ldr	x20, [x8]
		0000000000006754:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6758: b90007ff     	str	wzr, [sp, #0x4]
    675c: 94000000     	bl	0x675c <tp_fold_state_write+0x40>
		000000000000675c:  R_AARCH64_CALL26	kstrtouint_from_user
    6760: 340001a0     	cbz	w0, 0x6794 <tp_fold_state_write+0x78>
    6764: 928002b3     	mov	x19, #-0x16             // =-22
    6768: d5384108     	mrs	x8, SP_EL0
    676c: f9438908     	ldr	x8, [x8, #0x710]
    6770: f94007e9     	ldr	x9, [sp, #0x8]
    6774: eb09011f     	cmp	x8, x9
    6778: 54000381     	b.ne	0x67e8 <tp_fold_state_write+0xcc>
    677c: aa1303e0     	mov	x0, x19
    6780: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6784: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    6788: 9100c3ff     	add	sp, sp, #0x30
    678c: d50323bf     	autiasp
    6790: d65f03c0     	ret
    6794: b94007e8     	ldr	w8, [sp, #0x4]
    6798: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    679c: 91000000     	add	x0, x0, #0x0
		000000000000679c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    67a0: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		00000000000067a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8023
    67a4: 91000021     	add	x1, x1, #0x0
		00000000000067a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8023
    67a8: 7100011f     	cmp	w8, #0x0
    67ac: 1a9f07e2     	cset	w2, ne
    67b0: b90007e2     	str	w2, [sp, #0x4]
    67b4: 94000000     	bl	0x67b4 <tp_fold_state_write+0x98>
		00000000000067b4:  R_AARCH64_CALL26	_printk
    67b8: f947e288     	ldr	x8, [x20, #0xfc0]
    67bc: b4fffd68     	cbz	x8, 0x6768 <tp_fold_state_write+0x4c>
    67c0: b94007e1     	ldr	w1, [sp, #0x4]
    67c4: aa1403e0     	mov	x0, x20
    67c8: b85fc110     	ldur	w16, [x8, #-0x4]
    67cc: 72969331     	movk	w17, #0xb499
    67d0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    67d4: 6b11021f     	cmp	w16, w17
    67d8: 54000040     	b.eq	0x67e0 <tp_fold_state_write+0xc4>
    67dc: d4304500     	brk	#0x8228
    67e0: d63f0100     	blr	x8
    67e4: 17ffffe1     	b	0x6768 <tp_fold_state_write+0x4c>
    67e8: 94000000     	bl	0x67e8 <tp_fold_state_write+0xcc>
		00000000000067e8:  R_AARCH64_CALL26	__stack_chk_fail
