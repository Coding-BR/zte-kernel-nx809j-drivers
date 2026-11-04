
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dac <zlog_unregister_client>:
     dac: d503233f     	paciasp
     db0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     db4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     db8: 910003fd     	mov	x29, sp
     dbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     dc0: 39400108     	ldrb	w8, [x8]
		0000000000000dc0:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     dc4: 360002a8     	tbz	w8, #0x0, 0xe18 <zlog_unregister_client+0x6c>
     dc8: aa0003f3     	mov	x19, x0
     dcc: b4000340     	cbz	x0, 0xe34 <zlog_unregister_client+0x88>
     dd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     dd4: 91000000     	add	x0, x0, #0x0
		0000000000000dd4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     dd8: 94000000     	bl	0xdd8 <zlog_unregister_client+0x2c>
		0000000000000dd8:  R_AARCH64_CALL26	mutex_lock
     ddc: 9102c260     	add	x0, x19, #0xb0
     de0: 94000000     	bl	0xde0 <zlog_unregister_client+0x34>
		0000000000000de0:  R_AARCH64_CALL26	mutex_lock
     de4: 39446268     	ldrb	w8, [x19, #0x118]
     de8: 34000068     	cbz	w8, 0xdf4 <zlog_unregister_client+0x48>
     dec: f9408268     	ldr	x8, [x19, #0x100]
     df0: b50002e8     	cbnz	x8, 0xe4c <zlog_unregister_client+0xa0>
     df4: 9102c260     	add	x0, x19, #0xb0
     df8: 94000000     	bl	0xdf8 <zlog_unregister_client+0x4c>
		0000000000000df8:  R_AARCH64_CALL26	mutex_unlock
     dfc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e00: 91000000     	add	x0, x0, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e04: 94000000     	bl	0xe04 <zlog_unregister_client+0x58>
		0000000000000e04:  R_AARCH64_CALL26	mutex_unlock
     e08: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e0c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e10: d50323bf     	autiasp
     e14: d65f03c0     	ret
     e18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     e1c: 91000021     	add	x1, x1, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     e20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ae
     e24: 91000000     	add	x0, x0, #0x0
		0000000000000e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ae
     e28: aa0103e2     	mov	x2, x1
     e2c: 94000000     	bl	0xe2c <zlog_unregister_client+0x80>
		0000000000000e2c:  R_AARCH64_CALL26	_printk
     e30: 17fffff6     	b	0xe08 <zlog_unregister_client+0x5c>
     e34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     e38: 91000000     	add	x0, x0, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     e3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     e40: 91000021     	add	x1, x1, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     e44: 94000000     	bl	0xe44 <zlog_unregister_client+0x98>
		0000000000000e44:  R_AARCH64_CALL26	_printk
     e48: 17fffff0     	b	0xe08 <zlog_unregister_client+0x5c>
     e4c: b9400274     	ldr	w20, [x19]
     e50: f900827f     	str	xzr, [x19, #0x100]
     e54: 14000031     	b	0xf18 <zlog_unregister_client+0x16c>
     e58: 9103a268     	add	x8, x19, #0xe8
     e5c: 52800109     	mov	w9, #0x8                // =8
     e60: f829111f     	stclr	x9, [x8]
     e64: f9408660     	ldr	x0, [x19, #0x108]
     e68: b4000040     	cbz	x0, 0xe70 <zlog_unregister_client+0xc4>
     e6c: 94000000     	bl	0xe6c <zlog_unregister_client+0xc0>
		0000000000000e6c:  R_AARCH64_CALL26	kfree
     e70: 52810008     	mov	w8, #0x800              // =2048
     e74: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     e78: a9107e68     	stp	x8, xzr, [x19, #0x100]
     e7c: f800427f     	stur	xzr, [x19, #0x4]
     e80: f800c27f     	stur	xzr, [x19, #0xc]
     e84: f801427f     	stur	xzr, [x19, #0x14]
     e88: f801c27f     	stur	xzr, [x19, #0x1c]
     e8c: f802427f     	stur	xzr, [x19, #0x24]
     e90: f802c27f     	stur	xzr, [x19, #0x2c]
     e94: f803427f     	stur	xzr, [x19, #0x34]
     e98: f803c27f     	stur	xzr, [x19, #0x3c]
     e9c: f804427f     	stur	xzr, [x19, #0x44]
     ea0: f804c27f     	stur	xzr, [x19, #0x4c]
     ea4: f805427f     	stur	xzr, [x19, #0x54]
     ea8: f805c27f     	stur	xzr, [x19, #0x5c]
     eac: f806427f     	stur	xzr, [x19, #0x64]
     eb0: f806c27f     	stur	xzr, [x19, #0x6c]
     eb4: f807427f     	stur	xzr, [x19, #0x74]
     eb8: f807c27f     	stur	xzr, [x19, #0x7c]
     ebc: f809c27f     	stur	xzr, [x19, #0x9c]
     ec0: f809427f     	stur	xzr, [x19, #0x94]
     ec4: f808c27f     	stur	xzr, [x19, #0x8c]
     ec8: f808427f     	stur	xzr, [x19, #0x84]
     ecc: b900027f     	str	wzr, [x19]
     ed0: f900567f     	str	xzr, [x19, #0xa8]
     ed4: 3904627f     	strb	wzr, [x19, #0x118]
     ed8: 1400001a     	b	0xf40 <zlog_unregister_client+0x194>
     edc: 9103a268     	add	x8, x19, #0xe8
     ee0: 52800029     	mov	w9, #0x1                // =1
     ee4: f829311f     	stset	x9, [x8]
     ee8: 9102c260     	add	x0, x19, #0xb0
     eec: 94000000     	bl	0xeec <zlog_unregister_client+0x140>
		0000000000000eec:  R_AARCH64_CALL26	mutex_unlock
     ef0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     ef4: 91000000     	add	x0, x0, #0x0
		0000000000000ef4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     ef8: 94000000     	bl	0xef8 <zlog_unregister_client+0x14c>
		0000000000000ef8:  R_AARCH64_CALL26	mutex_unlock
     efc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x839
     f00: 91000000     	add	x0, x0, #0x0
		0000000000000f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x839
     f04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa37
     f08: 91000021     	add	x1, x1, #0x0
		0000000000000f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa37
     f0c: 2a1403e2     	mov	w2, w20
     f10: 94000000     	bl	0xf10 <zlog_unregister_client+0x164>
		0000000000000f10:  R_AARCH64_CALL26	_printk
     f14: 17ffffbd     	b	0xe08 <zlog_unregister_client+0x5c>
     f18: 9103a268     	add	x8, x19, #0xe8
     f1c: 52800109     	mov	w9, #0x8                // =8
     f20: f9800111     	prfm	pstl1strm, [x8]
     f24: c85f7d0a     	ldxr	x10, [x8]
     f28: 8a29014a     	bic	x10, x10, x9
     f2c: c80b7d0a     	stxr	w11, x10, [x8]
     f30: 35ffffab     	cbnz	w11, 0xf24 <zlog_unregister_client+0x178>
     f34: f9408660     	ldr	x0, [x19, #0x108]
     f38: b5fff9a0     	cbnz	x0, 0xe6c <zlog_unregister_client+0xc0>
     f3c: 17ffffcd     	b	0xe70 <zlog_unregister_client+0xc4>
     f40: 9103a268     	add	x8, x19, #0xe8
     f44: f9800111     	prfm	pstl1strm, [x8]
     f48: c85f7d09     	ldxr	x9, [x8]
     f4c: b2400129     	orr	x9, x9, #0x1
     f50: c80a7d09     	stxr	w10, x9, [x8]
     f54: 35ffffaa     	cbnz	w10, 0xf48 <zlog_unregister_client+0x19c>
     f58: 17ffffe4     	b	0xee8 <zlog_unregister_client+0x13c>
