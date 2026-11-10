
/input/zlog_common_candidate.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c64 <zlog_client_record>:
     c64: d503233f     	paciasp
     c68: d10283ff     	sub	sp, sp, #0xa0
     c6c: a9087bfd     	stp	x29, x30, [sp, #0x80]
     c70: a9094ff4     	stp	x20, x19, [sp, #0x90]
     c74: 910203fd     	add	x29, sp, #0x80
     c78: a9008fe2     	stp	x2, x3, [sp, #0x8]
     c7c: a90197e4     	stp	x4, x5, [sp, #0x18]
     c80: d5384108     	mrs	x8, SP_EL0
     c84: f9438908     	ldr	x8, [x8, #0x710]
     c88: a9029fe6     	stp	x6, x7, [sp, #0x28]
     c8c: f81f83a8     	stur	x8, [x29, #-0x8]
     c90: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     c94: 39400108     	ldrb	w8, [x8]
		0000000000000c94:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     c98: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     c9c: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     ca0: 36000848     	tbz	w8, #0x0, 0xda8 <zlog_client_record+0x144>
     ca4: aa0003f3     	mov	x19, x0
     ca8: b4000860     	cbz	x0, 0xdb4 <zlog_client_record+0x150>
     cac: 9102c260     	add	x0, x19, #0xb0
     cb0: aa0103f4     	mov	x20, x1
     cb4: 94000000     	bl	0xcb4 <zlog_client_record+0x50>
		0000000000000cb4:  R_AARCH64_CALL26	mutex_lock
     cb8: 39446268     	ldrb	w8, [x19, #0x118]
     cbc: 340004e8     	cbz	w8, 0xd58 <zlog_client_record+0xf4>
     cc0: f9408268     	ldr	x8, [x19, #0x100]
     cc4: b40004a8     	cbz	x8, 0xd58 <zlog_client_record+0xf4>
     cc8: f9408668     	ldr	x8, [x19, #0x108]
     ccc: b4000468     	cbz	x8, 0xd58 <zlog_client_record+0xf4>
     cd0: f9407e68     	ldr	x8, [x19, #0xf8]
     cd4: f120011f     	cmp	x8, #0x800
     cd8: 54000402     	b.hs	0xd58 <zlog_client_record+0xf4>
     cdc: 910023ea     	add	x10, sp, #0x8
     ce0: 910083a9     	add	x9, x29, #0x20
     ce4: f85e83ab     	ldur	x11, [x29, #-0x18]
     ce8: 9100c14a     	add	x10, x10, #0x30
     cec: 128005e8     	mov	w8, #-0x30              // =-48
     cf0: 9100e3e3     	add	x3, sp, #0x38
     cf4: a93daba9     	stp	x9, x10, [x29, #-0x28]
     cf8: aa1403e2     	mov	x2, x20
     cfc: a903abe9     	stp	x9, x10, [sp, #0x38]
     d00: a94fb269     	ldp	x9, x12, [x19, #0xf8]
     d04: f940866a     	ldr	x10, [x19, #0x108]
     d08: a904a3eb     	stp	x11, x8, [sp, #0x48]
     d0c: f81f03a8     	stur	x8, [x29, #-0x10]
     d10: aa2903eb     	mvn	x11, x9
     d14: 8b090140     	add	x0, x10, x9
     d18: 8b0b0181     	add	x1, x12, x11
     d1c: 94000000     	bl	0xd1c <zlog_client_record+0xb8>
		0000000000000d1c:  R_AARCH64_CALL26	vsnprintf
     d20: 2a0003f4     	mov	w20, w0
     d24: 37f80580     	tbnz	w0, #0x1f, 0xdd4 <zlog_client_record+0x170>
     d28: a94fa269     	ldp	x9, x8, [x19, #0xf8]
     d2c: 8b344129     	add	x9, x9, w20, uxtw
     d30: eb08013f     	cmp	x9, x8
     d34: f9007e69     	str	x9, [x19, #0xf8]
     d38: 54000063     	b.lo	0xd44 <zlog_client_record+0xe0>
     d3c: d1000508     	sub	x8, x8, #0x1
     d40: f9007e68     	str	x8, [x19, #0xf8]
     d44: 1400002c     	b	0xdf4 <zlog_client_record+0x190>
     d48: 9103a268     	add	x8, x19, #0xe8
     d4c: 52800089     	mov	w9, #0x4                // =4
     d50: f829311f     	stset	x9, [x8]
     d54: 14000008     	b	0xd74 <zlog_client_record+0x110>
     d58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     d5c: 91000021     	add	x1, x1, #0x0
		0000000000000d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     d60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e6
     d64: 91000000     	add	x0, x0, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e6
     d68: aa0103e2     	mov	x2, x1
     d6c: 94000000     	bl	0xd6c <zlog_client_record+0x108>
		0000000000000d6c:  R_AARCH64_CALL26	_printk
     d70: 2a1f03f4     	mov	w20, wzr
     d74: 9102c260     	add	x0, x19, #0xb0
     d78: 94000000     	bl	0xd78 <zlog_client_record+0x114>
		0000000000000d78:  R_AARCH64_CALL26	mutex_unlock
     d7c: d5384108     	mrs	x8, SP_EL0
     d80: f9438908     	ldr	x8, [x8, #0x710]
     d84: f85f83a9     	ldur	x9, [x29, #-0x8]
     d88: eb09011f     	cmp	x8, x9
     d8c: 54000321     	b.ne	0xdf0 <zlog_client_record+0x18c>
     d90: 2a1403e0     	mov	w0, w20
     d94: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d98: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d9c: 910283ff     	add	sp, sp, #0xa0
     da0: d50323bf     	autiasp
     da4: d65f03c0     	ret
     da8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1a
     dac: 91000000     	add	x0, x0, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1a
     db0: 14000003     	b	0xdbc <zlog_client_record+0x158>
     db4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91a
     db8: 91000000     	add	x0, x0, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91a
     dbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     dc0: 91000021     	add	x1, x1, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     dc4: aa0103e2     	mov	x2, x1
     dc8: 94000000     	bl	0xdc8 <zlog_client_record+0x164>
		0000000000000dc8:  R_AARCH64_CALL26	_printk
     dcc: 2a1f03f4     	mov	w20, wzr
     dd0: 17ffffeb     	b	0xd7c <zlog_client_record+0x118>
     dd4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     dd8: 91000021     	add	x1, x1, #0x0
		0000000000000dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     ddc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     de0: 91000000     	add	x0, x0, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     de4: aa0103e2     	mov	x2, x1
     de8: 94000000     	bl	0xde8 <zlog_client_record+0x184>
		0000000000000de8:  R_AARCH64_CALL26	_printk
     dec: 17ffffe2     	b	0xd74 <zlog_client_record+0x110>
     df0: 94000000     	bl	0xdf0 <zlog_client_record+0x18c>
		0000000000000df0:  R_AARCH64_CALL26	__stack_chk_fail
     df4: 9103a268     	add	x8, x19, #0xe8
     df8: f9800111     	prfm	pstl1strm, [x8]
     dfc: c85f7d09     	ldxr	x9, [x8]
     e00: b27e0129     	orr	x9, x9, #0x4
     e04: c80a7d09     	stxr	w10, x9, [x8]
     e08: 35ffffaa     	cbnz	w10, 0xdfc <zlog_client_record+0x198>
     e0c: 17ffffda     	b	0xd74 <zlog_client_record+0x110>
