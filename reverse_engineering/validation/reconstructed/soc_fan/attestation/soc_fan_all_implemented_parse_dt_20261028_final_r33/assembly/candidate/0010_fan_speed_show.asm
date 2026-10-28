
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c44 <fan_speed_show>:
     c44: d503233f     	paciasp
     c48: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     c4c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     c50: a90257f6     	stp	x22, x21, [sp, #0x20]
     c54: a9034ff4     	stp	x20, x19, [sp, #0x30]
     c58: 910003fd     	mov	x29, sp
     c5c: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	chip
     c60: aa0203f3     	mov	x19, x2
     c64: f94002e8     	ldr	x8, [x23]
		0000000000000c64:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c68: 91006100     	add	x0, x8, #0x18
     c6c: 94000000     	bl	0xc6c <fan_speed_show+0x28>
		0000000000000c6c:  R_AARCH64_CALL26	mutex_lock
     c70: f94002e8     	ldr	x8, [x23]
		0000000000000c70:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     c74: f9400515     	ldr	x21, [x8, #0x8]
     c78: 394002a8     	ldrb	w8, [x21]
     c7c: 35000068     	cbnz	w8, 0xc88 <fan_speed_show+0x44>
     c80: 2a1f03f4     	mov	w20, wzr
     c84: 14000089     	b	0xea8 <fan_speed_show+0x264>
     c88: 52884801     	mov	w1, #0x4240             // =16960
     c8c: 52800028     	mov	w8, #0x1                // =1
     c90: 9100a2a0     	add	x0, x21, #0x28
     c94: 72a001e1     	movk	w1, #0xf, lsl #16
     c98: aa1f03e2     	mov	x2, xzr
     c9c: 52800023     	mov	w3, #0x1                // =1
     ca0: 39000aa8     	strb	w8, [x21, #0x2]
     ca4: 94000000     	bl	0xca4 <fan_speed_show+0x60>
		0000000000000ca4:  R_AARCH64_CALL26	hrtimer_start_range_ns
     ca8: 52807d00     	mov	w0, #0x3e8              // =1000
     cac: 94000000     	bl	0xcac <fan_speed_show+0x68>
		0000000000000cac:  R_AARCH64_CALL26	msleep
     cb0: b9400aa8     	ldr	w8, [x21, #0x8]
     cb4: 394002a4     	ldrb	w4, [x21]
     cb8: 0b080908     	add	w8, w8, w8, lsl #2
     cbc: 71000c9f     	cmp	w4, #0x3
     cc0: 531d7114     	lsl	w20, w8, #3
     cc4: 540000e1     	b.ne	0xce0 <fan_speed_show+0x9c>
     cc8: 713e829f     	cmp	w20, #0xfa0
     ccc: 540000a9     	b.ls	0xce0 <fan_speed_show+0x9c>
     cd0: 52865908     	mov	w8, #0x32c8             // =13000
     cd4: b9400aa9     	ldr	w9, [x21, #0x8]
     cd8: 0b080136     	add	w22, w9, w8
     cdc: 1400000e     	b	0xd14 <fan_speed_show+0xd0>
     ce0: 7100149f     	cmp	w4, #0x5
     ce4: 540000e0     	b.eq	0xd00 <fan_speed_show+0xbc>
     ce8: 7100109f     	cmp	w4, #0x4
     cec: 54000121     	b.ne	0xd10 <fan_speed_show+0xcc>
     cf0: 713e829f     	cmp	w20, #0xfa0
     cf4: 540000e9     	b.ls	0xd10 <fan_speed_show+0xcc>
     cf8: 5287d008     	mov	w8, #0x3e80             // =16000
     cfc: 17fffff6     	b	0xcd4 <fan_speed_show+0x90>
     d00: 713e869f     	cmp	w20, #0xfa1
     d04: 54000063     	b.lo	0xd10 <fan_speed_show+0xcc>
     d08: 52894708     	mov	w8, #0x4a38             // =19000
     d0c: 17fffff2     	b	0xcd4 <fan_speed_show+0x90>
     d10: 2a1f03f6     	mov	w22, wzr
     d14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b5
     d18: 91000000     	add	x0, x0, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b5
     d1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     d20: 91000021     	add	x1, x1, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     d24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ab
     d28: 91000042     	add	x2, x2, #0x0
		0000000000000d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ab
     d2c: 52802503     	mov	w3, #0x128              // =296
     d30: 2a1403e5     	mov	w5, w20
     d34: 2a1603e6     	mov	w6, w22
     d38: 94000000     	bl	0xd38 <fan_speed_show+0xf4>
		0000000000000d38:  R_AARCH64_CALL26	_printk
     d3c: f94002e9     	ldr	x9, [x23]
		0000000000000d3c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d40: 6b1402df     	cmp	w22, w20
     d44: 2a1f03e8     	mov	w8, wzr
     d48: 1a9482d4     	csel	w20, w22, w20, hi
     d4c: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
     d50: f9400520     	ldr	x0, [x9, #0x8]
     d54: 39400015     	ldrb	w21, [x0]
     d58: 34000a75     	cbz	w21, 0xea4 <fan_speed_show+0x260>
     d5c: 52807d09     	mov	w9, #0x3e8              // =1000
     d60: 1b097ea9     	mul	w9, w21, w9
     d64: 6b14013f     	cmp	w9, w20
     d68: 540009e3     	b.lo	0xea4 <fan_speed_show+0x260>
     d6c: b9400308     	ldr	w8, [x24]
		0000000000000d6c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     d70: 7100291f     	cmp	w8, #0xa
     d74: 540009ac     	b.gt	0xea8 <fan_speed_show+0x264>
     d78: 2a1f03e1     	mov	w1, wzr
     d7c: 94000000     	bl	0xd7c <fan_speed_show+0x138>
		0000000000000d7c:  R_AARCH64_CALL26	.text+0x7f4
     d80: f94002e8     	ldr	x8, [x23]
		0000000000000d80:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     d84: f9402516     	ldr	x22, [x8, #0x48]
     d88: b40001f6     	cbz	x22, 0xdc4 <fan_speed_show+0x180>
     d8c: aa1603e0     	mov	x0, x22
     d90: 94000000     	bl	0xd90 <fan_speed_show+0x14c>
		0000000000000d90:  R_AARCH64_CALL26	regulator_is_enabled
     d94: 34000180     	cbz	w0, 0xdc4 <fan_speed_show+0x180>
     d98: aa1603e0     	mov	x0, x22
     d9c: 94000000     	bl	0xd9c <fan_speed_show+0x158>
		0000000000000d9c:  R_AARCH64_CALL26	regulator_disable
     da0: 2a0003e4     	mov	w4, w0
     da4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     da8: 91000000     	add	x0, x0, #0x0
		0000000000000da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     dac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     db0: 91000021     	add	x1, x1, #0x0
		0000000000000db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     db4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b7
     db8: 91000042     	add	x2, x2, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b7
     dbc: 52801ca3     	mov	w3, #0xe5               // =229
     dc0: 94000000     	bl	0xdc0 <fan_speed_show+0x17c>
		0000000000000dc0:  R_AARCH64_CALL26	_printk
     dc4: 52800640     	mov	w0, #0x32               // =50
     dc8: 94000000     	bl	0xdc8 <fan_speed_show+0x184>
		0000000000000dc8:  R_AARCH64_CALL26	msleep
     dcc: f94002e8     	ldr	x8, [x23]
		0000000000000dcc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     dd0: f9402516     	ldr	x22, [x8, #0x48]
     dd4: b4000256     	cbz	x22, 0xe1c <fan_speed_show+0x1d8>
     dd8: aa1603e0     	mov	x0, x22
     ddc: 94000000     	bl	0xddc <fan_speed_show+0x198>
		0000000000000ddc:  R_AARCH64_CALL26	regulator_is_enabled
     de0: 350001e0     	cbnz	w0, 0xe1c <fan_speed_show+0x1d8>
     de4: aa1603e0     	mov	x0, x22
     de8: 94000000     	bl	0xde8 <fan_speed_show+0x1a4>
		0000000000000de8:  R_AARCH64_CALL26	regulator_enable
     dec: 2a0003f6     	mov	w22, w0
     df0: 52800140     	mov	w0, #0xa                // =10
     df4: 94000000     	bl	0xdf4 <fan_speed_show+0x1b0>
		0000000000000df4:  R_AARCH64_CALL26	msleep
     df8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3
     dfc: 91000000     	add	x0, x0, #0x0
		0000000000000dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3
     e00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     e04: 91000021     	add	x1, x1, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     e08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b7
     e0c: 91000042     	add	x2, x2, #0x0
		0000000000000e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b7
     e10: 52801da3     	mov	w3, #0xed               // =237
     e14: 2a1603e4     	mov	w4, w22
     e18: 94000000     	bl	0xe18 <fan_speed_show+0x1d4>
		0000000000000e18:  R_AARCH64_CALL26	_printk
     e1c: f94002e8     	ldr	x8, [x23]
		0000000000000e1c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e20: 2a1503e1     	mov	w1, w21
     e24: f9400500     	ldr	x0, [x8, #0x8]
     e28: 94000000     	bl	0xe28 <fan_speed_show+0x1e4>
		0000000000000e28:  R_AARCH64_CALL26	.text+0x7f4
     e2c: f94002e8     	ldr	x8, [x23]
		0000000000000e2c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e30: b9400306     	ldr	w6, [x24]
		0000000000000e30:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     e34: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ef
     e38: 91000000     	add	x0, x0, #0x0
		0000000000000e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ef
     e3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     e40: 91000021     	add	x1, x1, #0x0
		0000000000000e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     e44: f9400508     	ldr	x8, [x8, #0x8]
     e48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x156
     e4c: 91000042     	add	x2, x2, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x156
     e50: 528035a3     	mov	w3, #0x1ad              // =429
     e54: 2a1403e5     	mov	w5, w20
     e58: 39400104     	ldrb	w4, [x8]
     e5c: 94000000     	bl	0xe5c <fan_speed_show+0x218>
		0000000000000e5c:  R_AARCH64_CALL26	_printk
     e60: b9400308     	ldr	w8, [x24]
		0000000000000e60:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     e64: 7100291f     	cmp	w8, #0xa
     e68: 540001c1     	b.ne	0xea0 <fan_speed_show+0x25c>
     e6c: f94002e8     	ldr	x8, [x23]
		0000000000000e6c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     e70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x378
     e74: 91000000     	add	x0, x0, #0x0
		0000000000000e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x378
     e78: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     e7c: 91000021     	add	x1, x1, #0x0
		0000000000000e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     e80: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x156
     e84: 91000042     	add	x2, x2, #0x0
		0000000000000e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x156
     e88: f9400508     	ldr	x8, [x8, #0x8]
     e8c: 52803603     	mov	w3, #0x1b0              // =432
     e90: 2a1403e5     	mov	w5, w20
     e94: 39400104     	ldrb	w4, [x8]
     e98: 94000000     	bl	0xe98 <fan_speed_show+0x254>
		0000000000000e98:  R_AARCH64_CALL26	_printk
     e9c: b9400308     	ldr	w8, [x24]
		0000000000000e9c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     ea0: 11000508     	add	w8, w8, #0x1
     ea4: b9000308     	str	w8, [x24]
		0000000000000ea4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
     ea8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167
     eac: 91000021     	add	x1, x1, #0x0
		0000000000000eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167
     eb0: aa1303e0     	mov	x0, x19
     eb4: 2a1403e2     	mov	w2, w20
     eb8: 94000000     	bl	0xeb8 <fan_speed_show+0x274>
		0000000000000eb8:  R_AARCH64_CALL26	sprintf
     ebc: f94002e8     	ldr	x8, [x23]
		0000000000000ebc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ec0: 2a0003f3     	mov	w19, w0
     ec4: 91006100     	add	x0, x8, #0x18
     ec8: 94000000     	bl	0xec8 <fan_speed_show+0x284>
		0000000000000ec8:  R_AARCH64_CALL26	mutex_unlock
     ecc: f94002e8     	ldr	x8, [x23]
		0000000000000ecc:  R_AARCH64_LDST64_ABS_LO12_NC	chip
     ed0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x635
     ed4: 91000000     	add	x0, x0, #0x0
		0000000000000ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x635
     ed8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     edc: 91000021     	add	x1, x1, #0x0
		0000000000000edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     ee0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e8
     ee4: 91000042     	add	x2, x2, #0x0
		0000000000000ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e8
     ee8: f9400508     	ldr	x8, [x8, #0x8]
     eec: 52803883     	mov	w3, #0x1c4              // =452
     ef0: 2a1403e5     	mov	w5, w20
     ef4: 39400104     	ldrb	w4, [x8]
     ef8: 94000000     	bl	0xef8 <fan_speed_show+0x2b4>
		0000000000000ef8:  R_AARCH64_CALL26	_printk
     efc: 93407e60     	sxtw	x0, w19
     f00: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     f04: a94257f6     	ldp	x22, x21, [sp, #0x20]
     f08: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     f0c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     f10: d50323bf     	autiasp
     f14: d65f03c0     	ret
