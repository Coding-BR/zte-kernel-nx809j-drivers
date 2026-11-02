
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a84 <fan_speed_show>:
     a84: d503233f     	paciasp
     a88: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     a8c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     a90: a90257f6     	stp	x22, x21, [sp, #0x20]
     a94: a9034ff4     	stp	x20, x19, [sp, #0x30]
     a98: 910003fd     	mov	x29, sp
     a9c: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000a9c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     aa0: aa0203f3     	mov	x19, x2
     aa4: f94002e8     	ldr	x8, [x23]
		0000000000000aa4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     aa8: 91006100     	add	x0, x8, #0x18
     aac: 94000000     	bl	0xaac <fan_speed_show+0x28>
		0000000000000aac:  R_AARCH64_CALL26	mutex_lock
     ab0: f94002e8     	ldr	x8, [x23]
		0000000000000ab0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ab4: f9400515     	ldr	x21, [x8, #0x8]
     ab8: 394002a8     	ldrb	w8, [x21]
     abc: 35000068     	cbnz	w8, 0xac8 <fan_speed_show+0x44>
     ac0: 2a1f03f4     	mov	w20, wzr
     ac4: 14000089     	b	0xce8 <fan_speed_show+0x264>
     ac8: 52884801     	mov	w1, #0x4240             // =16960
     acc: 52800028     	mov	w8, #0x1                // =1
     ad0: 9100a2a0     	add	x0, x21, #0x28
     ad4: 72a001e1     	movk	w1, #0xf, lsl #16
     ad8: aa1f03e2     	mov	x2, xzr
     adc: 52800023     	mov	w3, #0x1                // =1
     ae0: 39000aa8     	strb	w8, [x21, #0x2]
     ae4: 94000000     	bl	0xae4 <fan_speed_show+0x60>
		0000000000000ae4:  R_AARCH64_CALL26	hrtimer_start_range_ns
     ae8: 52807d00     	mov	w0, #0x3e8              // =1000
     aec: 94000000     	bl	0xaec <fan_speed_show+0x68>
		0000000000000aec:  R_AARCH64_CALL26	msleep
     af0: b9400aa8     	ldr	w8, [x21, #0x8]
     af4: 394002a4     	ldrb	w4, [x21]
     af8: 0b080908     	add	w8, w8, w8, lsl #2
     afc: 71000c9f     	cmp	w4, #0x3
     b00: 531d7114     	lsl	w20, w8, #3
     b04: 540000e1     	b.ne	0xb20 <fan_speed_show+0x9c>
     b08: 713e829f     	cmp	w20, #0xfa0
     b0c: 540000a9     	b.ls	0xb20 <fan_speed_show+0x9c>
     b10: 52865908     	mov	w8, #0x32c8             // =13000
     b14: b9400aa9     	ldr	w9, [x21, #0x8]
     b18: 0b080136     	add	w22, w9, w8
     b1c: 1400000e     	b	0xb54 <fan_speed_show+0xd0>
     b20: 7100149f     	cmp	w4, #0x5
     b24: 540000e0     	b.eq	0xb40 <fan_speed_show+0xbc>
     b28: 7100109f     	cmp	w4, #0x4
     b2c: 54000121     	b.ne	0xb50 <fan_speed_show+0xcc>
     b30: 713e829f     	cmp	w20, #0xfa0
     b34: 540000e9     	b.ls	0xb50 <fan_speed_show+0xcc>
     b38: 5287d008     	mov	w8, #0x3e80             // =16000
     b3c: 17fffff6     	b	0xb14 <fan_speed_show+0x90>
     b40: 713e869f     	cmp	w20, #0xfa1
     b44: 54000063     	b.lo	0xb50 <fan_speed_show+0xcc>
     b48: 52894708     	mov	w8, #0x4a38             // =19000
     b4c: 17fffff2     	b	0xb14 <fan_speed_show+0x90>
     b50: 2a1f03f6     	mov	w22, wzr
     b54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ca
     b58: 91000000     	add	x0, x0, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ca
     b5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     b60: 91000021     	add	x1, x1, #0x0
		0000000000000b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     b64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb10
     b68: 91000042     	add	x2, x2, #0x0
		0000000000000b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb10
     b6c: 52802503     	mov	w3, #0x128              // =296
     b70: 2a1403e5     	mov	w5, w20
     b74: 2a1603e6     	mov	w6, w22
     b78: 94000000     	bl	0xb78 <fan_speed_show+0xf4>
		0000000000000b78:  R_AARCH64_CALL26	_printk
     b7c: f94002e9     	ldr	x9, [x23]
		0000000000000b7c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b80: 6b1402df     	cmp	w22, w20
     b84: 2a1f03e8     	mov	w8, wzr
     b88: 1a9482d4     	csel	w20, w22, w20, hi
     b8c: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
     b90: f9400520     	ldr	x0, [x9, #0x8]
     b94: 39400015     	ldrb	w21, [x0]
     b98: 34000a75     	cbz	w21, 0xce4 <fan_speed_show+0x260>
     b9c: 52807d09     	mov	w9, #0x3e8              // =1000
     ba0: 1b097ea9     	mul	w9, w21, w9
     ba4: 6b14013f     	cmp	w9, w20
     ba8: 540009e3     	b.lo	0xce4 <fan_speed_show+0x260>
     bac: b9400308     	ldr	w8, [x24]
		0000000000000bac:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     bb0: 7100291f     	cmp	w8, #0xa
     bb4: 540009ac     	b.gt	0xce8 <fan_speed_show+0x264>
     bb8: 2a1f03e1     	mov	w1, wzr
     bbc: 94000000     	bl	0xbbc <fan_speed_show+0x138>
		0000000000000bbc:  R_AARCH64_CALL26	.text+0x13a0
     bc0: f94002e8     	ldr	x8, [x23]
		0000000000000bc0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bc4: f9402516     	ldr	x22, [x8, #0x48]
     bc8: b40001f6     	cbz	x22, 0xc04 <fan_speed_show+0x180>
     bcc: aa1603e0     	mov	x0, x22
     bd0: 94000000     	bl	0xbd0 <fan_speed_show+0x14c>
		0000000000000bd0:  R_AARCH64_CALL26	regulator_is_enabled
     bd4: 34000180     	cbz	w0, 0xc04 <fan_speed_show+0x180>
     bd8: aa1603e0     	mov	x0, x22
     bdc: 94000000     	bl	0xbdc <fan_speed_show+0x158>
		0000000000000bdc:  R_AARCH64_CALL26	regulator_disable
     be0: 2a0003e4     	mov	w4, w0
     be4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
     be8: 91000000     	add	x0, x0, #0x0
		0000000000000be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
     bec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     bf0: 91000021     	add	x1, x1, #0x0
		0000000000000bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     bf4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
     bf8: 91000042     	add	x2, x2, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
     bfc: 52801ca3     	mov	w3, #0xe5               // =229
     c00: 94000000     	bl	0xc00 <fan_speed_show+0x17c>
		0000000000000c00:  R_AARCH64_CALL26	_printk
     c04: 52800640     	mov	w0, #0x32               // =50
     c08: 94000000     	bl	0xc08 <fan_speed_show+0x184>
		0000000000000c08:  R_AARCH64_CALL26	msleep
     c0c: f94002e8     	ldr	x8, [x23]
		0000000000000c0c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c10: f9402516     	ldr	x22, [x8, #0x48]
     c14: b4000256     	cbz	x22, 0xc5c <fan_speed_show+0x1d8>
     c18: aa1603e0     	mov	x0, x22
     c1c: 94000000     	bl	0xc1c <fan_speed_show+0x198>
		0000000000000c1c:  R_AARCH64_CALL26	regulator_is_enabled
     c20: 350001e0     	cbnz	w0, 0xc5c <fan_speed_show+0x1d8>
     c24: aa1603e0     	mov	x0, x22
     c28: 94000000     	bl	0xc28 <fan_speed_show+0x1a4>
		0000000000000c28:  R_AARCH64_CALL26	regulator_enable
     c2c: 2a0003f6     	mov	w22, w0
     c30: 52800140     	mov	w0, #0xa                // =10
     c34: 94000000     	bl	0xc34 <fan_speed_show+0x1b0>
		0000000000000c34:  R_AARCH64_CALL26	msleep
     c38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c9
     c3c: 91000000     	add	x0, x0, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c9
     c40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     c44: 91000021     	add	x1, x1, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     c48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1c
     c4c: 91000042     	add	x2, x2, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1c
     c50: 52801da3     	mov	w3, #0xed               // =237
     c54: 2a1603e4     	mov	w4, w22
     c58: 94000000     	bl	0xc58 <fan_speed_show+0x1d4>
		0000000000000c58:  R_AARCH64_CALL26	_printk
     c5c: f94002e8     	ldr	x8, [x23]
		0000000000000c5c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c60: 2a1503e1     	mov	w1, w21
     c64: f9400500     	ldr	x0, [x8, #0x8]
     c68: 94000000     	bl	0xc68 <fan_speed_show+0x1e4>
		0000000000000c68:  R_AARCH64_CALL26	.text+0x13a0
     c6c: f94002e8     	ldr	x8, [x23]
		0000000000000c6c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c70: b9400306     	ldr	w6, [x24]
		0000000000000c70:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     c74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0c
     c78: 91000000     	add	x0, x0, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0c
     c7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     c80: 91000021     	add	x1, x1, #0x0
		0000000000000c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     c84: f9400508     	ldr	x8, [x8, #0x8]
     c88: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     c8c: 91000042     	add	x2, x2, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     c90: 528035a3     	mov	w3, #0x1ad              // =429
     c94: 2a1403e5     	mov	w5, w20
     c98: 39400104     	ldrb	w4, [x8]
     c9c: 94000000     	bl	0xc9c <fan_speed_show+0x218>
		0000000000000c9c:  R_AARCH64_CALL26	_printk
     ca0: b9400308     	ldr	w8, [x24]
		0000000000000ca0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     ca4: 7100291f     	cmp	w8, #0xa
     ca8: 540001c1     	b.ne	0xce0 <fan_speed_show+0x25c>
     cac: f94002e8     	ldr	x8, [x23]
		0000000000000cac:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     cb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x624
     cb4: 91000000     	add	x0, x0, #0x0
		0000000000000cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x624
     cb8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     cbc: 91000021     	add	x1, x1, #0x0
		0000000000000cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     cc0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dc
     cc4: 91000042     	add	x2, x2, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dc
     cc8: f9400508     	ldr	x8, [x8, #0x8]
     ccc: 52803603     	mov	w3, #0x1b0              // =432
     cd0: 2a1403e5     	mov	w5, w20
     cd4: 39400104     	ldrb	w4, [x8]
     cd8: 94000000     	bl	0xcd8 <fan_speed_show+0x254>
		0000000000000cd8:  R_AARCH64_CALL26	_printk
     cdc: b9400308     	ldr	w8, [x24]
		0000000000000cdc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     ce0: 11000508     	add	w8, w8, #0x1
     ce4: b9000308     	str	w8, [x24]
		0000000000000ce4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     ce8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ed
     cec: 91000021     	add	x1, x1, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ed
     cf0: aa1303e0     	mov	x0, x19
     cf4: 2a1403e2     	mov	w2, w20
     cf8: 94000000     	bl	0xcf8 <fan_speed_show+0x274>
		0000000000000cf8:  R_AARCH64_CALL26	sprintf
     cfc: f94002e8     	ldr	x8, [x23]
		0000000000000cfc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d00: 2a0003f3     	mov	w19, w0
     d04: 91006100     	add	x0, x8, #0x18
     d08: 94000000     	bl	0xd08 <fan_speed_show+0x284>
		0000000000000d08:  R_AARCH64_CALL26	mutex_unlock
     d0c: f94002e8     	ldr	x8, [x23]
		0000000000000d0c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d10: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4b
     d14: 91000000     	add	x0, x0, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4b
     d18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     d1c: 91000021     	add	x1, x1, #0x0
		0000000000000d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     d20: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a5
     d24: 91000042     	add	x2, x2, #0x0
		0000000000000d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a5
     d28: f9400508     	ldr	x8, [x8, #0x8]
     d2c: 52803883     	mov	w3, #0x1c4              // =452
     d30: 2a1403e5     	mov	w5, w20
     d34: 39400104     	ldrb	w4, [x8]
     d38: 94000000     	bl	0xd38 <fan_speed_show+0x2b4>
		0000000000000d38:  R_AARCH64_CALL26	_printk
     d3c: 93407e60     	sxtw	x0, w19
     d40: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     d44: a94257f6     	ldp	x22, x21, [sp, #0x20]
     d48: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     d4c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     d50: d50323bf     	autiasp
     d54: d65f03c0     	ret
