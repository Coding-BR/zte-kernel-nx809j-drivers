
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000030f8 <aw22xxx_set_breath_data>:
    30f8: d503233f     	paciasp
    30fc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    3100: f9000bf5     	str	x21, [sp, #0x10]
    3104: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3108: 910003fd     	mov	x29, sp
    310c: 39402028     	ldrb	w8, [x1, #0x8]
    3110: 90000009     	adrp	x9, 0x3000 <aw22xxx_play+0x84>
		0000000000003110:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2d5
    3114: 91000129     	add	x9, x9, #0x0
		0000000000003114:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2d5
    3118: aa0003f3     	mov	x19, x0
    311c: aa1f03f4     	mov	x20, xzr
    3120: 90000015     	adrp	x21, 0x3000 <aw22xxx_play+0x84>
		0000000000003120:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x2d0
    3124: 910002b5     	add	x21, x21, #0x0
		0000000000003124:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x2d0
    3128: 39000128     	strb	w8, [x9]
    312c: 39402428     	ldrb	w8, [x1, #0x9]
    3130: 39001928     	strb	w8, [x9, #0x6]
    3134: 39402828     	ldrb	w8, [x1, #0xa]
    3138: 39003128     	strb	w8, [x9, #0xc]
    313c: 39402c28     	ldrb	w8, [x1, #0xb]
    3140: 39004928     	strb	w8, [x9, #0x12]
    3144: 39403028     	ldrb	w8, [x1, #0xc]
    3148: 39006128     	strb	w8, [x9, #0x18]
    314c: 39403428     	ldrb	w8, [x1, #0xd]
    3150: 39007928     	strb	w8, [x9, #0x1e]
    3154: 39403828     	ldrb	w8, [x1, #0xe]
    3158: 39009128     	strb	w8, [x9, #0x24]
    315c: 39403c28     	ldrb	w8, [x1, #0xf]
    3160: 3900a928     	strb	w8, [x9, #0x2a]
    3164: 39404028     	ldrb	w8, [x1, #0x10]
    3168: 3900c128     	strb	w8, [x9, #0x30]
    316c: 39404428     	ldrb	w8, [x1, #0x11]
    3170: 3900d928     	strb	w8, [x9, #0x36]
    3174: 39404828     	ldrb	w8, [x1, #0x12]
    3178: 3900f128     	strb	w8, [x9, #0x3c]
    317c: 39404c28     	ldrb	w8, [x1, #0x13]
    3180: 39010928     	strb	w8, [x9, #0x42]
    3184: 39405028     	ldrb	w8, [x1, #0x14]
    3188: 39012128     	strb	w8, [x9, #0x48]
    318c: 39013928     	strb	w8, [x9, #0x4e]
    3190: 39015128     	strb	w8, [x9, #0x54]
    3194: 39405428     	ldrb	w8, [x1, #0x15]
    3198: 39016928     	strb	w8, [x9, #0x5a]
    319c: 39018128     	strb	w8, [x9, #0x60]
    31a0: 39019928     	strb	w8, [x9, #0x66]
    31a4: 39405828     	ldrb	w8, [x1, #0x16]
    31a8: 3901b128     	strb	w8, [x9, #0x6c]
    31ac: 3901c928     	strb	w8, [x9, #0x72]
    31b0: 3901e128     	strb	w8, [x9, #0x78]
    31b4: 39405c28     	ldrb	w8, [x1, #0x17]
    31b8: 3901f928     	strb	w8, [x9, #0x7e]
    31bc: 39021128     	strb	w8, [x9, #0x84]
    31c0: 39022928     	strb	w8, [x9, #0x8a]
    31c4: 90000009     	adrp	x9, 0x3000 <aw22xxx_play+0x84>
		00000000000031c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18738
    31c8: 39406028     	ldrb	w8, [x1, #0x18]
    31cc: 39000128     	strb	w8, [x9]
		00000000000031cc:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x18738
    31d0: 8b1402a8     	add	x8, x21, x20
    31d4: aa1303e0     	mov	x0, x19
    31d8: 39400502     	ldrb	w2, [x8, #0x1]
    31dc: 39400101     	ldrb	w1, [x8]
    31e0: 97fff3a0     	bl	0x60 <aw22xxx_i2c_write>
    31e4: f102629f     	cmp	x20, #0x98
    31e8: 91000a94     	add	x20, x20, #0x2
    31ec: 54ffff23     	b.lo	0x31d0 <aw22xxx_set_breath_data+0xd8>
    31f0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    31f4: f9400bf5     	ldr	x21, [sp, #0x10]
    31f8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    31fc: d50323bf     	autiasp
    3200: d65f03c0     	ret
