
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bfc <zlog_client_record>:
     bfc: d503233f     	paciasp
     c00: d10283ff     	sub	sp, sp, #0xa0
     c04: a9087bfd     	stp	x29, x30, [sp, #0x80]
     c08: a9094ff4     	stp	x20, x19, [sp, #0x90]
     c0c: 910203fd     	add	x29, sp, #0x80
     c10: a9008fe2     	stp	x2, x3, [sp, #0x8]
     c14: a90197e4     	stp	x4, x5, [sp, #0x18]
     c18: d5384108     	mrs	x8, SP_EL0
     c1c: f9438908     	ldr	x8, [x8, #0x710]
     c20: a9029fe6     	stp	x6, x7, [sp, #0x28]
     c24: f81f83a8     	stur	x8, [x29, #-0x8]
     c28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c28:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     c2c: 39400108     	ldrb	w8, [x8]
		0000000000000c2c:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     c30: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     c34: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     c38: 36000848     	tbz	w8, #0x0, 0xd40 <zlog_client_record+0x144>
     c3c: aa0003f3     	mov	x19, x0
     c40: b4000860     	cbz	x0, 0xd4c <zlog_client_record+0x150>
     c44: 9102c260     	add	x0, x19, #0xb0
     c48: aa0103f4     	mov	x20, x1
     c4c: 94000000     	bl	0xc4c <zlog_client_record+0x50>
		0000000000000c4c:  R_AARCH64_CALL26	mutex_lock
     c50: 39446268     	ldrb	w8, [x19, #0x118]
     c54: 340004e8     	cbz	w8, 0xcf0 <zlog_client_record+0xf4>
     c58: f9408268     	ldr	x8, [x19, #0x100]
     c5c: b40004a8     	cbz	x8, 0xcf0 <zlog_client_record+0xf4>
     c60: f9408668     	ldr	x8, [x19, #0x108]
     c64: b4000468     	cbz	x8, 0xcf0 <zlog_client_record+0xf4>
     c68: f9407e68     	ldr	x8, [x19, #0xf8]
     c6c: f120011f     	cmp	x8, #0x800
     c70: 54000402     	b.hs	0xcf0 <zlog_client_record+0xf4>
     c74: 910023ea     	add	x10, sp, #0x8
     c78: 910083a9     	add	x9, x29, #0x20
     c7c: f85e83ab     	ldur	x11, [x29, #-0x18]
     c80: 9100c14a     	add	x10, x10, #0x30
     c84: 128005e8     	mov	w8, #-0x30              // =-48
     c88: 9100e3e3     	add	x3, sp, #0x38
     c8c: a93daba9     	stp	x9, x10, [x29, #-0x28]
     c90: aa1403e2     	mov	x2, x20
     c94: a903abe9     	stp	x9, x10, [sp, #0x38]
     c98: a94fb269     	ldp	x9, x12, [x19, #0xf8]
     c9c: f940866a     	ldr	x10, [x19, #0x108]
     ca0: a904a3eb     	stp	x11, x8, [sp, #0x48]
     ca4: f81f03a8     	stur	x8, [x29, #-0x10]
     ca8: aa2903eb     	mvn	x11, x9
     cac: 8b090140     	add	x0, x10, x9
     cb0: 8b0b0181     	add	x1, x12, x11
     cb4: 94000000     	bl	0xcb4 <zlog_client_record+0xb8>
		0000000000000cb4:  R_AARCH64_CALL26	vsnprintf
     cb8: 2a0003f4     	mov	w20, w0
     cbc: 37f80580     	tbnz	w0, #0x1f, 0xd6c <zlog_client_record+0x170>
     cc0: a94fa269     	ldp	x9, x8, [x19, #0xf8]
     cc4: 8b344129     	add	x9, x9, w20, uxtw
     cc8: eb08013f     	cmp	x9, x8
     ccc: f9007e69     	str	x9, [x19, #0xf8]
     cd0: 54000063     	b.lo	0xcdc <zlog_client_record+0xe0>
     cd4: d1000508     	sub	x8, x8, #0x1
     cd8: f9007e68     	str	x8, [x19, #0xf8]
     cdc: 1400002c     	b	0xd8c <zlog_client_record+0x190>
     ce0: 9103a268     	add	x8, x19, #0xe8
     ce4: 52800089     	mov	w9, #0x4                // =4
     ce8: f829311f     	stset	x9, [x8]
     cec: 14000008     	b	0xd0c <zlog_client_record+0x110>
     cf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     cf4: 91000021     	add	x1, x1, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     cf8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e6
     cfc: 91000000     	add	x0, x0, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e6
     d00: aa0103e2     	mov	x2, x1
     d04: 94000000     	bl	0xd04 <zlog_client_record+0x108>
		0000000000000d04:  R_AARCH64_CALL26	_printk
     d08: 2a1f03f4     	mov	w20, wzr
     d0c: 9102c260     	add	x0, x19, #0xb0
     d10: 94000000     	bl	0xd10 <zlog_client_record+0x114>
		0000000000000d10:  R_AARCH64_CALL26	mutex_unlock
     d14: d5384108     	mrs	x8, SP_EL0
     d18: f9438908     	ldr	x8, [x8, #0x710]
     d1c: f85f83a9     	ldur	x9, [x29, #-0x8]
     d20: eb09011f     	cmp	x8, x9
     d24: 54000321     	b.ne	0xd88 <zlog_client_record+0x18c>
     d28: 2a1403e0     	mov	w0, w20
     d2c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d30: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d34: 910283ff     	add	sp, sp, #0xa0
     d38: d50323bf     	autiasp
     d3c: d65f03c0     	ret
     d40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ae
     d44: 91000000     	add	x0, x0, #0x0
		0000000000000d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ae
     d48: 14000003     	b	0xd54 <zlog_client_record+0x158>
     d4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8e4
     d50: 91000000     	add	x0, x0, #0x0
		0000000000000d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8e4
     d54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     d58: 91000021     	add	x1, x1, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     d5c: aa0103e2     	mov	x2, x1
     d60: 94000000     	bl	0xd60 <zlog_client_record+0x164>
		0000000000000d60:  R_AARCH64_CALL26	_printk
     d64: 2a1f03f4     	mov	w20, wzr
     d68: 17ffffeb     	b	0xd14 <zlog_client_record+0x118>
     d6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87c
     d70: 91000021     	add	x1, x1, #0x0
		0000000000000d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87c
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     d7c: aa0103e2     	mov	x2, x1
     d80: 94000000     	bl	0xd80 <zlog_client_record+0x184>
		0000000000000d80:  R_AARCH64_CALL26	_printk
     d84: 17ffffe2     	b	0xd0c <zlog_client_record+0x110>
     d88: 94000000     	bl	0xd88 <zlog_client_record+0x18c>
		0000000000000d88:  R_AARCH64_CALL26	__stack_chk_fail
     d8c: 9103a268     	add	x8, x19, #0xe8
     d90: f9800111     	prfm	pstl1strm, [x8]
     d94: c85f7d09     	ldxr	x9, [x8]
     d98: b27e0129     	orr	x9, x9, #0x4
     d9c: c80a7d09     	stxr	w10, x9, [x8]
     da0: 35ffffaa     	cbnz	w10, 0xd94 <zlog_client_record+0x198>
     da4: 17ffffda     	b	0xd0c <zlog_client_record+0x110>
