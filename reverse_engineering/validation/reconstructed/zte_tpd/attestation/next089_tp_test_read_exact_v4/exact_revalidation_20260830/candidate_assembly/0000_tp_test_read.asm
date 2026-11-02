
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017624 <tp_test_read>:
   17624: d503233f     	paciasp
   17628: d10143ff     	sub	sp, sp, #0x50
   1762c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   17630: a90357f6     	stp	x22, x21, [sp, #0x30]
   17634: a9044ff4     	stp	x20, x19, [sp, #0x40]
   17638: 910083fd     	add	x29, sp, #0x20
   1763c: d5384108     	mrs	x8, SP_EL0
   17640: aa1f03e0     	mov	x0, xzr
   17644: f9438908     	ldr	x8, [x8, #0x710]
   17648: f81f83a8     	stur	x8, [x29, #-0x8]
   1764c: f9400068     	ldr	x8, [x3]
   17650: 790023ff     	strh	wzr, [sp, #0x10]
   17654: f90007ff     	str	xzr, [sp, #0x8]
   17658: b4000188     	cbz	x8, 0x17688 <tp_test_read+0x64>
   1765c: d5384108     	mrs	x8, SP_EL0
   17660: f9438908     	ldr	x8, [x8, #0x710]
   17664: f85f83a9     	ldur	x9, [x29, #-0x8]
   17668: eb09011f     	cmp	x8, x9
   1766c: 540005e1     	b.ne	0x17728 <tp_test_read+0x104>
   17670: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   17674: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17678: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1767c: 910143ff     	add	sp, sp, #0x50
   17680: d50323bf     	autiasp
   17684: d65f03c0     	ret
   17688: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017688:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1768c: aa0103f5     	mov	x21, x1
   17690: aa0203f4     	mov	x20, x2
   17694: f9400116     	ldr	x22, [x8]
		0000000000017694:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17698: aa0303f3     	mov	x19, x3
   1769c: 397002c1     	ldrb	w1, [x22, #0xc00]
   176a0: 7103fc3f     	cmp	w1, #0xff
   176a4: 54000181     	b.ne	0x176d4 <tp_test_read+0xb0>
   176a8: 39511ac1     	ldrb	w1, [x22, #0x446]
   176ac: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000176ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbce4
   176b0: 91000000     	add	x0, x0, #0x0
		00000000000176b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbce4
   176b4: 94000000     	bl	0x176b4 <tp_test_read+0x90>
		00000000000176b4:  R_AARCH64_CALL26	_printk
   176b8: 394076c8     	ldrb	w8, [x22, #0x1d]
   176bc: 36000168     	tbz	w8, #0x0, 0x176e8 <tp_test_read+0xc4>
   176c0: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000176c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62ee
   176c4: 91000000     	add	x0, x0, #0x0
		00000000000176c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62ee
   176c8: 94000000     	bl	0x176c8 <tp_test_read+0xa4>
		00000000000176c8:  R_AARCH64_CALL26	_printk
   176cc: 2a1f03e3     	mov	w3, wzr
   176d0: 1400000a     	b	0x176f8 <tp_test_read+0xd4>
   176d4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000176d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b62
   176d8: 91000000     	add	x0, x0, #0x0
		00000000000176d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b62
   176dc: 94000000     	bl	0x176dc <tp_test_read+0xb8>
		00000000000176dc:  R_AARCH64_CALL26	_printk
   176e0: 52800023     	mov	w3, #0x1                // =1
   176e4: 14000005     	b	0x176f8 <tp_test_read+0xd4>
   176e8: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000176e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8244
   176ec: 91000000     	add	x0, x0, #0x0
		00000000000176ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8244
   176f0: 94000000     	bl	0x176f0 <tp_test_read+0xcc>
		00000000000176f0:  R_AARCH64_CALL26	_printk
   176f4: 52800043     	mov	w3, #0x2                // =2
   176f8: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		00000000000176f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5e
   176fc: 91000042     	add	x2, x2, #0x0
		00000000000176fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5e
   17700: 910023e0     	add	x0, sp, #0x8
   17704: 52800141     	mov	w1, #0xa                // =10
   17708: 94000000     	bl	0x17708 <tp_test_read+0xe4>
		0000000000017708:  R_AARCH64_CALL26	snprintf
   1770c: 93407c04     	sxtw	x4, w0
   17710: 910023e3     	add	x3, sp, #0x8
   17714: aa1403e1     	mov	x1, x20
   17718: aa1503e0     	mov	x0, x21
   1771c: aa1303e2     	mov	x2, x19
   17720: 94000000     	bl	0x17720 <tp_test_read+0xfc>
		0000000000017720:  R_AARCH64_CALL26	simple_read_from_buffer
   17724: 17ffffce     	b	0x1765c <tp_test_read+0x38>
   17728: 94000000     	bl	0x17728 <tp_test_read+0x104>
		0000000000017728:  R_AARCH64_CALL26	__stack_chk_fail
