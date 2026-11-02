
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007f4 <fan_level_set>:
     7f4: d503233f     	paciasp
     7f8: d10143ff     	sub	sp, sp, #0x50
     7fc: a9027bfd     	stp	x29, x30, [sp, #0x20]
     800: a90357f6     	stp	x22, x21, [sp, #0x30]
     804: a9044ff4     	stp	x20, x19, [sp, #0x40]
     808: 910083fd     	add	x29, sp, #0x20
     80c: d5384108     	mrs	x8, SP_EL0
     810: 12001c33     	and	w19, w1, #0xff
     814: f9438908     	ldr	x8, [x8, #0x710]
     818: f81f83a8     	stur	x8, [x29, #-0x8]
     81c: 39400008     	ldrb	w8, [x0]
     820: 6b13011f     	cmp	w8, w19
     824: 54000bc0     	b.eq	0x99c <fan_level_set+0x1a8>
     828: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	chip
     82c: aa0003f4     	mov	x20, x0
     830: f94002c8     	ldr	x8, [x22]
		0000000000000830:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     834: f9402515     	ldr	x21, [x8, #0x48]
     838: 34000273     	cbz	w19, 0x884 <fan_level_set+0x90>
     83c: b40002d5     	cbz	x21, 0x894 <fan_level_set+0xa0>
     840: aa1503e0     	mov	x0, x21
     844: 94000000     	bl	0x844 <fan_level_set+0x50>
		0000000000000844:  R_AARCH64_CALL26	regulator_is_enabled
     848: 35000260     	cbnz	w0, 0x894 <fan_level_set+0xa0>
     84c: aa1503e0     	mov	x0, x21
     850: 94000000     	bl	0x850 <fan_level_set+0x5c>
		0000000000000850:  R_AARCH64_CALL26	regulator_enable
     854: 2a0003f5     	mov	w21, w0
     858: 52800140     	mov	w0, #0xa                // =10
     85c: 94000000     	bl	0x85c <fan_level_set+0x68>
		000000000000085c:  R_AARCH64_CALL26	msleep
     860: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3
     864: 91000000     	add	x0, x0, #0x0
		0000000000000864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3
     868: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     86c: 91000021     	add	x1, x1, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     870: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b7
     874: 91000042     	add	x2, x2, #0x0
		0000000000000874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b7
     878: 52801da3     	mov	w3, #0xed               // =237
     87c: 2a1503e4     	mov	w4, w21
     880: 1400006a     	b	0xa28 <fan_level_set+0x234>
     884: b4000095     	cbz	x21, 0x894 <fan_level_set+0xa0>
     888: aa1503e0     	mov	x0, x21
     88c: 94000000     	bl	0x88c <fan_level_set+0x98>
		000000000000088c:  R_AARCH64_CALL26	regulator_is_enabled
     890: 35000b80     	cbnz	w0, 0xa00 <fan_level_set+0x20c>
     894: f9403688     	ldr	x8, [x20, #0x68]
     898: 5283e809     	mov	w9, #0x1f40             // =8000
     89c: 7100027f     	cmp	w19, #0x0
     8a0: 1b097e69     	mul	w9, w19, w9
     8a4: 1a9f07ea     	cset	w10, ne
     8a8: f9402108     	ldr	x8, [x8, #0x40]
     8ac: a900a3e9     	stp	x9, x8, [sp, #0x8]
     8b0: f94002c8     	ldr	x8, [x22]
		00000000000008b0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8b4: 52938809     	mov	w9, #0x9c40             // =40000
     8b8: 390053ea     	strb	w10, [sp, #0x14]
     8bc: f9400508     	ldr	x8, [x8, #0x8]
     8c0: f90003e9     	str	x9, [sp]
     8c4: b9401100     	ldr	w0, [x8, #0x10]
     8c8: 94000000     	bl	0x8c8 <fan_level_set+0xd4>
		00000000000008c8:  R_AARCH64_CALL26	gpio_to_desc
     8cc: 94000000     	bl	0x8cc <fan_level_set+0xd8>
		00000000000008cc:  R_AARCH64_CALL26	gpiod_get_raw_value
     8d0: 7100167f     	cmp	w19, #0x5
     8d4: 54000241     	b.ne	0x91c <fan_level_set+0x128>
     8d8: 7100041f     	cmp	w0, #0x1
     8dc: 540000e1     	b.ne	0x8f8 <fan_level_set+0x104>
     8e0: f94002c8     	ldr	x8, [x22]
		00000000000008e0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     8e4: f9400508     	ldr	x8, [x8, #0x8]
     8e8: b9401100     	ldr	w0, [x8, #0x10]
     8ec: 94000000     	bl	0x8ec <fan_level_set+0xf8>
		00000000000008ec:  R_AARCH64_CALL26	gpio_to_desc
     8f0: 2a1f03e1     	mov	w1, wzr
     8f4: 94000000     	bl	0x8f4 <fan_level_set+0x100>
		00000000000008f4:  R_AARCH64_CALL26	gpiod_direction_output_raw
     8f8: f9403688     	ldr	x8, [x20, #0x68]
     8fc: f9402109     	ldr	x9, [x8, #0x40]
     900: b940290a     	ldr	w10, [x8, #0x28]
     904: f9401108     	ldr	x8, [x8, #0x20]
     908: a900a7ff     	stp	xzr, x9, [sp, #0x8]
     90c: b90013ea     	str	w10, [sp, #0x10]
     910: f90003e8     	str	x8, [sp]
     914: 79002bff     	strh	wzr, [sp, #0x14]
     918: 14000008     	b	0x938 <fan_level_set+0x144>
     91c: 350000e0     	cbnz	w0, 0x938 <fan_level_set+0x144>
     920: f94002c8     	ldr	x8, [x22]
		0000000000000920:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     924: f9400508     	ldr	x8, [x8, #0x8]
     928: b9401100     	ldr	w0, [x8, #0x10]
     92c: 94000000     	bl	0x92c <fan_level_set+0x138>
		000000000000092c:  R_AARCH64_CALL26	gpio_to_desc
     930: 52800021     	mov	w1, #0x1                // =1
     934: 94000000     	bl	0x934 <fan_level_set+0x140>
		0000000000000934:  R_AARCH64_CALL26	gpiod_direction_output_raw
     938: f9403681     	ldr	x1, [x20, #0x68]
     93c: 910003e2     	mov	x2, sp
     940: f9400c20     	ldr	x0, [x1, #0x18]
     944: f941c808     	ldr	x8, [x0, #0x390]
     948: f9400d08     	ldr	x8, [x8, #0x18]
     94c: b85fc110     	ldur	w16, [x8, #-0x4]
     950: 7292fa11     	movk	w17, #0x97d0
     954: 72bbba11     	movk	w17, #0xddd0, lsl #16
     958: 6b11021f     	cmp	w16, w17
     95c: 54000040     	b.eq	0x964 <fan_level_set+0x170>
     960: d4304500     	brk	#0x8228
     964: d63f0100     	blr	x8
     968: 37f80300     	tbnz	w0, #0x1f, 0x9c8 <fan_level_set+0x1d4>
     96c: 39000293     	strb	w19, [x20]
     970: d5384108     	mrs	x8, SP_EL0
     974: f9438908     	ldr	x8, [x8, #0x710]
     978: f85f83a9     	ldur	x9, [x29, #-0x8]
     97c: eb09011f     	cmp	x8, x9
     980: 54000581     	b.ne	0xa30 <fan_level_set+0x23c>
     984: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     988: a94357f6     	ldp	x22, x21, [sp, #0x30]
     98c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     990: 910143ff     	add	sp, sp, #0x50
     994: d50323bf     	autiasp
     998: d65f03c0     	ret
     99c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x685
     9a0: 91000000     	add	x0, x0, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x685
     9a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     9a8: 91000021     	add	x1, x1, #0x0
		00000000000009a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     9ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
     9b0: 91000042     	add	x2, x2, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
     9b4: 52801283     	mov	w3, #0x94               // =148
     9b8: 2a1303e4     	mov	w4, w19
     9bc: 94000000     	bl	0x9bc <fan_level_set+0x1c8>
		00000000000009bc:  R_AARCH64_CALL26	_printk
     9c0: 2a1f03e0     	mov	w0, wzr
     9c4: 17ffffeb     	b	0x970 <fan_level_set+0x17c>
     9c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30c
     9cc: 91000108     	add	x8, x8, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30c
     9d0: 2a0003f4     	mov	w20, w0
     9d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     9d8: 91000021     	add	x1, x1, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     9dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
     9e0: 91000042     	add	x2, x2, #0x0
		00000000000009e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
     9e4: aa0803e0     	mov	x0, x8
     9e8: 528017e3     	mov	w3, #0xbf               // =191
     9ec: 2a1303e4     	mov	w4, w19
     9f0: 2a1403e5     	mov	w5, w20
     9f4: 94000000     	bl	0x9f4 <fan_level_set+0x200>
		00000000000009f4:  R_AARCH64_CALL26	_printk
     9f8: 2a1403e0     	mov	w0, w20
     9fc: 17ffffdd     	b	0x970 <fan_level_set+0x17c>
     a00: aa1503e0     	mov	x0, x21
     a04: 94000000     	bl	0xa04 <fan_level_set+0x210>
		0000000000000a04:  R_AARCH64_CALL26	regulator_disable
     a08: 2a0003e4     	mov	w4, w0
     a0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     a10: 91000000     	add	x0, x0, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     a14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     a18: 91000021     	add	x1, x1, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     a1c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b7
     a20: 91000042     	add	x2, x2, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b7
     a24: 52801ca3     	mov	w3, #0xe5               // =229
     a28: 94000000     	bl	0xa28 <fan_level_set+0x234>
		0000000000000a28:  R_AARCH64_CALL26	_printk
     a2c: 17ffff9a     	b	0x894 <fan_level_set+0xa0>
     a30: 94000000     	bl	0xa30 <fan_level_set+0x23c>
		0000000000000a30:  R_AARCH64_CALL26	__stack_chk_fail
