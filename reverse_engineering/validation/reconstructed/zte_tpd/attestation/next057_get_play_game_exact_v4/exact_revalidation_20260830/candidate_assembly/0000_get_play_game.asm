
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015838 <get_play_game>:
   15838: d503233f     	paciasp
   1583c: d10143ff     	sub	sp, sp, #0x50
   15840: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15844: a90357f6     	stp	x22, x21, [sp, #0x30]
   15848: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1584c: 910083fd     	add	x29, sp, #0x20
   15850: d5384108     	mrs	x8, SP_EL0
   15854: aa1f03e0     	mov	x0, xzr
   15858: f9438908     	ldr	x8, [x8, #0x710]
   1585c: f81f83a8     	stur	x8, [x29, #-0x8]
   15860: f9400068     	ldr	x8, [x3]
   15864: 790023ff     	strh	wzr, [sp, #0x10]
   15868: f90007ff     	str	xzr, [sp, #0x8]
   1586c: b4000188     	cbz	x8, 0x1589c <get_play_game+0x64>
   15870: d5384108     	mrs	x8, SP_EL0
   15874: f9438908     	ldr	x8, [x8, #0x710]
   15878: f85f83a9     	ldur	x9, [x29, #-0x8]
   1587c: eb09011f     	cmp	x8, x9
   15880: 54000521     	b.ne	0x15924 <get_play_game+0xec>
   15884: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15888: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1588c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15890: 910143ff     	add	sp, sp, #0x50
   15894: d50323bf     	autiasp
   15898: d65f03c0     	ret
   1589c: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		000000000001589c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   158a0: aa0103f5     	mov	x21, x1
   158a4: aa0203f4     	mov	x20, x2
   158a8: f9400116     	ldr	x22, [x8]
		00000000000158a8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   158ac: aa0303f3     	mov	x19, x3
   158b0: f94782c8     	ldr	x8, [x22, #0xf00]
   158b4: b4000128     	cbz	x8, 0x158d8 <get_play_game+0xa0>
   158b8: aa1603e0     	mov	x0, x22
   158bc: b85fc110     	ldur	w16, [x8, #-0x4]
   158c0: 7281af31     	movk	w17, #0xd79
   158c4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   158c8: 6b11021f     	cmp	w16, w17
   158cc: 54000040     	b.eq	0x158d4 <get_play_game+0x9c>
   158d0: d4304500     	brk	#0x8228
   158d4: d63f0100     	blr	x8
   158d8: b9445ec2     	ldr	w2, [x22, #0x45c]
   158dc: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000158dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   158e0: 91000000     	add	x0, x0, #0x0
		00000000000158e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   158e4: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000158e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b63
   158e8: 91000021     	add	x1, x1, #0x0
		00000000000158e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b63
   158ec: 94000000     	bl	0x158ec <get_play_game+0xb4>
		00000000000158ec:  R_AARCH64_CALL26	_printk
   158f0: b9445ec3     	ldr	w3, [x22, #0x45c]
   158f4: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000158f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   158f8: 91000042     	add	x2, x2, #0x0
		00000000000158f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   158fc: 910023e0     	add	x0, sp, #0x8
   15900: 52800141     	mov	w1, #0xa                // =10
   15904: 94000000     	bl	0x15904 <get_play_game+0xcc>
		0000000000015904:  R_AARCH64_CALL26	snprintf
   15908: 93407c04     	sxtw	x4, w0
   1590c: 910023e3     	add	x3, sp, #0x8
   15910: aa1403e1     	mov	x1, x20
   15914: aa1503e0     	mov	x0, x21
   15918: aa1303e2     	mov	x2, x19
   1591c: 94000000     	bl	0x1591c <get_play_game+0xe4>
		000000000001591c:  R_AARCH64_CALL26	simple_read_from_buffer
   15920: 17ffffd4     	b	0x15870 <get_play_game+0x38>
   15924: 94000000     	bl	0x15924 <get_play_game+0xec>
		0000000000015924:  R_AARCH64_CALL26	__stack_chk_fail
