
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000563c <set_tp_report_rate>:
    563c: d503233f     	paciasp
    5640: d100c3ff     	sub	sp, sp, #0x30
    5644: a9017bfd     	stp	x29, x30, [sp, #0x10]
    5648: a9024ff4     	stp	x20, x19, [sp, #0x20]
    564c: 910043fd     	add	x29, sp, #0x10
    5650: d5384108     	mrs	x8, SP_EL0
    5654: aa0203f3     	mov	x19, x2
    5658: aa0103e0     	mov	x0, x1
    565c: f9438908     	ldr	x8, [x8, #0x710]
    5660: 910013e3     	add	x3, sp, #0x4
    5664: aa0203e1     	mov	x1, x2
    5668: 52800142     	mov	w2, #0xa                // =10
    566c: f90007e8     	str	x8, [sp, #0x8]
    5670: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005670:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5674: f9400114     	ldr	x20, [x8]
		0000000000005674:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5678: b90007ff     	str	wzr, [sp, #0x4]
    567c: 94000000     	bl	0x567c <set_tp_report_rate+0x40>
		000000000000567c:  R_AARCH64_CALL26	kstrtouint_from_user
    5680: 340001a0     	cbz	w0, 0x56b4 <set_tp_report_rate+0x78>
    5684: 928002b3     	mov	x19, #-0x16             // =-22
    5688: d5384108     	mrs	x8, SP_EL0
    568c: f9438908     	ldr	x8, [x8, #0x710]
    5690: f94007e9     	ldr	x9, [sp, #0x8]
    5694: eb09011f     	cmp	x8, x9
    5698: 54000321     	b.ne	0x56fc <set_tp_report_rate+0xc0>
    569c: aa1303e0     	mov	x0, x19
    56a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    56a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    56a8: 9100c3ff     	add	sp, sp, #0x30
    56ac: d50323bf     	autiasp
    56b0: d65f03c0     	ret
    56b4: b94007e2     	ldr	w2, [sp, #0x4]
    56b8: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000056b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x610f
    56bc: 91000000     	add	x0, x0, #0x0
		00000000000056bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x610f
    56c0: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000056c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a9
    56c4: 91000021     	add	x1, x1, #0x0
		00000000000056c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a9
    56c8: 94000000     	bl	0x56c8 <set_tp_report_rate+0x8c>
		00000000000056c8:  R_AARCH64_CALL26	_printk
    56cc: f9478a88     	ldr	x8, [x20, #0xf10]
    56d0: b4fffdc8     	cbz	x8, 0x5688 <set_tp_report_rate+0x4c>
    56d4: b94007e1     	ldr	w1, [sp, #0x4]
    56d8: aa1403e0     	mov	x0, x20
    56dc: b85fc110     	ldur	w16, [x8, #-0x4]
    56e0: 72969331     	movk	w17, #0xb499
    56e4: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    56e8: 6b11021f     	cmp	w16, w17
    56ec: 54000040     	b.eq	0x56f4 <set_tp_report_rate+0xb8>
    56f0: d4304500     	brk	#0x8228
    56f4: d63f0100     	blr	x8
    56f8: 17ffffe4     	b	0x5688 <set_tp_report_rate+0x4c>
    56fc: 94000000     	bl	0x56fc <set_tp_report_rate+0xc0>
		00000000000056fc:  R_AARCH64_CALL26	__stack_chk_fail
