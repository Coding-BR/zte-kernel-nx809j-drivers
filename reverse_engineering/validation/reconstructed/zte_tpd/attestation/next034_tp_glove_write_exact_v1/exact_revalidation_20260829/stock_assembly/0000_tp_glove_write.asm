
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003624 <tp_glove_write>:
    3624: d503233f     	paciasp
    3628: d100c3ff     	sub	sp, sp, #0x30
    362c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3630: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3634: 910043fd     	add	x29, sp, #0x10
    3638: d5384108     	mrs	x8, SP_EL0
    363c: aa0203f3     	mov	x19, x2
    3640: aa0103e0     	mov	x0, x1
    3644: f9438908     	ldr	x8, [x8, #0x710]
    3648: 910013e3     	add	x3, sp, #0x4
    364c: aa0203e1     	mov	x1, x2
    3650: 52800142     	mov	w2, #0xa                // =10
    3654: f90007e8     	str	x8, [sp, #0x8]
    3658: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003658:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    365c: f9400114     	ldr	x20, [x8]
		000000000000365c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3660: b90007ff     	str	wzr, [sp, #0x4]
    3664: 94000000     	bl	0x3664 <tp_glove_write+0x40>
		0000000000003664:  R_AARCH64_CALL26	kstrtouint_from_user
    3668: 340001a0     	cbz	w0, 0x369c <tp_glove_write+0x78>
    366c: 928002b3     	mov	x19, #-0x16             // =-22
    3670: d5384108     	mrs	x8, SP_EL0
    3674: f9438908     	ldr	x8, [x8, #0x710]
    3678: f94007e9     	ldr	x9, [sp, #0x8]
    367c: eb09011f     	cmp	x8, x9
    3680: 54000381     	b.ne	0x36f0 <tp_glove_write+0xcc>
    3684: aa1303e0     	mov	x0, x19
    3688: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    368c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3690: 9100c3ff     	add	sp, sp, #0x30
    3694: d50323bf     	autiasp
    3698: d65f03c0     	ret
    369c: b94007e8     	ldr	w8, [sp, #0x4]
    36a0: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		00000000000036a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    36a4: 91000000     	add	x0, x0, #0x0
		00000000000036a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    36a8: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		00000000000036a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab9
    36ac: 91000021     	add	x1, x1, #0x0
		00000000000036ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab9
    36b0: 7100011f     	cmp	w8, #0x0
    36b4: 1a9f07e2     	cset	w2, ne
    36b8: b90007e2     	str	w2, [sp, #0x4]
    36bc: 94000000     	bl	0x36bc <tp_glove_write+0x98>
		00000000000036bc:  R_AARCH64_CALL26	_printk
    36c0: f9472a88     	ldr	x8, [x20, #0xe50]
    36c4: b4fffd68     	cbz	x8, 0x3670 <tp_glove_write+0x4c>
    36c8: b94007e1     	ldr	w1, [sp, #0x4]
    36cc: aa1403e0     	mov	x0, x20
    36d0: b85fc110     	ldur	w16, [x8, #-0x4]
    36d4: 72969331     	movk	w17, #0xb499
    36d8: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    36dc: 6b11021f     	cmp	w16, w17
    36e0: 54000040     	b.eq	0x36e8 <tp_glove_write+0xc4>
    36e4: d4304500     	brk	#0x8228
    36e8: d63f0100     	blr	x8
    36ec: 17ffffe1     	b	0x3670 <tp_glove_write+0x4c>
    36f0: 94000000     	bl	0x36f0 <tp_glove_write+0xcc>
		00000000000036f0:  R_AARCH64_CALL26	__stack_chk_fail
