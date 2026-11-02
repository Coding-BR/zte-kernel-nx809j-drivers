
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017768 <tp_frame_data_read>:
   17768: d503233f     	paciasp
   1776c: d10143ff     	sub	sp, sp, #0x50
   17770: a9027bfd     	stp	x29, x30, [sp, #0x20]
   17774: a90357f6     	stp	x22, x21, [sp, #0x30]
   17778: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1777c: 910083fd     	add	x29, sp, #0x20
   17780: d5384108     	mrs	x8, SP_EL0
   17784: aa1f03e0     	mov	x0, xzr
   17788: f9438908     	ldr	x8, [x8, #0x710]
   1778c: f81f83a8     	stur	x8, [x29, #-0x8]
   17790: f9400068     	ldr	x8, [x3]
   17794: 790023ff     	strh	wzr, [sp, #0x10]
   17798: f90007ff     	str	xzr, [sp, #0x8]
   1779c: b4000188     	cbz	x8, 0x177cc <tp_frame_data_read+0x64>
   177a0: d5384108     	mrs	x8, SP_EL0
   177a4: f9438908     	ldr	x8, [x8, #0x710]
   177a8: f85f83a9     	ldur	x9, [x29, #-0x8]
   177ac: eb09011f     	cmp	x8, x9
   177b0: 54000521     	b.ne	0x17854 <tp_frame_data_read+0xec>
   177b4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   177b8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   177bc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   177c0: 910143ff     	add	sp, sp, #0x50
   177c4: d50323bf     	autiasp
   177c8: d65f03c0     	ret
   177cc: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		00000000000177cc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   177d0: aa0103f5     	mov	x21, x1
   177d4: aa0203f4     	mov	x20, x2
   177d8: f9400116     	ldr	x22, [x8]
		00000000000177d8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   177dc: aa0303f3     	mov	x19, x3
   177e0: f94802c8     	ldr	x8, [x22, #0x1000]
   177e4: b4000128     	cbz	x8, 0x17808 <tp_frame_data_read+0xa0>
   177e8: aa1603e0     	mov	x0, x22
   177ec: b85fc110     	ldur	w16, [x8, #-0x4]
   177f0: 7281af31     	movk	w17, #0xd79
   177f4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   177f8: 6b11021f     	cmp	w16, w17
   177fc: 54000040     	b.eq	0x17804 <tp_frame_data_read+0x9c>
   17800: d4304500     	brk	#0x8228
   17804: d63f0100     	blr	x8
   17808: b94462c2     	ldr	w2, [x22, #0x460]
   1780c: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		000000000001780c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   17810: 91000000     	add	x0, x0, #0x0
		0000000000017810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   17814: 90000001     	adrp	x1, 0x17000 <ghost_debug_read+0x30>
		0000000000017814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a3c
   17818: 91000021     	add	x1, x1, #0x0
		0000000000017818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a3c
   1781c: 94000000     	bl	0x1781c <tp_frame_data_read+0xb4>
		000000000001781c:  R_AARCH64_CALL26	_printk
   17820: b94462c3     	ldr	w3, [x22, #0x460]
   17824: 90000002     	adrp	x2, 0x17000 <ghost_debug_read+0x30>
		0000000000017824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   17828: 91000042     	add	x2, x2, #0x0
		0000000000017828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   1782c: 910023e0     	add	x0, sp, #0x8
   17830: 52800141     	mov	w1, #0xa                // =10
   17834: 94000000     	bl	0x17834 <tp_frame_data_read+0xcc>
		0000000000017834:  R_AARCH64_CALL26	snprintf
   17838: 93407c04     	sxtw	x4, w0
   1783c: 910023e3     	add	x3, sp, #0x8
   17840: aa1403e1     	mov	x1, x20
   17844: aa1503e0     	mov	x0, x21
   17848: aa1303e2     	mov	x2, x19
   1784c: 94000000     	bl	0x1784c <tp_frame_data_read+0xe4>
		000000000001784c:  R_AARCH64_CALL26	simple_read_from_buffer
   17850: 17ffffd4     	b	0x177a0 <tp_frame_data_read+0x38>
   17854: 94000000     	bl	0x17854 <tp_frame_data_read+0xec>
		0000000000017854:  R_AARCH64_CALL26	__stack_chk_fail
