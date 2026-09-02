
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a48 <aw22xxx_brightness_work>:
    1a48: d503233f     	paciasp
    1a4c: d10103ff     	sub	sp, sp, #0x40
    1a50: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1a54: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1a58: 910083fd     	add	x29, sp, #0x20
    1a5c: d5384108     	mrs	x8, SP_EL0
    1a60: aa0003f4     	mov	x20, x0
    1a64: d1074013     	sub	x19, x0, #0x1d0
    1a68: f9438908     	ldr	x8, [x8, #0x710]
    1a6c: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    1a70: 91000000     	add	x0, x0, #0x0
		0000000000001a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    1a74: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1685
    1a78: 91000021     	add	x1, x1, #0x0
		0000000000001a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1685
    1a7c: f81f83a8     	stur	x8, [x29, #-0x8]
    1a80: 94000000     	bl	0x1a80 <aw22xxx_brightness_work+0x38>
		0000000000001a80:  R_AARCH64_CALL26	_printk
    1a84: aa1303e0     	mov	x0, x19
    1a88: 528000a1     	mov	w1, #0x5                // =5
    1a8c: 52801fe2     	mov	w2, #0xff               // =255
    1a90: 97fffa63     	bl	0x41c <aw22xxx_i2c_write>
    1a94: 910013e2     	add	x2, sp, #0x4
    1a98: aa1303e0     	mov	x0, x19
    1a9c: 52800081     	mov	w1, #0x4                // =4
    1aa0: 390013ff     	strb	wzr, [sp, #0x4]
    1aa4: 97fffaaa     	bl	0x54c <aw22xxx_i2c_read>
    1aa8: 394013e8     	ldrb	w8, [sp, #0x4]
    1aac: aa1303e0     	mov	x0, x19
    1ab0: 52800081     	mov	w1, #0x4                // =4
    1ab4: 121e7902     	and	w2, w8, #0xfffffffd
    1ab8: 390013e2     	strb	w2, [sp, #0x4]
    1abc: 97fffa58     	bl	0x41c <aw22xxx_i2c_write>
    1ac0: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    1ac4: 91000000     	add	x0, x0, #0x0
		0000000000001ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    1ac8: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    1acc: 91000021     	add	x1, x1, #0x0
		0000000000001acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    1ad0: 52803542     	mov	w2, #0x1aa              // =426
    1ad4: 2a1f03e3     	mov	w3, wzr
    1ad8: 94000000     	bl	0x1ad8 <aw22xxx_brightness_work+0x90>
		0000000000001ad8:  R_AARCH64_CALL26	_printk
    1adc: 910023e2     	add	x2, sp, #0x8
    1ae0: aa1303e0     	mov	x0, x19
    1ae4: 52800041     	mov	w1, #0x2                // =2
    1ae8: 390023ff     	strb	wzr, [sp, #0x8]
    1aec: 97fffa98     	bl	0x54c <aw22xxx_i2c_read>
    1af0: 394023e8     	ldrb	w8, [sp, #0x8]
    1af4: aa1303e0     	mov	x0, x19
    1af8: 52800041     	mov	w1, #0x2                // =2
    1afc: 121f7902     	and	w2, w8, #0xfffffffe
    1b00: 390023e2     	strb	w2, [sp, #0x8]
    1b04: 97fffa46     	bl	0x41c <aw22xxx_i2c_write>
    1b08: 5280fa00     	mov	w0, #0x7d0              // =2000
    1b0c: 52817701     	mov	w1, #0xbb8              // =3000
    1b10: 52800042     	mov	w2, #0x2                // =2
    1b14: 94000000     	bl	0x1b14 <aw22xxx_brightness_work+0xcc>
		0000000000001b14:  R_AARCH64_CALL26	usleep_range_state
    1b18: d106e288     	sub	x8, x20, #0x1b8
    1b1c: b9400108     	ldr	w8, [x8]
    1b20: 35000168     	cbnz	w8, 0x1b4c <aw22xxx_brightness_work+0x104>
    1b24: d5384108     	mrs	x8, SP_EL0
    1b28: f9438908     	ldr	x8, [x8, #0x710]
    1b2c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1b30: eb09011f     	cmp	x8, x9
    1b34: 54000ae1     	b.ne	0x1c90 <aw22xxx_brightness_work+0x248>
    1b38: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1b3c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1b40: 910103ff     	add	sp, sp, #0x40
    1b44: d50323bf     	autiasp
    1b48: d65f03c0     	ret
    1b4c: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    1b50: 91000000     	add	x0, x0, #0x0
		0000000000001b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    1b54: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    1b58: 91000021     	add	x1, x1, #0x0
		0000000000001b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    1b5c: 52803542     	mov	w2, #0x1aa              // =426
    1b60: 52800023     	mov	w3, #0x1                // =1
    1b64: 94000000     	bl	0x1b64 <aw22xxx_brightness_work+0x11c>
		0000000000001b64:  R_AARCH64_CALL26	_printk
    1b68: 910033e2     	add	x2, sp, #0xc
    1b6c: aa1303e0     	mov	x0, x19
    1b70: 52800041     	mov	w1, #0x2                // =2
    1b74: 390033ff     	strb	wzr, [sp, #0xc]
    1b78: 97fffa75     	bl	0x54c <aw22xxx_i2c_read>
    1b7c: 394033e8     	ldrb	w8, [sp, #0xc]
    1b80: aa1303e0     	mov	x0, x19
    1b84: 52800041     	mov	w1, #0x2                // =2
    1b88: 32000102     	orr	w2, w8, #0x1
    1b8c: 390033e2     	strb	w2, [sp, #0xc]
    1b90: 97fffa23     	bl	0x41c <aw22xxx_i2c_write>
    1b94: 5280fa00     	mov	w0, #0x7d0              // =2000
    1b98: 52817701     	mov	w1, #0xbb8              // =3000
    1b9c: 52800042     	mov	w2, #0x2                // =2
    1ba0: 94000000     	bl	0x1ba0 <aw22xxx_brightness_work+0x158>
		0000000000001ba0:  R_AARCH64_CALL26	usleep_range_state
    1ba4: 910043e2     	add	x2, sp, #0x10
    1ba8: aa1303e0     	mov	x0, x19
    1bac: 52800081     	mov	w1, #0x4                // =4
    1bb0: 390043ff     	strb	wzr, [sp, #0x10]
    1bb4: 97fffa66     	bl	0x54c <aw22xxx_i2c_read>
    1bb8: 394043e8     	ldrb	w8, [sp, #0x10]
    1bbc: aa1303e0     	mov	x0, x19
    1bc0: 52800081     	mov	w1, #0x4                // =4
    1bc4: 32000102     	orr	w2, w8, #0x1
    1bc8: 390043e2     	strb	w2, [sp, #0x10]
    1bcc: 97fffa14     	bl	0x41c <aw22xxx_i2c_write>
    1bd0: 39448288     	ldrb	w8, [x20, #0x120]
    1bd4: 528001e9     	mov	w9, #0xf                // =15
    1bd8: aa1303e0     	mov	x0, x19
    1bdc: 52801fe1     	mov	w1, #0xff               // =255
    1be0: 2a1f03e2     	mov	w2, wzr
    1be4: 71003d1f     	cmp	w8, #0xf
    1be8: 1a893114     	csel	w20, w8, w9, lo
    1bec: 97fffa0c     	bl	0x41c <aw22xxx_i2c_write>
    1bf0: aa1303e0     	mov	x0, x19
    1bf4: 52800161     	mov	w1, #0xb                // =11
    1bf8: 2a1403e2     	mov	w2, w20
    1bfc: 97fffa08     	bl	0x41c <aw22xxx_i2c_write>
    1c00: aa1303e0     	mov	x0, x19
    1c04: 52800421     	mov	w1, #0x21               // =33
    1c08: 52801c22     	mov	w2, #0xe1               // =225
    1c0c: 97fffa04     	bl	0x41c <aw22xxx_i2c_write>
    1c10: aa1303e0     	mov	x0, x19
    1c14: 52800441     	mov	w1, #0x22               // =34
    1c18: 2a1f03e2     	mov	w2, wzr
    1c1c: 97fffa00     	bl	0x41c <aw22xxx_i2c_write>
    1c20: aa1303e0     	mov	x0, x19
    1c24: 52800401     	mov	w1, #0x20               // =32
    1c28: 52800042     	mov	w2, #0x2                // =2
    1c2c: 97fff9fc     	bl	0x41c <aw22xxx_i2c_write>
    1c30: aa1303e0     	mov	x0, x19
    1c34: 52800461     	mov	w1, #0x23               // =35
    1c38: 528007a2     	mov	w2, #0x3d               // =61
    1c3c: 97fff9f8     	bl	0x41c <aw22xxx_i2c_write>
    1c40: aa1303e0     	mov	x0, x19
    1c44: 52800401     	mov	w1, #0x20               // =32
    1c48: 2a1f03e2     	mov	w2, wzr
    1c4c: 97fff9f4     	bl	0x41c <aw22xxx_i2c_write>
    1c50: aa1303e0     	mov	x0, x19
    1c54: 528000a1     	mov	w1, #0x5                // =5
    1c58: 52801042     	mov	w2, #0x82               // =130
    1c5c: 97fff9f0     	bl	0x41c <aw22xxx_i2c_write>
    1c60: d10033a2     	sub	x2, x29, #0xc
    1c64: aa1303e0     	mov	x0, x19
    1c68: 52800081     	mov	w1, #0x4                // =4
    1c6c: 381f43bf     	sturb	wzr, [x29, #-0xc]
    1c70: 97fffa37     	bl	0x54c <aw22xxx_i2c_read>
    1c74: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1c78: aa1303e0     	mov	x0, x19
    1c7c: 52800081     	mov	w1, #0x4                // =4
    1c80: 321f0102     	orr	w2, w8, #0x2
    1c84: 381f43a2     	sturb	w2, [x29, #-0xc]
    1c88: 97fff9e5     	bl	0x41c <aw22xxx_i2c_write>
    1c8c: 17ffffa6     	b	0x1b24 <aw22xxx_brightness_work+0xdc>
    1c90: 94000000     	bl	0x1c90 <aw22xxx_brightness_work+0x248>
		0000000000001c90:  R_AARCH64_CALL26	__stack_chk_fail
