
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001516c <get_one_key>:
   1516c: d503233f     	paciasp
   15170: d10143ff     	sub	sp, sp, #0x50
   15174: a9027bfd     	stp	x29, x30, [sp, #0x20]
   15178: a90357f6     	stp	x22, x21, [sp, #0x30]
   1517c: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15180: 910083fd     	add	x29, sp, #0x20
   15184: d5384108     	mrs	x8, SP_EL0
   15188: aa1f03e0     	mov	x0, xzr
   1518c: f9438908     	ldr	x8, [x8, #0x710]
   15190: f81f83a8     	stur	x8, [x29, #-0x8]
   15194: f9400068     	ldr	x8, [x3]
   15198: 790023ff     	strh	wzr, [sp, #0x10]
   1519c: f90007ff     	str	xzr, [sp, #0x8]
   151a0: b4000188     	cbz	x8, 0x151d0 <get_one_key+0x64>
   151a4: d5384108     	mrs	x8, SP_EL0
   151a8: f9438908     	ldr	x8, [x8, #0x710]
   151ac: f85f83a9     	ldur	x9, [x29, #-0x8]
   151b0: eb09011f     	cmp	x8, x9
   151b4: 54000521     	b.ne	0x15258 <get_one_key+0xec>
   151b8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   151bc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   151c0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   151c4: 910143ff     	add	sp, sp, #0x50
   151c8: d50323bf     	autiasp
   151cc: d65f03c0     	ret
   151d0: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000151d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   151d4: aa0103f5     	mov	x21, x1
   151d8: aa0203f4     	mov	x20, x2
   151dc: f9400116     	ldr	x22, [x8]
		00000000000151dc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   151e0: aa0303f3     	mov	x19, x3
   151e4: f9477ac8     	ldr	x8, [x22, #0xef0]
   151e8: b4000128     	cbz	x8, 0x1520c <get_one_key+0xa0>
   151ec: aa1603e0     	mov	x0, x22
   151f0: b85fc110     	ldur	w16, [x8, #-0x4]
   151f4: 7281af31     	movk	w17, #0xd79
   151f8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   151fc: 6b11021f     	cmp	w16, w17
   15200: 54000040     	b.eq	0x15208 <get_one_key+0x9c>
   15204: d4304500     	brk	#0x8228
   15208: d63f0100     	blr	x8
   1520c: b9445ac2     	ldr	w2, [x22, #0x458]
   15210: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   15214: 91000000     	add	x0, x0, #0x0
		0000000000015214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   15218: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad72
   1521c: 91000021     	add	x1, x1, #0x0
		000000000001521c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad72
   15220: 94000000     	bl	0x15220 <get_one_key+0xb4>
		0000000000015220:  R_AARCH64_CALL26	_printk
   15224: b9445ac3     	ldr	w3, [x22, #0x458]
   15228: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   1522c: 91000042     	add	x2, x2, #0x0
		000000000001522c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   15230: 910023e0     	add	x0, sp, #0x8
   15234: 52800141     	mov	w1, #0xa                // =10
   15238: 94000000     	bl	0x15238 <get_one_key+0xcc>
		0000000000015238:  R_AARCH64_CALL26	snprintf
   1523c: 93407c04     	sxtw	x4, w0
   15240: 910023e3     	add	x3, sp, #0x8
   15244: aa1403e1     	mov	x1, x20
   15248: aa1503e0     	mov	x0, x21
   1524c: aa1303e2     	mov	x2, x19
   15250: 94000000     	bl	0x15250 <get_one_key+0xe4>
		0000000000015250:  R_AARCH64_CALL26	simple_read_from_buffer
   15254: 17ffffd4     	b	0x151a4 <get_one_key+0x38>
   15258: 94000000     	bl	0x15258 <get_one_key+0xec>
		0000000000015258:  R_AARCH64_CALL26	__stack_chk_fail
