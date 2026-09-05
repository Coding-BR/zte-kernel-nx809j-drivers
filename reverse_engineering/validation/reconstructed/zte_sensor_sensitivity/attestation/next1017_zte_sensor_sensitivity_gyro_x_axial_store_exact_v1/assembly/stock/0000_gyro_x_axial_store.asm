
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d1c <gyro_x_axial_store>:
     d1c: d503233f     	paciasp
     d20: d100c3ff     	sub	sp, sp, #0x30
     d24: a9017bfd     	stp	x29, x30, [sp, #0x10]
     d28: a9024ff4     	stp	x20, x19, [sp, #0x20]
     d2c: 910043fd     	add	x29, sp, #0x10
     d30: d5384109     	mrs	x9, SP_EL0
     d34: aa0203e8     	mov	x8, x2
     d38: 910013e2     	add	x2, sp, #0x4
     d3c: f9438929     	ldr	x9, [x9, #0x710]
     d40: 2a1f03e1     	mov	w1, wzr
     d44: aa0303f3     	mov	x19, x3
     d48: f90007e9     	str	x9, [sp, #0x8]
     d4c: f9404c14     	ldr	x20, [x0, #0x98]
     d50: aa0803e0     	mov	x0, x8
     d54: b90007ff     	str	wzr, [sp, #0x4]
     d58: 94000000     	bl	0xd58 <gyro_x_axial_store+0x3c>
		0000000000000d58:  R_AARCH64_CALL26	kstrtoint
     d5c: 34000060     	cbz	w0, 0xd68 <gyro_x_axial_store+0x4c>
     d60: 928002b3     	mov	x19, #-0x16             // =-22
     d64: 14000009     	b	0xd88 <gyro_x_axial_store+0x6c>
     d68: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d68:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     d6c: b9400108     	ldr	w8, [x8]
		0000000000000d6c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     d70: 7100091f     	cmp	w8, #0x2
     d74: 5400020a     	b.ge	0xdb4 <gyro_x_axial_store+0x98>
     d78: b94007e8     	ldr	w8, [sp, #0x4]
     d7c: 7103251f     	cmp	w8, #0xc9
     d80: 540002e2     	b.hs	0xddc <gyro_x_axial_store+0xc0>
     d84: b9005688     	str	w8, [x20, #0x54]
     d88: d5384108     	mrs	x8, SP_EL0
     d8c: f9438908     	ldr	x8, [x8, #0x710]
     d90: f94007e9     	ldr	x9, [sp, #0x8]
     d94: eb09011f     	cmp	x8, x9
     d98: 54000361     	b.ne	0xe04 <gyro_x_axial_store+0xe8>
     d9c: aa1303e0     	mov	x0, x19
     da0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     da4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     da8: 9100c3ff     	add	sp, sp, #0x30
     dac: d50323bf     	autiasp
     db0: d65f03c0     	ret
     db4: b94007e4     	ldr	w4, [sp, #0x4]
     db8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
     dbc: 91000000     	add	x0, x0, #0x0
		0000000000000dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
     dc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     dc4: 91000021     	add	x1, x1, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     dc8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x547
     dcc: 91000042     	add	x2, x2, #0x0
		0000000000000dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x547
     dd0: 52801fc3     	mov	w3, #0xfe               // =254
     dd4: 94000000     	bl	0xdd4 <gyro_x_axial_store+0xb8>
		0000000000000dd4:  R_AARCH64_CALL26	_printk
     dd8: 17ffffe8     	b	0xd78 <gyro_x_axial_store+0x5c>
     ddc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x303
     de0: 91000000     	add	x0, x0, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x303
     de4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     de8: 91000021     	add	x1, x1, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     dec: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x547
     df0: 91000042     	add	x2, x2, #0x0
		0000000000000df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x547
     df4: 52802003     	mov	w3, #0x100              // =256
     df8: 94000000     	bl	0xdf8 <gyro_x_axial_store+0xdc>
		0000000000000df8:  R_AARCH64_CALL26	_printk
     dfc: 928002b3     	mov	x19, #-0x16             // =-22
     e00: 17ffffe2     	b	0xd88 <gyro_x_axial_store+0x6c>
     e04: 94000000     	bl	0xe04 <gyro_x_axial_store+0xe8>
		0000000000000e04:  R_AARCH64_CALL26	__stack_chk_fail
