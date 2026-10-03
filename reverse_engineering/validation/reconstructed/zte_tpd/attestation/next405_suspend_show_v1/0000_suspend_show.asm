
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ff0 <suspend_show>:
    3ff0: d503233f     	paciasp
    3ff4: d10183ff     	sub	sp, sp, #0x60
    3ff8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    3ffc: a90457f6     	stp	x22, x21, [sp, #0x40]
    4000: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4004: 9100c3fd     	add	x29, sp, #0x30
    4008: d5384108     	mrs	x8, SP_EL0
    400c: aa1f03e0     	mov	x0, xzr
    4010: f9438908     	ldr	x8, [x8, #0x710]
    4014: f81f83a8     	stur	x8, [x29, #-0x8]
    4018: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    401c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    4020: d5384108     	mrs	x8, SP_EL0
    4024: f9400068     	ldr	x8, [x3]
    4028: b4000188     	cbz	x8, 0x4058 <suspend_show+0x68>
    402c: d5384108     	mrs	x8, SP_EL0
    4030: f9438908     	ldr	x8, [x8, #0x710]
    4034: f85f83a9     	ldur	x9, [x29, #-0x8]
    4038: eb09011f     	cmp	x8, x9
    403c: 54000521     	b.ne	0x40e0 <suspend_show+0xf0>
    4040: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    4044: a94457f6     	ldp	x22, x21, [sp, #0x40]
    4048: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    404c: 910183ff     	add	sp, sp, #0x60
    4050: d50323bf     	autiasp
    4054: d65f03c0     	ret
    4058: 90000008     	adrp	x8, 0x4000 <suspend_show+0x10>
		0000000000004058:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    405c: aa0103f5     	mov	x21, x1
    4060: aa0203f4     	mov	x20, x2
    4064: f9400116     	ldr	x22, [x8]
		0000000000004064:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4068: aa0303f3     	mov	x19, x3
    406c: f9472ec8     	ldr	x8, [x22, #0xe58]
    4070: b4000128     	cbz	x8, 0x4094 <suspend_show+0xa4>
    4074: aa1603e0     	mov	x0, x22
    4078: b85fc110     	ldur	w16, [x8, #-0x4]
    407c: 7281af31     	movk	w17, #0xd79
    4080: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    4084: 6b11021f     	cmp	w16, w17
    4088: 54000040     	b.eq	0x4090 <suspend_show+0xa0>
    408c: d4304500     	brk	#0x8228
    4090: d63f0100     	blr	x8
    4094: 394056c2     	ldrb	w2, [x22, #0x15]
    4098: 90000000     	adrp	x0, 0x4000 <suspend_show+0x10>
		0000000000004098:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
    409c: 91000000     	add	x0, x0, #0x0
		000000000000409c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
    40a0: 90000001     	adrp	x1, 0x4000 <suspend_show+0x10>
		00000000000040a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cbb
    40a4: 91000021     	add	x1, x1, #0x0
		00000000000040a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cbb
    40a8: 94000000     	bl	0x40a8 <suspend_show+0xb8>
		00000000000040a8:  R_AARCH64_CALL26	_printk
    40ac: 394056c3     	ldrb	w3, [x22, #0x15]
    40b0: 90000002     	adrp	x2, 0x4000 <suspend_show+0x10>
		00000000000040b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da6
    40b4: 91000042     	add	x2, x2, #0x0
		00000000000040b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da6
    40b8: 910023e0     	add	x0, sp, #0x8
    40bc: 528003c1     	mov	w1, #0x1e               // =30
    40c0: 94000000     	bl	0x40c0 <suspend_show+0xd0>
		00000000000040c0:  R_AARCH64_CALL26	snprintf
    40c4: 93407c04     	sxtw	x4, w0
    40c8: 910023e3     	add	x3, sp, #0x8
    40cc: aa1403e1     	mov	x1, x20
    40d0: aa1503e0     	mov	x0, x21
    40d4: aa1303e2     	mov	x2, x19
    40d8: 94000000     	bl	0x40d8 <suspend_show+0xe8>
		00000000000040d8:  R_AARCH64_CALL26	simple_read_from_buffer
    40dc: 17ffffd4     	b	0x402c <suspend_show+0x3c>
    40e0: 94000000     	bl	0x40e0 <suspend_show+0xf0>
		00000000000040e0:  R_AARCH64_CALL26	__stack_chk_fail
