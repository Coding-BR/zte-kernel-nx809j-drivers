
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e0c <gyro_y_axial_show>:
     e0c: d503233f     	paciasp
     e10: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     e14: a9014ff4     	stp	x20, x19, [sp, #0x10]
     e18: 910003fd     	mov	x29, sp
     e1c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e1c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     e20: f9404c13     	ldr	x19, [x0, #0x98]
     e24: aa0203e0     	mov	x0, x2
     e28: b9400108     	ldr	w8, [x8]
		0000000000000e28:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     e2c: 7100091f     	cmp	w8, #0x2
     e30: 5400014a     	b.ge	0xe58 <gyro_y_axial_show+0x4c>
     e34: b9405a62     	ldr	w2, [x19, #0x58]
     e38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     e3c: 91000021     	add	x1, x1, #0x0
		0000000000000e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     e40: 94000000     	bl	0xe40 <gyro_y_axial_show+0x34>
		0000000000000e40:  R_AARCH64_CALL26	sprintf
     e44: 93407c00     	sxtw	x0, w0
     e48: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     e4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     e50: d50323bf     	autiasp
     e54: d65f03c0     	ret
     e58: b9405a64     	ldr	w4, [x19, #0x58]
     e5c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x440
     e60: 91000108     	add	x8, x8, #0x0
		0000000000000e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x440
     e64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     e68: 91000021     	add	x1, x1, #0x0
		0000000000000e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     e6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cb
     e70: 91000042     	add	x2, x2, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cb
     e74: aa0003f4     	mov	x20, x0
     e78: aa0803e0     	mov	x0, x8
     e7c: 52802523     	mov	w3, #0x129              // =297
     e80: 94000000     	bl	0xe80 <gyro_y_axial_show+0x74>
		0000000000000e80:  R_AARCH64_CALL26	_printk
     e84: aa1403e0     	mov	x0, x20
     e88: 17ffffeb     	b	0xe34 <gyro_y_axial_show+0x28>
