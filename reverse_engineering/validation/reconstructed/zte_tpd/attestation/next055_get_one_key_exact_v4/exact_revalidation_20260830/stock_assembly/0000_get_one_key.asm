
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000051c4 <get_one_key>:
    51c4: d503233f     	paciasp
    51c8: d10143ff     	sub	sp, sp, #0x50
    51cc: a9027bfd     	stp	x29, x30, [sp, #0x20]
    51d0: a90357f6     	stp	x22, x21, [sp, #0x30]
    51d4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    51d8: 910083fd     	add	x29, sp, #0x20
    51dc: d5384108     	mrs	x8, SP_EL0
    51e0: aa1f03e0     	mov	x0, xzr
    51e4: f9438908     	ldr	x8, [x8, #0x710]
    51e8: f81f83a8     	stur	x8, [x29, #-0x8]
    51ec: f9400068     	ldr	x8, [x3]
    51f0: 790023ff     	strh	wzr, [sp, #0x10]
    51f4: f90007ff     	str	xzr, [sp, #0x8]
    51f8: b4000188     	cbz	x8, 0x5228 <get_one_key+0x64>
    51fc: d5384108     	mrs	x8, SP_EL0
    5200: f9438908     	ldr	x8, [x8, #0x710]
    5204: f85f83a9     	ldur	x9, [x29, #-0x8]
    5208: eb09011f     	cmp	x8, x9
    520c: 54000521     	b.ne	0x52b0 <get_one_key+0xec>
    5210: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5214: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5218: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    521c: 910143ff     	add	sp, sp, #0x50
    5220: d50323bf     	autiasp
    5224: d65f03c0     	ret
    5228: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005228:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    522c: aa0103f5     	mov	x21, x1
    5230: aa0203f4     	mov	x20, x2
    5234: f9400116     	ldr	x22, [x8]
		0000000000005234:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5238: aa0303f3     	mov	x19, x3
    523c: f9477ac8     	ldr	x8, [x22, #0xef0]
    5240: b4000128     	cbz	x8, 0x5264 <get_one_key+0xa0>
    5244: aa1603e0     	mov	x0, x22
    5248: b85fc110     	ldur	w16, [x8, #-0x4]
    524c: 7281af31     	movk	w17, #0xd79
    5250: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    5254: 6b11021f     	cmp	w16, w17
    5258: 54000040     	b.eq	0x5260 <get_one_key+0x9c>
    525c: d4304500     	brk	#0x8228
    5260: d63f0100     	blr	x8
    5264: b9445ac2     	ldr	w2, [x22, #0x458]
    5268: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    526c: 91000000     	add	x0, x0, #0x0
		000000000000526c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    5270: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fce
    5274: 91000021     	add	x1, x1, #0x0
		0000000000005274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fce
    5278: 94000000     	bl	0x5278 <get_one_key+0xb4>
		0000000000005278:  R_AARCH64_CALL26	_printk
    527c: b9445ac3     	ldr	w3, [x22, #0x458]
    5280: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    5284: 91000042     	add	x2, x2, #0x0
		0000000000005284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    5288: 910023e0     	add	x0, sp, #0x8
    528c: 52800141     	mov	w1, #0xa                // =10
    5290: 94000000     	bl	0x5290 <get_one_key+0xcc>
		0000000000005290:  R_AARCH64_CALL26	snprintf
    5294: 93407c04     	sxtw	x4, w0
    5298: 910023e3     	add	x3, sp, #0x8
    529c: aa1403e1     	mov	x1, x20
    52a0: aa1503e0     	mov	x0, x21
    52a4: aa1303e2     	mov	x2, x19
    52a8: 94000000     	bl	0x52a8 <get_one_key+0xe4>
		00000000000052a8:  R_AARCH64_CALL26	simple_read_from_buffer
    52ac: 17ffffd4     	b	0x51fc <get_one_key+0x38>
    52b0: 94000000     	bl	0x52b0 <get_one_key+0xec>
		00000000000052b0:  R_AARCH64_CALL26	__stack_chk_fail
