
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004bbc <aw22xxx_recover_work_routine>:
    4bbc: d503233f     	paciasp
    4bc0: d10143ff     	sub	sp, sp, #0x50
    4bc4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    4bc8: f9001bf5     	str	x21, [sp, #0x30]
    4bcc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    4bd0: 910083fd     	add	x29, sp, #0x20
    4bd4: d5384108     	mrs	x8, SP_EL0
    4bd8: 90000015     	adrp	x21, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004bd8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc4d
    4bdc: 910002b5     	add	x21, x21, #0x0
		0000000000004bdc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc4d
    4be0: f9438908     	ldr	x8, [x8, #0x710]
    4be4: aa0003f3     	mov	x19, x0
    4be8: d1094014     	sub	x20, x0, #0x250
    4bec: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004bec:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb64
    4bf0: 91000000     	add	x0, x0, #0x0
		0000000000004bf0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb64
    4bf4: aa1503e1     	mov	x1, x21
    4bf8: f81f83a8     	stur	x8, [x29, #-0x8]
    4bfc: 94000000     	bl	0x4bfc <aw22xxx_recover_work_routine+0x40>
		0000000000004bfc:  R_AARCH64_CALL26	_printk
    4c00: aa1403e0     	mov	x0, x20
    4c04: 52801fe1     	mov	w1, #0xff               // =255
    4c08: 2a1f03e2     	mov	w2, wzr
    4c0c: 97ffefd4     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004c0c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4c10: 910033e2     	add	x2, sp, #0xc
    4c14: aa1403e0     	mov	x0, x20
    4c18: 52800081     	mov	w1, #0x4                // =4
    4c1c: 390033ff     	strb	wzr, [sp, #0xc]
    4c20: 97fff01b     	bl	0xc8c <aw22xxx_init_cfg_update_array+0x4c>
		0000000000004c20:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4c24: 394033e8     	ldrb	w8, [sp, #0xc]
    4c28: aa1403e0     	mov	x0, x20
    4c2c: 52800081     	mov	w1, #0x4                // =4
    4c30: 121e7902     	and	w2, w8, #0xfffffffd
    4c34: 390033e2     	strb	w2, [sp, #0xc]
    4c38: 97ffefc9     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004c38:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4c3c: 910043e2     	add	x2, sp, #0x10
    4c40: aa1403e0     	mov	x0, x20
    4c44: 52800081     	mov	w1, #0x4                // =4
    4c48: 390043ff     	strb	wzr, [sp, #0x10]
    4c4c: 97fff010     	bl	0xc8c <aw22xxx_init_cfg_update_array+0x4c>
		0000000000004c4c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4c50: 394043e8     	ldrb	w8, [sp, #0x10]
    4c54: aa1403e0     	mov	x0, x20
    4c58: 52800081     	mov	w1, #0x4                // =4
    4c5c: 121f7902     	and	w2, w8, #0xfffffffe
    4c60: 390043e2     	strb	w2, [sp, #0x10]
    4c64: 97ffefbe     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004c64:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4c68: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004c68:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    4c6c: 91000000     	add	x0, x0, #0x0
		0000000000004c6c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    4c70: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004c70:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    4c74: 91000021     	add	x1, x1, #0x0
		0000000000004c74:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    4c78: 52803542     	mov	w2, #0x1aa              // =426
    4c7c: 2a1f03e3     	mov	w3, wzr
    4c80: 94000000     	bl	0x4c80 <aw22xxx_recover_work_routine+0xc4>
		0000000000004c80:  R_AARCH64_CALL26	_printk
    4c84: d10033a2     	sub	x2, x29, #0xc
    4c88: aa1403e0     	mov	x0, x20
    4c8c: 52800041     	mov	w1, #0x2                // =2
    4c90: 381f43bf     	sturb	wzr, [x29, #-0xc]
    4c94: 97ffeffe     	bl	0xc8c <aw22xxx_init_cfg_update_array+0x4c>
		0000000000004c94:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4c98: 385f43a8     	ldurb	w8, [x29, #-0xc]
    4c9c: aa1403e0     	mov	x0, x20
    4ca0: 52800041     	mov	w1, #0x2                // =2
    4ca4: 121f7902     	and	w2, w8, #0xfffffffe
    4ca8: 381f43a2     	sturb	w2, [x29, #-0xc]
    4cac: 97ffefac     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004cac:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4cb0: 5280fa00     	mov	w0, #0x7d0              // =2000
    4cb4: 52817701     	mov	w1, #0xbb8              // =3000
    4cb8: 52800042     	mov	w2, #0x2                // =2
    4cbc: 94000000     	bl	0x4cbc <aw22xxx_recover_work_routine+0x100>
		0000000000004cbc:  R_AARCH64_CALL26	usleep_range_state
    4cc0: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004cc0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x7b1
    4cc4: 91000000     	add	x0, x0, #0x0
		0000000000004cc4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x7b1
    4cc8: aa1503e1     	mov	x1, x21
    4ccc: 94000000     	bl	0x4ccc <aw22xxx_recover_work_routine+0x110>
		0000000000004ccc:  R_AARCH64_CALL26	_printk
    4cd0: aa1403e0     	mov	x0, x20
    4cd4: 52801fe1     	mov	w1, #0xff               // =255
    4cd8: 2a1f03e2     	mov	w2, wzr
    4cdc: 97ffefa0     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004cdc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4ce0: aa1403e0     	mov	x0, x20
    4ce4: 52800041     	mov	w1, #0x2                // =2
    4ce8: 52800022     	mov	w2, #0x1                // =1
    4cec: 97ffef9c     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004cec:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4cf0: aa1403e0     	mov	x0, x20
    4cf4: 52800181     	mov	w1, #0xc                // =12
    4cf8: 2a1f03e2     	mov	w2, wzr
    4cfc: 97ffef98     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004cfc:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d00: aa1403e0     	mov	x0, x20
    4d04: 528000a1     	mov	w1, #0x5                // =5
    4d08: 52800022     	mov	w2, #0x1                // =1
    4d0c: 97ffef94     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004d0c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d10: aa1403e0     	mov	x0, x20
    4d14: 52800081     	mov	w1, #0x4                // =4
    4d18: 52800022     	mov	w2, #0x1                // =1
    4d1c: 97ffef90     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004d1c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d20: aa1403e0     	mov	x0, x20
    4d24: 52800121     	mov	w1, #0x9                // =9
    4d28: 52800222     	mov	w2, #0x11               // =17
    4d2c: 97ffef8c     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004d2c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d30: aa1403e0     	mov	x0, x20
    4d34: 52800081     	mov	w1, #0x4                // =4
    4d38: 52800062     	mov	w2, #0x3                // =3
    4d3c: 97ffef88     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004d3c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d40: aa1403e0     	mov	x0, x20
    4d44: 528000a1     	mov	w1, #0x5                // =5
    4d48: 52800822     	mov	w2, #0x41               // =65
    4d4c: 97ffef84     	bl	0xb5c <aw22xxx_fw_loaded+0xb58>
		0000000000004d4c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4d50: 52801900     	mov	w0, #0xc8               // =200
    4d54: 94000000     	bl	0x4d54 <aw22xxx_recover_work_routine+0x198>
		0000000000004d54:  R_AARCH64_CALL26	msleep
    4d58: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004d58:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x114c
    4d5c: 91000000     	add	x0, x0, #0x0
		0000000000004d5c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x114c
    4d60: aa1503e1     	mov	x1, x21
    4d64: 94000000     	bl	0x4d64 <aw22xxx_recover_work_routine+0x1a8>
		0000000000004d64:  R_AARCH64_CALL26	_printk
    4d68: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004d68:  R_AARCH64_ADR_PREL_PG_HI21	lamp_effect
    4d6c: aa1403e0     	mov	x0, x20
    4d70: b9400108     	ldr	w8, [x8]
		0000000000004d70:  R_AARCH64_LDST32_ABS_LO12_NC	lamp_effect
    4d74: b900b268     	str	w8, [x19, #0xb0]
    4d78: 97fffb72     	bl	0x3b40 <aw22xxx_para_store+0x2c0>
		0000000000004d78:  R_AARCH64_CALL26	aw22xxx_cfg_recover_update_wait
    4d7c: 52801900     	mov	w0, #0xc8               // =200
    4d80: 94000000     	bl	0x4d80 <aw22xxx_recover_work_routine+0x1c4>
		0000000000004d80:  R_AARCH64_CALL26	msleep
    4d84: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004d84:  R_AARCH64_ADR_PREL_PG_HI21	fan_effect
    4d88: aa1403e0     	mov	x0, x20
    4d8c: b9400108     	ldr	w8, [x8]
		0000000000004d8c:  R_AARCH64_LDST32_ABS_LO12_NC	fan_effect
    4d90: b900b268     	str	w8, [x19, #0xb0]
    4d94: 97fffb6b     	bl	0x3b40 <aw22xxx_para_store+0x2c0>
		0000000000004d94:  R_AARCH64_CALL26	aw22xxx_cfg_recover_update_wait
    4d98: d5384108     	mrs	x8, SP_EL0
    4d9c: f9438908     	ldr	x8, [x8, #0x710]
    4da0: f85f83a9     	ldur	x9, [x29, #-0x8]
    4da4: eb09011f     	cmp	x8, x9
    4da8: 540000e1     	b.ne	0x4dc4 <aw22xxx_recover_work_routine+0x208>
    4dac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    4db0: f9401bf5     	ldr	x21, [sp, #0x30]
    4db4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    4db8: 910143ff     	add	sp, sp, #0x50
    4dbc: d50323bf     	autiasp
    4dc0: d65f03c0     	ret
    4dc4: 94000000     	bl	0x4dc4 <aw22xxx_recover_work_routine+0x208>
		0000000000004dc4:  R_AARCH64_CALL26	__stack_chk_fail
