
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d94 <fan_level_set>:
     d94: d503233f     	paciasp
     d98: d10143ff     	sub	sp, sp, #0x50
     d9c: a9027bfd     	stp	x29, x30, [sp, #0x20]
     da0: a90357f6     	stp	x22, x21, [sp, #0x30]
     da4: a9044ff4     	stp	x20, x19, [sp, #0x40]
     da8: 910083fd     	add	x29, sp, #0x20
     dac: d5384108     	mrs	x8, SP_EL0
     db0: 12001c33     	and	w19, w1, #0xff
     db4: f9438908     	ldr	x8, [x8, #0x710]
     db8: f81f83a8     	stur	x8, [x29, #-0x8]
     dbc: 39400008     	ldrb	w8, [x0]
     dc0: 6b13011f     	cmp	w8, w19
     dc4: 54000bc0     	b.eq	0xf3c <fan_level_set+0x1a8>
     dc8: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	chip
     dcc: aa0003f4     	mov	x20, x0
     dd0: f94002c8     	ldr	x8, [x22]
		0000000000000dd0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     dd4: f9402515     	ldr	x21, [x8, #0x48]
     dd8: 34000273     	cbz	w19, 0xe24 <fan_level_set+0x90>
     ddc: b40002d5     	cbz	x21, 0xe34 <fan_level_set+0xa0>
     de0: aa1503e0     	mov	x0, x21
     de4: 94000000     	bl	0xde4 <fan_level_set+0x50>
		0000000000000de4:  R_AARCH64_CALL26	regulator_is_enabled
     de8: 35000260     	cbnz	w0, 0xe34 <fan_level_set+0xa0>
     dec: aa1503e0     	mov	x0, x21
     df0: 94000000     	bl	0xdf0 <fan_level_set+0x5c>
		0000000000000df0:  R_AARCH64_CALL26	regulator_enable
     df4: 2a0003f5     	mov	w21, w0
     df8: 52800140     	mov	w0, #0xa                // =10
     dfc: 94000000     	bl	0xdfc <fan_level_set+0x68>
		0000000000000dfc:  R_AARCH64_CALL26	msleep
     e00: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0c
     e04: 91000000     	add	x0, x0, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0c
     e08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     e0c: 91000021     	add	x1, x1, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     e10: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
     e14: 91000042     	add	x2, x2, #0x0
		0000000000000e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
     e18: 52801da3     	mov	w3, #0xed               // =237
     e1c: 2a1503e4     	mov	w4, w21
     e20: 1400006a     	b	0xfc8 <fan_level_set+0x234>
     e24: b4000095     	cbz	x21, 0xe34 <fan_level_set+0xa0>
     e28: aa1503e0     	mov	x0, x21
     e2c: 94000000     	bl	0xe2c <fan_level_set+0x98>
		0000000000000e2c:  R_AARCH64_CALL26	regulator_is_enabled
     e30: 35000b80     	cbnz	w0, 0xfa0 <fan_level_set+0x20c>
     e34: f9403688     	ldr	x8, [x20, #0x68]
     e38: 5283e809     	mov	w9, #0x1f40             // =8000
     e3c: 7100027f     	cmp	w19, #0x0
     e40: 1b097e69     	mul	w9, w19, w9
     e44: 1a9f07ea     	cset	w10, ne
     e48: f9402108     	ldr	x8, [x8, #0x40]
     e4c: a900a3e9     	stp	x9, x8, [sp, #0x8]
     e50: f94002c8     	ldr	x8, [x22]
		0000000000000e50:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e54: 52938809     	mov	w9, #0x9c40             // =40000
     e58: 390053ea     	strb	w10, [sp, #0x14]
     e5c: f9400508     	ldr	x8, [x8, #0x8]
     e60: f90003e9     	str	x9, [sp]
     e64: b9401100     	ldr	w0, [x8, #0x10]
     e68: 94000000     	bl	0xe68 <fan_level_set+0xd4>
		0000000000000e68:  R_AARCH64_CALL26	gpio_to_desc
     e6c: 94000000     	bl	0xe6c <fan_level_set+0xd8>
		0000000000000e6c:  R_AARCH64_CALL26	gpiod_get_raw_value
     e70: 7100167f     	cmp	w19, #0x5
     e74: 54000241     	b.ne	0xebc <fan_level_set+0x128>
     e78: 7100041f     	cmp	w0, #0x1
     e7c: 540000e1     	b.ne	0xe98 <fan_level_set+0x104>
     e80: f94002c8     	ldr	x8, [x22]
		0000000000000e80:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e84: f9400508     	ldr	x8, [x8, #0x8]
     e88: b9401100     	ldr	w0, [x8, #0x10]
     e8c: 94000000     	bl	0xe8c <fan_level_set+0xf8>
		0000000000000e8c:  R_AARCH64_CALL26	gpio_to_desc
     e90: 2a1f03e1     	mov	w1, wzr
     e94: 94000000     	bl	0xe94 <fan_level_set+0x100>
		0000000000000e94:  R_AARCH64_CALL26	gpiod_direction_output_raw
     e98: f9403688     	ldr	x8, [x20, #0x68]
     e9c: f9402109     	ldr	x9, [x8, #0x40]
     ea0: b940290a     	ldr	w10, [x8, #0x28]
     ea4: f9401108     	ldr	x8, [x8, #0x20]
     ea8: a900a7ff     	stp	xzr, x9, [sp, #0x8]
     eac: b90013ea     	str	w10, [sp, #0x10]
     eb0: f90003e8     	str	x8, [sp]
     eb4: 79002bff     	strh	wzr, [sp, #0x14]
     eb8: 14000008     	b	0xed8 <fan_level_set+0x144>
     ebc: 350000e0     	cbnz	w0, 0xed8 <fan_level_set+0x144>
     ec0: f94002c8     	ldr	x8, [x22]
		0000000000000ec0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ec4: f9400508     	ldr	x8, [x8, #0x8]
     ec8: b9401100     	ldr	w0, [x8, #0x10]
     ecc: 94000000     	bl	0xecc <fan_level_set+0x138>
		0000000000000ecc:  R_AARCH64_CALL26	gpio_to_desc
     ed0: 52800021     	mov	w1, #0x1                // =1
     ed4: 94000000     	bl	0xed4 <fan_level_set+0x140>
		0000000000000ed4:  R_AARCH64_CALL26	gpiod_direction_output_raw
     ed8: f9403681     	ldr	x1, [x20, #0x68]
     edc: 910003e2     	mov	x2, sp
     ee0: f9400c20     	ldr	x0, [x1, #0x18]
     ee4: f941c808     	ldr	x8, [x0, #0x390]
     ee8: f9400d08     	ldr	x8, [x8, #0x18]
     eec: b85fc110     	ldur	w16, [x8, #-0x4]
     ef0: 7292fa11     	movk	w17, #0x97d0
     ef4: 72bbba11     	movk	w17, #0xddd0, lsl #16
     ef8: 6b11021f     	cmp	w16, w17
     efc: 54000040     	b.eq	0xf04 <fan_level_set+0x170>
     f00: d4304500     	brk	#0x8228
     f04: d63f0100     	blr	x8
     f08: 37f80300     	tbnz	w0, #0x1f, 0xf68 <fan_level_set+0x1d4>
     f0c: 39000293     	strb	w19, [x20]
     f10: d5384108     	mrs	x8, SP_EL0
     f14: f9438908     	ldr	x8, [x8, #0x710]
     f18: f85f83a9     	ldur	x9, [x29, #-0x8]
     f1c: eb09011f     	cmp	x8, x9
     f20: 54000581     	b.ne	0xfd0 <fan_level_set+0x23c>
     f24: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     f28: a94357f6     	ldp	x22, x21, [sp, #0x30]
     f2c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     f30: 910143ff     	add	sp, sp, #0x50
     f34: d50323bf     	autiasp
     f38: d65f03c0     	ret
     f3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa71
     f40: 91000000     	add	x0, x0, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa71
     f44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     f48: 91000021     	add	x1, x1, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     f4c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     f50: 91000042     	add	x2, x2, #0x0
		0000000000000f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     f54: 52801283     	mov	w3, #0x94               // =148
     f58: 2a1303e4     	mov	w4, w19
     f5c: 94000000     	bl	0xf5c <fan_level_set+0x1c8>
		0000000000000f5c:  R_AARCH64_CALL26	_printk
     f60: 2a1f03e0     	mov	w0, wzr
     f64: 17ffffeb     	b	0xf10 <fan_level_set+0x17c>
     f68: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b8
     f6c: 91000108     	add	x8, x8, #0x0
		0000000000000f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b8
     f70: 2a0003f4     	mov	w20, w0
     f74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     f78: 91000021     	add	x1, x1, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     f7c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e
     f80: 91000042     	add	x2, x2, #0x0
		0000000000000f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e
     f84: aa0803e0     	mov	x0, x8
     f88: 528017e3     	mov	w3, #0xbf               // =191
     f8c: 2a1303e4     	mov	w4, w19
     f90: 2a1403e5     	mov	w5, w20
     f94: 94000000     	bl	0xf94 <fan_level_set+0x200>
		0000000000000f94:  R_AARCH64_CALL26	_printk
     f98: 2a1403e0     	mov	w0, w20
     f9c: 17ffffdd     	b	0xf10 <fan_level_set+0x17c>
     fa0: aa1503e0     	mov	x0, x21
     fa4: 94000000     	bl	0xfa4 <fan_level_set+0x210>
		0000000000000fa4:  R_AARCH64_CALL26	regulator_disable
     fa8: 2a0003e4     	mov	w4, w0
     fac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     fb0: 91000000     	add	x0, x0, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     fb4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     fb8: 91000021     	add	x1, x1, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     fbc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
     fc0: 91000042     	add	x2, x2, #0x0
		0000000000000fc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
     fc4: 52801ca3     	mov	w3, #0xe5               // =229
     fc8: 94000000     	bl	0xfc8 <fan_level_set+0x234>
		0000000000000fc8:  R_AARCH64_CALL26	_printk
     fcc: 17ffff9a     	b	0xe34 <fan_level_set+0xa0>
     fd0: 94000000     	bl	0xfd0 <fan_level_set+0x23c>
		0000000000000fd0:  R_AARCH64_CALL26	__stack_chk_fail
