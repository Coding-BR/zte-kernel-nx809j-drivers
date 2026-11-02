
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000cb8 <gyro_x_axial_store>:
     cb8: d503233f     	paciasp
     cbc: d100c3ff     	sub	sp, sp, #0x30
     cc0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     cc4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     cc8: 910043fd     	add	x29, sp, #0x10
     ccc: d5384109     	mrs	x9, SP_EL0
     cd0: aa0203e8     	mov	x8, x2
     cd4: 910013e2     	add	x2, sp, #0x4
     cd8: f9438929     	ldr	x9, [x9, #0x710]
     cdc: 2a1f03e1     	mov	w1, wzr
     ce0: aa0303f3     	mov	x19, x3
     ce4: f90007e9     	str	x9, [sp, #0x8]
     ce8: f9404c14     	ldr	x20, [x0, #0x98]
     cec: aa0803e0     	mov	x0, x8
     cf0: b90007ff     	str	wzr, [sp, #0x4]
     cf4: 94000000     	bl	0xcf4 <gyro_x_axial_store+0x3c>
		0000000000000cf4:  R_AARCH64_CALL26	kstrtoint
     cf8: 34000060     	cbz	w0, 0xd04 <gyro_x_axial_store+0x4c>
     cfc: 928002b3     	mov	x19, #-0x16             // =-22
     d00: 14000009     	b	0xd24 <gyro_x_axial_store+0x6c>
     d04: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d04:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     d08: b9400108     	ldr	w8, [x8]
		0000000000000d08:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     d0c: 7100091f     	cmp	w8, #0x2
     d10: 5400020a     	b.ge	0xd50 <gyro_x_axial_store+0x98>
     d14: b94007e8     	ldr	w8, [sp, #0x4]
     d18: 7103251f     	cmp	w8, #0xc9
     d1c: 540002e2     	b.hs	0xd78 <gyro_x_axial_store+0xc0>
     d20: b9005688     	str	w8, [x20, #0x54]
     d24: d5384108     	mrs	x8, SP_EL0
     d28: f9438908     	ldr	x8, [x8, #0x710]
     d2c: f94007e9     	ldr	x9, [sp, #0x8]
     d30: eb09011f     	cmp	x8, x9
     d34: 54000361     	b.ne	0xda0 <gyro_x_axial_store+0xe8>
     d38: aa1303e0     	mov	x0, x19
     d3c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     d40: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     d44: 9100c3ff     	add	sp, sp, #0x30
     d48: d50323bf     	autiasp
     d4c: d65f03c0     	ret
     d50: b94007e4     	ldr	w4, [sp, #0x4]
     d54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     d58: 91000000     	add	x0, x0, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     d5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     d60: 91000021     	add	x1, x1, #0x0
		0000000000000d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     d64: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x325
     d68: 91000042     	add	x2, x2, #0x0
		0000000000000d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x325
     d6c: 52800f03     	mov	w3, #0x78               // =120
     d70: 94000000     	bl	0xd70 <gyro_x_axial_store+0xb8>
		0000000000000d70:  R_AARCH64_CALL26	_printk
     d74: 17ffffe8     	b	0xd14 <gyro_x_axial_store+0x5c>
     d78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27
     d7c: 91000000     	add	x0, x0, #0x0
		0000000000000d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27
     d80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     d84: 91000021     	add	x1, x1, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     d88: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x325
     d8c: 91000042     	add	x2, x2, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x325
     d90: 52802183     	mov	w3, #0x10c              // =268
     d94: 94000000     	bl	0xd94 <gyro_x_axial_store+0xdc>
		0000000000000d94:  R_AARCH64_CALL26	_printk
     d98: 928002b3     	mov	x19, #-0x16             // =-22
     d9c: 17ffffe2     	b	0xd24 <gyro_x_axial_store+0x6c>
     da0: 94000000     	bl	0xda0 <gyro_x_axial_store+0xe8>
		0000000000000da0:  R_AARCH64_CALL26	__stack_chk_fail
