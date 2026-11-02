
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d98 <aw22xxx_irq_v15>:
    1d98: d503233f     	paciasp
    1d9c: d10143ff     	sub	sp, sp, #0x50
    1da0: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1da4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1da8: 9100c3fd     	add	x29, sp, #0x30
    1dac: d5384108     	mrs	x8, SP_EL0
    1db0: aa0103f3     	mov	x19, x1
    1db4: 910033e2     	add	x2, sp, #0xc
    1db8: f9438908     	ldr	x8, [x8, #0x710]
    1dbc: aa0103e0     	mov	x0, x1
    1dc0: 52800141     	mov	w1, #0xa                // =10
    1dc4: f81f83a8     	stur	x8, [x29, #-0x8]
    1dc8: 390033ff     	strb	wzr, [sp, #0xc]
    1dcc: 97fffcf0     	bl	0x118c <aw22xxx_i2c_read>
    1dd0: 394033e2     	ldrb	w2, [sp, #0xc]
    1dd4: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001dd4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x387
    1dd8: 91000000     	add	x0, x0, #0x0
		0000000000001dd8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x387
    1ddc: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd74
    1de0: 91000021     	add	x1, x1, #0x0
		0000000000001de0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd74
    1de4: 94000000     	bl	0x1de4 <aw22xxx_irq_v15+0x4c>
		0000000000001de4:  R_AARCH64_CALL26	_printk
    1de8: 394033e8     	ldrb	w8, [sp, #0xc]
    1dec: 370001a8     	tbnz	w8, #0x0, 0x1e20 <aw22xxx_irq_v15+0x88>
    1df0: 37200908     	tbnz	w8, #0x4, 0x1f10 <aw22xxx_irq_v15+0x178>
    1df4: d5384108     	mrs	x8, SP_EL0
    1df8: f9438908     	ldr	x8, [x8, #0x710]
    1dfc: f85f83a9     	ldur	x9, [x29, #-0x8]
    1e00: eb09011f     	cmp	x8, x9
    1e04: 54000ea1     	b.ne	0x1fd8 <aw22xxx_irq_v15+0x240>
    1e08: 52800020     	mov	w0, #0x1                // =1
    1e0c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1e10: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1e14: 910143ff     	add	sp, sp, #0x50
    1e18: d50323bf     	autiasp
    1e1c: d65f03c0     	ret
    1e20: 90000014     	adrp	x20, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001e20:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd74
    1e24: 91000294     	add	x20, x20, #0x0
		0000000000001e24:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd74
    1e28: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001e28:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x5a6
    1e2c: 91000000     	add	x0, x0, #0x0
		0000000000001e2c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x5a6
    1e30: aa1403e1     	mov	x1, x20
    1e34: 94000000     	bl	0x1e34 <aw22xxx_irq_v15+0x9c>
		0000000000001e34:  R_AARCH64_CALL26	_printk
    1e38: aa1303e0     	mov	x0, x19
    1e3c: 52801fe1     	mov	w1, #0xff               // =255
    1e40: 2a1f03e2     	mov	w2, wzr
    1e44: 97fffc86     	bl	0x105c <aw22xxx_i2c_write>
    1e48: 910043e2     	add	x2, sp, #0x10
    1e4c: aa1303e0     	mov	x0, x19
    1e50: 52800081     	mov	w1, #0x4                // =4
    1e54: 390043ff     	strb	wzr, [sp, #0x10]
    1e58: 97fffccd     	bl	0x118c <aw22xxx_i2c_read>
    1e5c: 394043e8     	ldrb	w8, [sp, #0x10]
    1e60: aa1303e0     	mov	x0, x19
    1e64: 52800081     	mov	w1, #0x4                // =4
    1e68: 121e7902     	and	w2, w8, #0xfffffffd
    1e6c: 390043e2     	strb	w2, [sp, #0x10]
    1e70: 97fffc7b     	bl	0x105c <aw22xxx_i2c_write>
    1e74: 910053e2     	add	x2, sp, #0x14
    1e78: aa1303e0     	mov	x0, x19
    1e7c: 52800081     	mov	w1, #0x4                // =4
    1e80: 390053ff     	strb	wzr, [sp, #0x14]
    1e84: 97fffcc2     	bl	0x118c <aw22xxx_i2c_read>
    1e88: 394053e8     	ldrb	w8, [sp, #0x14]
    1e8c: aa1303e0     	mov	x0, x19
    1e90: 52800081     	mov	w1, #0x4                // =4
    1e94: 121f7902     	and	w2, w8, #0xfffffffe
    1e98: 390053e2     	strb	w2, [sp, #0x14]
    1e9c: 97fffc70     	bl	0x105c <aw22xxx_i2c_write>
    1ea0: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    1ea4: 91000000     	add	x0, x0, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    1ea8: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ea8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    1eac: 91000021     	add	x1, x1, #0x0
		0000000000001eac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    1eb0: 52803542     	mov	w2, #0x1aa              // =426
    1eb4: 2a1f03e3     	mov	w3, wzr
    1eb8: 94000000     	bl	0x1eb8 <aw22xxx_irq_v15+0x120>
		0000000000001eb8:  R_AARCH64_CALL26	_printk
    1ebc: 910063e2     	add	x2, sp, #0x18
    1ec0: aa1303e0     	mov	x0, x19
    1ec4: 52800041     	mov	w1, #0x2                // =2
    1ec8: 390063ff     	strb	wzr, [sp, #0x18]
    1ecc: 97fffcb0     	bl	0x118c <aw22xxx_i2c_read>
    1ed0: 394063e8     	ldrb	w8, [sp, #0x18]
    1ed4: aa1303e0     	mov	x0, x19
    1ed8: 52800041     	mov	w1, #0x2                // =2
    1edc: 121f7902     	and	w2, w8, #0xfffffffe
    1ee0: 390063e2     	strb	w2, [sp, #0x18]
    1ee4: 97fffc5e     	bl	0x105c <aw22xxx_i2c_write>
    1ee8: 5280fa00     	mov	w0, #0x7d0              // =2000
    1eec: 52817701     	mov	w1, #0xbb8              // =3000
    1ef0: 52800042     	mov	w2, #0x2                // =2
    1ef4: 94000000     	bl	0x1ef4 <aw22xxx_irq_v15+0x15c>
		0000000000001ef4:  R_AARCH64_CALL26	usleep_range_state
    1ef8: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ef8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x7b1
    1efc: 91000000     	add	x0, x0, #0x0
		0000000000001efc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x7b1
    1f00: aa1403e1     	mov	x1, x20
    1f04: 94000000     	bl	0x1f04 <aw22xxx_irq_v15+0x16c>
		0000000000001f04:  R_AARCH64_CALL26	_printk
    1f08: 394033e8     	ldrb	w8, [sp, #0xc]
    1f0c: 3627f748     	tbz	w8, #0x4, 0x1df4 <aw22xxx_irq_v15+0x5c>
    1f10: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001f10:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8ea
    1f14: 91000000     	add	x0, x0, #0x0
		0000000000001f14:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8ea
    1f18: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xd74
    1f1c: 91000021     	add	x1, x1, #0x0
		0000000000001f1c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xd74
    1f20: 94000000     	bl	0x1f20 <aw22xxx_irq_v15+0x188>
		0000000000001f20:  R_AARCH64_CALL26	_printk
    1f24: aa1303e0     	mov	x0, x19
    1f28: 52801fe1     	mov	w1, #0xff               // =255
    1f2c: 2a1f03e2     	mov	w2, wzr
    1f30: 97fffc4b     	bl	0x105c <aw22xxx_i2c_write>
    1f34: d10053a2     	sub	x2, x29, #0x14
    1f38: aa1303e0     	mov	x0, x19
    1f3c: 52800081     	mov	w1, #0x4                // =4
    1f40: 381ec3bf     	sturb	wzr, [x29, #-0x14]
    1f44: 97fffc92     	bl	0x118c <aw22xxx_i2c_read>
    1f48: 385ec3a8     	ldurb	w8, [x29, #-0x14]
    1f4c: aa1303e0     	mov	x0, x19
    1f50: 52800081     	mov	w1, #0x4                // =4
    1f54: 121e7902     	and	w2, w8, #0xfffffffd
    1f58: 381ec3a2     	sturb	w2, [x29, #-0x14]
    1f5c: 97fffc40     	bl	0x105c <aw22xxx_i2c_write>
    1f60: d10043a2     	sub	x2, x29, #0x10
    1f64: aa1303e0     	mov	x0, x19
    1f68: 52800081     	mov	w1, #0x4                // =4
    1f6c: 381f03bf     	sturb	wzr, [x29, #-0x10]
    1f70: 97fffc87     	bl	0x118c <aw22xxx_i2c_read>
    1f74: 385f03a8     	ldurb	w8, [x29, #-0x10]
    1f78: aa1303e0     	mov	x0, x19
    1f7c: 52800081     	mov	w1, #0x4                // =4
    1f80: 321f0102     	orr	w2, w8, #0x2
    1f84: 381f03a2     	sturb	w2, [x29, #-0x10]
    1f88: 97fffc35     	bl	0x105c <aw22xxx_i2c_write>
    1f8c: d10033a2     	sub	x2, x29, #0xc
    1f90: aa1303e0     	mov	x0, x19
    1f94: 52800081     	mov	w1, #0x4                // =4
    1f98: 381f43bf     	sturb	wzr, [x29, #-0xc]
    1f9c: 97fffc7c     	bl	0x118c <aw22xxx_i2c_read>
    1fa0: 385f43a8     	ldurb	w8, [x29, #-0xc]
    1fa4: aa1303e0     	mov	x0, x19
    1fa8: 52800081     	mov	w1, #0x4                // =4
    1fac: 32000102     	orr	w2, w8, #0x1
    1fb0: 381f43a2     	sturb	w2, [x29, #-0xc]
    1fb4: 97fffc2a     	bl	0x105c <aw22xxx_i2c_write>
    1fb8: b9430268     	ldr	w8, [x19, #0x300]
    1fbc: 34fff1c8     	cbz	w8, 0x1df4 <aw22xxx_irq_v15+0x5c>
    1fc0: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001fc0:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1fc4: 9108c262     	add	x2, x19, #0x230
    1fc8: 52800400     	mov	w0, #0x20               // =32
    1fcc: f9400101     	ldr	x1, [x8]
		0000000000001fcc:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1fd0: 94000000     	bl	0x1fd0 <aw22xxx_irq_v15+0x238>
		0000000000001fd0:  R_AARCH64_CALL26	queue_work_on
    1fd4: 17ffff88     	b	0x1df4 <aw22xxx_irq_v15+0x5c>
    1fd8: 94000000     	bl	0x1fd8 <aw22xxx_irq_v15+0x240>
		0000000000001fd8:  R_AARCH64_CALL26	__stack_chk_fail
