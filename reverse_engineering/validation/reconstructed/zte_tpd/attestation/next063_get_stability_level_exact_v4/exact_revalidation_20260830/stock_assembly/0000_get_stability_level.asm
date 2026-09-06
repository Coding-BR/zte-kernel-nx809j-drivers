
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000058c0 <get_stability_level>:
    58c0: d503233f     	paciasp
    58c4: d10143ff     	sub	sp, sp, #0x50
    58c8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    58cc: a90357f6     	stp	x22, x21, [sp, #0x30]
    58d0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    58d4: 910083fd     	add	x29, sp, #0x20
    58d8: d5384108     	mrs	x8, SP_EL0
    58dc: aa1f03e0     	mov	x0, xzr
    58e0: f9438908     	ldr	x8, [x8, #0x710]
    58e4: f81f83a8     	stur	x8, [x29, #-0x8]
    58e8: f9400068     	ldr	x8, [x3]
    58ec: 790023ff     	strh	wzr, [sp, #0x10]
    58f0: f90007ff     	str	xzr, [sp, #0x8]
    58f4: b4000188     	cbz	x8, 0x5924 <get_stability_level+0x64>
    58f8: d5384108     	mrs	x8, SP_EL0
    58fc: f9438908     	ldr	x8, [x8, #0x710]
    5900: f85f83a9     	ldur	x9, [x29, #-0x8]
    5904: eb09011f     	cmp	x8, x9
    5908: 54000521     	b.ne	0x59ac <get_stability_level+0xec>
    590c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5910: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5914: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5918: 910143ff     	add	sp, sp, #0x50
    591c: d50323bf     	autiasp
    5920: d65f03c0     	ret
    5924: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005924:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5928: aa0103f5     	mov	x21, x1
    592c: aa0203f4     	mov	x20, x2
    5930: f9400116     	ldr	x22, [x8]
		0000000000005930:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5934: aa0303f3     	mov	x19, x3
    5938: f9479ec8     	ldr	x8, [x22, #0xf38]
    593c: b4000128     	cbz	x8, 0x5960 <get_stability_level+0xa0>
    5940: aa1603e0     	mov	x0, x22
    5944: b85fc110     	ldur	w16, [x8, #-0x4]
    5948: 7281af31     	movk	w17, #0xd79
    594c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    5950: 6b11021f     	cmp	w16, w17
    5954: 54000040     	b.eq	0x595c <get_stability_level+0x9c>
    5958: d4304500     	brk	#0x8228
    595c: d63f0100     	blr	x8
    5960: b9446ec2     	ldr	w2, [x22, #0x46c]
    5964: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    5968: 91000000     	add	x0, x0, #0x0
		0000000000005968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    596c: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000596c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc73
    5970: 91000021     	add	x1, x1, #0x0
		0000000000005970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc73
    5974: 94000000     	bl	0x5974 <get_stability_level+0xb4>
		0000000000005974:  R_AARCH64_CALL26	_printk
    5978: b9446ec3     	ldr	w3, [x22, #0x46c]
    597c: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000597c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    5980: 91000042     	add	x2, x2, #0x0
		0000000000005980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    5984: 910023e0     	add	x0, sp, #0x8
    5988: 52800141     	mov	w1, #0xa                // =10
    598c: 94000000     	bl	0x598c <get_stability_level+0xcc>
		000000000000598c:  R_AARCH64_CALL26	snprintf
    5990: 93407c04     	sxtw	x4, w0
    5994: 910023e3     	add	x3, sp, #0x8
    5998: aa1403e1     	mov	x1, x20
    599c: aa1503e0     	mov	x0, x21
    59a0: aa1303e2     	mov	x2, x19
    59a4: 94000000     	bl	0x59a4 <get_stability_level+0xe4>
		00000000000059a4:  R_AARCH64_CALL26	simple_read_from_buffer
    59a8: 17ffffd4     	b	0x58f8 <get_stability_level+0x38>
    59ac: 94000000     	bl	0x59ac <get_stability_level+0xec>
		00000000000059ac:  R_AARCH64_CALL26	__stack_chk_fail
