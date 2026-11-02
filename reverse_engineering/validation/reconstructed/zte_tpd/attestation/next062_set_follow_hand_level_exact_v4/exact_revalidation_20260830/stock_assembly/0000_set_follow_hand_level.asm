
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000057f8 <set_follow_hand_level>:
    57f8: d503233f     	paciasp
    57fc: d100c3ff     	sub	sp, sp, #0x30
    5800: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5804: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5808: 910043fd     	add	x29, sp, #0x10
    580c: d5384108     	mrs	x8, SP_EL0
    5810: aa0203f3     	mov	x19, x2
    5814: aa0103e0     	mov	x0, x1
    5818: f9438908     	ldr	x8, [x8, #0x710]
    581c: 910013e3     	add	x3, sp, #0x4
    5820: aa0203e1     	mov	x1, x2
    5824: 52800142     	mov	w2, #0xa                // =10
    5828: f90007e8     	str	x8, [sp, #0x8]
    582c: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000582c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5830: f9400114     	ldr	x20, [x8]
		0000000000005830:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5834: b90007ff     	str	wzr, [sp, #0x4]
    5838: 94000000     	bl	0x5838 <set_follow_hand_level+0x40>
		0000000000005838:  R_AARCH64_CALL26	kstrtouint_from_user
    583c: 340001a0     	cbz	w0, 0x5870 <set_follow_hand_level+0x78>
    5840: 928002b3     	mov	x19, #-0x16             // =-22
    5844: d5384108     	mrs	x8, SP_EL0
    5848: f9438908     	ldr	x8, [x8, #0x710]
    584c: f94007e9     	ldr	x9, [sp, #0x8]
    5850: eb09011f     	cmp	x8, x9
    5854: 54000321     	b.ne	0x58b8 <set_follow_hand_level+0xc0>
    5858: aa1303e0     	mov	x0, x19
    585c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5860: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5864: 9100c3ff     	add	sp, sp, #0x30
    5868: d50323bf     	autiasp
    586c: d65f03c0     	ret
    5870: b94007e2     	ldr	w2, [sp, #0x4]
    5874: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    5878: 91000000     	add	x0, x0, #0x0
		0000000000005878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    587c: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000587c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a42
    5880: 91000021     	add	x1, x1, #0x0
		0000000000005880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a42
    5884: 94000000     	bl	0x5884 <set_follow_hand_level+0x8c>
		0000000000005884:  R_AARCH64_CALL26	_printk
    5888: f9479288     	ldr	x8, [x20, #0xf20]
    588c: b4fffdc8     	cbz	x8, 0x5844 <set_follow_hand_level+0x4c>
    5890: b94007e1     	ldr	w1, [sp, #0x4]
    5894: aa1403e0     	mov	x0, x20
    5898: b85fc110     	ldur	w16, [x8, #-0x4]
    589c: 72969331     	movk	w17, #0xb499
    58a0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    58a4: 6b11021f     	cmp	w16, w17
    58a8: 54000040     	b.eq	0x58b0 <set_follow_hand_level+0xb8>
    58ac: d4304500     	brk	#0x8228
    58b0: d63f0100     	blr	x8
    58b4: 17ffffe4     	b	0x5844 <set_follow_hand_level+0x4c>
    58b8: 94000000     	bl	0x58b8 <set_follow_hand_level+0xc0>
		00000000000058b8:  R_AARCH64_CALL26	__stack_chk_fail
