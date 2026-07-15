
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c98 <aw22xxx_task_work>:
    1c98: d503233f     	paciasp
    1c9c: d10143ff     	sub	sp, sp, #0x50
    1ca0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1ca4: f9001bf5     	str	x21, [sp, #0x30]
    1ca8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1cac: 910083fd     	add	x29, sp, #0x20
    1cb0: d5384108     	mrs	x8, SP_EL0
    1cb4: aa0003f4     	mov	x20, x0
    1cb8: d107c013     	sub	x19, x0, #0x1f0
    1cbc: f9438908     	ldr	x8, [x8, #0x710]
    1cc0: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    1cc4: 91000000     	add	x0, x0, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    1cc8: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1344
    1ccc: 91000021     	add	x1, x1, #0x0
		0000000000001ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1344
    1cd0: f81f83a8     	stur	x8, [x29, #-0x8]
    1cd4: 94000000     	bl	0x1cd4 <aw22xxx_task_work+0x3c>
		0000000000001cd4:  R_AARCH64_CALL26	_printk
    1cd8: aa1303e0     	mov	x0, x19
    1cdc: 528000a1     	mov	w1, #0x5                // =5
    1ce0: 52801fe2     	mov	w2, #0xff               // =255
    1ce4: 97fff9ce     	bl	0x41c <aw22xxx_i2c_write>
    1ce8: 910013e2     	add	x2, sp, #0x4
    1cec: aa1303e0     	mov	x0, x19
    1cf0: 52800081     	mov	w1, #0x4                // =4
    1cf4: 390013ff     	strb	wzr, [sp, #0x4]
    1cf8: 97fffa15     	bl	0x54c <aw22xxx_i2c_read>
    1cfc: 394013e8     	ldrb	w8, [sp, #0x4]
    1d00: aa1303e0     	mov	x0, x19
    1d04: 52800081     	mov	w1, #0x4                // =4
    1d08: 121e7902     	and	w2, w8, #0xfffffffd
    1d0c: 390013e2     	strb	w2, [sp, #0x4]
    1d10: 97fff9c3     	bl	0x41c <aw22xxx_i2c_write>
    1d14: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    1d18: 91000000     	add	x0, x0, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    1d1c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    1d20: 91000021     	add	x1, x1, #0x0
		0000000000001d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    1d24: 52803542     	mov	w2, #0x1aa              // =426
    1d28: 2a1f03e3     	mov	w3, wzr
    1d2c: 94000000     	bl	0x1d2c <aw22xxx_task_work+0x94>
		0000000000001d2c:  R_AARCH64_CALL26	_printk
    1d30: 910023e2     	add	x2, sp, #0x8
    1d34: aa1303e0     	mov	x0, x19
    1d38: 52800041     	mov	w1, #0x2                // =2
    1d3c: 390023ff     	strb	wzr, [sp, #0x8]
    1d40: 97fffa03     	bl	0x54c <aw22xxx_i2c_read>
    1d44: 394023e8     	ldrb	w8, [sp, #0x8]
    1d48: aa1303e0     	mov	x0, x19
    1d4c: 52800041     	mov	w1, #0x2                // =2
    1d50: 121f7902     	and	w2, w8, #0xfffffffe
    1d54: 390023e2     	strb	w2, [sp, #0x8]
    1d58: 97fff9b1     	bl	0x41c <aw22xxx_i2c_write>
    1d5c: 5280fa00     	mov	w0, #0x7d0              // =2000
    1d60: 52817701     	mov	w1, #0xbb8              // =3000
    1d64: 52800042     	mov	w2, #0x2                // =2
    1d68: 94000000     	bl	0x1d68 <aw22xxx_task_work+0xd0>
		0000000000001d68:  R_AARCH64_CALL26	usleep_range_state
    1d6c: 39443288     	ldrb	w8, [x20, #0x10c]
    1d70: 35000188     	cbnz	w8, 0x1da0 <aw22xxx_task_work+0x108>
    1d74: d5384108     	mrs	x8, SP_EL0
    1d78: f9438908     	ldr	x8, [x8, #0x710]
    1d7c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1d80: eb09011f     	cmp	x8, x9
    1d84: 54000b81     	b.ne	0x1ef4 <aw22xxx_task_work+0x25c>
    1d88: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1d8c: f9401bf5     	ldr	x21, [sp, #0x30]
    1d90: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1d94: 910143ff     	add	sp, sp, #0x50
    1d98: d50323bf     	autiasp
    1d9c: d65f03c0     	ret
    1da0: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    1da4: 91000000     	add	x0, x0, #0x0
		0000000000001da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    1da8: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    1dac: 91000021     	add	x1, x1, #0x0
		0000000000001dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    1db0: 52803542     	mov	w2, #0x1aa              // =426
    1db4: 52800023     	mov	w3, #0x1                // =1
    1db8: 94000000     	bl	0x1db8 <aw22xxx_task_work+0x120>
		0000000000001db8:  R_AARCH64_CALL26	_printk
    1dbc: 910033e2     	add	x2, sp, #0xc
    1dc0: aa1303e0     	mov	x0, x19
    1dc4: 52800041     	mov	w1, #0x2                // =2
    1dc8: 390033ff     	strb	wzr, [sp, #0xc]
    1dcc: 97fff9e0     	bl	0x54c <aw22xxx_i2c_read>
    1dd0: 394033e8     	ldrb	w8, [sp, #0xc]
    1dd4: aa1303e0     	mov	x0, x19
    1dd8: 52800041     	mov	w1, #0x2                // =2
    1ddc: 32000102     	orr	w2, w8, #0x1
    1de0: 390033e2     	strb	w2, [sp, #0xc]
    1de4: 97fff98e     	bl	0x41c <aw22xxx_i2c_write>
    1de8: 5280fa00     	mov	w0, #0x7d0              // =2000
    1dec: 52817701     	mov	w1, #0xbb8              // =3000
    1df0: 52800042     	mov	w2, #0x2                // =2
    1df4: 94000000     	bl	0x1df4 <aw22xxx_task_work+0x15c>
		0000000000001df4:  R_AARCH64_CALL26	usleep_range_state
    1df8: 910043e2     	add	x2, sp, #0x10
    1dfc: aa1303e0     	mov	x0, x19
    1e00: 52800081     	mov	w1, #0x4                // =4
    1e04: 390043ff     	strb	wzr, [sp, #0x10]
    1e08: 97fff9d1     	bl	0x54c <aw22xxx_i2c_read>
    1e0c: 394043e8     	ldrb	w8, [sp, #0x10]
    1e10: aa1303e0     	mov	x0, x19
    1e14: 52800081     	mov	w1, #0x4                // =4
    1e18: 32000102     	orr	w2, w8, #0x1
    1e1c: 390043e2     	strb	w2, [sp, #0x10]
    1e20: 97fff97f     	bl	0x41c <aw22xxx_i2c_write>
    1e24: 39440288     	ldrb	w8, [x20, #0x100]
    1e28: 528001e9     	mov	w9, #0xf                // =15
    1e2c: aa1303e0     	mov	x0, x19
    1e30: 52801fe1     	mov	w1, #0xff               // =255
    1e34: 2a1f03e2     	mov	w2, wzr
    1e38: 71003d1f     	cmp	w8, #0xf
    1e3c: 1a893115     	csel	w21, w8, w9, lo
    1e40: 97fff977     	bl	0x41c <aw22xxx_i2c_write>
    1e44: aa1303e0     	mov	x0, x19
    1e48: 52800161     	mov	w1, #0xb                // =11
    1e4c: 2a1503e2     	mov	w2, w21
    1e50: 97fff973     	bl	0x41c <aw22xxx_i2c_write>
    1e54: aa1303e0     	mov	x0, x19
    1e58: 52800421     	mov	w1, #0x21               // =33
    1e5c: 52801c22     	mov	w2, #0xe1               // =225
    1e60: 97fff96f     	bl	0x41c <aw22xxx_i2c_write>
    1e64: aa1303e0     	mov	x0, x19
    1e68: 52800441     	mov	w1, #0x22               // =34
    1e6c: 2a1f03e2     	mov	w2, wzr
    1e70: 97fff96b     	bl	0x41c <aw22xxx_i2c_write>
    1e74: aa1303e0     	mov	x0, x19
    1e78: 52800401     	mov	w1, #0x20               // =32
    1e7c: 52800042     	mov	w2, #0x2                // =2
    1e80: 97fff967     	bl	0x41c <aw22xxx_i2c_write>
    1e84: aa1303e0     	mov	x0, x19
    1e88: 52800461     	mov	w1, #0x23               // =35
    1e8c: 528007a2     	mov	w2, #0x3d               // =61
    1e90: 97fff963     	bl	0x41c <aw22xxx_i2c_write>
    1e94: aa1303e0     	mov	x0, x19
    1e98: 52800401     	mov	w1, #0x20               // =32
    1e9c: 2a1f03e2     	mov	w2, wzr
    1ea0: 97fff95f     	bl	0x41c <aw22xxx_i2c_write>
    1ea4: 39443282     	ldrb	w2, [x20, #0x10c]
    1ea8: aa1303e0     	mov	x0, x19
    1eac: 528000a1     	mov	w1, #0x5                // =5
    1eb0: 97fff95b     	bl	0x41c <aw22xxx_i2c_write>
    1eb4: 39443682     	ldrb	w2, [x20, #0x10d]
    1eb8: aa1303e0     	mov	x0, x19
    1ebc: 528000c1     	mov	w1, #0x6                // =6
    1ec0: 97fff957     	bl	0x41c <aw22xxx_i2c_write>
    1ec4: d10033a2     	sub	x2, x29, #0xc
    1ec8: aa1303e0     	mov	x0, x19
    1ecc: 52800081     	mov	w1, #0x4                // =4
    1ed0: 381f43bf     	sturb	wzr, [x29, #-0xc]
    1ed4: 97fff99e     	bl	0x54c <aw22xxx_i2c_read>
    1ed8: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1edc: aa1303e0     	mov	x0, x19
    1ee0: 52800081     	mov	w1, #0x4                // =4
    1ee4: 321f0102     	orr	w2, w8, #0x2
    1ee8: 381f43a2     	sturb	w2, [x29, #-0xc]
    1eec: 97fff94c     	bl	0x41c <aw22xxx_i2c_write>
    1ef0: 17ffffa1     	b	0x1d74 <aw22xxx_task_work+0xdc>
    1ef4: 94000000     	bl	0x1ef4 <aw22xxx_task_work+0x25c>
		0000000000001ef4:  R_AARCH64_CALL26	__stack_chk_fail
