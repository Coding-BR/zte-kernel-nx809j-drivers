
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e28 <gyro_y_axial_store>:
     e28: d503233f     	paciasp
     e2c: d100c3ff     	sub	sp, sp, #0x30
     e30: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e34: a9024ff4     	stp	x20, x19, [sp, #0x20]
     e38: 910043fd     	add	x29, sp, #0x10
     e3c: d5384109     	mrs	x9, SP_EL0
     e40: aa0203e8     	mov	x8, x2
     e44: 910013e2     	add	x2, sp, #0x4
     e48: f9438929     	ldr	x9, [x9, #0x710]
     e4c: 2a1f03e1     	mov	w1, wzr
     e50: aa0303f3     	mov	x19, x3
     e54: f90007e9     	str	x9, [sp, #0x8]
     e58: f9404c14     	ldr	x20, [x0, #0x98]
     e5c: aa0803e0     	mov	x0, x8
     e60: b90007ff     	str	wzr, [sp, #0x4]
     e64: 94000000     	bl	0xe64 <gyro_y_axial_store+0x3c>
		0000000000000e64:  R_AARCH64_CALL26	kstrtoint
     e68: 34000060     	cbz	w0, 0xe74 <gyro_y_axial_store+0x4c>
     e6c: 928002b3     	mov	x19, #-0x16             // =-22
     e70: 14000009     	b	0xe94 <gyro_y_axial_store+0x6c>
     e74: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     e78: b9400108     	ldr	w8, [x8]
		0000000000000e78:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     e7c: 7100091f     	cmp	w8, #0x2
     e80: 5400020a     	b.ge	0xec0 <gyro_y_axial_store+0x98>
     e84: b94007e8     	ldr	w8, [sp, #0x4]
     e88: 7103251f     	cmp	w8, #0xc9
     e8c: 540002e2     	b.hs	0xee8 <gyro_y_axial_store+0xc0>
     e90: b9005a88     	str	w8, [x20, #0x58]
     e94: d5384108     	mrs	x8, SP_EL0
     e98: f9438908     	ldr	x8, [x8, #0x710]
     e9c: f94007e9     	ldr	x9, [sp, #0x8]
     ea0: eb09011f     	cmp	x8, x9
     ea4: 54000361     	b.ne	0xf10 <gyro_y_axial_store+0xe8>
     ea8: aa1303e0     	mov	x0, x19
     eac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     eb0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     eb4: 9100c3ff     	add	sp, sp, #0x30
     eb8: d50323bf     	autiasp
     ebc: d65f03c0     	ret
     ec0: b94007e4     	ldr	w4, [sp, #0x4]
     ec4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     ec8: 91000000     	add	x0, x0, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     ecc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ed0: 91000021     	add	x1, x1, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     ed4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec
     ed8: 91000042     	add	x2, x2, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec
     edc: 52800f03     	mov	w3, #0x78               // =120
     ee0: 94000000     	bl	0xee0 <gyro_y_axial_store+0xb8>
		0000000000000ee0:  R_AARCH64_CALL26	_printk
     ee4: 17ffffe8     	b	0xe84 <gyro_y_axial_store+0x5c>
     ee8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338
     eec: 91000000     	add	x0, x0, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338
     ef0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ef4: 91000021     	add	x1, x1, #0x0
		0000000000000ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     ef8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ec
     efc: 91000042     	add	x2, x2, #0x0
		0000000000000efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ec
     f00: 52802723     	mov	w3, #0x139              // =313
     f04: 94000000     	bl	0xf04 <gyro_y_axial_store+0xdc>
		0000000000000f04:  R_AARCH64_CALL26	_printk
     f08: 928002b3     	mov	x19, #-0x16             // =-22
     f0c: 17ffffe2     	b	0xe94 <gyro_y_axial_store+0x6c>
     f10: 94000000     	bl	0xf10 <gyro_y_axial_store+0xe8>
		0000000000000f10:  R_AARCH64_CALL26	__stack_chk_fail
