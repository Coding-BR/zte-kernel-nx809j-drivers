
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002cd4 <aw8693x_upload_lra>:
    2cd4: d503233f     	paciasp
    2cd8: d100c3ff     	sub	sp, sp, #0x30
    2cdc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2ce0: f90013f3     	str	x19, [sp, #0x20]
    2ce4: 910043fd     	add	x29, sp, #0x10
    2ce8: d5384108     	mrs	x8, SP_EL0
    2cec: aa0003f3     	mov	x19, x0
    2cf0: f9438908     	ldr	x8, [x8, #0x710]
    2cf4: 7100083f     	cmp	w1, #0x2
    2cf8: f90007e8     	str	x8, [sp, #0x8]
    2cfc: 390013ff     	strb	wzr, [sp, #0x4]
    2d00: 540002e0     	b.eq	0x2d5c <aw8693x_upload_lra+0x88>
    2d04: 7100043f     	cmp	w1, #0x1
    2d08: 54000160     	b.eq	0x2d34 <aw8693x_upload_lra+0x60>
    2d0c: 350003e1     	cbnz	w1, 0x2d88 <aw8693x_upload_lra+0xb4>
    2d10: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f33
    2d14: 91000000     	add	x0, x0, #0x0
		0000000000002d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f33
    2d18: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2d1c: 91000021     	add	x1, x1, #0x0
		0000000000002d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2d20: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696
    2d24: 91000063     	add	x3, x3, #0x0
		0000000000002d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696
    2d28: 528057e2     	mov	w2, #0x2bf              // =703
    2d2c: 94000000     	bl	0x2d2c <aw8693x_upload_lra+0x58>
		0000000000002d2c:  R_AARCH64_CALL26	_printk
    2d30: 14000021     	b	0x2db4 <aw8693x_upload_lra+0xe0>
    2d34: b9408a64     	ldr	w4, [x19, #0x88]
    2d38: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a9
    2d3c: 91000000     	add	x0, x0, #0x0
		0000000000002d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a9
    2d40: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2d44: 91000021     	add	x1, x1, #0x0
		0000000000002d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2d48: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696
    2d4c: 91000063     	add	x3, x3, #0x0
		0000000000002d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696
    2d50: 52805842     	mov	w2, #0x2c2              // =706
    2d54: 94000000     	bl	0x2d54 <aw8693x_upload_lra+0x80>
		0000000000002d54:  R_AARCH64_CALL26	_printk
    2d58: 14000014     	b	0x2da8 <aw8693x_upload_lra+0xd4>
    2d5c: b9409a64     	ldr	w4, [x19, #0x98]
    2d60: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1500
    2d64: 91000000     	add	x0, x0, #0x0
		0000000000002d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1500
    2d68: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2d6c: 91000021     	add	x1, x1, #0x0
		0000000000002d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2d70: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696
    2d74: 91000063     	add	x3, x3, #0x0
		0000000000002d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696
    2d78: 528058c2     	mov	w2, #0x2c6              // =710
    2d7c: 94000000     	bl	0x2d7c <aw8693x_upload_lra+0xa8>
		0000000000002d7c:  R_AARCH64_CALL26	_printk
    2d80: 39426268     	ldrb	w8, [x19, #0x98]
    2d84: 1400000a     	b	0x2dac <aw8693x_upload_lra+0xd8>
    2d88: 90000000     	adrp	x0, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfc
    2d8c: 91000000     	add	x0, x0, #0x0
		0000000000002d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfc
    2d90: 90000001     	adrp	x1, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    2d94: 91000021     	add	x1, x1, #0x0
		0000000000002d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    2d98: 90000003     	adrp	x3, 0x2000 <aw8693x_parse_dt+0xa0>
		0000000000002d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x696
    2d9c: 91000063     	add	x3, x3, #0x0
		0000000000002d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x696
    2da0: 52805942     	mov	w2, #0x2ca              // =714
    2da4: 94000000     	bl	0x2da4 <aw8693x_upload_lra+0xd0>
		0000000000002da4:  R_AARCH64_CALL26	_printk
    2da8: 39422268     	ldrb	w8, [x19, #0x88]
    2dac: 12001908     	and	w8, w8, #0x7f
    2db0: 390013e8     	strb	w8, [sp, #0x4]
    2db4: 910013e2     	add	x2, sp, #0x4
    2db8: aa1303e0     	mov	x0, x19
    2dbc: 52800ba1     	mov	w1, #0x5d               // =93
    2dc0: 52800023     	mov	w3, #0x1                // =1
    2dc4: 94000000     	bl	0x2dc4 <aw8693x_upload_lra+0xf0>
		0000000000002dc4:  R_AARCH64_CALL26	i2c_w_bytes
    2dc8: d5384108     	mrs	x8, SP_EL0
    2dcc: f9438908     	ldr	x8, [x8, #0x710]
    2dd0: f94007e9     	ldr	x9, [sp, #0x8]
    2dd4: eb09011f     	cmp	x8, x9
    2dd8: 540000c1     	b.ne	0x2df0 <aw8693x_upload_lra+0x11c>
    2ddc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2de0: f94013f3     	ldr	x19, [sp, #0x20]
    2de4: 9100c3ff     	add	sp, sp, #0x30
    2de8: d50323bf     	autiasp
    2dec: d65f03c0     	ret
    2df0: 94000000     	bl	0x2df0 <aw8693x_upload_lra+0x11c>
		0000000000002df0:  R_AARCH64_CALL26	__stack_chk_fail
