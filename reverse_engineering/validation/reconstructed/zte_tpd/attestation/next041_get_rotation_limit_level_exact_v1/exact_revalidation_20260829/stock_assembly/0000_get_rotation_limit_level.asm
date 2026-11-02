
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003e38 <get_rotation_limit_level>:
    3e38: d503233f     	paciasp
    3e3c: d10143ff     	sub	sp, sp, #0x50
    3e40: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3e44: a90357f6     	stp	x22, x21, [sp, #0x30]
    3e48: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3e4c: 910083fd     	add	x29, sp, #0x20
    3e50: d5384108     	mrs	x8, SP_EL0
    3e54: aa1f03e0     	mov	x0, xzr
    3e58: f9438908     	ldr	x8, [x8, #0x710]
    3e5c: f81f83a8     	stur	x8, [x29, #-0x8]
    3e60: f9400068     	ldr	x8, [x3]
    3e64: 790023ff     	strh	wzr, [sp, #0x10]
    3e68: f90007ff     	str	xzr, [sp, #0x8]
    3e6c: b4000188     	cbz	x8, 0x3e9c <get_rotation_limit_level+0x64>
    3e70: d5384108     	mrs	x8, SP_EL0
    3e74: f9438908     	ldr	x8, [x8, #0x710]
    3e78: f85f83a9     	ldur	x9, [x29, #-0x8]
    3e7c: eb09011f     	cmp	x8, x9
    3e80: 54000521     	b.ne	0x3f24 <get_rotation_limit_level+0xec>
    3e84: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3e88: a94357f6     	ldp	x22, x21, [sp, #0x30]
    3e8c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    3e90: 910143ff     	add	sp, sp, #0x50
    3e94: d50323bf     	autiasp
    3e98: d65f03c0     	ret
    3e9c: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003e9c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3ea0: aa0103f5     	mov	x21, x1
    3ea4: aa0203f4     	mov	x20, x2
    3ea8: f9400116     	ldr	x22, [x8]
		0000000000003ea8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3eac: aa0303f3     	mov	x19, x3
    3eb0: f94746c8     	ldr	x8, [x22, #0xe88]
    3eb4: b4000128     	cbz	x8, 0x3ed8 <get_rotation_limit_level+0xa0>
    3eb8: aa1603e0     	mov	x0, x22
    3ebc: b85fc110     	ldur	w16, [x8, #-0x4]
    3ec0: 7281af31     	movk	w17, #0xd79
    3ec4: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    3ec8: 6b11021f     	cmp	w16, w17
    3ecc: 54000040     	b.eq	0x3ed4 <get_rotation_limit_level+0x9c>
    3ed0: d4304500     	brk	#0x8228
    3ed4: d63f0100     	blr	x8
    3ed8: b9400ec2     	ldr	w2, [x22, #0xc]
    3edc: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    3ee0: 91000000     	add	x0, x0, #0x0
		0000000000003ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    3ee4: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84fb
    3ee8: 91000021     	add	x1, x1, #0x0
		0000000000003ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84fb
    3eec: 94000000     	bl	0x3eec <get_rotation_limit_level+0xb4>
		0000000000003eec:  R_AARCH64_CALL26	_printk
    3ef0: b9400ec3     	ldr	w3, [x22, #0xc]
    3ef4: 90000002     	adrp	x2, 0x3000 <tp_module_info_read+0x104>
		0000000000003ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    3ef8: 91000042     	add	x2, x2, #0x0
		0000000000003ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    3efc: 910023e0     	add	x0, sp, #0x8
    3f00: 52800141     	mov	w1, #0xa                // =10
    3f04: 94000000     	bl	0x3f04 <get_rotation_limit_level+0xcc>
		0000000000003f04:  R_AARCH64_CALL26	snprintf
    3f08: 93407c04     	sxtw	x4, w0
    3f0c: 910023e3     	add	x3, sp, #0x8
    3f10: aa1403e1     	mov	x1, x20
    3f14: aa1503e0     	mov	x0, x21
    3f18: aa1303e2     	mov	x2, x19
    3f1c: 94000000     	bl	0x3f1c <get_rotation_limit_level+0xe4>
		0000000000003f1c:  R_AARCH64_CALL26	simple_read_from_buffer
    3f20: 17ffffd4     	b	0x3e70 <get_rotation_limit_level+0x38>
    3f24: 94000000     	bl	0x3f24 <get_rotation_limit_level+0xec>
		0000000000003f24:  R_AARCH64_CALL26	__stack_chk_fail
