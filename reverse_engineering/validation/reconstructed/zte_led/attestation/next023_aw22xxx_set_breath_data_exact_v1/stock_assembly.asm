
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <aw22xxx_set_breath_data>:
       4: d503233f     	paciasp
       8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       c: f9000bf5     	str	x21, [sp, #0x10]
      10: a9024ff4     	stp	x20, x19, [sp, #0x20]
      14: 910003fd     	mov	x29, sp
      18: 39402028     	ldrb	w8, [x1, #0x8]
      1c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000001c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x3f
      20: 91000129     	add	x9, x9, #0x0
		0000000000000020:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x3f
      24: aa0003f3     	mov	x19, x0
      28: aa1f03f4     	mov	x20, xzr
      2c: 90000015     	adrp	x21, 0x0 <.text>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
      30: 910002b5     	add	x21, x21, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
      34: 39000128     	strb	w8, [x9]
      38: 39402428     	ldrb	w8, [x1, #0x9]
      3c: 39001928     	strb	w8, [x9, #0x6]
      40: 39402828     	ldrb	w8, [x1, #0xa]
      44: 39003128     	strb	w8, [x9, #0xc]
      48: 39402c28     	ldrb	w8, [x1, #0xb]
      4c: 39004928     	strb	w8, [x9, #0x12]
      50: 39403028     	ldrb	w8, [x1, #0xc]
      54: 39006128     	strb	w8, [x9, #0x18]
      58: 39403428     	ldrb	w8, [x1, #0xd]
      5c: 39007928     	strb	w8, [x9, #0x1e]
      60: 39403828     	ldrb	w8, [x1, #0xe]
      64: 39009128     	strb	w8, [x9, #0x24]
      68: 39403c28     	ldrb	w8, [x1, #0xf]
      6c: 3900a928     	strb	w8, [x9, #0x2a]
      70: 39404028     	ldrb	w8, [x1, #0x10]
      74: 3900c128     	strb	w8, [x9, #0x30]
      78: 39404428     	ldrb	w8, [x1, #0x11]
      7c: 3900d928     	strb	w8, [x9, #0x36]
      80: 39404828     	ldrb	w8, [x1, #0x12]
      84: 3900f128     	strb	w8, [x9, #0x3c]
      88: 39404c28     	ldrb	w8, [x1, #0x13]
      8c: 39010928     	strb	w8, [x9, #0x42]
      90: 39405028     	ldrb	w8, [x1, #0x14]
      94: 39012128     	strb	w8, [x9, #0x48]
      98: 39013928     	strb	w8, [x9, #0x4e]
      9c: 39015128     	strb	w8, [x9, #0x54]
      a0: 39405428     	ldrb	w8, [x1, #0x15]
      a4: 39016928     	strb	w8, [x9, #0x5a]
      a8: 39018128     	strb	w8, [x9, #0x60]
      ac: 39019928     	strb	w8, [x9, #0x66]
      b0: 39405828     	ldrb	w8, [x1, #0x16]
      b4: 3901b128     	strb	w8, [x9, #0x6c]
      b8: 3901c928     	strb	w8, [x9, #0x72]
      bc: 3901e128     	strb	w8, [x9, #0x78]
      c0: 39405c28     	ldrb	w8, [x1, #0x17]
      c4: 3901f928     	strb	w8, [x9, #0x7e]
      c8: 39021128     	strb	w8, [x9, #0x84]
      cc: 39022928     	strb	w8, [x9, #0x8a]
      d0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x4
      d4: 39406028     	ldrb	w8, [x1, #0x18]
      d8: 39000128     	strb	w8, [x9]
		00000000000000d8:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x4
      dc: 8b1402a8     	add	x8, x21, x20
      e0: aa1303e0     	mov	x0, x19
      e4: 39400502     	ldrb	w2, [x8, #0x1]
      e8: 39400101     	ldrb	w1, [x8]
      ec: 940000cc     	bl	0x41c <aw22xxx_i2c_write>
      f0: f1024a9f     	cmp	x20, #0x92
      f4: 91000a94     	add	x20, x20, #0x2
      f8: 54ffff23     	b.lo	0xdc <aw22xxx_set_breath_data+0xd8>
      fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     100: f9400bf5     	ldr	x21, [sp, #0x10]
     104: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     108: d50323bf     	autiasp
     10c: d65f03c0     	ret
