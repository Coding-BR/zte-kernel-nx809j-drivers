
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d94 <aw22xxx_set_breath_data>:
     d94: d503233f     	paciasp
     d98: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     d9c: f9000bf5     	str	x21, [sp, #0x10]
     da0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     da4: 910003fd     	mov	x29, sp
     da8: 39402028     	ldrb	w8, [x1, #0x8]
     dac: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000dac:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x3f
     db0: 91000129     	add	x9, x9, #0x0
		0000000000000db0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x3f
     db4: aa0003f3     	mov	x19, x0
     db8: aa1f03f4     	mov	x20, xzr
     dbc: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_blink_cfg
     dc0: 910002b5     	add	x21, x21, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_blink_cfg
     dc4: 39000128     	strb	w8, [x9]
     dc8: 39402428     	ldrb	w8, [x1, #0x9]
     dcc: 39001928     	strb	w8, [x9, #0x6]
     dd0: 39402828     	ldrb	w8, [x1, #0xa]
     dd4: 39003128     	strb	w8, [x9, #0xc]
     dd8: 39402c28     	ldrb	w8, [x1, #0xb]
     ddc: 39004928     	strb	w8, [x9, #0x12]
     de0: 39403028     	ldrb	w8, [x1, #0xc]
     de4: 39006128     	strb	w8, [x9, #0x18]
     de8: 39403428     	ldrb	w8, [x1, #0xd]
     dec: 39007928     	strb	w8, [x9, #0x1e]
     df0: 39403828     	ldrb	w8, [x1, #0xe]
     df4: 39009128     	strb	w8, [x9, #0x24]
     df8: 39403c28     	ldrb	w8, [x1, #0xf]
     dfc: 3900a928     	strb	w8, [x9, #0x2a]
     e00: 39404028     	ldrb	w8, [x1, #0x10]
     e04: 3900c128     	strb	w8, [x9, #0x30]
     e08: 39404428     	ldrb	w8, [x1, #0x11]
     e0c: 3900d928     	strb	w8, [x9, #0x36]
     e10: 39404828     	ldrb	w8, [x1, #0x12]
     e14: 3900f128     	strb	w8, [x9, #0x3c]
     e18: 39404c28     	ldrb	w8, [x1, #0x13]
     e1c: 39010928     	strb	w8, [x9, #0x42]
     e20: 39405028     	ldrb	w8, [x1, #0x14]
     e24: 39012128     	strb	w8, [x9, #0x48]
     e28: 39013928     	strb	w8, [x9, #0x4e]
     e2c: 39015128     	strb	w8, [x9, #0x54]
     e30: 39405428     	ldrb	w8, [x1, #0x15]
     e34: 39016928     	strb	w8, [x9, #0x5a]
     e38: 39018128     	strb	w8, [x9, #0x60]
     e3c: 39019928     	strb	w8, [x9, #0x66]
     e40: 39405828     	ldrb	w8, [x1, #0x16]
     e44: 3901b128     	strb	w8, [x9, #0x6c]
     e48: 3901c928     	strb	w8, [x9, #0x72]
     e4c: 3901e128     	strb	w8, [x9, #0x78]
     e50: 39405c28     	ldrb	w8, [x1, #0x17]
     e54: 3901f928     	strb	w8, [x9, #0x7e]
     e58: 39021128     	strb	w8, [x9, #0x84]
     e5c: 39022928     	strb	w8, [x9, #0x8a]
     e60: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	duration
     e64: 39406028     	ldrb	w8, [x1, #0x18]
     e68: 39000128     	strb	w8, [x9]
		0000000000000e68:  R_AARCH64_LDST8_ABS_LO12_NC	duration
     e6c: 8b1402a8     	add	x8, x21, x20
     e70: aa1303e0     	mov	x0, x19
     e74: 39400502     	ldrb	w2, [x8, #0x1]
     e78: 39400101     	ldrb	w1, [x8]
     e7c: 94000000     	bl	0xe7c <aw22xxx_set_breath_data+0xe8>
		0000000000000e7c:  R_AARCH64_CALL26	aw22xxx_i2c_write
     e80: f1024a9f     	cmp	x20, #0x92
     e84: 91000a94     	add	x20, x20, #0x2
     e88: 54ffff23     	b.lo	0xe6c <aw22xxx_set_breath_data+0xd8>
     e8c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     e90: f9400bf5     	ldr	x21, [sp, #0x10]
     e94: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     e98: d50323bf     	autiasp
     e9c: d65f03c0     	ret
