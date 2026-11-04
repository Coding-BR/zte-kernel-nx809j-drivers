
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000bfc <zlog_client_record>:
     bfc: d503233f     	paciasp
     c00: d10283ff     	sub	sp, sp, #0xa0
     c04: a9087bfd     	stp	x29, x30, [sp, #0x80]
     c08: a9094ff4     	stp	x20, x19, [sp, #0x90]
     c0c: 910203fd     	add	x29, sp, #0x80
     c10: a9008fe2     	stp	x2, x3, [sp, #0x8]
     c14: 2a1f03f4     	mov	w20, wzr
     c18: a90197e4     	stp	x4, x5, [sp, #0x18]
     c1c: d5384108     	mrs	x8, SP_EL0
     c20: f9438908     	ldr	x8, [x8, #0x710]
     c24: a9029fe6     	stp	x6, x7, [sp, #0x28]
     c28: f81f83a8     	stur	x8, [x29, #-0x8]
     c2c: b40006a0     	cbz	x0, 0xd00 <zlog_client_record+0x104>
     c30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c30:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     c34: 39400108     	ldrb	w8, [x8]
		0000000000000c34:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     c38: 36000648     	tbz	w8, #0x0, 0xd00 <zlog_client_record+0x104>
     c3c: aa0003f3     	mov	x19, x0
     c40: 9102c000     	add	x0, x0, #0xb0
     c44: aa0103f4     	mov	x20, x1
     c48: a93effbf     	stp	xzr, xzr, [x29, #-0x18]
     c4c: a93dffbf     	stp	xzr, xzr, [x29, #-0x28]
     c50: 94000000     	bl	0xc50 <zlog_client_record+0x54>
		0000000000000c50:  R_AARCH64_CALL26	mutex_lock
     c54: 39446268     	ldrb	w8, [x19, #0x118]
     c58: 340004e8     	cbz	w8, 0xcf4 <zlog_client_record+0xf8>
     c5c: f9408268     	ldr	x8, [x19, #0x100]
     c60: b40004a8     	cbz	x8, 0xcf4 <zlog_client_record+0xf8>
     c64: f9408668     	ldr	x8, [x19, #0x108]
     c68: b4000468     	cbz	x8, 0xcf4 <zlog_client_record+0xf8>
     c6c: f9407e68     	ldr	x8, [x19, #0xf8]
     c70: f11ffd1f     	cmp	x8, #0x7ff
     c74: 54000408     	b.hi	0xcf4 <zlog_client_record+0xf8>
     c78: 910023ea     	add	x10, sp, #0x8
     c7c: 910083a9     	add	x9, x29, #0x20
     c80: f85e83ab     	ldur	x11, [x29, #-0x18]
     c84: 9100c14a     	add	x10, x10, #0x30
     c88: 128005e8     	mov	w8, #-0x30              // =-48
     c8c: 9100e3e3     	add	x3, sp, #0x38
     c90: a93daba9     	stp	x9, x10, [x29, #-0x28]
     c94: aa1403e2     	mov	x2, x20
     c98: a903abe9     	stp	x9, x10, [sp, #0x38]
     c9c: a94fb269     	ldp	x9, x12, [x19, #0xf8]
     ca0: f940866a     	ldr	x10, [x19, #0x108]
     ca4: a904a3eb     	stp	x11, x8, [sp, #0x48]
     ca8: f81f03a8     	stur	x8, [x29, #-0x10]
     cac: aa2903eb     	mvn	x11, x9
     cb0: 8b090140     	add	x0, x10, x9
     cb4: 8b0b0181     	add	x1, x12, x11
     cb8: 94000000     	bl	0xcb8 <zlog_client_record+0xbc>
		0000000000000cb8:  R_AARCH64_CALL26	vsnprintf
     cbc: 37f801c0     	tbnz	w0, #0x1f, 0xcf4 <zlog_client_record+0xf8>
     cc0: a94fa269     	ldp	x9, x8, [x19, #0xf8]
     cc4: 2a0003f4     	mov	w20, w0
     cc8: 8b204129     	add	x9, x9, w0, uxtw
     ccc: eb08013f     	cmp	x9, x8
     cd0: f9007e69     	str	x9, [x19, #0xf8]
     cd4: 54000063     	b.lo	0xce0 <zlog_client_record+0xe4>
     cd8: d1000508     	sub	x8, x8, #0x1
     cdc: f9007e68     	str	x8, [x19, #0xf8]
     ce0: 14000014     	b	0xd30 <zlog_client_record+0x134>
     ce4: 9103a268     	add	x8, x19, #0xe8
     ce8: 52800089     	mov	w9, #0x4                // =4
     cec: f829311f     	stset	x9, [x8]
     cf0: 14000002     	b	0xcf8 <zlog_client_record+0xfc>
     cf4: 2a1f03f4     	mov	w20, wzr
     cf8: 9102c260     	add	x0, x19, #0xb0
     cfc: 94000000     	bl	0xcfc <zlog_client_record+0x100>
		0000000000000cfc:  R_AARCH64_CALL26	mutex_unlock
     d00: d5384108     	mrs	x8, SP_EL0
     d04: f9438908     	ldr	x8, [x8, #0x710]
     d08: f85f83a9     	ldur	x9, [x29, #-0x8]
     d0c: eb09011f     	cmp	x8, x9
     d10: 540000e1     	b.ne	0xd2c <zlog_client_record+0x130>
     d14: 2a1403e0     	mov	w0, w20
     d18: a9494ff4     	ldp	x20, x19, [sp, #0x90]
     d1c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     d20: 910283ff     	add	sp, sp, #0xa0
     d24: d50323bf     	autiasp
     d28: d65f03c0     	ret
     d2c: 94000000     	bl	0xd2c <zlog_client_record+0x130>
		0000000000000d2c:  R_AARCH64_CALL26	__stack_chk_fail
     d30: 9103a268     	add	x8, x19, #0xe8
     d34: f9800111     	prfm	pstl1strm, [x8]
     d38: c85f7d09     	ldxr	x9, [x8]
     d3c: b27e0129     	orr	x9, x9, #0x4
     d40: c80a7d09     	stxr	w10, x9, [x8]
     d44: 35ffffaa     	cbnz	w10, 0xd38 <zlog_client_record+0x13c>
     d48: 17ffffec     	b	0xcf8 <zlog_client_record+0xfc>
