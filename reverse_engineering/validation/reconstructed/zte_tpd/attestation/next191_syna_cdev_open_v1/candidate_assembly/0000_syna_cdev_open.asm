
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006db8 <syna_cdev_open>:
    6db8: d503233f     	paciasp
    6dbc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    6dc0: a90157f6     	stp	x22, x21, [sp, #0x10]
    6dc4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    6dc8: 910003fd     	mov	x29, sp
    6dcc: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006dcc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    6dd0: 91000000     	add	x0, x0, #0x0
		0000000000006dd0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    6dd4: f8450408     	ldr	x8, [x0], #0x50
    6dd8: f9405514     	ldr	x20, [x8, #0xa8]
    6ddc: 94000000     	bl	0x6ddc <syna_cdev_open+0x24>
		0000000000006ddc:  R_AARCH64_CALL26	mutex_lock
    6de0: b9438682     	ldr	w2, [x20, #0x384]
    6de4: 35000062     	cbnz	w2, 0x6df0 <syna_cdev_open+0x38>
    6de8: 52800028     	mov	w8, #0x1                // =1
    6dec: 14000008     	b	0x6e0c <syna_cdev_open+0x54>
    6df0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006df0:  R_AARCH64_ADR_PREL_PG_HI21	unk_366C2
    6df4: 91000000     	add	x0, x0, #0x0
		0000000000006df4:  R_AARCH64_ADD_ABS_LO12_NC	unk_366C2
    6df8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c77
    6dfc: 91000021     	add	x1, x1, #0x0
		0000000000006dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c77
    6e00: 94000000     	bl	0x6e00 <syna_cdev_open+0x48>
		0000000000006e00:  R_AARCH64_CALL26	_printk
    6e04: b9438688     	ldr	w8, [x20, #0x384]
    6e08: 11000508     	add	w8, w8, #0x1
    6e0c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006e0c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    6e10: 91000000     	add	x0, x0, #0x0
		0000000000006e10:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    6e14: b9038688     	str	w8, [x20, #0x384]
    6e18: f900181f     	str	xzr, [x0, #0x30]
    6e1c: b900381f     	str	wzr, [x0, #0x38]
    6e20: f9400288     	ldr	x8, [x20]
    6e24: b9403d08     	ldr	w8, [x8, #0x3c]
    6e28: b9004008     	str	w8, [x0, #0x40]
    6e2c: f9400288     	ldr	x8, [x20]
    6e30: b9403908     	ldr	w8, [x8, #0x38]
    6e34: b9003c08     	str	w8, [x0, #0x3c]
    6e38: f9400288     	ldr	x8, [x20]
    6e3c: 390de91f     	strb	wzr, [x8, #0x37a]
    6e40: 3916129f     	strb	wzr, [x20, #0x584]
    6e44: 94000000     	bl	0x6e44 <syna_cdev_open+0x8c>
		0000000000006e44:  R_AARCH64_CALL26	mutex_lock
    6e48: f9427e93     	ldr	x19, [x20, #0x4f8]
    6e4c: 9113e295     	add	x21, x20, #0x4f8
    6e50: eb15027f     	cmp	x19, x21
    6e54: 54000281     	b.ne	0x6ea4 <syna_cdev_open+0xec>
    6e58: 90000013     	adrp	x19, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006e58:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    6e5c: 91000273     	add	x19, x19, #0x0
		0000000000006e5c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    6e60: 9100c260     	add	x0, x19, #0x30
    6e64: 94000000     	bl	0x6e64 <syna_cdev_open+0xac>
		0000000000006e64:  R_AARCH64_CALL26	mutex_unlock
    6e68: f9400280     	ldr	x0, [x20]
    6e6c: 94000000     	bl	0x6e6c <syna_cdev_open+0xb4>
		0000000000006e6c:  R_AARCH64_CALL26	syna_tcm_clear_data_duplicator
    6e70: aa1303e0     	mov	x0, x19
    6e74: 94000000     	bl	0x6e74 <syna_cdev_open+0xbc>
		0000000000006e74:  R_AARCH64_CALL26	mutex_unlock
    6e78: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006e78:  R_AARCH64_ADR_PREL_PG_HI21	unk_34E37
    6e7c: 91000000     	add	x0, x0, #0x0
		0000000000006e7c:  R_AARCH64_ADD_ABS_LO12_NC	unk_34E37
    6e80: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x1214>
		0000000000006e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c77
    6e84: 91000021     	add	x1, x1, #0x0
		0000000000006e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c77
    6e88: 94000000     	bl	0x6e88 <syna_cdev_open+0xd0>
		0000000000006e88:  R_AARCH64_CALL26	_printk
    6e8c: 2a1f03e0     	mov	w0, wzr
    6e90: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    6e94: a94157f6     	ldp	x22, x21, [sp, #0x10]
    6e98: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    6e9c: d50323bf     	autiasp
    6ea0: d65f03c0     	ret
    6ea4: d2802016     	mov	x22, #0x100             // =256
    6ea8: f2fbd5b6     	movk	x22, #0xdead, lsl #48
    6eac: 14000004     	b	0x6ebc <syna_cdev_open+0x104>
    6eb0: f94002b3     	ldr	x19, [x21]
    6eb4: eb15027f     	cmp	x19, x21
    6eb8: 54fffd00     	b.eq	0x6e58 <syna_cdev_open+0xa0>
    6ebc: f9400668     	ldr	x8, [x19, #0x8]
    6ec0: f9400109     	ldr	x9, [x8]
    6ec4: eb13013f     	cmp	x9, x19
    6ec8: 54000241     	b.ne	0x6f10 <syna_cdev_open+0x158>
    6ecc: f9400269     	ldr	x9, [x19]
    6ed0: f940052a     	ldr	x10, [x9, #0x8]
    6ed4: eb13015f     	cmp	x10, x19
    6ed8: 540001c1     	b.ne	0x6f10 <syna_cdev_open+0x158>
    6edc: f9000528     	str	x8, [x9, #0x8]
    6ee0: f9000109     	str	x9, [x8]
    6ee4: f9400a60     	ldr	x0, [x19, #0x10]
    6ee8: 91008ac8     	add	x8, x22, #0x22
    6eec: a9002276     	stp	x22, x8, [x19]
    6ef0: 94000000     	bl	0x6ef0 <syna_cdev_open+0x138>
		0000000000006ef0:  R_AARCH64_CALL26	kfree
    6ef4: aa1303e0     	mov	x0, x19
    6ef8: 94000000     	bl	0x6ef8 <syna_cdev_open+0x140>
		0000000000006ef8:  R_AARCH64_CALL26	kfree
    6efc: b944f288     	ldr	w8, [x20, #0x4f0]
    6f00: 34fffd88     	cbz	w8, 0x6eb0 <syna_cdev_open+0xf8>
    6f04: 51000508     	sub	w8, w8, #0x1
    6f08: b904f288     	str	w8, [x20, #0x4f0]
    6f0c: 17ffffe9     	b	0x6eb0 <syna_cdev_open+0xf8>
    6f10: aa1303e0     	mov	x0, x19
    6f14: 94000000     	bl	0x6f14 <syna_cdev_open+0x15c>
		0000000000006f14:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    6f18: 17fffff3     	b	0x6ee4 <syna_cdev_open+0x12c>
