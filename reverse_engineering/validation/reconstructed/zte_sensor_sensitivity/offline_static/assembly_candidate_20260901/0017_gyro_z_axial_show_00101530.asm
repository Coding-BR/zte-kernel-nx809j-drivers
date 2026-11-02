
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f18 <gyro_z_axial_show>:
     f18: d503233f     	paciasp
     f1c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     f20: a9014ff4     	stp	x20, x19, [sp, #0x10]
     f24: 910003fd     	mov	x29, sp
     f28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f28:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     f2c: f9404c13     	ldr	x19, [x0, #0x98]
     f30: aa0203e0     	mov	x0, x2
     f34: b9400108     	ldr	w8, [x8]
		0000000000000f34:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     f38: 7100091f     	cmp	w8, #0x2
     f3c: 5400014a     	b.ge	0xf64 <gyro_z_axial_show+0x4c>
     f40: b9405e62     	ldr	w2, [x19, #0x5c]
     f44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     f48: 91000021     	add	x1, x1, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     f4c: 94000000     	bl	0xf4c <gyro_z_axial_show+0x34>
		0000000000000f4c:  R_AARCH64_CALL26	sprintf
     f50: 93407c00     	sxtw	x0, w0
     f54: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     f58: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     f5c: d50323bf     	autiasp
     f60: d65f03c0     	ret
     f64: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     f68: 91000108     	add	x8, x8, #0x0
		0000000000000f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     f6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     f70: 91000021     	add	x1, x1, #0x0
		0000000000000f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     f74: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f
     f78: 91000042     	add	x2, x2, #0x0
		0000000000000f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f
     f7c: aa0003f4     	mov	x20, x0
     f80: aa0803e0     	mov	x0, x8
     f84: 528010c3     	mov	w3, #0x86               // =134
     f88: 94000000     	bl	0xf88 <gyro_z_axial_show+0x70>
		0000000000000f88:  R_AARCH64_CALL26	_printk
     f8c: aa1403e0     	mov	x0, x20
     f90: 17ffffec     	b	0xf40 <gyro_z_axial_show+0x28>
