
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015894 <get_play_game>:
   15894: d503233f     	paciasp
   15898: d10143ff     	sub	sp, sp, #0x50
   1589c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   158a0: a90357f6     	stp	x22, x21, [sp, #0x30]
   158a4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   158a8: 910083fd     	add	x29, sp, #0x20
   158ac: d5384108     	mrs	x8, SP_EL0
   158b0: aa1f03e0     	mov	x0, xzr
   158b4: f9438908     	ldr	x8, [x8, #0x710]
   158b8: f81f83a8     	stur	x8, [x29, #-0x8]
   158bc: f9400068     	ldr	x8, [x3]
   158c0: 790023ff     	strh	wzr, [sp, #0x10]
   158c4: f90007ff     	str	xzr, [sp, #0x8]
   158c8: b4000188     	cbz	x8, 0x158f8 <get_play_game+0x64>
   158cc: d5384108     	mrs	x8, SP_EL0
   158d0: f9438908     	ldr	x8, [x8, #0x710]
   158d4: f85f83a9     	ldur	x9, [x29, #-0x8]
   158d8: eb09011f     	cmp	x8, x9
   158dc: 54000521     	b.ne	0x15980 <get_play_game+0xec>
   158e0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   158e4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   158e8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   158ec: 910143ff     	add	sp, sp, #0x50
   158f0: d50323bf     	autiasp
   158f4: d65f03c0     	ret
   158f8: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000158f8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   158fc: aa0103f5     	mov	x21, x1
   15900: aa0203f4     	mov	x20, x2
   15904: f9400116     	ldr	x22, [x8]
		0000000000015904:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15908: aa0303f3     	mov	x19, x3
   1590c: f94782c8     	ldr	x8, [x22, #0xf00]
   15910: b4000128     	cbz	x8, 0x15934 <get_play_game+0xa0>
   15914: aa1603e0     	mov	x0, x22
   15918: b85fc110     	ldur	w16, [x8, #-0x4]
   1591c: 7281af31     	movk	w17, #0xd79
   15920: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   15924: 6b11021f     	cmp	w16, w17
   15928: 54000040     	b.eq	0x15930 <get_play_game+0x9c>
   1592c: d4304500     	brk	#0x8228
   15930: d63f0100     	blr	x8
   15934: b9445ec2     	ldr	w2, [x22, #0x45c]
   15938: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   1593c: 91000000     	add	x0, x0, #0x0
		000000000001593c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15940: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b63
   15944: 91000021     	add	x1, x1, #0x0
		0000000000015944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b63
   15948: 94000000     	bl	0x15948 <get_play_game+0xb4>
		0000000000015948:  R_AARCH64_CALL26	_printk
   1594c: b9445ec3     	ldr	w3, [x22, #0x45c]
   15950: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   15954: 91000042     	add	x2, x2, #0x0
		0000000000015954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15958: 910023e0     	add	x0, sp, #0x8
   1595c: 52800141     	mov	w1, #0xa                // =10
   15960: 94000000     	bl	0x15960 <get_play_game+0xcc>
		0000000000015960:  R_AARCH64_CALL26	snprintf
   15964: 93407c04     	sxtw	x4, w0
   15968: 910023e3     	add	x3, sp, #0x8
   1596c: aa1403e1     	mov	x1, x20
   15970: aa1503e0     	mov	x0, x21
   15974: aa1303e2     	mov	x2, x19
   15978: 94000000     	bl	0x15978 <get_play_game+0xe4>
		0000000000015978:  R_AARCH64_CALL26	simple_read_from_buffer
   1597c: 17ffffd4     	b	0x158cc <get_play_game+0x38>
   15980: 94000000     	bl	0x15980 <get_play_game+0xec>
		0000000000015980:  R_AARCH64_CALL26	__stack_chk_fail
