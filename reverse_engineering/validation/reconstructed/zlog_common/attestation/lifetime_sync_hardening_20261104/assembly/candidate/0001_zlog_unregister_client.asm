
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d50 <zlog_unregister_client>:
     d50: d503233f     	paciasp
     d54: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     d58: a9014ff4     	stp	x20, x19, [sp, #0x10]
     d5c: 910003fd     	mov	x29, sp
     d60: b4000260     	cbz	x0, 0xdac <zlog_unregister_client+0x5c>
     d64: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d64:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     d68: 39400108     	ldrb	w8, [x8]
		0000000000000d68:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     d6c: 36000208     	tbz	w8, #0x0, 0xdac <zlog_unregister_client+0x5c>
     d70: aa0003f3     	mov	x19, x0
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     d7c: 94000000     	bl	0xd7c <zlog_unregister_client+0x2c>
		0000000000000d7c:  R_AARCH64_CALL26	mutex_lock
     d80: 9102c260     	add	x0, x19, #0xb0
     d84: 94000000     	bl	0xd84 <zlog_unregister_client+0x34>
		0000000000000d84:  R_AARCH64_CALL26	mutex_lock
     d88: 39446268     	ldrb	w8, [x19, #0x118]
     d8c: 34000068     	cbz	w8, 0xd98 <zlog_unregister_client+0x48>
     d90: f9408268     	ldr	x8, [x19, #0x100]
     d94: b5000148     	cbnz	x8, 0xdbc <zlog_unregister_client+0x6c>
     d98: 9102c260     	add	x0, x19, #0xb0
     d9c: 94000000     	bl	0xd9c <zlog_unregister_client+0x4c>
		0000000000000d9c:  R_AARCH64_CALL26	mutex_unlock
     da0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     da4: 91000000     	add	x0, x0, #0x0
		0000000000000da4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     da8: 94000000     	bl	0xda8 <zlog_unregister_client+0x58>
		0000000000000da8:  R_AARCH64_CALL26	mutex_unlock
     dac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     db0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     db4: d50323bf     	autiasp
     db8: d65f03c0     	ret
     dbc: b9400274     	ldr	w20, [x19]
     dc0: f900827f     	str	xzr, [x19, #0x100]
     dc4: 14000031     	b	0xe88 <zlog_unregister_client+0x138>
     dc8: 9103a268     	add	x8, x19, #0xe8
     dcc: 52800109     	mov	w9, #0x8                // =8
     dd0: f829111f     	stclr	x9, [x8]
     dd4: f9408660     	ldr	x0, [x19, #0x108]
     dd8: b4000040     	cbz	x0, 0xde0 <zlog_unregister_client+0x90>
     ddc: 94000000     	bl	0xddc <zlog_unregister_client+0x8c>
		0000000000000ddc:  R_AARCH64_CALL26	kfree
     de0: 52810008     	mov	w8, #0x800              // =2048
     de4: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     de8: a9107e68     	stp	x8, xzr, [x19, #0x100]
     dec: f800427f     	stur	xzr, [x19, #0x4]
     df0: f800c27f     	stur	xzr, [x19, #0xc]
     df4: f801427f     	stur	xzr, [x19, #0x14]
     df8: f801c27f     	stur	xzr, [x19, #0x1c]
     dfc: f802427f     	stur	xzr, [x19, #0x24]
     e00: f802c27f     	stur	xzr, [x19, #0x2c]
     e04: f803427f     	stur	xzr, [x19, #0x34]
     e08: f803c27f     	stur	xzr, [x19, #0x3c]
     e0c: f804427f     	stur	xzr, [x19, #0x44]
     e10: f804c27f     	stur	xzr, [x19, #0x4c]
     e14: f805427f     	stur	xzr, [x19, #0x54]
     e18: f805c27f     	stur	xzr, [x19, #0x5c]
     e1c: f806427f     	stur	xzr, [x19, #0x64]
     e20: f806c27f     	stur	xzr, [x19, #0x6c]
     e24: f807427f     	stur	xzr, [x19, #0x74]
     e28: f807c27f     	stur	xzr, [x19, #0x7c]
     e2c: f809c27f     	stur	xzr, [x19, #0x9c]
     e30: f809427f     	stur	xzr, [x19, #0x94]
     e34: f808c27f     	stur	xzr, [x19, #0x8c]
     e38: f808427f     	stur	xzr, [x19, #0x84]
     e3c: b900027f     	str	wzr, [x19]
     e40: f900567f     	str	xzr, [x19, #0xa8]
     e44: 3904627f     	strb	wzr, [x19, #0x118]
     e48: 1400001a     	b	0xeb0 <zlog_unregister_client+0x160>
     e4c: 9103a268     	add	x8, x19, #0xe8
     e50: 52800029     	mov	w9, #0x1                // =1
     e54: f829311f     	stset	x9, [x8]
     e58: 9102c260     	add	x0, x19, #0xb0
     e5c: 94000000     	bl	0xe5c <zlog_unregister_client+0x10c>
		0000000000000e5c:  R_AARCH64_CALL26	mutex_unlock
     e60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	zlog_lifetime_lock
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	zlog_lifetime_lock
     e68: 94000000     	bl	0xe68 <zlog_unregister_client+0x118>
		0000000000000e68:  R_AARCH64_CALL26	mutex_unlock
     e6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e6
     e70: 91000000     	add	x0, x0, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e6
     e74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d1
     e78: 91000021     	add	x1, x1, #0x0
		0000000000000e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d1
     e7c: 2a1403e2     	mov	w2, w20
     e80: 94000000     	bl	0xe80 <zlog_unregister_client+0x130>
		0000000000000e80:  R_AARCH64_CALL26	_printk
     e84: 17ffffca     	b	0xdac <zlog_unregister_client+0x5c>
     e88: 9103a268     	add	x8, x19, #0xe8
     e8c: 52800109     	mov	w9, #0x8                // =8
     e90: f9800111     	prfm	pstl1strm, [x8]
     e94: c85f7d0a     	ldxr	x10, [x8]
     e98: 8a29014a     	bic	x10, x10, x9
     e9c: c80b7d0a     	stxr	w11, x10, [x8]
     ea0: 35ffffab     	cbnz	w11, 0xe94 <zlog_unregister_client+0x144>
     ea4: f9408660     	ldr	x0, [x19, #0x108]
     ea8: b5fff9a0     	cbnz	x0, 0xddc <zlog_unregister_client+0x8c>
     eac: 17ffffcd     	b	0xde0 <zlog_unregister_client+0x90>
     eb0: 9103a268     	add	x8, x19, #0xe8
     eb4: f9800111     	prfm	pstl1strm, [x8]
     eb8: c85f7d09     	ldxr	x9, [x8]
     ebc: b2400129     	orr	x9, x9, #0x1
     ec0: c80a7d09     	stxr	w10, x9, [x8]
     ec4: 35ffffaa     	cbnz	w10, 0xeb8 <zlog_unregister_client+0x168>
     ec8: 17ffffe4     	b	0xe58 <zlog_unregister_client+0x108>
