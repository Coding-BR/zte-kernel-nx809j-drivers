
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ff4 <display_rotation_show>:
    3ff4: d503233f     	paciasp
    3ff8: d10183ff     	sub	sp, sp, #0x60
    3ffc: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4000: a90457f6     	stp	x22, x21, [sp, #0x40]
    4004: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4008: 9100c3fd     	add	x29, sp, #0x30
    400c: d5384108     	mrs	x8, SP_EL0
    4010: aa1f03e0     	mov	x0, xzr
    4014: f9438908     	ldr	x8, [x8, #0x710]
    4018: f81f83a8     	stur	x8, [x29, #-0x8]
    401c: f9400068     	ldr	x8, [x3]
    4020: f801e3ff     	stur	xzr, [sp, #0x1e]
    4024: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    4028: f90007ff     	str	xzr, [sp, #0x8]
    402c: b4000188     	cbz	x8, 0x405c <display_rotation_show+0x68>
    4030: d5384108     	mrs	x8, SP_EL0
    4034: f9438908     	ldr	x8, [x8, #0x710]
    4038: f85f83a9     	ldur	x9, [x29, #-0x8]
    403c: eb09011f     	cmp	x8, x9
    4040: 54000421     	b.ne	0x40c4 <display_rotation_show+0xd0>
    4044: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    4048: a94457f6     	ldp	x22, x21, [sp, #0x40]
    404c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    4050: 910183ff     	add	sp, sp, #0x60
    4054: d50323bf     	autiasp
    4058: d65f03c0     	ret
    405c: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		000000000000405c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4060: 90000009     	adrp	x9, 0x4000 <display_rotation_show+0xc>
		0000000000004060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3128
    4064: 91000129     	add	x9, x9, #0x0
		0000000000004064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3128
    4068: f9400116     	ldr	x22, [x8]
		0000000000004068:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    406c: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		000000000000406c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    4070: 91000000     	add	x0, x0, #0x0
		0000000000004070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    4074: aa0103f3     	mov	x19, x1
    4078: aa0903e1     	mov	x1, x9
    407c: aa0203f4     	mov	x20, x2
    4080: b94012c8     	ldr	w8, [x22, #0x10]
    4084: aa0303f5     	mov	x21, x3
    4088: 2a0803e2     	mov	w2, w8
    408c: 94000000     	bl	0x408c <display_rotation_show+0x98>
		000000000000408c:  R_AARCH64_CALL26	_printk
    4090: b94012c3     	ldr	w3, [x22, #0x10]
    4094: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4098: 91000042     	add	x2, x2, #0x0
		0000000000004098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    409c: 910023e0     	add	x0, sp, #0x8
    40a0: 528003c1     	mov	w1, #0x1e               // =30
    40a4: 94000000     	bl	0x40a4 <display_rotation_show+0xb0>
		00000000000040a4:  R_AARCH64_CALL26	snprintf
    40a8: 93407c04     	sxtw	x4, w0
    40ac: 910023e3     	add	x3, sp, #0x8
    40b0: aa1403e1     	mov	x1, x20
    40b4: aa1303e0     	mov	x0, x19
    40b8: aa1503e2     	mov	x2, x21
    40bc: 94000000     	bl	0x40bc <display_rotation_show+0xc8>
		00000000000040bc:  R_AARCH64_CALL26	simple_read_from_buffer
    40c0: 17ffffdc     	b	0x4030 <display_rotation_show+0x3c>
    40c4: 94000000     	bl	0x40c4 <display_rotation_show+0xd0>
		00000000000040c4:  R_AARCH64_CALL26	__stack_chk_fail
