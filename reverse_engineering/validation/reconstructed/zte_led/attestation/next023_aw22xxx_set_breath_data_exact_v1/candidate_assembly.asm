
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c44 <aw22xxx_set_breath_data>:
     c44: d503233f     	paciasp
     c48: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     c4c: f9000bf5     	str	x21, [sp, #0x10]
     c50: a9024ff4     	stp	x20, x19, [sp, #0x20]
     c54: 910003fd     	mov	x29, sp
     c58: 39402028     	ldrb	w8, [x1, #0x8]
     c5c: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x3f
     c60: 91000129     	add	x9, x9, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x3f
     c64: aa0003f3     	mov	x19, x0
     c68: aa1f03f4     	mov	x20, xzr
     c6c: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_blink_cfg
     c70: 910002b5     	add	x21, x21, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_blink_cfg
     c74: 39000128     	strb	w8, [x9]
     c78: 39402428     	ldrb	w8, [x1, #0x9]
     c7c: 39001928     	strb	w8, [x9, #0x6]
     c80: 39402828     	ldrb	w8, [x1, #0xa]
     c84: 39003128     	strb	w8, [x9, #0xc]
     c88: 39402c28     	ldrb	w8, [x1, #0xb]
     c8c: 39004928     	strb	w8, [x9, #0x12]
     c90: 39403028     	ldrb	w8, [x1, #0xc]
     c94: 39006128     	strb	w8, [x9, #0x18]
     c98: 39403428     	ldrb	w8, [x1, #0xd]
     c9c: 39007928     	strb	w8, [x9, #0x1e]
     ca0: 39403828     	ldrb	w8, [x1, #0xe]
     ca4: 39009128     	strb	w8, [x9, #0x24]
     ca8: 39403c28     	ldrb	w8, [x1, #0xf]
     cac: 3900a928     	strb	w8, [x9, #0x2a]
     cb0: 39404028     	ldrb	w8, [x1, #0x10]
     cb4: 3900c128     	strb	w8, [x9, #0x30]
     cb8: 39404428     	ldrb	w8, [x1, #0x11]
     cbc: 3900d928     	strb	w8, [x9, #0x36]
     cc0: 39404828     	ldrb	w8, [x1, #0x12]
     cc4: 3900f128     	strb	w8, [x9, #0x3c]
     cc8: 39404c28     	ldrb	w8, [x1, #0x13]
     ccc: 39010928     	strb	w8, [x9, #0x42]
     cd0: 39405028     	ldrb	w8, [x1, #0x14]
     cd4: 39012128     	strb	w8, [x9, #0x48]
     cd8: 39013928     	strb	w8, [x9, #0x4e]
     cdc: 39015128     	strb	w8, [x9, #0x54]
     ce0: 39405428     	ldrb	w8, [x1, #0x15]
     ce4: 39016928     	strb	w8, [x9, #0x5a]
     ce8: 39018128     	strb	w8, [x9, #0x60]
     cec: 39019928     	strb	w8, [x9, #0x66]
     cf0: 39405828     	ldrb	w8, [x1, #0x16]
     cf4: 3901b128     	strb	w8, [x9, #0x6c]
     cf8: 3901c928     	strb	w8, [x9, #0x72]
     cfc: 3901e128     	strb	w8, [x9, #0x78]
     d00: 39405c28     	ldrb	w8, [x1, #0x17]
     d04: 3901f928     	strb	w8, [x9, #0x7e]
     d08: 39021128     	strb	w8, [x9, #0x84]
     d0c: 39022928     	strb	w8, [x9, #0x8a]
     d10: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	duration
     d14: 39406028     	ldrb	w8, [x1, #0x18]
     d18: 39000128     	strb	w8, [x9]
		0000000000000d18:  R_AARCH64_LDST8_ABS_LO12_NC	duration
     d1c: 8b1402a8     	add	x8, x21, x20
     d20: aa1303e0     	mov	x0, x19
     d24: 39400502     	ldrb	w2, [x8, #0x1]
     d28: 39400101     	ldrb	w1, [x8]
     d2c: 94000000     	bl	0xd2c <aw22xxx_set_breath_data+0xe8>
		0000000000000d2c:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d30: f1024a9f     	cmp	x20, #0x92
     d34: 91000a94     	add	x20, x20, #0x2
     d38: 54ffff23     	b.lo	0xd1c <aw22xxx_set_breath_data+0xd8>
     d3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d40: f9400bf5     	ldr	x21, [sp, #0x10]
     d44: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     d48: d50323bf     	autiasp
     d4c: d65f03c0     	ret
