
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000345c <tp_smart_cover_write>:
    345c: d503233f     	paciasp
    3460: d100c3ff     	sub	sp, sp, #0x30
    3464: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3468: a9024ff4     	stp	x20, x19, [sp, #0x20]
    346c: 910043fd     	add	x29, sp, #0x10
    3470: d5384108     	mrs	x8, SP_EL0
    3474: aa0203f3     	mov	x19, x2
    3478: aa0103e0     	mov	x0, x1
    347c: f9438908     	ldr	x8, [x8, #0x710]
    3480: 910013e3     	add	x3, sp, #0x4
    3484: aa0203e1     	mov	x1, x2
    3488: 52800142     	mov	w2, #0xa                // =10
    348c: f90007e8     	str	x8, [sp, #0x8]
    3490: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003490:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3494: f9400114     	ldr	x20, [x8]
		0000000000003494:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3498: b90007ff     	str	wzr, [sp, #0x4]
    349c: 94000000     	bl	0x349c <tp_smart_cover_write+0x40>
		000000000000349c:  R_AARCH64_CALL26	kstrtouint_from_user
    34a0: 340001a0     	cbz	w0, 0x34d4 <tp_smart_cover_write+0x78>
    34a4: 928002b3     	mov	x19, #-0x16             // =-22
    34a8: d5384108     	mrs	x8, SP_EL0
    34ac: f9438908     	ldr	x8, [x8, #0x710]
    34b0: f94007e9     	ldr	x9, [sp, #0x8]
    34b4: eb09011f     	cmp	x8, x9
    34b8: 54000381     	b.ne	0x3528 <tp_smart_cover_write+0xcc>
    34bc: aa1303e0     	mov	x0, x19
    34c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    34c4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    34c8: 9100c3ff     	add	sp, sp, #0x30
    34cc: d50323bf     	autiasp
    34d0: d65f03c0     	ret
    34d4: b94007e8     	ldr	w8, [sp, #0x4]
    34d8: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		00000000000034d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    34dc: 91000000     	add	x0, x0, #0x0
		00000000000034dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    34e0: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		00000000000034e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7410
    34e4: 91000021     	add	x1, x1, #0x0
		00000000000034e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7410
    34e8: 7100011f     	cmp	w8, #0x0
    34ec: 1a9f07e2     	cset	w2, ne
    34f0: b90007e2     	str	w2, [sp, #0x4]
    34f4: 94000000     	bl	0x34f4 <tp_smart_cover_write+0x98>
		00000000000034f4:  R_AARCH64_CALL26	_printk
    34f8: f9472288     	ldr	x8, [x20, #0xe40]
    34fc: b4fffd68     	cbz	x8, 0x34a8 <tp_smart_cover_write+0x4c>
    3500: b94007e1     	ldr	w1, [sp, #0x4]
    3504: aa1403e0     	mov	x0, x20
    3508: b85fc110     	ldur	w16, [x8, #-0x4]
    350c: 72969331     	movk	w17, #0xb499
    3510: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    3514: 6b11021f     	cmp	w16, w17
    3518: 54000040     	b.eq	0x3520 <tp_smart_cover_write+0xc4>
    351c: d4304500     	brk	#0x8228
    3520: d63f0100     	blr	x8
    3524: 17ffffe1     	b	0x34a8 <tp_smart_cover_write+0x4c>
    3528: 94000000     	bl	0x3528 <tp_smart_cover_write+0xcc>
		0000000000003528:  R_AARCH64_CALL26	__stack_chk_fail
