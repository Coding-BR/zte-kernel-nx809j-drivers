
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013be8 <syna_tcm_get_features>:
   13be8: d503233f     	paciasp
   13bec: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13bf0: f9000bf5     	str	x21, [sp, #0x10]
   13bf4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13bf8: 910003fd     	mov	x29, sp
   13bfc: b4000780     	cbz	x0, 0x13cec <syna_tcm_get_features+0x104>
   13c00: 2a0203f5     	mov	w21, w2
   13c04: 39402402     	ldrb	w2, [x0, #0x9]
   13c08: aa0003f3     	mov	x19, x0
   13c0c: 7100045f     	cmp	w2, #0x1
   13c10: 540007c1     	b.ne	0x13d08 <syna_tcm_get_features+0x120>
   13c14: aa0103f4     	mov	x20, x1
   13c18: 350000b5     	cbnz	w21, 0x13c2c <syna_tcm_get_features+0x44>
   13c1c: f9402668     	ldr	x8, [x19, #0x48]
   13c20: 39405108     	ldrb	w8, [x8, #0x14]
   13c24: 36000d88     	tbz	w8, #0x0, 0x13dd4 <syna_tcm_get_features+0x1ec>
   13c28: 2a1f03f5     	mov	w21, wzr
   13c2c: f941ce68     	ldr	x8, [x19, #0x398]
   13c30: aa1303e0     	mov	x0, x19
   13c34: 52800641     	mov	w1, #0x32               // =50
   13c38: aa1f03e2     	mov	x2, xzr
   13c3c: 2a1f03e3     	mov	w3, wzr
   13c40: aa1f03e4     	mov	x4, xzr
   13c44: 2a1503e5     	mov	w5, w21
   13c48: b85fc110     	ldur	w16, [x8, #-0x4]
   13c4c: 728751d1     	movk	w17, #0x3a8e
   13c50: 72a48411     	movk	w17, #0x2420, lsl #16
   13c54: 6b11021f     	cmp	w16, w17
   13c58: 54000040     	b.eq	0x13c60 <syna_tcm_get_features+0x78>
   13c5c: d4304500     	brk	#0x8228
   13c60: d63f0100     	blr	x8
   13c64: 37f80600     	tbnz	w0, #0x1f, 0x13d24 <syna_tcm_get_features+0x13c>
   13c68: b4000394     	cbz	x20, 0x13cd8 <syna_tcm_get_features+0xf0>
   13c6c: 39462262     	ldrb	w2, [x19, #0x188]
   13c70: 350006e2     	cbnz	w2, 0x13d4c <syna_tcm_get_features+0x164>
   13c74: 91056260     	add	x0, x19, #0x158
   13c78: 94000000     	bl	0x13c78 <syna_tcm_get_features+0x90>
		0000000000013c78:  R_AARCH64_CALL26	mutex_lock
   13c7c: b9415669     	ldr	w9, [x19, #0x154]
   13c80: 39462268     	ldrb	w8, [x19, #0x188]
   13c84: 5280020a     	mov	w10, #0x10              // =16
   13c88: f940a661     	ldr	x1, [x19, #0x148]
   13c8c: 7100413f     	cmp	w9, #0x10
   13c90: 11000508     	add	w8, w8, #0x1
   13c94: 1a8a3124     	csel	w4, w9, w10, lo
   13c98: 39062268     	strb	w8, [x19, #0x188]
   13c9c: b4000701     	cbz	x1, 0x13d7c <syna_tcm_get_features+0x194>
   13ca0: b9415262     	ldr	w2, [x19, #0x150]
   13ca4: 6b02009f     	cmp	w4, w2
   13ca8: 540005e8     	b.hi	0x13d64 <syna_tcm_get_features+0x17c>
   13cac: aa1403e0     	mov	x0, x20
   13cb0: aa0403e2     	mov	x2, x4
   13cb4: 94000000     	bl	0x13cb4 <syna_tcm_get_features+0xcc>
		0000000000013cb4:  R_AARCH64_CALL26	memcpy
   13cb8: 39462262     	ldrb	w2, [x19, #0x188]
   13cbc: 7100045f     	cmp	w2, #0x1
   13cc0: 540007a1     	b.ne	0x13db4 <syna_tcm_get_features+0x1cc>
   13cc4: 2a1f03e8     	mov	w8, wzr
   13cc8: 91056260     	add	x0, x19, #0x158
   13ccc: 39062268     	strb	w8, [x19, #0x188]
   13cd0: 94000000     	bl	0x13cd0 <syna_tcm_get_features+0xe8>
		0000000000013cd0:  R_AARCH64_CALL26	mutex_unlock
   13cd4: 2a1f03e0     	mov	w0, wzr
   13cd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13cdc: f9400bf5     	ldr	x21, [sp, #0x10]
   13ce0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13ce4: d50323bf     	autiasp
   13ce8: d65f03c0     	ret
   13cec: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13cf0: 91000000     	add	x0, x0, #0x0
		0000000000013cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13cf4: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13cf8: 91000021     	add	x1, x1, #0x0
		0000000000013cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13cfc: 94000000     	bl	0x13cfc <syna_tcm_get_features+0x114>
		0000000000013cfc:  R_AARCH64_CALL26	_printk
   13d00: 12801e00     	mov	w0, #-0xf1              // =-241
   13d04: 17fffff5     	b	0x13cd8 <syna_tcm_get_features+0xf0>
   13d08: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   13d0c: 91000000     	add	x0, x0, #0x0
		0000000000013d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   13d10: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13d14: 91000021     	add	x1, x1, #0x0
		0000000000013d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13d18: 94000000     	bl	0x13d18 <syna_tcm_get_features+0x130>
		0000000000013d18:  R_AARCH64_CALL26	_printk
   13d1c: 12801e00     	mov	w0, #-0xf1              // =-241
   13d20: 17ffffee     	b	0x13cd8 <syna_tcm_get_features+0xf0>
   13d24: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13d28: 91000108     	add	x8, x8, #0x0
		0000000000013d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   13d2c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13d30: 91000021     	add	x1, x1, #0x0
		0000000000013d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13d34: 2a0003f3     	mov	w19, w0
   13d38: aa0803e0     	mov	x0, x8
   13d3c: 52800642     	mov	w2, #0x32               // =50
   13d40: 94000000     	bl	0x13d40 <syna_tcm_get_features+0x158>
		0000000000013d40:  R_AARCH64_CALL26	_printk
   13d44: 2a1303e0     	mov	w0, w19
   13d48: 17ffffe4     	b	0x13cd8 <syna_tcm_get_features+0xf0>
   13d4c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13d50: 91000000     	add	x0, x0, #0x0
		0000000000013d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13d54: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   13d58: 91000021     	add	x1, x1, #0x0
		0000000000013d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   13d5c: 94000000     	bl	0x13d5c <syna_tcm_get_features+0x174>
		0000000000013d5c:  R_AARCH64_CALL26	_printk
   13d60: 17ffffc5     	b	0x13c74 <syna_tcm_get_features+0x8c>
   13d64: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   13d68: 91000000     	add	x0, x0, #0x0
		0000000000013d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   13d6c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   13d70: 91000021     	add	x1, x1, #0x0
		0000000000013d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   13d74: 52800203     	mov	w3, #0x10               // =16
   13d78: 94000000     	bl	0x13d78 <syna_tcm_get_features+0x190>
		0000000000013d78:  R_AARCH64_CALL26	_printk
   13d7c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbff2
   13d80: 91000000     	add	x0, x0, #0x0
		0000000000013d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbff2
   13d84: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13d88: 91000021     	add	x1, x1, #0x0
		0000000000013d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13d8c: 94000000     	bl	0x13d8c <syna_tcm_get_features+0x1a4>
		0000000000013d8c:  R_AARCH64_CALL26	_printk
   13d90: 39462262     	ldrb	w2, [x19, #0x188]
   13d94: 7100045f     	cmp	w2, #0x1
   13d98: 540002c1     	b.ne	0x13df0 <syna_tcm_get_features+0x208>
   13d9c: 2a1f03e8     	mov	w8, wzr
   13da0: 91056260     	add	x0, x19, #0x158
   13da4: 39062268     	strb	w8, [x19, #0x188]
   13da8: 94000000     	bl	0x13da8 <syna_tcm_get_features+0x1c0>
		0000000000013da8:  R_AARCH64_CALL26	mutex_unlock
   13dac: 128002a0     	mov	w0, #-0x16              // =-22
   13db0: 17ffffca     	b	0x13cd8 <syna_tcm_get_features+0xf0>
   13db4: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13db8: 91000000     	add	x0, x0, #0x0
		0000000000013db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13dbc: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   13dc0: 91000021     	add	x1, x1, #0x0
		0000000000013dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13dc4: 94000000     	bl	0x13dc4 <syna_tcm_get_features+0x1dc>
		0000000000013dc4:  R_AARCH64_CALL26	_printk
   13dc8: 39462268     	ldrb	w8, [x19, #0x188]
   13dcc: 51000508     	sub	w8, w8, #0x1
   13dd0: 17ffffbe     	b	0x13cc8 <syna_tcm_get_features+0xe0>
   13dd4: b9420e75     	ldr	w21, [x19, #0x20c]
   13dd8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13ddc: 91000000     	add	x0, x0, #0x0
		0000000000013ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13de0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13de4: 91000021     	add	x1, x1, #0x0
		0000000000013de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13de8: 94000000     	bl	0x13de8 <syna_tcm_get_features+0x200>
		0000000000013de8:  R_AARCH64_CALL26	_printk
   13dec: 17ffff90     	b	0x13c2c <syna_tcm_get_features+0x44>
   13df0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13df4: 91000000     	add	x0, x0, #0x0
		0000000000013df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13df8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   13dfc: 91000021     	add	x1, x1, #0x0
		0000000000013dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13e00: 94000000     	bl	0x13e00 <syna_tcm_get_features+0x218>
		0000000000013e00:  R_AARCH64_CALL26	_printk
   13e04: 39462268     	ldrb	w8, [x19, #0x188]
   13e08: 51000508     	sub	w8, w8, #0x1
   13e0c: 17ffffe5     	b	0x13da0 <syna_tcm_get_features+0x1b8>
