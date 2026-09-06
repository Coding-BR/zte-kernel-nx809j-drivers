
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003530 <tp_glove_read>:
    3530: d503233f     	paciasp
    3534: d10143ff     	sub	sp, sp, #0x50
    3538: a9027bfd     	stp	x29, x30, [sp, #0x20]
    353c: a90357f6     	stp	x22, x21, [sp, #0x30]
    3540: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3544: 910083fd     	add	x29, sp, #0x20
    3548: d5384108     	mrs	x8, SP_EL0
    354c: aa1f03e0     	mov	x0, xzr
    3550: f9438908     	ldr	x8, [x8, #0x710]
    3554: f81f83a8     	stur	x8, [x29, #-0x8]
    3558: f9400068     	ldr	x8, [x3]
    355c: 790023ff     	strh	wzr, [sp, #0x10]
    3560: f90007ff     	str	xzr, [sp, #0x8]
    3564: b4000188     	cbz	x8, 0x3594 <tp_glove_read+0x64>
    3568: d5384108     	mrs	x8, SP_EL0
    356c: f9438908     	ldr	x8, [x8, #0x710]
    3570: f85f83a9     	ldur	x9, [x29, #-0x8]
    3574: eb09011f     	cmp	x8, x9
    3578: 54000521     	b.ne	0x361c <tp_glove_read+0xec>
    357c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3580: a94357f6     	ldp	x22, x21, [sp, #0x30]
    3584: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    3588: 910143ff     	add	sp, sp, #0x50
    358c: d50323bf     	autiasp
    3590: d65f03c0     	ret
    3594: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003594:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3598: aa0103f5     	mov	x21, x1
    359c: aa0203f4     	mov	x20, x2
    35a0: f9400116     	ldr	x22, [x8]
		00000000000035a0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    35a4: aa0303f3     	mov	x19, x3
    35a8: f94726c8     	ldr	x8, [x22, #0xe48]
    35ac: b4000128     	cbz	x8, 0x35d0 <tp_glove_read+0xa0>
    35b0: aa1603e0     	mov	x0, x22
    35b4: b85fc110     	ldur	w16, [x8, #-0x4]
    35b8: 7281af31     	movk	w17, #0xd79
    35bc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    35c0: 6b11021f     	cmp	w16, w17
    35c4: 54000040     	b.eq	0x35cc <tp_glove_read+0x9c>
    35c8: d4304500     	brk	#0x8228
    35cc: d63f0100     	blr	x8
    35d0: b9400ac2     	ldr	w2, [x22, #0x8]
    35d4: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		00000000000035d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    35d8: 91000000     	add	x0, x0, #0x0
		00000000000035d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    35dc: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		00000000000035dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb938
    35e0: 91000021     	add	x1, x1, #0x0
		00000000000035e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb938
    35e4: 94000000     	bl	0x35e4 <tp_glove_read+0xb4>
		00000000000035e4:  R_AARCH64_CALL26	_printk
    35e8: b9400ac3     	ldr	w3, [x22, #0x8]
    35ec: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		00000000000035ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    35f0: 91000042     	add	x2, x2, #0x0
		00000000000035f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    35f4: 910023e0     	add	x0, sp, #0x8
    35f8: 52800141     	mov	w1, #0xa                // =10
    35fc: 94000000     	bl	0x35fc <tp_glove_read+0xcc>
		00000000000035fc:  R_AARCH64_CALL26	snprintf
    3600: 93407c04     	sxtw	x4, w0
    3604: 910023e3     	add	x3, sp, #0x8
    3608: aa1403e1     	mov	x1, x20
    360c: aa1503e0     	mov	x0, x21
    3610: aa1303e2     	mov	x2, x19
    3614: 94000000     	bl	0x3614 <tp_glove_read+0xe4>
		0000000000003614:  R_AARCH64_CALL26	simple_read_from_buffer
    3618: 17ffffd4     	b	0x3568 <tp_glove_read+0x38>
    361c: 94000000     	bl	0x361c <tp_glove_read+0xec>
		000000000000361c:  R_AARCH64_CALL26	__stack_chk_fail
