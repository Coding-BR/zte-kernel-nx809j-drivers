
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004d24 <aw22xxx_led_init>:
    4d24: d503233f     	paciasp
    4d28: d100c3ff     	sub	sp, sp, #0x30
    4d2c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4d30: a9024ff4     	stp	x20, x19, [sp, #0x20]
    4d34: 910043fd     	add	x29, sp, #0x10
    4d38: d5384108     	mrs	x8, SP_EL0
    4d3c: aa0003f3     	mov	x19, x0
    4d40: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    4d44: 91000000     	add	x0, x0, #0x0
		0000000000004d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    4d48: f9438908     	ldr	x8, [x8, #0x710]
    4d4c: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2
    4d50: 91000021     	add	x1, x1, #0x0
		0000000000004d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2
    4d54: f90007e8     	str	x8, [sp, #0x8]
    4d58: 94000000     	bl	0x4d58 <aw22xxx_led_init+0x34>
		0000000000004d58:  R_AARCH64_CALL26	_printk
    4d5c: aa1303e0     	mov	x0, x19
    4d60: 52800021     	mov	w1, #0x1                // =1
    4d64: 52800aa2     	mov	w2, #0x55               // =85
    4d68: 97ffedad     	bl	0x41c <aw22xxx_i2c_write>
    4d6c: 5280fa00     	mov	w0, #0x7d0              // =2000
    4d70: 52817701     	mov	w1, #0xbb8              // =3000
    4d74: 52800042     	mov	w2, #0x2                // =2
    4d78: 94000000     	bl	0x4d78 <aw22xxx_led_init+0x54>
		0000000000004d78:  R_AARCH64_CALL26	usleep_range_state
    4d7c: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    4d80: 91000000     	add	x0, x0, #0x0
		0000000000004d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    4d84: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    4d88: 91000021     	add	x1, x1, #0x0
		0000000000004d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    4d8c: 52803542     	mov	w2, #0x1aa              // =426
    4d90: 52800023     	mov	w3, #0x1                // =1
    4d94: 94000000     	bl	0x4d94 <aw22xxx_led_init+0x70>
		0000000000004d94:  R_AARCH64_CALL26	_printk
    4d98: 910003e2     	mov	x2, sp
    4d9c: aa1303e0     	mov	x0, x19
    4da0: 52800041     	mov	w1, #0x2                // =2
    4da4: 390003ff     	strb	wzr, [sp]
    4da8: 97ffede9     	bl	0x54c <aw22xxx_i2c_read>
    4dac: 394003e8     	ldrb	w8, [sp]
    4db0: aa1303e0     	mov	x0, x19
    4db4: 52800041     	mov	w1, #0x2                // =2
    4db8: 32000102     	orr	w2, w8, #0x1
    4dbc: 390003e2     	strb	w2, [sp]
    4dc0: 97ffed97     	bl	0x41c <aw22xxx_i2c_write>
    4dc4: 5280fa00     	mov	w0, #0x7d0              // =2000
    4dc8: 52817701     	mov	w1, #0xbb8              // =3000
    4dcc: 52800042     	mov	w2, #0x2                // =2
    4dd0: 94000000     	bl	0x4dd0 <aw22xxx_led_init+0xac>
		0000000000004dd0:  R_AARCH64_CALL26	usleep_range_state
    4dd4: b942f268     	ldr	w8, [x19, #0x2f0]
    4dd8: 7100351f     	cmp	w8, #0xd
    4ddc: 54000682     	b.hs	0x4eac <aw22xxx_led_init+0x188>
    4de0: 90000009     	adrp	x9, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x140
    4de4: 91000129     	add	x9, x9, #0x0
		0000000000004de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x140
    4de8: aa1303e0     	mov	x0, x19
    4dec: 38686928     	ldrb	w8, [x9, x8]
    4df0: 528001e9     	mov	w9, #0xf                // =15
    4df4: 52801fe1     	mov	w1, #0xff               // =255
    4df8: 2a1f03e2     	mov	w2, wzr
    4dfc: 71003d1f     	cmp	w8, #0xf
    4e00: 1a893114     	csel	w20, w8, w9, lo
    4e04: 97ffed86     	bl	0x41c <aw22xxx_i2c_write>
    4e08: aa1303e0     	mov	x0, x19
    4e0c: 52800161     	mov	w1, #0xb                // =11
    4e10: 2a1403e2     	mov	w2, w20
    4e14: 97ffed82     	bl	0x41c <aw22xxx_i2c_write>
    4e18: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x148c
    4e1c: 91000000     	add	x0, x0, #0x0
		0000000000004e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x148c
    4e20: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181c
    4e24: 91000021     	add	x1, x1, #0x0
		0000000000004e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181c
    4e28: 52803542     	mov	w2, #0x1aa              // =426
    4e2c: 2a1f03e3     	mov	w3, wzr
    4e30: 94000000     	bl	0x4e30 <aw22xxx_led_init+0x10c>
		0000000000004e30:  R_AARCH64_CALL26	_printk
    4e34: 910013e2     	add	x2, sp, #0x4
    4e38: aa1303e0     	mov	x0, x19
    4e3c: 52800041     	mov	w1, #0x2                // =2
    4e40: 390013ff     	strb	wzr, [sp, #0x4]
    4e44: 97ffedc2     	bl	0x54c <aw22xxx_i2c_read>
    4e48: 394013e8     	ldrb	w8, [sp, #0x4]
    4e4c: aa1303e0     	mov	x0, x19
    4e50: 52800041     	mov	w1, #0x2                // =2
    4e54: 121f7902     	and	w2, w8, #0xfffffffe
    4e58: 390013e2     	strb	w2, [sp, #0x4]
    4e5c: 97ffed70     	bl	0x41c <aw22xxx_i2c_write>
    4e60: 5280fa00     	mov	w0, #0x7d0              // =2000
    4e64: 52817701     	mov	w1, #0xbb8              // =3000
    4e68: 52800042     	mov	w2, #0x2                // =2
    4e6c: 94000000     	bl	0x4e6c <aw22xxx_led_init+0x148>
		0000000000004e6c:  R_AARCH64_CALL26	usleep_range_state
    4e70: 90000000     	adrp	x0, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1565
    4e74: 91000000     	add	x0, x0, #0x0
		0000000000004e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1565
    4e78: 90000001     	adrp	x1, 0x4000 <aw22xxx_recover_work_routine+0x128>
		0000000000004e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2
    4e7c: 91000021     	add	x1, x1, #0x0
		0000000000004e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2
    4e80: 94000000     	bl	0x4e80 <aw22xxx_led_init+0x15c>
		0000000000004e80:  R_AARCH64_CALL26	_printk
    4e84: d5384108     	mrs	x8, SP_EL0
    4e88: f9438908     	ldr	x8, [x8, #0x710]
    4e8c: f94007e9     	ldr	x9, [sp, #0x8]
    4e90: eb09011f     	cmp	x8, x9
    4e94: 540000e1     	b.ne	0x4eb0 <aw22xxx_led_init+0x18c>
    4e98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4e9c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4ea0: 9100c3ff     	add	sp, sp, #0x30
    4ea4: d50323bf     	autiasp
    4ea8: d65f03c0     	ret
    4eac: d42aa240     	brk	#0x5512
    4eb0: 94000000     	bl	0x4eb0 <aw22xxx_led_init+0x18c>
		0000000000004eb0:  R_AARCH64_CALL26	__stack_chk_fail
