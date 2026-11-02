
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c38 <gyro_x_axial_show>:
     c38: d503233f     	paciasp
     c3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     c40: a9014ff4     	stp	x20, x19, [sp, #0x10]
     c44: 910003fd     	mov	x29, sp
     c48: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     c4c: f9404c13     	ldr	x19, [x0, #0x98]
     c50: aa0203e0     	mov	x0, x2
     c54: b9400108     	ldr	w8, [x8]
		0000000000000c54:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     c58: 7100091f     	cmp	w8, #0x2
     c5c: 5400014a     	b.ge	0xc84 <gyro_x_axial_show+0x4c>
     c60: b9405662     	ldr	w2, [x19, #0x54]
     c64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     c68: 91000021     	add	x1, x1, #0x0
		0000000000000c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     c6c: 94000000     	bl	0xc6c <gyro_x_axial_show+0x34>
		0000000000000c6c:  R_AARCH64_CALL26	sprintf
     c70: 93407c00     	sxtw	x0, w0
     c74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     c78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     c7c: d50323bf     	autiasp
     c80: d65f03c0     	ret
     c84: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     c88: 91000108     	add	x8, x8, #0x0
		0000000000000c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     c8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     c90: 91000021     	add	x1, x1, #0x0
		0000000000000c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     c94: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x123
     c98: 91000042     	add	x2, x2, #0x0
		0000000000000c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x123
     c9c: aa0003f4     	mov	x20, x0
     ca0: aa0803e0     	mov	x0, x8
     ca4: 528010c3     	mov	w3, #0x86               // =134
     ca8: 94000000     	bl	0xca8 <gyro_x_axial_show+0x70>
		0000000000000ca8:  R_AARCH64_CALL26	_printk
     cac: aa1403e0     	mov	x0, x20
     cb0: 17ffffec     	b	0xc60 <gyro_x_axial_show+0x28>
