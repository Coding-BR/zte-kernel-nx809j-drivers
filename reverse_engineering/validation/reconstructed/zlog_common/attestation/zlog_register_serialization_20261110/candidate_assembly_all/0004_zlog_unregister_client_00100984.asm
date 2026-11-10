
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dfc <zlog_unregister_client>:
     dfc: d503233f     	paciasp
     e00: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e04: a9014ff4     	stp	x20, x19, [sp, #0x10]
     e08: 910003fd     	mov	x29, sp
     e0c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e0c:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     e10: 39400108     	ldrb	w8, [x8]
		0000000000000e10:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     e14: 360002a8     	tbz	w8, #0x0, 0xe68 <zlog_unregister_client+0x6c>
     e18: aa0003f3     	mov	x19, x0
     e1c: b4000340     	cbz	x0, 0xe84 <zlog_unregister_client+0x88>
     e20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e20:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e24: 91000000     	add	x0, x0, #0x0
		0000000000000e24:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e28: 94000000     	bl	0xe28 <zlog_unregister_client+0x2c>
		0000000000000e28:  R_AARCH64_CALL26	mutex_lock
     e2c: 9102c260     	add	x0, x19, #0xb0
     e30: 94000000     	bl	0xe30 <zlog_unregister_client+0x34>
		0000000000000e30:  R_AARCH64_CALL26	mutex_lock
     e34: 39446268     	ldrb	w8, [x19, #0x118]
     e38: 34000068     	cbz	w8, 0xe44 <zlog_unregister_client+0x48>
     e3c: f9408268     	ldr	x8, [x19, #0x100]
     e40: b50002e8     	cbnz	x8, 0xe9c <zlog_unregister_client+0xa0>
     e44: 9102c260     	add	x0, x19, #0xb0
     e48: 94000000     	bl	0xe48 <zlog_unregister_client+0x4c>
		0000000000000e48:  R_AARCH64_CALL26	mutex_unlock
     e4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e4c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e50: 91000000     	add	x0, x0, #0x0
		0000000000000e50:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e54: 94000000     	bl	0xe54 <zlog_unregister_client+0x58>
		0000000000000e54:  R_AARCH64_CALL26	mutex_unlock
     e58: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e5c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e60: d50323bf     	autiasp
     e64: d65f03c0     	ret
     e68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     e70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ae
     e74: 91000000     	add	x0, x0, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ae
     e78: aa0103e2     	mov	x2, x1
     e7c: 94000000     	bl	0xe7c <zlog_unregister_client+0x80>
		0000000000000e7c:  R_AARCH64_CALL26	_printk
     e80: 17fffff6     	b	0xe58 <zlog_unregister_client+0x5c>
     e84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     e88: 91000000     	add	x0, x0, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     e8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     e90: 91000021     	add	x1, x1, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     e94: 94000000     	bl	0xe94 <zlog_unregister_client+0x98>
		0000000000000e94:  R_AARCH64_CALL26	_printk
     e98: 17fffff0     	b	0xe58 <zlog_unregister_client+0x5c>
     e9c: b9400274     	ldr	w20, [x19]
     ea0: f900827f     	str	xzr, [x19, #0x100]
     ea4: 14000031     	b	0xf68 <zlog_unregister_client+0x16c>
     ea8: 9103a268     	add	x8, x19, #0xe8
     eac: 52800109     	mov	w9, #0x8                // =8
     eb0: f829111f     	stclr	x9, [x8]
     eb4: f9408660     	ldr	x0, [x19, #0x108]
     eb8: b4000040     	cbz	x0, 0xec0 <zlog_unregister_client+0xc4>
     ebc: 94000000     	bl	0xebc <zlog_unregister_client+0xc0>
		0000000000000ebc:  R_AARCH64_CALL26	kfree
     ec0: 52810008     	mov	w8, #0x800              // =2048
     ec4: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     ec8: a9107e68     	stp	x8, xzr, [x19, #0x100]
     ecc: f800427f     	stur	xzr, [x19, #0x4]
     ed0: f800c27f     	stur	xzr, [x19, #0xc]
     ed4: f801427f     	stur	xzr, [x19, #0x14]
     ed8: f801c27f     	stur	xzr, [x19, #0x1c]
     edc: f802427f     	stur	xzr, [x19, #0x24]
     ee0: f802c27f     	stur	xzr, [x19, #0x2c]
     ee4: f803427f     	stur	xzr, [x19, #0x34]
     ee8: f803c27f     	stur	xzr, [x19, #0x3c]
     eec: f804427f     	stur	xzr, [x19, #0x44]
     ef0: f804c27f     	stur	xzr, [x19, #0x4c]
     ef4: f805427f     	stur	xzr, [x19, #0x54]
     ef8: f805c27f     	stur	xzr, [x19, #0x5c]
     efc: f806427f     	stur	xzr, [x19, #0x64]
     f00: f806c27f     	stur	xzr, [x19, #0x6c]
     f04: f807427f     	stur	xzr, [x19, #0x74]
     f08: f807c27f     	stur	xzr, [x19, #0x7c]
     f0c: f809c27f     	stur	xzr, [x19, #0x9c]
     f10: f809427f     	stur	xzr, [x19, #0x94]
     f14: f808c27f     	stur	xzr, [x19, #0x8c]
     f18: f808427f     	stur	xzr, [x19, #0x84]
     f1c: b900027f     	str	wzr, [x19]
     f20: f900567f     	str	xzr, [x19, #0xa8]
     f24: 3904627f     	strb	wzr, [x19, #0x118]
     f28: 1400001a     	b	0xf90 <zlog_unregister_client+0x194>
     f2c: 9103a268     	add	x8, x19, #0xe8
     f30: 52800029     	mov	w9, #0x1                // =1
     f34: f829311f     	stset	x9, [x8]
     f38: 9102c260     	add	x0, x19, #0xb0
     f3c: 94000000     	bl	0xf3c <zlog_unregister_client+0x140>
		0000000000000f3c:  R_AARCH64_CALL26	mutex_unlock
     f40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f40:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     f44: 91000000     	add	x0, x0, #0x0
		0000000000000f44:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     f48: 94000000     	bl	0xf48 <zlog_unregister_client+0x14c>
		0000000000000f48:  R_AARCH64_CALL26	mutex_unlock
     f4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
     f50: 91000000     	add	x0, x0, #0x0
		0000000000000f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
     f54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     f58: 91000021     	add	x1, x1, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     f5c: 2a1403e2     	mov	w2, w20
     f60: 94000000     	bl	0xf60 <zlog_unregister_client+0x164>
		0000000000000f60:  R_AARCH64_CALL26	_printk
     f64: 17ffffbd     	b	0xe58 <zlog_unregister_client+0x5c>
     f68: 9103a268     	add	x8, x19, #0xe8
     f6c: 52800109     	mov	w9, #0x8                // =8
     f70: f9800111     	prfm	pstl1strm, [x8]
     f74: c85f7d0a     	ldxr	x10, [x8]
     f78: 8a29014a     	bic	x10, x10, x9
     f7c: c80b7d0a     	stxr	w11, x10, [x8]
     f80: 35ffffab     	cbnz	w11, 0xf74 <zlog_unregister_client+0x178>
     f84: f9408660     	ldr	x0, [x19, #0x108]
     f88: b5fff9a0     	cbnz	x0, 0xebc <zlog_unregister_client+0xc0>
     f8c: 17ffffcd     	b	0xec0 <zlog_unregister_client+0xc4>
     f90: 9103a268     	add	x8, x19, #0xe8
     f94: f9800111     	prfm	pstl1strm, [x8]
     f98: c85f7d09     	ldxr	x9, [x8]
     f9c: b2400129     	orr	x9, x9, #0x1
     fa0: c80a7d09     	stxr	w10, x9, [x8]
     fa4: 35ffffaa     	cbnz	w10, 0xf98 <zlog_unregister_client+0x19c>
     fa8: 17ffffe4     	b	0xf38 <zlog_unregister_client+0x13c>
