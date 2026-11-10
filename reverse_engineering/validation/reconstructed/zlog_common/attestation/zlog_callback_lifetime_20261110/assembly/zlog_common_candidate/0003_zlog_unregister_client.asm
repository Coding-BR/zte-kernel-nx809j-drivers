
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e14 <zlog_unregister_client>:
     e14: d503233f     	paciasp
     e18: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e1c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     e20: 910003fd     	mov	x29, sp
     e24: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     e28: 39400108     	ldrb	w8, [x8]
		0000000000000e28:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     e2c: 360002a8     	tbz	w8, #0x0, 0xe80 <zlog_unregister_client+0x6c>
     e30: aa0003f3     	mov	x19, x0
     e34: b4000340     	cbz	x0, 0xe9c <zlog_unregister_client+0x88>
     e38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e3c: 91000000     	add	x0, x0, #0x0
		0000000000000e3c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e40: 94000000     	bl	0xe40 <zlog_unregister_client+0x2c>
		0000000000000e40:  R_AARCH64_CALL26	mutex_lock
     e44: 9102c260     	add	x0, x19, #0xb0
     e48: 94000000     	bl	0xe48 <zlog_unregister_client+0x34>
		0000000000000e48:  R_AARCH64_CALL26	mutex_lock
     e4c: 39446268     	ldrb	w8, [x19, #0x118]
     e50: 34000068     	cbz	w8, 0xe5c <zlog_unregister_client+0x48>
     e54: f9408268     	ldr	x8, [x19, #0x100]
     e58: b50002e8     	cbnz	x8, 0xeb4 <zlog_unregister_client+0xa0>
     e5c: 9102c260     	add	x0, x19, #0xb0
     e60: 94000000     	bl	0xe60 <zlog_unregister_client+0x4c>
		0000000000000e60:  R_AARCH64_CALL26	mutex_unlock
     e64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e64:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e68: 91000000     	add	x0, x0, #0x0
		0000000000000e68:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e6c: 94000000     	bl	0xe6c <zlog_unregister_client+0x58>
		0000000000000e6c:  R_AARCH64_CALL26	mutex_unlock
     e70: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e74: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e78: d50323bf     	autiasp
     e7c: d65f03c0     	ret
     e80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa3
     e84: 91000021     	add	x1, x1, #0x0
		0000000000000e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa3
     e88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1a
     e8c: 91000000     	add	x0, x0, #0x0
		0000000000000e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1a
     e90: aa0103e2     	mov	x2, x1
     e94: 94000000     	bl	0xe94 <zlog_unregister_client+0x80>
		0000000000000e94:  R_AARCH64_CALL26	_printk
     e98: 17fffff6     	b	0xe70 <zlog_unregister_client+0x5c>
     e9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     ea0: 91000000     	add	x0, x0, #0x0
		0000000000000ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     ea4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa3
     ea8: 91000021     	add	x1, x1, #0x0
		0000000000000ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa3
     eac: 94000000     	bl	0xeac <zlog_unregister_client+0x98>
		0000000000000eac:  R_AARCH64_CALL26	_printk
     eb0: 17fffff0     	b	0xe70 <zlog_unregister_client+0x5c>
     eb4: b9400274     	ldr	w20, [x19]
     eb8: f900827f     	str	xzr, [x19, #0x100]
     ebc: 14000031     	b	0xf80 <zlog_unregister_client+0x16c>
     ec0: 9103a268     	add	x8, x19, #0xe8
     ec4: 52800109     	mov	w9, #0x8                // =8
     ec8: f829111f     	stclr	x9, [x8]
     ecc: f9408660     	ldr	x0, [x19, #0x108]
     ed0: b4000040     	cbz	x0, 0xed8 <zlog_unregister_client+0xc4>
     ed4: 94000000     	bl	0xed4 <zlog_unregister_client+0xc0>
		0000000000000ed4:  R_AARCH64_CALL26	kfree
     ed8: 52810008     	mov	w8, #0x800              // =2048
     edc: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     ee0: a9107e68     	stp	x8, xzr, [x19, #0x100]
     ee4: f800427f     	stur	xzr, [x19, #0x4]
     ee8: f800c27f     	stur	xzr, [x19, #0xc]
     eec: f801427f     	stur	xzr, [x19, #0x14]
     ef0: f801c27f     	stur	xzr, [x19, #0x1c]
     ef4: f802427f     	stur	xzr, [x19, #0x24]
     ef8: f802c27f     	stur	xzr, [x19, #0x2c]
     efc: f803427f     	stur	xzr, [x19, #0x34]
     f00: f803c27f     	stur	xzr, [x19, #0x3c]
     f04: f804427f     	stur	xzr, [x19, #0x44]
     f08: f804c27f     	stur	xzr, [x19, #0x4c]
     f0c: f805427f     	stur	xzr, [x19, #0x54]
     f10: f805c27f     	stur	xzr, [x19, #0x5c]
     f14: f806427f     	stur	xzr, [x19, #0x64]
     f18: f806c27f     	stur	xzr, [x19, #0x6c]
     f1c: f807427f     	stur	xzr, [x19, #0x74]
     f20: f807c27f     	stur	xzr, [x19, #0x7c]
     f24: f809c27f     	stur	xzr, [x19, #0x9c]
     f28: f809427f     	stur	xzr, [x19, #0x94]
     f2c: f808c27f     	stur	xzr, [x19, #0x8c]
     f30: f808427f     	stur	xzr, [x19, #0x84]
     f34: b900027f     	str	wzr, [x19]
     f38: f900567f     	str	xzr, [x19, #0xa8]
     f3c: 3904627f     	strb	wzr, [x19, #0x118]
     f40: 1400001a     	b	0xfa8 <zlog_unregister_client+0x194>
     f44: 9103a268     	add	x8, x19, #0xe8
     f48: 52800029     	mov	w9, #0x1                // =1
     f4c: f829311f     	stset	x9, [x8]
     f50: 9102c260     	add	x0, x19, #0xb0
     f54: 94000000     	bl	0xf54 <zlog_unregister_client+0x140>
		0000000000000f54:  R_AARCH64_CALL26	mutex_unlock
     f58: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     f5c: 91000000     	add	x0, x0, #0x0
		0000000000000f5c:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     f60: 94000000     	bl	0xf60 <zlog_unregister_client+0x14c>
		0000000000000f60:  R_AARCH64_CALL26	mutex_unlock
     f64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
     f68: 91000000     	add	x0, x0, #0x0
		0000000000000f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
     f6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa3
     f70: 91000021     	add	x1, x1, #0x0
		0000000000000f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa3
     f74: 2a1403e2     	mov	w2, w20
     f78: 94000000     	bl	0xf78 <zlog_unregister_client+0x164>
		0000000000000f78:  R_AARCH64_CALL26	_printk
     f7c: 17ffffbd     	b	0xe70 <zlog_unregister_client+0x5c>
     f80: 9103a268     	add	x8, x19, #0xe8
     f84: 52800109     	mov	w9, #0x8                // =8
     f88: f9800111     	prfm	pstl1strm, [x8]
     f8c: c85f7d0a     	ldxr	x10, [x8]
     f90: 8a29014a     	bic	x10, x10, x9
     f94: c80b7d0a     	stxr	w11, x10, [x8]
     f98: 35ffffab     	cbnz	w11, 0xf8c <zlog_unregister_client+0x178>
     f9c: f9408660     	ldr	x0, [x19, #0x108]
     fa0: b5fff9a0     	cbnz	x0, 0xed4 <zlog_unregister_client+0xc0>
     fa4: 17ffffcd     	b	0xed8 <zlog_unregister_client+0xc4>
     fa8: 9103a268     	add	x8, x19, #0xe8
     fac: f9800111     	prfm	pstl1strm, [x8]
     fb0: c85f7d09     	ldxr	x9, [x8]
     fb4: b2400129     	orr	x9, x9, #0x1
     fb8: c80a7d09     	stxr	w10, x9, [x8]
     fbc: 35ffffaa     	cbnz	w10, 0xfb0 <zlog_unregister_client+0x19c>
     fc0: 17ffffe4     	b	0xf50 <zlog_unregister_client+0x13c>
