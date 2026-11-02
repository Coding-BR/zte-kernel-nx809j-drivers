
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006554 <tp_palm_mode_write>:
    6554: d503233f     	paciasp
    6558: d100c3ff     	sub	sp, sp, #0x30
    655c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6560: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6564: 910043fd     	add	x29, sp, #0x10
    6568: d5384108     	mrs	x8, SP_EL0
    656c: aa0203f3     	mov	x19, x2
    6570: aa0103e0     	mov	x0, x1
    6574: f9438908     	ldr	x8, [x8, #0x710]
    6578: 910013e3     	add	x3, sp, #0x4
    657c: aa0203e1     	mov	x1, x2
    6580: 52800142     	mov	w2, #0xa                // =10
    6584: f90007e8     	str	x8, [sp, #0x8]
    6588: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006588:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    658c: f9400114     	ldr	x20, [x8]
		000000000000658c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6590: b90007ff     	str	wzr, [sp, #0x4]
    6594: 94000000     	bl	0x6594 <tp_palm_mode_write+0x40>
		0000000000006594:  R_AARCH64_CALL26	kstrtouint_from_user
    6598: 340001a0     	cbz	w0, 0x65cc <tp_palm_mode_write+0x78>
    659c: 928002b3     	mov	x19, #-0x16             // =-22
    65a0: d5384108     	mrs	x8, SP_EL0
    65a4: f9438908     	ldr	x8, [x8, #0x710]
    65a8: f94007e9     	ldr	x9, [sp, #0x8]
    65ac: eb09011f     	cmp	x8, x9
    65b0: 54000381     	b.ne	0x6620 <tp_palm_mode_write+0xcc>
    65b4: aa1303e0     	mov	x0, x19
    65b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    65bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    65c0: 9100c3ff     	add	sp, sp, #0x30
    65c4: d50323bf     	autiasp
    65c8: d65f03c0     	ret
    65cc: b94007e8     	ldr	w8, [sp, #0x4]
    65d0: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		00000000000065d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    65d4: 91000000     	add	x0, x0, #0x0
		00000000000065d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    65d8: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		00000000000065d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8010
    65dc: 91000021     	add	x1, x1, #0x0
		00000000000065dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8010
    65e0: 7100011f     	cmp	w8, #0x0
    65e4: 1a9f07e2     	cset	w2, ne
    65e8: b90007e2     	str	w2, [sp, #0x4]
    65ec: 94000000     	bl	0x65ec <tp_palm_mode_write+0x98>
		00000000000065ec:  R_AARCH64_CALL26	_printk
    65f0: f947da88     	ldr	x8, [x20, #0xfb0]
    65f4: b4fffd68     	cbz	x8, 0x65a0 <tp_palm_mode_write+0x4c>
    65f8: b94007e1     	ldr	w1, [sp, #0x4]
    65fc: aa1403e0     	mov	x0, x20
    6600: b85fc110     	ldur	w16, [x8, #-0x4]
    6604: 72969331     	movk	w17, #0xb499
    6608: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    660c: 6b11021f     	cmp	w16, w17
    6610: 54000040     	b.eq	0x6618 <tp_palm_mode_write+0xc4>
    6614: d4304500     	brk	#0x8228
    6618: d63f0100     	blr	x8
    661c: 17ffffe1     	b	0x65a0 <tp_palm_mode_write+0x4c>
    6620: 94000000     	bl	0x6620 <tp_palm_mode_write+0xcc>
		0000000000006620:  R_AARCH64_CALL26	__stack_chk_fail
