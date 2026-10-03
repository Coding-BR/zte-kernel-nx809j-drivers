
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003ed8 <aw22xxx_recover_work_routine>:
    3ed8: d503233f     	paciasp
    3edc: d10143ff     	sub	sp, sp, #0x50
    3ee0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3ee4: f9001bf5     	str	x21, [sp, #0x30]
    3ee8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3eec: 910083fd     	add	x29, sp, #0x20
    3ef0: d5384108     	mrs	x8, SP_EL0
    3ef4: 90000015     	adrp	x21, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4d
    3ef8: 910002b5     	add	x21, x21, #0x0
		0000000000003ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4d
    3efc: f9438908     	ldr	x8, [x8, #0x710]
    3f00: aa0003f3     	mov	x19, x0
    3f04: d1094014     	sub	x20, x0, #0x250
    3f08: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb64
    3f0c: 91000000     	add	x0, x0, #0x0
		0000000000003f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb64
    3f10: aa1503e1     	mov	x1, x21
    3f14: f81f83a8     	stur	x8, [x29, #-0x8]
    3f18: 94000000     	bl	0x3f18 <aw22xxx_recover_work_routine+0x40>
		0000000000003f18:  R_AARCH64_CALL26	_printk
    3f1c: aa1403e0     	mov	x0, x20
    3f20: 52801fe1     	mov	w1, #0xff               // =255
    3f24: 2a1f03e2     	mov	w2, wzr
    3f28: 97fff13d     	bl	0x41c <aw22xxx_i2c_write>
    3f2c: 910033e2     	add	x2, sp, #0xc
    3f30: aa1403e0     	mov	x0, x20
    3f34: 52800081     	mov	w1, #0x4                // =4
    3f38: 390033ff     	strb	wzr, [sp, #0xc]
    3f3c: 97fff184     	bl	0x54c <aw22xxx_i2c_read>
    3f40: 394033e8     	ldrb	w8, [sp, #0xc]
    3f44: aa1403e0     	mov	x0, x20
    3f48: 52800081     	mov	w1, #0x4                // =4
    3f4c: 121e7902     	and	w2, w8, #0xfffffffd
    3f50: 390033e2     	strb	w2, [sp, #0xc]
    3f54: 97fff132     	bl	0x41c <aw22xxx_i2c_write>
    3f58: 910043e2     	add	x2, sp, #0x10
    3f5c: aa1403e0     	mov	x0, x20
    3f60: 52800081     	mov	w1, #0x4                // =4
    3f64: 390043ff     	strb	wzr, [sp, #0x10]
    3f68: 97fff179     	bl	0x54c <aw22xxx_i2c_read>
    3f6c: 394043e8     	ldrb	w8, [sp, #0x10]
    3f70: aa1403e0     	mov	x0, x20
    3f74: 52800081     	mov	w1, #0x4                // =4
    3f78: 121f7902     	and	w2, w8, #0xfffffffe
    3f7c: 390043e2     	strb	w2, [sp, #0x10]
    3f80: 97fff127     	bl	0x41c <aw22xxx_i2c_write>
    3f84: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    3f88: 91000000     	add	x0, x0, #0x0
		0000000000003f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    3f8c: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    3f90: 91000021     	add	x1, x1, #0x0
		0000000000003f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    3f94: 52803542     	mov	w2, #0x1aa              // =426
    3f98: 2a1f03e3     	mov	w3, wzr
    3f9c: 94000000     	bl	0x3f9c <aw22xxx_recover_work_routine+0xc4>
		0000000000003f9c:  R_AARCH64_CALL26	_printk
    3fa0: d10033a2     	sub	x2, x29, #0xc
    3fa4: aa1403e0     	mov	x0, x20
    3fa8: 52800041     	mov	w1, #0x2                // =2
    3fac: 381f43bf     	sturb	wzr, [x29, #-0xc]
    3fb0: 97fff167     	bl	0x54c <aw22xxx_i2c_read>
    3fb4: 385f43a8     	ldurb	w8, [x29, #-0xc]
    3fb8: aa1403e0     	mov	x0, x20
    3fbc: 52800041     	mov	w1, #0x2                // =2
    3fc0: 121f7902     	and	w2, w8, #0xfffffffe
    3fc4: 381f43a2     	sturb	w2, [x29, #-0xc]
    3fc8: 97fff115     	bl	0x41c <aw22xxx_i2c_write>
    3fcc: 5280fa00     	mov	w0, #0x7d0              // =2000
    3fd0: 52817701     	mov	w1, #0xbb8              // =3000
    3fd4: 52800042     	mov	w2, #0x2                // =2
    3fd8: 94000000     	bl	0x3fd8 <aw22xxx_recover_work_routine+0x100>
		0000000000003fd8:  R_AARCH64_CALL26	usleep_range_state
    3fdc: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b1
    3fe0: 91000000     	add	x0, x0, #0x0
		0000000000003fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b1
    3fe4: aa1503e1     	mov	x1, x21
    3fe8: 94000000     	bl	0x3fe8 <aw22xxx_recover_work_routine+0x110>
		0000000000003fe8:  R_AARCH64_CALL26	_printk
    3fec: aa1403e0     	mov	x0, x20
    3ff0: 52801fe1     	mov	w1, #0xff               // =255
    3ff4: 2a1f03e2     	mov	w2, wzr
    3ff8: 97fff109     	bl	0x41c <aw22xxx_i2c_write>
    3ffc: aa1403e0     	mov	x0, x20
    4000: 52800041     	mov	w1, #0x2                // =2
    4004: 52800022     	mov	w2, #0x1                // =1
    4008: 97fff105     	bl	0x41c <aw22xxx_i2c_write>
    400c: aa1403e0     	mov	x0, x20
    4010: 52800181     	mov	w1, #0xc                // =12
    4014: 2a1f03e2     	mov	w2, wzr
    4018: 97fff101     	bl	0x41c <aw22xxx_i2c_write>
    401c: aa1403e0     	mov	x0, x20
    4020: 528000a1     	mov	w1, #0x5                // =5
    4024: 52800022     	mov	w2, #0x1                // =1
    4028: 97fff0fd     	bl	0x41c <aw22xxx_i2c_write>
    402c: aa1403e0     	mov	x0, x20
    4030: 52800081     	mov	w1, #0x4                // =4
    4034: 52800022     	mov	w2, #0x1                // =1
    4038: 97fff0f9     	bl	0x41c <aw22xxx_i2c_write>
    403c: aa1403e0     	mov	x0, x20
    4040: 52800121     	mov	w1, #0x9                // =9
    4044: 52800222     	mov	w2, #0x11               // =17
    4048: 97fff0f5     	bl	0x41c <aw22xxx_i2c_write>
    404c: aa1403e0     	mov	x0, x20
    4050: 52800081     	mov	w1, #0x4                // =4
    4054: 52800062     	mov	w2, #0x3                // =3
    4058: 97fff0f1     	bl	0x41c <aw22xxx_i2c_write>
    405c: aa1403e0     	mov	x0, x20
    4060: 528000a1     	mov	w1, #0x5                // =5
    4064: 52800822     	mov	w2, #0x41               // =65
    4068: 97fff0ed     	bl	0x41c <aw22xxx_i2c_write>
    406c: 52801900     	mov	w0, #0xc8               // =200
    4070: 94000000     	bl	0x4070 <aw22xxx_recover_work_routine+0x198>
		0000000000004070:  R_AARCH64_CALL26	msleep
    4074: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x114c
    4078: 91000000     	add	x0, x0, #0x0
		0000000000004078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x114c
    407c: aa1503e1     	mov	x1, x21
    4080: 94000000     	bl	0x4080 <aw22xxx_recover_work_routine+0x1a8>
		0000000000004080:  R_AARCH64_CALL26	_printk
    4084: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004084:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6260
    4088: aa1403e0     	mov	x0, x20
    408c: b9400108     	ldr	w8, [x8]
		000000000000408c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6260
    4090: b900b268     	str	w8, [x19, #0xb0]
    4094: 94000388     	bl	0x4eb4 <aw22xxx_cfg_recover_update_wait>
    4098: 52801900     	mov	w0, #0xc8               // =200
    409c: 94000000     	bl	0x409c <aw22xxx_recover_work_routine+0x1c4>
		000000000000409c:  R_AARCH64_CALL26	msleep
    40a0: 90000008     	adrp	x8, 0x4000 <aw22xxx_recover_work_routine+0x128>
		00000000000040a0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6264
    40a4: aa1403e0     	mov	x0, x20
    40a8: b9400108     	ldr	w8, [x8]
		00000000000040a8:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6264
    40ac: b900b268     	str	w8, [x19, #0xb0]
    40b0: 94000381     	bl	0x4eb4 <aw22xxx_cfg_recover_update_wait>
    40b4: d5384108     	mrs	x8, SP_EL0
    40b8: f9438908     	ldr	x8, [x8, #0x710]
    40bc: f85f83a9     	ldur	x9, [x29, #-0x8]
    40c0: eb09011f     	cmp	x8, x9
    40c4: 540000e1     	b.ne	0x40e0 <aw22xxx_recover_work_routine+0x208>
    40c8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    40cc: f9401bf5     	ldr	x21, [sp, #0x30]
    40d0: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    40d4: 910143ff     	add	sp, sp, #0x50
    40d8: d50323bf     	autiasp
    40dc: d65f03c0     	ret
    40e0: 94000000     	bl	0x40e0 <aw22xxx_recover_work_routine+0x208>
		00000000000040e0:  R_AARCH64_CALL26	__stack_chk_fail
