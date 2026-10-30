
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d1c <fan_level_set>:
     d1c: d503233f     	paciasp
     d20: d10143ff     	sub	sp, sp, #0x50
     d24: a9027bfd     	stp	x29, x30, [sp, #0x20]
     d28: a90357f6     	stp	x22, x21, [sp, #0x30]
     d2c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     d30: 910083fd     	add	x29, sp, #0x20
     d34: d5384108     	mrs	x8, SP_EL0
     d38: 12001c33     	and	w19, w1, #0xff
     d3c: f9438908     	ldr	x8, [x8, #0x710]
     d40: f81f83a8     	stur	x8, [x29, #-0x8]
     d44: 39400008     	ldrb	w8, [x0]
     d48: 6b13011f     	cmp	w8, w19
     d4c: 54000bc0     	b.eq	0xec4 <fan_level_set+0x1a8>
     d50: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	chip
     d54: aa0003f4     	mov	x20, x0
     d58: f94002c8     	ldr	x8, [x22]
		0000000000000d58:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d5c: f9402515     	ldr	x21, [x8, #0x48]
     d60: 34000273     	cbz	w19, 0xdac <fan_level_set+0x90>
     d64: b40002d5     	cbz	x21, 0xdbc <fan_level_set+0xa0>
     d68: aa1503e0     	mov	x0, x21
     d6c: 94000000     	bl	0xd6c <fan_level_set+0x50>
		0000000000000d6c:  R_AARCH64_CALL26	regulator_is_enabled
     d70: 35000260     	cbnz	w0, 0xdbc <fan_level_set+0xa0>
     d74: aa1503e0     	mov	x0, x21
     d78: 94000000     	bl	0xd78 <fan_level_set+0x5c>
		0000000000000d78:  R_AARCH64_CALL26	regulator_enable
     d7c: 2a0003f5     	mov	w21, w0
     d80: 52800140     	mov	w0, #0xa                // =10
     d84: 94000000     	bl	0xd84 <fan_level_set+0x68>
		0000000000000d84:  R_AARCH64_CALL26	msleep
     d88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a1
     d8c: 91000000     	add	x0, x0, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a1
     d90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     d94: 91000021     	add	x1, x1, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     d98: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf4
     d9c: 91000042     	add	x2, x2, #0x0
		0000000000000d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf4
     da0: 52801da3     	mov	w3, #0xed               // =237
     da4: 2a1503e4     	mov	w4, w21
     da8: 1400006a     	b	0xf50 <fan_level_set+0x234>
     dac: b4000095     	cbz	x21, 0xdbc <fan_level_set+0xa0>
     db0: aa1503e0     	mov	x0, x21
     db4: 94000000     	bl	0xdb4 <fan_level_set+0x98>
		0000000000000db4:  R_AARCH64_CALL26	regulator_is_enabled
     db8: 35000b80     	cbnz	w0, 0xf28 <fan_level_set+0x20c>
     dbc: f9403688     	ldr	x8, [x20, #0x68]
     dc0: 5283e809     	mov	w9, #0x1f40             // =8000
     dc4: 7100027f     	cmp	w19, #0x0
     dc8: 1b097e69     	mul	w9, w19, w9
     dcc: 1a9f07ea     	cset	w10, ne
     dd0: f9402108     	ldr	x8, [x8, #0x40]
     dd4: a900a3e9     	stp	x9, x8, [sp, #0x8]
     dd8: f94002c8     	ldr	x8, [x22]
		0000000000000dd8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ddc: 52938809     	mov	w9, #0x9c40             // =40000
     de0: 390053ea     	strb	w10, [sp, #0x14]
     de4: f9400508     	ldr	x8, [x8, #0x8]
     de8: f90003e9     	str	x9, [sp]
     dec: b9401100     	ldr	w0, [x8, #0x10]
     df0: 94000000     	bl	0xdf0 <fan_level_set+0xd4>
		0000000000000df0:  R_AARCH64_CALL26	gpio_to_desc
     df4: 94000000     	bl	0xdf4 <fan_level_set+0xd8>
		0000000000000df4:  R_AARCH64_CALL26	gpiod_get_raw_value
     df8: 7100167f     	cmp	w19, #0x5
     dfc: 54000241     	b.ne	0xe44 <fan_level_set+0x128>
     e00: 7100041f     	cmp	w0, #0x1
     e04: 540000e1     	b.ne	0xe20 <fan_level_set+0x104>
     e08: f94002c8     	ldr	x8, [x22]
		0000000000000e08:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e0c: f9400508     	ldr	x8, [x8, #0x8]
     e10: b9401100     	ldr	w0, [x8, #0x10]
     e14: 94000000     	bl	0xe14 <fan_level_set+0xf8>
		0000000000000e14:  R_AARCH64_CALL26	gpio_to_desc
     e18: 2a1f03e1     	mov	w1, wzr
     e1c: 94000000     	bl	0xe1c <fan_level_set+0x100>
		0000000000000e1c:  R_AARCH64_CALL26	gpiod_direction_output_raw
     e20: f9403688     	ldr	x8, [x20, #0x68]
     e24: f9402109     	ldr	x9, [x8, #0x40]
     e28: b940290a     	ldr	w10, [x8, #0x28]
     e2c: f9401108     	ldr	x8, [x8, #0x20]
     e30: a900a7ff     	stp	xzr, x9, [sp, #0x8]
     e34: b90013ea     	str	w10, [sp, #0x10]
     e38: f90003e8     	str	x8, [sp]
     e3c: 79002bff     	strh	wzr, [sp, #0x14]
     e40: 14000008     	b	0xe60 <fan_level_set+0x144>
     e44: 350000e0     	cbnz	w0, 0xe60 <fan_level_set+0x144>
     e48: f94002c8     	ldr	x8, [x22]
		0000000000000e48:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e4c: f9400508     	ldr	x8, [x8, #0x8]
     e50: b9401100     	ldr	w0, [x8, #0x10]
     e54: 94000000     	bl	0xe54 <fan_level_set+0x138>
		0000000000000e54:  R_AARCH64_CALL26	gpio_to_desc
     e58: 52800021     	mov	w1, #0x1                // =1
     e5c: 94000000     	bl	0xe5c <fan_level_set+0x140>
		0000000000000e5c:  R_AARCH64_CALL26	gpiod_direction_output_raw
     e60: f9403681     	ldr	x1, [x20, #0x68]
     e64: 910003e2     	mov	x2, sp
     e68: f9400c20     	ldr	x0, [x1, #0x18]
     e6c: f941c808     	ldr	x8, [x0, #0x390]
     e70: f9400d08     	ldr	x8, [x8, #0x18]
     e74: b85fc110     	ldur	w16, [x8, #-0x4]
     e78: 7292fa11     	movk	w17, #0x97d0
     e7c: 72bbba11     	movk	w17, #0xddd0, lsl #16
     e80: 6b11021f     	cmp	w16, w17
     e84: 54000040     	b.eq	0xe8c <fan_level_set+0x170>
     e88: d4304500     	brk	#0x8228
     e8c: d63f0100     	blr	x8
     e90: 37f80300     	tbnz	w0, #0x1f, 0xef0 <fan_level_set+0x1d4>
     e94: 39000293     	strb	w19, [x20]
     e98: d5384108     	mrs	x8, SP_EL0
     e9c: f9438908     	ldr	x8, [x8, #0x710]
     ea0: f85f83a9     	ldur	x9, [x29, #-0x8]
     ea4: eb09011f     	cmp	x8, x9
     ea8: 54000581     	b.ne	0xf58 <fan_level_set+0x23c>
     eac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     eb0: a94357f6     	ldp	x22, x21, [sp, #0x30]
     eb4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     eb8: 910143ff     	add	sp, sp, #0x50
     ebc: d50323bf     	autiasp
     ec0: d65f03c0     	ret
     ec4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa73
     ec8: 91000000     	add	x0, x0, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa73
     ecc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     ed0: 91000021     	add	x1, x1, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     ed4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     ed8: 91000042     	add	x2, x2, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     edc: 52801283     	mov	w3, #0x94               // =148
     ee0: 2a1303e4     	mov	w4, w19
     ee4: 94000000     	bl	0xee4 <fan_level_set+0x1c8>
		0000000000000ee4:  R_AARCH64_CALL26	_printk
     ee8: 2a1f03e0     	mov	w0, wzr
     eec: 17ffffeb     	b	0xe98 <fan_level_set+0x17c>
     ef0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a8
     ef4: 91000108     	add	x8, x8, #0x0
		0000000000000ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a8
     ef8: 2a0003f4     	mov	w20, w0
     efc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     f00: 91000021     	add	x1, x1, #0x0
		0000000000000f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     f04: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     f08: 91000042     	add	x2, x2, #0x0
		0000000000000f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     f0c: aa0803e0     	mov	x0, x8
     f10: 528017e3     	mov	w3, #0xbf               // =191
     f14: 2a1303e4     	mov	w4, w19
     f18: 2a1403e5     	mov	w5, w20
     f1c: 94000000     	bl	0xf1c <fan_level_set+0x200>
		0000000000000f1c:  R_AARCH64_CALL26	_printk
     f20: 2a1403e0     	mov	w0, w20
     f24: 17ffffdd     	b	0xe98 <fan_level_set+0x17c>
     f28: aa1503e0     	mov	x0, x21
     f2c: 94000000     	bl	0xf2c <fan_level_set+0x210>
		0000000000000f2c:  R_AARCH64_CALL26	regulator_disable
     f30: 2a0003e4     	mov	w4, w0
     f34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     f38: 91000000     	add	x0, x0, #0x0
		0000000000000f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     f3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
     f40: 91000021     	add	x1, x1, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
     f44: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf4
     f48: 91000042     	add	x2, x2, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf4
     f4c: 52801ca3     	mov	w3, #0xe5               // =229
     f50: 94000000     	bl	0xf50 <fan_level_set+0x234>
		0000000000000f50:  R_AARCH64_CALL26	_printk
     f54: 17ffff9a     	b	0xdbc <fan_level_set+0xa0>
     f58: 94000000     	bl	0xf58 <fan_level_set+0x23c>
		0000000000000f58:  R_AARCH64_CALL26	__stack_chk_fail
