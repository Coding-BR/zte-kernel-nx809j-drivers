
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c4c <zlog_client_record>:
     c4c: d503233f     	paciasp
     c50: d10283ff     	sub	sp, sp, #0xa0
     c54: a9087bfd     	stp	x29, x30, [sp, #0x80]
     c58: a9094ff4     	stp	x20, x19, [sp, #0x90]
     c5c: 910203fd     	add	x29, sp, #0x80
     c60: a9008fe2     	stp	x2, x3, [sp, #0x8]
     c64: a90197e4     	stp	x4, x5, [sp, #0x18]
     c68: d5384108     	mrs	x8, SP_EL0
     c6c: f9438908     	ldr	x8, [x8, #0x710]
     c70: a9029fe6     	stp	x6, x7, [sp, #0x28]
     c74: f81f83a8     	stur	x8, [x29, #-0x8]
     c78: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c78:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     c7c: 39400108     	ldrb	w8, [x8]
		0000000000000c7c:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     c80: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     c84: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     c88: 36000848     	tbz	w8, #0x0, 0xd90 <zlog_client_record+0x144>
     c8c: aa0003f3     	mov	x19, x0
     c90: b4000860     	cbz	x0, 0xd9c <zlog_client_record+0x150>
     c94: 9102c260     	add	x0, x19, #0xb0
     c98: aa0103f4     	mov	x20, x1
     c9c: 94000000     	bl	0xc9c <zlog_client_record+0x50>
		0000000000000c9c:  R_AARCH64_CALL26	mutex_lock
     ca0: 39446268     	ldrb	w8, [x19, #0x118]
     ca4: 340004e8     	cbz	w8, 0xd40 <zlog_client_record+0xf4>
     ca8: f9408268     	ldr	x8, [x19, #0x100]
     cac: b40004a8     	cbz	x8, 0xd40 <zlog_client_record+0xf4>
     cb0: f9408668     	ldr	x8, [x19, #0x108]
     cb4: b4000468     	cbz	x8, 0xd40 <zlog_client_record+0xf4>
     cb8: f9407e68     	ldr	x8, [x19, #0xf8]
     cbc: f120011f     	cmp	x8, #0x800
     cc0: 54000402     	b.hs	0xd40 <zlog_client_record+0xf4>
     cc4: 910023ea     	add	x10, sp, #0x8
     cc8: 910083a9     	add	x9, x29, #0x20
     ccc: f85e83ab     	ldur	x11, [x29, #-0x18]
     cd0: 9100c14a     	add	x10, x10, #0x30
     cd4: 128005e8     	mov	w8, #-0x30              // =-48
     cd8: 9100e3e3     	add	x3, sp, #0x38
     cdc: a93daba9     	stp	x9, x10, [x29, #-0x28]
     ce0: aa1403e2     	mov	x2, x20
     ce4: a903abe9     	stp	x9, x10, [sp, #0x38]
     ce8: a94fb269     	ldp	x9, x12, [x19, #0xf8]
     cec: f940866a     	ldr	x10, [x19, #0x108]
     cf0: a904a3eb     	stp	x11, x8, [sp, #0x48]
     cf4: f81f03a8     	stur	x8, [x29, #-0x10]
     cf8: aa2903eb     	mvn	x11, x9
     cfc: 8b090140     	add	x0, x10, x9
     d00: 8b0b0181     	add	x1, x12, x11
     d04: 94000000     	bl	0xd04 <zlog_client_record+0xb8>
		0000000000000d04:  R_AARCH64_CALL26	vsnprintf
     d08: 2a0003f4     	mov	w20, w0
     d0c: 37f80580     	tbnz	w0, #0x1f, 0xdbc <zlog_client_record+0x170>
     d10: a94fa269     	ldp	x9, x8, [x19, #0xf8]
     d14: 8b344129     	add	x9, x9, w20, uxtw
     d18: eb08013f     	cmp	x9, x8
     d1c: f9007e69     	str	x9, [x19, #0xf8]
     d20: 54000063     	b.lo	0xd2c <zlog_client_record+0xe0>
     d24: d1000508     	sub	x8, x8, #0x1
     d28: f9007e68     	str	x8, [x19, #0xf8]
     d2c: 1400002c     	b	0xddc <zlog_client_record+0x190>
     d30: 9103a268     	add	x8, x19, #0xe8
     d34: 52800089     	mov	w9, #0x4                // =4
     d38: f829311f     	stset	x9, [x8]
     d3c: 14000008     	b	0xd5c <zlog_client_record+0x110>
     d40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     d44: 91000021     	add	x1, x1, #0x0
		0000000000000d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     d48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e6
     d4c: 91000000     	add	x0, x0, #0x0
		0000000000000d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e6
     d50: aa0103e2     	mov	x2, x1
     d54: 94000000     	bl	0xd54 <zlog_client_record+0x108>
		0000000000000d54:  R_AARCH64_CALL26	_printk
     d58: 2a1f03f4     	mov	w20, wzr
     d5c: 9102c260     	add	x0, x19, #0xb0
     d60: 94000000     	bl	0xd60 <zlog_client_record+0x114>
		0000000000000d60:  R_AARCH64_CALL26	mutex_unlock
     d64: d5384108     	mrs	x8, SP_EL0
     d68: f9438908     	ldr	x8, [x8, #0x710]
     d6c: f85f83a9     	ldur	x9, [x29, #-0x8]
     d70: eb09011f     	cmp	x8, x9
     d74: 54000321     	b.ne	0xdd8 <zlog_client_record+0x18c>
     d78: 2a1403e0     	mov	w0, w20
     d7c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d80: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d84: 910283ff     	add	sp, sp, #0xa0
     d88: d50323bf     	autiasp
     d8c: d65f03c0     	ret
     d90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa1a
     d94: 91000000     	add	x0, x0, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa1a
     d98: 14000003     	b	0xda4 <zlog_client_record+0x158>
     d9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91a
     da0: 91000000     	add	x0, x0, #0x0
		0000000000000da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91a
     da4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     da8: 91000021     	add	x1, x1, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     dac: aa0103e2     	mov	x2, x1
     db0: 94000000     	bl	0xdb0 <zlog_client_record+0x164>
		0000000000000db0:  R_AARCH64_CALL26	_printk
     db4: 2a1f03f4     	mov	w20, wzr
     db8: 17ffffeb     	b	0xd64 <zlog_client_record+0x118>
     dbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     dc0: 91000021     	add	x1, x1, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     dc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     dc8: 91000000     	add	x0, x0, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     dcc: aa0103e2     	mov	x2, x1
     dd0: 94000000     	bl	0xdd0 <zlog_client_record+0x184>
		0000000000000dd0:  R_AARCH64_CALL26	_printk
     dd4: 17ffffe2     	b	0xd5c <zlog_client_record+0x110>
     dd8: 94000000     	bl	0xdd8 <zlog_client_record+0x18c>
		0000000000000dd8:  R_AARCH64_CALL26	__stack_chk_fail
     ddc: 9103a268     	add	x8, x19, #0xe8
     de0: f9800111     	prfm	pstl1strm, [x8]
     de4: c85f7d09     	ldxr	x9, [x8]
     de8: b27e0129     	orr	x9, x9, #0x4
     dec: c80a7d09     	stxr	w10, x9, [x8]
     df0: 35ffffaa     	cbnz	w10, 0xde4 <zlog_client_record+0x198>
     df4: 17ffffda     	b	0xd5c <zlog_client_record+0x110>
