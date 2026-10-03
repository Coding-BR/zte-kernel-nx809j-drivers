
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006628 <tp_fold_state_read>:
    6628: d503233f     	paciasp
    662c: d10143ff     	sub	sp, sp, #0x50
    6630: a9027bfd     	stp	x29, x30, [sp, #0x20]
    6634: a90357f6     	stp	x22, x21, [sp, #0x30]
    6638: a9044ff4     	stp	x20, x19, [sp, #0x40]
    663c: 910083fd     	add	x29, sp, #0x20
    6640: d5384108     	mrs	x8, SP_EL0
    6644: aa1f03e0     	mov	x0, xzr
    6648: f9438908     	ldr	x8, [x8, #0x710]
    664c: f81f83a8     	stur	x8, [x29, #-0x8]
    6650: f9400068     	ldr	x8, [x3]
    6654: 790023ff     	strh	wzr, [sp, #0x10]
    6658: f90007ff     	str	xzr, [sp, #0x8]
    665c: b4000188     	cbz	x8, 0x668c <tp_fold_state_read+0x64>
    6660: d5384108     	mrs	x8, SP_EL0
    6664: f9438908     	ldr	x8, [x8, #0x710]
    6668: f85f83a9     	ldur	x9, [x29, #-0x8]
    666c: eb09011f     	cmp	x8, x9
    6670: 54000521     	b.ne	0x6714 <tp_fold_state_read+0xec>
    6674: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6678: a94357f6     	ldp	x22, x21, [sp, #0x30]
    667c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    6680: 910143ff     	add	sp, sp, #0x50
    6684: d50323bf     	autiasp
    6688: d65f03c0     	ret
    668c: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		000000000000668c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6690: aa0103f5     	mov	x21, x1
    6694: aa0203f4     	mov	x20, x2
    6698: f9400116     	ldr	x22, [x8]
		0000000000006698:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    669c: aa0303f3     	mov	x19, x3
    66a0: f947dec8     	ldr	x8, [x22, #0xfb8]
    66a4: b4000128     	cbz	x8, 0x66c8 <tp_fold_state_read+0xa0>
    66a8: aa1603e0     	mov	x0, x22
    66ac: b85fc110     	ldur	w16, [x8, #-0x4]
    66b0: 7281af31     	movk	w17, #0xd79
    66b4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    66b8: 6b11021f     	cmp	w16, w17
    66bc: 54000040     	b.eq	0x66c4 <tp_fold_state_read+0x9c>
    66c0: d4304500     	brk	#0x8228
    66c4: d63f0100     	blr	x8
    66c8: b9447ec2     	ldr	w2, [x22, #0x47c]
    66cc: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		00000000000066cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a98
    66d0: 91000000     	add	x0, x0, #0x0
		00000000000066d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a98
    66d4: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		00000000000066d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aac
    66d8: 91000021     	add	x1, x1, #0x0
		00000000000066d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aac
    66dc: 94000000     	bl	0x66dc <tp_fold_state_read+0xb4>
		00000000000066dc:  R_AARCH64_CALL26	_printk
    66e0: b9447ec3     	ldr	w3, [x22, #0x47c]
    66e4: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		00000000000066e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    66e8: 91000042     	add	x2, x2, #0x0
		00000000000066e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    66ec: 910023e0     	add	x0, sp, #0x8
    66f0: 52800141     	mov	w1, #0xa                // =10
    66f4: 94000000     	bl	0x66f4 <tp_fold_state_read+0xcc>
		00000000000066f4:  R_AARCH64_CALL26	snprintf
    66f8: 93407c04     	sxtw	x4, w0
    66fc: 910023e3     	add	x3, sp, #0x8
    6700: aa1403e1     	mov	x1, x20
    6704: aa1503e0     	mov	x0, x21
    6708: aa1303e2     	mov	x2, x19
    670c: 94000000     	bl	0x670c <tp_fold_state_read+0xe4>
		000000000000670c:  R_AARCH64_CALL26	simple_read_from_buffer
    6710: 17ffffd4     	b	0x6660 <tp_fold_state_read+0x38>
    6714: 94000000     	bl	0x6714 <tp_fold_state_read+0xec>
		0000000000006714:  R_AARCH64_CALL26	__stack_chk_fail
