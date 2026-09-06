
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015110 <get_one_key>:
   15110: d503233f     	paciasp
   15114: d10143ff     	sub	sp, sp, #0x50
   15118: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1511c: a90357f6     	stp	x22, x21, [sp, #0x30]
   15120: a9044ff4     	stp	x20, x19, [sp, #0x40]
   15124: 910083fd     	add	x29, sp, #0x20
   15128: d5384108     	mrs	x8, SP_EL0
   1512c: aa1f03e0     	mov	x0, xzr
   15130: f9438908     	ldr	x8, [x8, #0x710]
   15134: f81f83a8     	stur	x8, [x29, #-0x8]
   15138: f9400068     	ldr	x8, [x3]
   1513c: 790023ff     	strh	wzr, [sp, #0x10]
   15140: f90007ff     	str	xzr, [sp, #0x8]
   15144: b4000188     	cbz	x8, 0x15174 <get_one_key+0x64>
   15148: d5384108     	mrs	x8, SP_EL0
   1514c: f9438908     	ldr	x8, [x8, #0x710]
   15150: f85f83a9     	ldur	x9, [x29, #-0x8]
   15154: eb09011f     	cmp	x8, x9
   15158: 54000521     	b.ne	0x151fc <get_one_key+0xec>
   1515c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15160: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15164: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   15168: 910143ff     	add	sp, sp, #0x50
   1516c: d50323bf     	autiasp
   15170: d65f03c0     	ret
   15174: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015174:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   15178: aa0103f5     	mov	x21, x1
   1517c: aa0203f4     	mov	x20, x2
   15180: f9400116     	ldr	x22, [x8]
		0000000000015180:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   15184: aa0303f3     	mov	x19, x3
   15188: f9477ac8     	ldr	x8, [x22, #0xef0]
   1518c: b4000128     	cbz	x8, 0x151b0 <get_one_key+0xa0>
   15190: aa1603e0     	mov	x0, x22
   15194: b85fc110     	ldur	w16, [x8, #-0x4]
   15198: 7281af31     	movk	w17, #0xd79
   1519c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   151a0: 6b11021f     	cmp	w16, w17
   151a4: 54000040     	b.eq	0x151ac <get_one_key+0x9c>
   151a8: d4304500     	brk	#0x8228
   151ac: d63f0100     	blr	x8
   151b0: b9445ac2     	ldr	w2, [x22, #0x458]
   151b4: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000151b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b33c
   151b8: 91000000     	add	x0, x0, #0x0
		00000000000151b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b33c
   151bc: 90000001     	adrp	x1, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000151bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad72
   151c0: 91000021     	add	x1, x1, #0x0
		00000000000151c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad72
   151c4: 94000000     	bl	0x151c4 <get_one_key+0xb4>
		00000000000151c4:  R_AARCH64_CALL26	_printk
   151c8: b9445ac3     	ldr	w3, [x22, #0x458]
   151cc: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000151cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac39
   151d0: 91000042     	add	x2, x2, #0x0
		00000000000151d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac39
   151d4: 910023e0     	add	x0, sp, #0x8
   151d8: 52800141     	mov	w1, #0xa                // =10
   151dc: 94000000     	bl	0x151dc <get_one_key+0xcc>
		00000000000151dc:  R_AARCH64_CALL26	snprintf
   151e0: 93407c04     	sxtw	x4, w0
   151e4: 910023e3     	add	x3, sp, #0x8
   151e8: aa1403e1     	mov	x1, x20
   151ec: aa1503e0     	mov	x0, x21
   151f0: aa1303e2     	mov	x2, x19
   151f4: 94000000     	bl	0x151f4 <get_one_key+0xe4>
		00000000000151f4:  R_AARCH64_CALL26	simple_read_from_buffer
   151f8: 17ffffd4     	b	0x15148 <get_one_key+0x38>
   151fc: 94000000     	bl	0x151fc <get_one_key+0xec>
		00000000000151fc:  R_AARCH64_CALL26	__stack_chk_fail
