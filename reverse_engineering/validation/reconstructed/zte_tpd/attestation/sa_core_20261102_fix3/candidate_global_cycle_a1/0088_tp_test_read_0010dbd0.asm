
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017680 <tp_test_read>:
   17680: d503233f     	paciasp
   17684: d10143ff     	sub	sp, sp, #0x50
   17688: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1768c: a90357f6     	stp	x22, x21, [sp, #0x30]
   17690: a9044ff4     	stp	x20, x19, [sp, #0x40]
   17694: 910083fd     	add	x29, sp, #0x20
   17698: d5384108     	mrs	x8, SP_EL0
   1769c: aa1f03e0     	mov	x0, xzr
   176a0: f9438908     	ldr	x8, [x8, #0x710]
   176a4: f81f83a8     	stur	x8, [x29, #-0x8]
   176a8: f9400068     	ldr	x8, [x3]
   176ac: 790023ff     	strh	wzr, [sp, #0x10]
   176b0: f90007ff     	str	xzr, [sp, #0x8]
   176b4: b4000188     	cbz	x8, 0x176e4 <tp_test_read+0x64>
   176b8: d5384108     	mrs	x8, SP_EL0
   176bc: f9438908     	ldr	x8, [x8, #0x710]
   176c0: f85f83a9     	ldur	x9, [x29, #-0x8]
   176c4: eb09011f     	cmp	x8, x9
   176c8: 540005e1     	b.ne	0x17784 <tp_test_read+0x104>
   176cc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   176d0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   176d4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   176d8: 910143ff     	add	sp, sp, #0x50
   176dc: d50323bf     	autiasp
   176e0: d65f03c0     	ret
   176e4: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000176e4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   176e8: aa0103f5     	mov	x21, x1
   176ec: aa0203f4     	mov	x20, x2
   176f0: f9400116     	ldr	x22, [x8]
		00000000000176f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   176f4: aa0303f3     	mov	x19, x3
   176f8: 397002c1     	ldrb	w1, [x22, #0xc00]
   176fc: 7103fc3f     	cmp	w1, #0xff
   17700: 54000181     	b.ne	0x17730 <tp_test_read+0xb0>
   17704: 39511ac1     	ldrb	w1, [x22, #0x446]
   17708: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbce4
   1770c: 91000000     	add	x0, x0, #0x0
		000000000001770c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbce4
   17710: 94000000     	bl	0x17710 <tp_test_read+0x90>
		0000000000017710:  R_AARCH64_CALL26	_printk
   17714: 394076c8     	ldrb	w8, [x22, #0x1d]
   17718: 36000168     	tbz	w8, #0x0, 0x17744 <tp_test_read+0xc4>
   1771c: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		000000000001771c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62ee
   17720: 91000000     	add	x0, x0, #0x0
		0000000000017720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62ee
   17724: 94000000     	bl	0x17724 <tp_test_read+0xa4>
		0000000000017724:  R_AARCH64_CALL26	_printk
   17728: 2a1f03e3     	mov	w3, wzr
   1772c: 1400000a     	b	0x17754 <tp_test_read+0xd4>
   17730: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b62
   17734: 91000000     	add	x0, x0, #0x0
		0000000000017734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b62
   17738: 94000000     	bl	0x17738 <tp_test_read+0xb8>
		0000000000017738:  R_AARCH64_CALL26	_printk
   1773c: 52800023     	mov	w3, #0x1                // =1
   17740: 14000005     	b	0x17754 <tp_test_read+0xd4>
   17744: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8244
   17748: 91000000     	add	x0, x0, #0x0
		0000000000017748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8244
   1774c: 94000000     	bl	0x1774c <tp_test_read+0xcc>
		000000000001774c:  R_AARCH64_CALL26	_printk
   17750: 52800043     	mov	w3, #0x2                // =2
   17754: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5e
   17758: 91000042     	add	x2, x2, #0x0
		0000000000017758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5e
   1775c: 910023e0     	add	x0, sp, #0x8
   17760: 52800141     	mov	w1, #0xa                // =10
   17764: 94000000     	bl	0x17764 <tp_test_read+0xe4>
		0000000000017764:  R_AARCH64_CALL26	snprintf
   17768: 93407c04     	sxtw	x4, w0
   1776c: 910023e3     	add	x3, sp, #0x8
   17770: aa1403e1     	mov	x1, x20
   17774: aa1503e0     	mov	x0, x21
   17778: aa1303e2     	mov	x2, x19
   1777c: 94000000     	bl	0x1777c <tp_test_read+0xfc>
		000000000001777c:  R_AARCH64_CALL26	simple_read_from_buffer
   17780: 17ffffce     	b	0x176b8 <tp_test_read+0x38>
   17784: 94000000     	bl	0x17784 <tp_test_read+0x104>
		0000000000017784:  R_AARCH64_CALL26	__stack_chk_fail
