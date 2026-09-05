
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004dc8 <aw22xxx_led_init>:
    4dc8: d503233f     	paciasp
    4dcc: d100c3ff     	sub	sp, sp, #0x30
    4dd0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4dd4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4dd8: 910043fd     	add	x29, sp, #0x10
    4ddc: d5384108     	mrs	x8, SP_EL0
    4de0: aa0003f3     	mov	x19, x0
    4de4: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004de4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    4de8: 91000000     	add	x0, x0, #0x0
		0000000000004de8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4dec: f9438908     	ldr	x8, [x8, #0x710]
    4df0: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004df0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xae2
    4df4: 91000021     	add	x1, x1, #0x0
		0000000000004df4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xae2
    4df8: f90007e8     	str	x8, [sp, #0x8]
    4dfc: 94000000     	bl	0x4dfc <aw22xxx_led_init+0x34>
		0000000000004dfc:  R_AARCH64_CALL26	_printk
    4e00: aa1303e0     	mov	x0, x19
    4e04: 52800021     	mov	w1, #0x1                // =1
    4e08: 52800aa2     	mov	w2, #0x55               // =85
    4e0c: 97ffefb6     	bl	0xce4 <aw22xxx_init_cfg_update_array+0xa4>
		0000000000004e0c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4e10: 5280fa00     	mov	w0, #0x7d0              // =2000
    4e14: 52817701     	mov	w1, #0xbb8              // =3000
    4e18: 52800042     	mov	w2, #0x2                // =2
    4e1c: 94000000     	bl	0x4e1c <aw22xxx_led_init+0x54>
		0000000000004e1c:  R_AARCH64_CALL26	usleep_range_state
    4e20: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004e20:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    4e24: 91000000     	add	x0, x0, #0x0
		0000000000004e24:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    4e28: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004e28:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    4e2c: 91000021     	add	x1, x1, #0x0
		0000000000004e2c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    4e30: 52803542     	mov	w2, #0x1aa              // =426
    4e34: 52800023     	mov	w3, #0x1                // =1
    4e38: 94000000     	bl	0x4e38 <aw22xxx_led_init+0x70>
		0000000000004e38:  R_AARCH64_CALL26	_printk
    4e3c: 910003e2     	mov	x2, sp
    4e40: aa1303e0     	mov	x0, x19
    4e44: 52800041     	mov	w1, #0x2                // =2
    4e48: 390003ff     	strb	wzr, [sp]
    4e4c: 97ffeff2     	bl	0xe14 <aw22xxx_set_breath_data+0x80>
		0000000000004e4c:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4e50: 394003e8     	ldrb	w8, [sp]
    4e54: aa1303e0     	mov	x0, x19
    4e58: 52800041     	mov	w1, #0x2                // =2
    4e5c: 32000102     	orr	w2, w8, #0x1
    4e60: 390003e2     	strb	w2, [sp]
    4e64: 97ffefa0     	bl	0xce4 <aw22xxx_init_cfg_update_array+0xa4>
		0000000000004e64:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4e68: 5280fa00     	mov	w0, #0x7d0              // =2000
    4e6c: 52817701     	mov	w1, #0xbb8              // =3000
    4e70: 52800042     	mov	w2, #0x2                // =2
    4e74: 94000000     	bl	0x4e74 <aw22xxx_led_init+0xac>
		0000000000004e74:  R_AARCH64_CALL26	usleep_range_state
    4e78: b942f268     	ldr	w8, [x19, #0x2f0]
    4e7c: 7100351f     	cmp	w8, #0xd
    4e80: 54000682     	b.hs	0x4f50 <aw22xxx_led_init+0x188>
    4e84: 90000009     	adrp	x9, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004e84:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_imax_code
    4e88: 91000129     	add	x9, x9, #0x0
		0000000000004e88:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_imax_code
    4e8c: aa1303e0     	mov	x0, x19
    4e90: 38686928     	ldrb	w8, [x9, x8]
    4e94: 528001e9     	mov	w9, #0xf                // =15
    4e98: 52801fe1     	mov	w1, #0xff               // =255
    4e9c: 2a1f03e2     	mov	w2, wzr
    4ea0: 71003d1f     	cmp	w8, #0xf
    4ea4: 1a893114     	csel	w20, w8, w9, lo
    4ea8: 97ffef8f     	bl	0xce4 <aw22xxx_init_cfg_update_array+0xa4>
		0000000000004ea8:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4eac: aa1303e0     	mov	x0, x19
    4eb0: 52800161     	mov	w1, #0xb                // =11
    4eb4: 2a1403e2     	mov	w2, w20
    4eb8: 97ffef8b     	bl	0xce4 <aw22xxx_init_cfg_update_array+0xa4>
		0000000000004eb8:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4ebc: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004ebc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
    4ec0: 91000000     	add	x0, x0, #0x0
		0000000000004ec0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
    4ec4: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004ec4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
    4ec8: 91000021     	add	x1, x1, #0x0
		0000000000004ec8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
    4ecc: 52803542     	mov	w2, #0x1aa              // =426
    4ed0: 2a1f03e3     	mov	w3, wzr
    4ed4: 94000000     	bl	0x4ed4 <aw22xxx_led_init+0x10c>
		0000000000004ed4:  R_AARCH64_CALL26	_printk
    4ed8: 910013e2     	add	x2, sp, #0x4
    4edc: aa1303e0     	mov	x0, x19
    4ee0: 52800041     	mov	w1, #0x2                // =2
    4ee4: 390013ff     	strb	wzr, [sp, #0x4]
    4ee8: 97ffefcb     	bl	0xe14 <aw22xxx_set_breath_data+0x80>
		0000000000004ee8:  R_AARCH64_CALL26	aw22xxx_i2c_read
    4eec: 394013e8     	ldrb	w8, [sp, #0x4]
    4ef0: aa1303e0     	mov	x0, x19
    4ef4: 52800041     	mov	w1, #0x2                // =2
    4ef8: 121f7902     	and	w2, w8, #0xfffffffe
    4efc: 390013e2     	strb	w2, [sp, #0x4]
    4f00: 97ffef79     	bl	0xce4 <aw22xxx_init_cfg_update_array+0xa4>
		0000000000004f00:  R_AARCH64_CALL26	aw22xxx_i2c_write
    4f04: 5280fa00     	mov	w0, #0x7d0              // =2000
    4f08: 52817701     	mov	w1, #0xbb8              // =3000
    4f0c: 52800042     	mov	w2, #0x2                // =2
    4f10: 94000000     	bl	0x4f10 <aw22xxx_led_init+0x148>
		0000000000004f10:  R_AARCH64_CALL26	usleep_range_state
    4f14: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004f14:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1565
    4f18: 91000000     	add	x0, x0, #0x0
		0000000000004f18:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1565
    4f1c: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004f1c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xae2
    4f20: 91000021     	add	x1, x1, #0x0
		0000000000004f20:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xae2
    4f24: 94000000     	bl	0x4f24 <aw22xxx_led_init+0x15c>
		0000000000004f24:  R_AARCH64_CALL26	_printk
    4f28: d5384108     	mrs	x8, SP_EL0
    4f2c: f9438908     	ldr	x8, [x8, #0x710]
    4f30: f94007e9     	ldr	x9, [sp, #0x8]
    4f34: eb09011f     	cmp	x8, x9
    4f38: 540000e1     	b.ne	0x4f54 <aw22xxx_led_init+0x18c>
    4f3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4f40: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4f44: 9100c3ff     	add	sp, sp, #0x30
    4f48: d50323bf     	autiasp
    4f4c: d65f03c0     	ret
    4f50: d42aa240     	brk	#0x5512
    4f54: 94000000     	bl	0x4f54 <aw22xxx_led_init+0x18c>
		0000000000004f54:  R_AARCH64_CALL26	__stack_chk_fail
