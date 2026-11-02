
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005e9c <tp_pen_only_read>:
    5e9c: d503233f     	paciasp
    5ea0: d10143ff     	sub	sp, sp, #0x50
    5ea4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5ea8: a90357f6     	stp	x22, x21, [sp, #0x30]
    5eac: a9044ff4     	stp	x20, x19, [sp, #0x40]
    5eb0: 910083fd     	add	x29, sp, #0x20
    5eb4: d5384108     	mrs	x8, SP_EL0
    5eb8: aa1f03e0     	mov	x0, xzr
    5ebc: f9438908     	ldr	x8, [x8, #0x710]
    5ec0: f81f83a8     	stur	x8, [x29, #-0x8]
    5ec4: f9400068     	ldr	x8, [x3]
    5ec8: 790023ff     	strh	wzr, [sp, #0x10]
    5ecc: f90007ff     	str	xzr, [sp, #0x8]
    5ed0: b4000188     	cbz	x8, 0x5f00 <tp_pen_only_read+0x64>
    5ed4: d5384108     	mrs	x8, SP_EL0
    5ed8: f9438908     	ldr	x8, [x8, #0x710]
    5edc: f85f83a9     	ldur	x9, [x29, #-0x8]
    5ee0: eb09011f     	cmp	x8, x9
    5ee4: 54000521     	b.ne	0x5f88 <tp_pen_only_read+0xec>
    5ee8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5eec: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5ef0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5ef4: 910143ff     	add	sp, sp, #0x50
    5ef8: d50323bf     	autiasp
    5efc: d65f03c0     	ret
    5f00: 90000008     	adrp	x8, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005f00:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    5f04: aa0103f5     	mov	x21, x1
    5f08: aa0203f4     	mov	x20, x2
    5f0c: f9400116     	ldr	x22, [x8]
		0000000000005f0c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    5f10: aa0303f3     	mov	x19, x3
    5f14: f947c2c8     	ldr	x8, [x22, #0xf80]
    5f18: b4000128     	cbz	x8, 0x5f3c <tp_pen_only_read+0xa0>
    5f1c: aa1603e0     	mov	x0, x22
    5f20: b85fc110     	ldur	w16, [x8, #-0x4]
    5f24: 7281af31     	movk	w17, #0xd79
    5f28: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    5f2c: 6b11021f     	cmp	w16, w17
    5f30: 54000040     	b.eq	0x5f38 <tp_pen_only_read+0x9c>
    5f34: d4304500     	brk	#0x8228
    5f38: d63f0100     	blr	x8
    5f3c: 395106c2     	ldrb	w2, [x22, #0x441]
    5f40: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44b5
    5f44: 91000000     	add	x0, x0, #0x0
		0000000000005f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44b5
    5f48: 90000001     	adrp	x1, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3189
    5f4c: 91000021     	add	x1, x1, #0x0
		0000000000005f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3189
    5f50: 94000000     	bl	0x5f50 <tp_pen_only_read+0xb4>
		0000000000005f50:  R_AARCH64_CALL26	_printk
    5f54: 395106c3     	ldrb	w3, [x22, #0x441]
    5f58: 90000002     	adrp	x2, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    5f5c: 91000042     	add	x2, x2, #0x0
		0000000000005f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    5f60: 910023e0     	add	x0, sp, #0x8
    5f64: 52800141     	mov	w1, #0xa                // =10
    5f68: 94000000     	bl	0x5f68 <tp_pen_only_read+0xcc>
		0000000000005f68:  R_AARCH64_CALL26	snprintf
    5f6c: 93407c04     	sxtw	x4, w0
    5f70: 910023e3     	add	x3, sp, #0x8
    5f74: aa1403e1     	mov	x1, x20
    5f78: aa1503e0     	mov	x0, x21
    5f7c: aa1303e2     	mov	x2, x19
    5f80: 94000000     	bl	0x5f80 <tp_pen_only_read+0xe4>
		0000000000005f80:  R_AARCH64_CALL26	simple_read_from_buffer
    5f84: 17ffffd4     	b	0x5ed4 <tp_pen_only_read+0x38>
    5f88: 94000000     	bl	0x5f88 <tp_pen_only_read+0xec>
		0000000000005f88:  R_AARCH64_CALL26	__stack_chk_fail
