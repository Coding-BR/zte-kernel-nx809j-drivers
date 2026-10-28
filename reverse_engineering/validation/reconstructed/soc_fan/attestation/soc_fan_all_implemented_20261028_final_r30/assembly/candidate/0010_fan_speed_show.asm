
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000928 <fan_speed_show>:
     928: d503233f     	paciasp
     92c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     930: a9015ff8     	stp	x24, x23, [sp, #0x10]
     934: a90257f6     	stp	x22, x21, [sp, #0x20]
     938: a9034ff4     	stp	x20, x19, [sp, #0x30]
     93c: 910003fd     	mov	x29, sp
     940: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	chip
     944: aa0203f3     	mov	x19, x2
     948: f94002e8     	ldr	x8, [x23]
		0000000000000948:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     94c: 91006100     	add	x0, x8, #0x18
     950: 94000000     	bl	0x950 <fan_speed_show+0x28>
		0000000000000950:  R_AARCH64_CALL26	mutex_lock
     954: f94002e8     	ldr	x8, [x23]
		0000000000000954:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     958: f9400515     	ldr	x21, [x8, #0x8]
     95c: 394002a8     	ldrb	w8, [x21]
     960: 35000068     	cbnz	w8, 0x96c <fan_speed_show+0x44>
     964: 2a1f03f4     	mov	w20, wzr
     968: 14000089     	b	0xb8c <fan_speed_show+0x264>
     96c: 52884801     	mov	w1, #0x4240             // =16960
     970: 52800028     	mov	w8, #0x1                // =1
     974: 9100a2a0     	add	x0, x21, #0x28
     978: 72a001e1     	movk	w1, #0xf, lsl #16
     97c: aa1f03e2     	mov	x2, xzr
     980: 52800023     	mov	w3, #0x1                // =1
     984: 39000aa8     	strb	w8, [x21, #0x2]
     988: 94000000     	bl	0x988 <fan_speed_show+0x60>
		0000000000000988:  R_AARCH64_CALL26	hrtimer_start_range_ns
     98c: 52807d00     	mov	w0, #0x3e8              // =1000
     990: 94000000     	bl	0x990 <fan_speed_show+0x68>
		0000000000000990:  R_AARCH64_CALL26	msleep
     994: b9400aa8     	ldr	w8, [x21, #0x8]
     998: 394002a4     	ldrb	w4, [x21]
     99c: 0b080908     	add	w8, w8, w8, lsl #2
     9a0: 71000c9f     	cmp	w4, #0x3
     9a4: 531d7114     	lsl	w20, w8, #3
     9a8: 540000e1     	b.ne	0x9c4 <fan_speed_show+0x9c>
     9ac: 713e829f     	cmp	w20, #0xfa0
     9b0: 540000a9     	b.ls	0x9c4 <fan_speed_show+0x9c>
     9b4: 52865908     	mov	w8, #0x32c8             // =13000
     9b8: b9400aa9     	ldr	w9, [x21, #0x8]
     9bc: 0b080136     	add	w22, w9, w8
     9c0: 1400000e     	b	0x9f8 <fan_speed_show+0xd0>
     9c4: 7100149f     	cmp	w4, #0x5
     9c8: 540000e0     	b.eq	0x9e4 <fan_speed_show+0xbc>
     9cc: 7100109f     	cmp	w4, #0x4
     9d0: 54000121     	b.ne	0x9f4 <fan_speed_show+0xcc>
     9d4: 713e829f     	cmp	w20, #0xfa0
     9d8: 540000e9     	b.ls	0x9f4 <fan_speed_show+0xcc>
     9dc: 5287d008     	mov	w8, #0x3e80             // =16000
     9e0: 17fffff6     	b	0x9b8 <fan_speed_show+0x90>
     9e4: 713e869f     	cmp	w20, #0xfa1
     9e8: 54000063     	b.lo	0x9f4 <fan_speed_show+0xcc>
     9ec: 52894708     	mov	w8, #0x4a38             // =19000
     9f0: 17fffff2     	b	0x9b8 <fan_speed_show+0x90>
     9f4: 2a1f03f6     	mov	w22, wzr
     9f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36f
     9fc: 91000000     	add	x0, x0, #0x0
		00000000000009fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36f
     a00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     a04: 91000021     	add	x1, x1, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     a08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54f
     a0c: 91000042     	add	x2, x2, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54f
     a10: 52802503     	mov	w3, #0x128              // =296
     a14: 2a1403e5     	mov	w5, w20
     a18: 2a1603e6     	mov	w6, w22
     a1c: 94000000     	bl	0xa1c <fan_speed_show+0xf4>
		0000000000000a1c:  R_AARCH64_CALL26	_printk
     a20: f94002e9     	ldr	x9, [x23]
		0000000000000a20:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     a24: 6b1402df     	cmp	w22, w20
     a28: 2a1f03e8     	mov	w8, wzr
     a2c: 1a9482d4     	csel	w20, w22, w20, hi
     a30: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000a30:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
     a34: f9400520     	ldr	x0, [x9, #0x8]
     a38: 39400015     	ldrb	w21, [x0]
     a3c: 34000a75     	cbz	w21, 0xb88 <fan_speed_show+0x260>
     a40: 52807d09     	mov	w9, #0x3e8              // =1000
     a44: 1b097ea9     	mul	w9, w21, w9
     a48: 6b14013f     	cmp	w9, w20
     a4c: 540009e3     	b.lo	0xb88 <fan_speed_show+0x260>
     a50: b9400308     	ldr	w8, [x24]
		0000000000000a50:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     a54: 7100291f     	cmp	w8, #0xa
     a58: 540009ac     	b.gt	0xb8c <fan_speed_show+0x264>
     a5c: 2a1f03e1     	mov	w1, wzr
     a60: 94000000     	bl	0xa60 <fan_speed_show+0x138>
		0000000000000a60:  R_AARCH64_CALL26	.text+0x4d8
     a64: f94002e8     	ldr	x8, [x23]
		0000000000000a64:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     a68: f9402516     	ldr	x22, [x8, #0x48]
     a6c: b40001f6     	cbz	x22, 0xaa8 <fan_speed_show+0x180>
     a70: aa1603e0     	mov	x0, x22
     a74: 94000000     	bl	0xa74 <fan_speed_show+0x14c>
		0000000000000a74:  R_AARCH64_CALL26	regulator_is_enabled
     a78: 34000180     	cbz	w0, 0xaa8 <fan_speed_show+0x180>
     a7c: aa1603e0     	mov	x0, x22
     a80: 94000000     	bl	0xa80 <fan_speed_show+0x158>
		0000000000000a80:  R_AARCH64_CALL26	regulator_disable
     a84: 2a0003e4     	mov	w4, w0
     a88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     a8c: 91000000     	add	x0, x0, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     a90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     a94: 91000021     	add	x1, x1, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     a98: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     a9c: 91000042     	add	x2, x2, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     aa0: 52801ca3     	mov	w3, #0xe5               // =229
     aa4: 94000000     	bl	0xaa4 <fan_speed_show+0x17c>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: 52800640     	mov	w0, #0x32               // =50
     aac: 94000000     	bl	0xaac <fan_speed_show+0x184>
		0000000000000aac:  R_AARCH64_CALL26	msleep
     ab0: f94002e8     	ldr	x8, [x23]
		0000000000000ab0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ab4: f9402516     	ldr	x22, [x8, #0x48]
     ab8: b4000256     	cbz	x22, 0xb00 <fan_speed_show+0x1d8>
     abc: aa1603e0     	mov	x0, x22
     ac0: 94000000     	bl	0xac0 <fan_speed_show+0x198>
		0000000000000ac0:  R_AARCH64_CALL26	regulator_is_enabled
     ac4: 350001e0     	cbnz	w0, 0xb00 <fan_speed_show+0x1d8>
     ac8: aa1603e0     	mov	x0, x22
     acc: 94000000     	bl	0xacc <fan_speed_show+0x1a4>
		0000000000000acc:  R_AARCH64_CALL26	regulator_enable
     ad0: 2a0003f6     	mov	w22, w0
     ad4: 52800140     	mov	w0, #0xa                // =10
     ad8: 94000000     	bl	0xad8 <fan_speed_show+0x1b0>
		0000000000000ad8:  R_AARCH64_CALL26	msleep
     adc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x467
     ae0: 91000000     	add	x0, x0, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x467
     ae4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     ae8: 91000021     	add	x1, x1, #0x0
		0000000000000ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     aec: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
     af0: 91000042     	add	x2, x2, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
     af4: 52801da3     	mov	w3, #0xed               // =237
     af8: 2a1603e4     	mov	w4, w22
     afc: 94000000     	bl	0xafc <fan_speed_show+0x1d4>
		0000000000000afc:  R_AARCH64_CALL26	_printk
     b00: f94002e8     	ldr	x8, [x23]
		0000000000000b00:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b04: 2a1503e1     	mov	w1, w21
     b08: f9400500     	ldr	x0, [x8, #0x8]
     b0c: 94000000     	bl	0xb0c <fan_speed_show+0x1e4>
		0000000000000b0c:  R_AARCH64_CALL26	.text+0x4d8
     b10: f94002e8     	ldr	x8, [x23]
		0000000000000b10:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b14: b9400306     	ldr	w6, [x24]
		0000000000000b14:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     b18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x593
     b1c: 91000000     	add	x0, x0, #0x0
		0000000000000b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x593
     b20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     b24: 91000021     	add	x1, x1, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     b28: f9400508     	ldr	x8, [x8, #0x8]
     b2c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125
     b30: 91000042     	add	x2, x2, #0x0
		0000000000000b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125
     b34: 528035a3     	mov	w3, #0x1ad              // =429
     b38: 2a1403e5     	mov	w5, w20
     b3c: 39400104     	ldrb	w4, [x8]
     b40: 94000000     	bl	0xb40 <fan_speed_show+0x218>
		0000000000000b40:  R_AARCH64_CALL26	_printk
     b44: b9400308     	ldr	w8, [x24]
		0000000000000b44:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     b48: 7100291f     	cmp	w8, #0xa
     b4c: 540001c1     	b.ne	0xb84 <fan_speed_show+0x25c>
     b50: f94002e8     	ldr	x8, [x23]
		0000000000000b50:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     b54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
     b58: 91000000     	add	x0, x0, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
     b5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     b60: 91000021     	add	x1, x1, #0x0
		0000000000000b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     b64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125
     b68: 91000042     	add	x2, x2, #0x0
		0000000000000b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125
     b6c: f9400508     	ldr	x8, [x8, #0x8]
     b70: 52803603     	mov	w3, #0x1b0              // =432
     b74: 2a1403e5     	mov	w5, w20
     b78: 39400104     	ldrb	w4, [x8]
     b7c: 94000000     	bl	0xb7c <fan_speed_show+0x254>
		0000000000000b7c:  R_AARCH64_CALL26	_printk
     b80: b9400308     	ldr	w8, [x24]
		0000000000000b80:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     b84: 11000508     	add	w8, w8, #0x1
     b88: b9000308     	str	w8, [x24]
		0000000000000b88:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     b8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x136
     b90: 91000021     	add	x1, x1, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x136
     b94: aa1303e0     	mov	x0, x19
     b98: 2a1403e2     	mov	w2, w20
     b9c: 94000000     	bl	0xb9c <fan_speed_show+0x274>
		0000000000000b9c:  R_AARCH64_CALL26	sprintf
     ba0: f94002e8     	ldr	x8, [x23]
		0000000000000ba0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ba4: 2a0003f3     	mov	w19, w0
     ba8: 91006100     	add	x0, x8, #0x18
     bac: 94000000     	bl	0xbac <fan_speed_show+0x284>
		0000000000000bac:  R_AARCH64_CALL26	mutex_unlock
     bb0: f94002e8     	ldr	x8, [x23]
		0000000000000bb0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     bb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d9
     bb8: 91000000     	add	x0, x0, #0x0
		0000000000000bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d9
     bbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x331
     bc0: 91000021     	add	x1, x1, #0x0
		0000000000000bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x331
     bc4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7
     bc8: 91000042     	add	x2, x2, #0x0
		0000000000000bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7
     bcc: f9400508     	ldr	x8, [x8, #0x8]
     bd0: 52803883     	mov	w3, #0x1c4              // =452
     bd4: 2a1403e5     	mov	w5, w20
     bd8: 39400104     	ldrb	w4, [x8]
     bdc: 94000000     	bl	0xbdc <fan_speed_show+0x2b4>
		0000000000000bdc:  R_AARCH64_CALL26	_printk
     be0: 93407e60     	sxtw	x0, w19
     be4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     be8: a94257f6     	ldp	x22, x21, [sp, #0x20]
     bec: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     bf0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     bf4: d50323bf     	autiasp
     bf8: d65f03c0     	ret
