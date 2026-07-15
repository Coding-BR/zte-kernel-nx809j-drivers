
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025c84 <tpd_set_display_rotation>:
   25c84: d503233f     	paciasp
   25c88: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25c8c: a90157f6     	stp	x22, x21, [sp, #0x10]
   25c90: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25c94: 910003fd     	mov	x29, sp
   25c98: aa0003f3     	mov	x19, x0
   25c9c: f946dc14     	ldr	x20, [x0, #0xdb8]
   25ca0: 2a0103f6     	mov	w22, w1
   25ca4: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25ca8: 91000000     	add	x0, x0, #0x0
		0000000000025ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   25cac: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25cb0: 91000021     	add	x1, x1, #0x0
		0000000000025cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25cb4: 94000000     	bl	0x25cb4 <tpd_set_display_rotation+0x30>
		0000000000025cb4:  R_AARCH64_CALL26	_printk
   25cb8: b50000f4     	cbnz	x20, 0x25cd4 <tpd_set_display_rotation+0x50>
   25cbc: 128002a0     	mov	w0, #-0x16              // =-22
   25cc0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25cc4: a94157f6     	ldp	x22, x21, [sp, #0x10]
   25cc8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25ccc: d50323bf     	autiasp
   25cd0: d65f03c0     	ret
   25cd4: f9413a89     	ldr	x9, [x20, #0x270]
   25cd8: f9400288     	ldr	x8, [x20]
   25cdc: b940b92a     	ldr	w10, [x9, #0xb8]
   25ce0: 340000aa     	cbz	w10, 0x25cf4 <tpd_set_display_rotation+0x70>
   25ce4: 3942f129     	ldrb	w9, [x9, #0xbc]
   25ce8: 36000069     	tbz	w9, #0x0, 0x25cf4 <tpd_set_display_rotation+0x70>
   25cec: 2a1f03f5     	mov	w21, wzr
   25cf0: 14000002     	b	0x25cf8 <tpd_set_display_rotation+0x74>
   25cf4: b9420d15     	ldr	w21, [x8, #0x20c]
   25cf8: b9001276     	str	w22, [x19, #0x10]
   25cfc: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6755
   25d00: 91000000     	add	x0, x0, #0x0
		0000000000025d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6755
   25d04: b9060a96     	str	w22, [x20, #0x608]
   25d08: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25d0c: 91000021     	add	x1, x1, #0x0
		0000000000025d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25d10: b9401262     	ldr	w2, [x19, #0x10]
   25d14: 94000000     	bl	0x25d14 <tpd_set_display_rotation+0x90>
		0000000000025d14:  R_AARCH64_CALL26	_printk
   25d18: b9457e88     	ldr	w8, [x20, #0x57c]
   25d1c: 7100051f     	cmp	w8, #0x1
   25d20: 54000101     	b.ne	0x25d40 <tpd_set_display_rotation+0xbc>
   25d24: b9401261     	ldr	w1, [x19, #0x10]
   25d28: aa1403e0     	mov	x0, x20
   25d2c: 2a1503e2     	mov	w2, w21
   25d30: 94000000     	bl	0x25d30 <tpd_set_display_rotation+0xac>
		0000000000025d30:  R_AARCH64_CALL26	syna_dev_set_display_rotation
   25d34: 37f807a0     	tbnz	w0, #0x1f, 0x25e28 <tpd_set_display_rotation+0x1a4>
   25d38: b9401260     	ldr	w0, [x19, #0x10]
   25d3c: 17ffffe1     	b	0x25cc0 <tpd_set_display_rotation+0x3c>
   25d40: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb286
   25d44: 91000000     	add	x0, x0, #0x0
		0000000000025d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb286
   25d48: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25d4c: 91000021     	add	x1, x1, #0x0
		0000000000025d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25d50: 2a1f03e2     	mov	w2, wzr
   25d54: 94000000     	bl	0x25d54 <tpd_set_display_rotation+0xd0>
		0000000000025d54:  R_AARCH64_CALL26	_printk
   25d58: 52801900     	mov	w0, #0xc8               // =200
   25d5c: 94000000     	bl	0x25d5c <tpd_set_display_rotation+0xd8>
		0000000000025d5c:  R_AARCH64_CALL26	msleep
   25d60: b9457e88     	ldr	w8, [x20, #0x57c]
   25d64: 7100051f     	cmp	w8, #0x1
   25d68: 54fffde0     	b.eq	0x25d24 <tpd_set_display_rotation+0xa0>
   25d6c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb286
   25d70: 91000000     	add	x0, x0, #0x0
		0000000000025d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb286
   25d74: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25d78: 91000021     	add	x1, x1, #0x0
		0000000000025d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25d7c: 52800022     	mov	w2, #0x1                // =1
   25d80: 94000000     	bl	0x25d80 <tpd_set_display_rotation+0xfc>
		0000000000025d80:  R_AARCH64_CALL26	_printk
   25d84: 52801900     	mov	w0, #0xc8               // =200
   25d88: 94000000     	bl	0x25d88 <tpd_set_display_rotation+0x104>
		0000000000025d88:  R_AARCH64_CALL26	msleep
   25d8c: b9457e88     	ldr	w8, [x20, #0x57c]
   25d90: 7100051f     	cmp	w8, #0x1
   25d94: 54fffc80     	b.eq	0x25d24 <tpd_set_display_rotation+0xa0>
   25d98: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb286
   25d9c: 91000000     	add	x0, x0, #0x0
		0000000000025d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb286
   25da0: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25da4: 91000021     	add	x1, x1, #0x0
		0000000000025da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25da8: 52800042     	mov	w2, #0x2                // =2
   25dac: 94000000     	bl	0x25dac <tpd_set_display_rotation+0x128>
		0000000000025dac:  R_AARCH64_CALL26	_printk
   25db0: 52801900     	mov	w0, #0xc8               // =200
   25db4: 94000000     	bl	0x25db4 <tpd_set_display_rotation+0x130>
		0000000000025db4:  R_AARCH64_CALL26	msleep
   25db8: b9457e88     	ldr	w8, [x20, #0x57c]
   25dbc: 7100051f     	cmp	w8, #0x1
   25dc0: 54fffb20     	b.eq	0x25d24 <tpd_set_display_rotation+0xa0>
   25dc4: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb286
   25dc8: 91000000     	add	x0, x0, #0x0
		0000000000025dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb286
   25dcc: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25dd0: 91000021     	add	x1, x1, #0x0
		0000000000025dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25dd4: 52800062     	mov	w2, #0x3                // =3
   25dd8: 94000000     	bl	0x25dd8 <tpd_set_display_rotation+0x154>
		0000000000025dd8:  R_AARCH64_CALL26	_printk
   25ddc: 52801900     	mov	w0, #0xc8               // =200
   25de0: 94000000     	bl	0x25de0 <tpd_set_display_rotation+0x15c>
		0000000000025de0:  R_AARCH64_CALL26	msleep
   25de4: b9457e88     	ldr	w8, [x20, #0x57c]
   25de8: 7100051f     	cmp	w8, #0x1
   25dec: 54fff9c0     	b.eq	0x25d24 <tpd_set_display_rotation+0xa0>
   25df0: 90000013     	adrp	x19, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25df4: 91000273     	add	x19, x19, #0x0
		0000000000025df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25df8: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb286
   25dfc: 91000000     	add	x0, x0, #0x0
		0000000000025dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb286
   25e00: aa1303e1     	mov	x1, x19
   25e04: 52800082     	mov	w2, #0x4                // =4
   25e08: 94000000     	bl	0x25e08 <tpd_set_display_rotation+0x184>
		0000000000025e08:  R_AARCH64_CALL26	_printk
   25e0c: 52801900     	mov	w0, #0xc8               // =200
   25e10: 94000000     	bl	0x25e10 <tpd_set_display_rotation+0x18c>
		0000000000025e10:  R_AARCH64_CALL26	msleep
   25e14: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78dd
   25e18: 91000000     	add	x0, x0, #0x0
		0000000000025e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78dd
   25e1c: aa1303e1     	mov	x1, x19
   25e20: 94000000     	bl	0x25e20 <tpd_set_display_rotation+0x19c>
		0000000000025e20:  R_AARCH64_CALL26	_printk
   25e24: 17ffffa6     	b	0x25cbc <tpd_set_display_rotation+0x38>
   25e28: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54d4
   25e2c: 91000000     	add	x0, x0, #0x0
		0000000000025e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54d4
   25e30: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x494b
   25e34: 91000021     	add	x1, x1, #0x0
		0000000000025e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x494b
   25e38: 94000000     	bl	0x25e38 <tpd_set_display_rotation+0x1b4>
		0000000000025e38:  R_AARCH64_CALL26	_printk
   25e3c: 17ffffbf     	b	0x25d38 <tpd_set_display_rotation+0xb4>
