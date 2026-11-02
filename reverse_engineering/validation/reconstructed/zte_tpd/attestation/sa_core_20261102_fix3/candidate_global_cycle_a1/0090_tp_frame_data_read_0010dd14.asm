
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000177c4 <tp_frame_data_read>:
   177c4: d503233f     	paciasp
   177c8: d10143ff     	sub	sp, sp, #0x50
   177cc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   177d0: a90357f6     	stp	x22, x21, [sp, #0x30]
   177d4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   177d8: 910083fd     	add	x29, sp, #0x20
   177dc: d5384108     	mrs	x8, SP_EL0
   177e0: aa1f03e0     	mov	x0, xzr
   177e4: f9438908     	ldr	x8, [x8, #0x710]
   177e8: f81f83a8     	stur	x8, [x29, #-0x8]
   177ec: f9400068     	ldr	x8, [x3]
   177f0: 790023ff     	strh	wzr, [sp, #0x10]
   177f4: f90007ff     	str	xzr, [sp, #0x8]
   177f8: b4000188     	cbz	x8, 0x17828 <tp_frame_data_read+0x64>
   177fc: d5384108     	mrs	x8, SP_EL0
   17800: f9438908     	ldr	x8, [x8, #0x710]
   17804: f85f83a9     	ldur	x9, [x29, #-0x8]
   17808: eb09011f     	cmp	x8, x9
   1780c: 54000521     	b.ne	0x178b0 <tp_frame_data_read+0xec>
   17810: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   17814: a94357f6     	ldp	x22, x21, [sp, #0x30]
   17818: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1781c: 910143ff     	add	sp, sp, #0x50
   17820: d50323bf     	autiasp
   17824: d65f03c0     	ret
   17828: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017828:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1782c: aa0103f5     	mov	x21, x1
   17830: aa0203f4     	mov	x20, x2
   17834: f9400116     	ldr	x22, [x8]
		0000000000017834:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17838: aa0303f3     	mov	x19, x3
   1783c: f94802c8     	ldr	x8, [x22, #0x1000]
   17840: b4000128     	cbz	x8, 0x17864 <tp_frame_data_read+0xa0>
   17844: aa1603e0     	mov	x0, x22
   17848: b85fc110     	ldur	w16, [x8, #-0x4]
   1784c: 7281af31     	movk	w17, #0xd79
   17850: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   17854: 6b11021f     	cmp	w16, w17
   17858: 54000040     	b.eq	0x17860 <tp_frame_data_read+0x9c>
   1785c: d4304500     	brk	#0x8228
   17860: d63f0100     	blr	x8
   17864: b94462c2     	ldr	w2, [x22, #0x460]
   17868: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   1786c: 91000000     	add	x0, x0, #0x0
		000000000001786c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   17870: 90000001     	adrp	x1, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a3c
   17874: 91000021     	add	x1, x1, #0x0
		0000000000017874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a3c
   17878: 94000000     	bl	0x17878 <tp_frame_data_read+0xb4>
		0000000000017878:  R_AARCH64_CALL26	_printk
   1787c: b94462c3     	ldr	w3, [x22, #0x460]
   17880: 90000002     	adrp	x2, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   17884: 91000042     	add	x2, x2, #0x0
		0000000000017884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   17888: 910023e0     	add	x0, sp, #0x8
   1788c: 52800141     	mov	w1, #0xa                // =10
   17890: 94000000     	bl	0x17890 <tp_frame_data_read+0xcc>
		0000000000017890:  R_AARCH64_CALL26	snprintf
   17894: 93407c04     	sxtw	x4, w0
   17898: 910023e3     	add	x3, sp, #0x8
   1789c: aa1403e1     	mov	x1, x20
   178a0: aa1503e0     	mov	x0, x21
   178a4: aa1303e2     	mov	x2, x19
   178a8: 94000000     	bl	0x178a8 <tp_frame_data_read+0xe4>
		00000000000178a8:  R_AARCH64_CALL26	simple_read_from_buffer
   178ac: 17ffffd4     	b	0x177fc <tp_frame_data_read+0x38>
   178b0: 94000000     	bl	0x178b0 <tp_frame_data_read+0xec>
		00000000000178b0:  R_AARCH64_CALL26	__stack_chk_fail
