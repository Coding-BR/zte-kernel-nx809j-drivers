
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c40 <aw22xxx_init_cfg_update_array>:
     c40: d503233f     	paciasp
     c44: d100c3ff     	sub	sp, sp, #0x30
     c48: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c4c: f90013f3     	str	x19, [sp, #0x20]
     c50: 910043fd     	add	x29, sp, #0x10
     c54: d5384108     	mrs	x8, SP_EL0
     c58: aa0003f3     	mov	x19, x0
     c5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x80e
     c60: 91000000     	add	x0, x0, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x80e
     c64: f9438908     	ldr	x8, [x8, #0x710]
     c68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c68:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x146e
     c6c: 91000021     	add	x1, x1, #0x0
		0000000000000c6c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x146e
     c70: 52803942     	mov	w2, #0x1ca              // =458
     c74: f90007e8     	str	x8, [sp, #0x8]
     c78: 94000000     	bl	0xc78 <aw22xxx_init_cfg_update_array+0x38>
		0000000000000c78:  R_AARCH64_CALL26	_printk
     c7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
     c80: 91000000     	add	x0, x0, #0x0
		0000000000000c80:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
     c84: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c84:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
     c88: 91000021     	add	x1, x1, #0x0
		0000000000000c88:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
     c8c: 52803542     	mov	w2, #0x1aa              // =426
     c90: 52800023     	mov	w3, #0x1                // =1
     c94: 94000000     	bl	0xc94 <aw22xxx_init_cfg_update_array+0x54>
		0000000000000c94:  R_AARCH64_CALL26	_printk
     c98: 910013e2     	add	x2, sp, #0x4
     c9c: aa1303e0     	mov	x0, x19
     ca0: 52800041     	mov	w1, #0x2                // =2
     ca4: 390013ff     	strb	wzr, [sp, #0x4]
     ca8: 94000000     	bl	0xca8 <aw22xxx_init_cfg_update_array+0x68>
		0000000000000ca8:  R_AARCH64_CALL26	aw22xxx_i2c_read
     cac: 394013e8     	ldrb	w8, [sp, #0x4]
     cb0: aa1303e0     	mov	x0, x19
     cb4: 52800041     	mov	w1, #0x2                // =2
     cb8: 32000102     	orr	w2, w8, #0x1
     cbc: 390013e2     	strb	w2, [sp, #0x4]
     cc0: 94000000     	bl	0xcc0 <aw22xxx_init_cfg_update_array+0x80>
		0000000000000cc0:  R_AARCH64_CALL26	aw22xxx_i2c_write
     cc4: 5280fa00     	mov	w0, #0x7d0              // =2000
     cc8: 52817701     	mov	w1, #0xbb8              // =3000
     ccc: 52800042     	mov	w2, #0x2                // =2
     cd0: 94000000     	bl	0xcd0 <aw22xxx_init_cfg_update_array+0x90>
		0000000000000cd0:  R_AARCH64_CALL26	usleep_range_state
     cd4: aa1303e0     	mov	x0, x19
     cd8: 52801fe1     	mov	w1, #0xff               // =255
     cdc: 2a1f03e2     	mov	w2, wzr
     ce0: 94000000     	bl	0xce0 <aw22xxx_init_cfg_update_array+0xa0>
		0000000000000ce0:  R_AARCH64_CALL26	aw22xxx_i2c_write
     ce4: aa1303e0     	mov	x0, x19
     ce8: 52800041     	mov	w1, #0x2                // =2
     cec: 52800022     	mov	w2, #0x1                // =1
     cf0: 94000000     	bl	0xcf0 <aw22xxx_init_cfg_update_array+0xb0>
		0000000000000cf0:  R_AARCH64_CALL26	aw22xxx_i2c_write
     cf4: aa1303e0     	mov	x0, x19
     cf8: 52800181     	mov	w1, #0xc                // =12
     cfc: 2a1f03e2     	mov	w2, wzr
     d00: 94000000     	bl	0xd00 <aw22xxx_init_cfg_update_array+0xc0>
		0000000000000d00:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d04: aa1303e0     	mov	x0, x19
     d08: 52800161     	mov	w1, #0xb                // =11
     d0c: 528000a2     	mov	w2, #0x5                // =5
     d10: 94000000     	bl	0xd10 <aw22xxx_init_cfg_update_array+0xd0>
		0000000000000d10:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d14: aa1303e0     	mov	x0, x19
     d18: 528000a1     	mov	w1, #0x5                // =5
     d1c: 52800022     	mov	w2, #0x1                // =1
     d20: 94000000     	bl	0xd20 <aw22xxx_init_cfg_update_array+0xe0>
		0000000000000d20:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d24: aa1303e0     	mov	x0, x19
     d28: 52800081     	mov	w1, #0x4                // =4
     d2c: 52800022     	mov	w2, #0x1                // =1
     d30: 94000000     	bl	0xd30 <aw22xxx_init_cfg_update_array+0xf0>
		0000000000000d30:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d34: aa1303e0     	mov	x0, x19
     d38: 52800121     	mov	w1, #0x9                // =9
     d3c: 52800022     	mov	w2, #0x1                // =1
     d40: 94000000     	bl	0xd40 <aw22xxx_init_cfg_update_array+0x100>
		0000000000000d40:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d44: aa1303e0     	mov	x0, x19
     d48: 52800081     	mov	w1, #0x4                // =4
     d4c: 52800062     	mov	w2, #0x3                // =3
     d50: 94000000     	bl	0xd50 <aw22xxx_init_cfg_update_array+0x110>
		0000000000000d50:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d54: aa1303e0     	mov	x0, x19
     d58: 528000a1     	mov	w1, #0x5                // =5
     d5c: 52800822     	mov	w2, #0x41               // =65
     d60: 94000000     	bl	0xd60 <aw22xxx_init_cfg_update_array+0x120>
		0000000000000d60:  R_AARCH64_CALL26	aw22xxx_i2c_write
     d64: d5384108     	mrs	x8, SP_EL0
     d68: f9438908     	ldr	x8, [x8, #0x710]
     d6c: f94007e9     	ldr	x9, [sp, #0x8]
     d70: eb09011f     	cmp	x8, x9
     d74: 540000c1     	b.ne	0xd8c <aw22xxx_init_cfg_update_array+0x14c>
     d78: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d7c: f94013f3     	ldr	x19, [sp, #0x20]
     d80: 9100c3ff     	add	sp, sp, #0x30
     d84: d50323bf     	autiasp
     d88: d65f03c0     	ret
     d8c: 94000000     	bl	0xd8c <aw22xxx_init_cfg_update_array+0x14c>
		0000000000000d8c:  R_AARCH64_CALL26	__stack_chk_fail
