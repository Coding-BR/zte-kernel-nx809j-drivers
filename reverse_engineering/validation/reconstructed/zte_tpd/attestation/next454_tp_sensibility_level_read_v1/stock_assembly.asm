
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005a7c <tp_sensibility_level_read>:
    5a7c: d503233f     	paciasp
    5a80: d10143ff     	sub	sp, sp, #0x50
    5a84: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5a88: a90357f6     	stp	x22, x21, [sp, #0x30]
    5a8c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5a90: 910083fd     	add	x29, sp, #0x20
    5a94: d5384108     	mrs	x8, SP_EL0
    5a98: aa1f03e0     	mov	x0, xzr
    5a9c: f9438908     	ldr	x8, [x8, #0x710]
    5aa0: f81f83a8     	stur	x8, [x29, #-0x8]
    5aa4: f9400068     	ldr	x8, [x3]
    5aa8: 790023ff     	strh	wzr, [sp, #0x10]
    5aac: f90007ff     	str	xzr, [sp, #0x8]
    5ab0: b4000188     	cbz	x8, 0x5ae0 <tp_sensibility_level_read+0x64>
    5ab4: d5384108     	mrs	x8, SP_EL0
    5ab8: f9438908     	ldr	x8, [x8, #0x710]
    5abc: f85f83a9     	ldur	x9, [x29, #-0x8]
    5ac0: eb09011f     	cmp	x8, x9
    5ac4: 54000521     	b.ne	0x5b68 <tp_sensibility_level_read+0xec>
    5ac8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5acc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5ad0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5ad4: 910143ff     	add	sp, sp, #0x50
    5ad8: d50323bf     	autiasp
    5adc: d65f03c0     	ret
    5ae0: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005ae0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5ae4: aa0103f5     	mov	x21, x1
    5ae8: aa0203f4     	mov	x20, x2
    5aec: f9400116     	ldr	x22, [x8]
		0000000000005aec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5af0: aa0303f3     	mov	x19, x3
    5af4: f947b2c8     	ldr	x8, [x22, #0xf60]
    5af8: b4000128     	cbz	x8, 0x5b1c <tp_sensibility_level_read+0xa0>
    5afc: aa1603e0     	mov	x0, x22
    5b00: b85fc110     	ldur	w16, [x8, #-0x4]
    5b04: 7281af31     	movk	w17, #0xd79
    5b08: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    5b0c: 6b11021f     	cmp	w16, w17
    5b10: 54000040     	b.eq	0x5b18 <tp_sensibility_level_read+0x9c>
    5b14: d4304500     	brk	#0x8228
    5b18: d63f0100     	blr	x8
    5b1c: 394102c2     	ldrb	w2, [x22, #0x40]
    5b20: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf36
    5b24: 91000000     	add	x0, x0, #0x0
		0000000000005b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf36
    5b28: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd7
    5b2c: 91000021     	add	x1, x1, #0x0
		0000000000005b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd7
    5b30: 94000000     	bl	0x5b30 <tp_sensibility_level_read+0xb4>
		0000000000005b30:  R_AARCH64_CALL26	_printk
    5b34: 394102c3     	ldrb	w3, [x22, #0x40]
    5b38: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    5b3c: 91000042     	add	x2, x2, #0x0
		0000000000005b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    5b40: 910023e0     	add	x0, sp, #0x8
    5b44: 52800141     	mov	w1, #0xa                // =10
    5b48: 94000000     	bl	0x5b48 <tp_sensibility_level_read+0xcc>
		0000000000005b48:  R_AARCH64_CALL26	snprintf
    5b4c: 93407c04     	sxtw	x4, w0
    5b50: 910023e3     	add	x3, sp, #0x8
    5b54: aa1403e1     	mov	x1, x20
    5b58: aa1503e0     	mov	x0, x21
    5b5c: aa1303e2     	mov	x2, x19
    5b60: 94000000     	bl	0x5b60 <tp_sensibility_level_read+0xe4>
		0000000000005b60:  R_AARCH64_CALL26	simple_read_from_buffer
    5b64: 17ffffd4     	b	0x5ab4 <tp_sensibility_level_read+0x38>
    5b68: 94000000     	bl	0x5b68 <tp_sensibility_level_read+0xec>
		0000000000005b68:  R_AARCH64_CALL26	__stack_chk_fail
