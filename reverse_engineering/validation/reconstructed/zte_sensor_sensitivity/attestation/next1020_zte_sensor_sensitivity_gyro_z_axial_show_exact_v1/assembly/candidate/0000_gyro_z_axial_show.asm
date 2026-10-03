
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a38 <gyro_z_axial_show>:
     a38: d503233f     	paciasp
     a3c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     a40: a9014ff4     	stp	x20, x19, [sp, #0x10]
     a44: 910003fd     	mov	x29, sp
     a48: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     a4c: f9404c13     	ldr	x19, [x0, #0x98]
     a50: aa0203e0     	mov	x0, x2
     a54: b9400108     	ldr	w8, [x8]
		0000000000000a54:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     a58: 7100091f     	cmp	w8, #0x2
     a5c: 5400014a     	b.ge	0xa84 <gyro_z_axial_show+0x4c>
     a60: b9405e62     	ldr	w2, [x19, #0x5c]
     a64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae
     a68: 91000021     	add	x1, x1, #0x0
		0000000000000a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae
     a6c: 94000000     	bl	0xa6c <gyro_z_axial_show+0x34>
		0000000000000a6c:  R_AARCH64_CALL26	sprintf
     a70: 93407c00     	sxtw	x0, w0
     a74: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     a78: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     a7c: d50323bf     	autiasp
     a80: d65f03c0     	ret
     a84: b9405e64     	ldr	w4, [x19, #0x5c]
     a88: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b0
     a8c: 91000108     	add	x8, x8, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b0
     a90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     a94: 91000021     	add	x1, x1, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     a98: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38a
     a9c: 91000042     	add	x2, x2, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38a
     aa0: aa0003f4     	mov	x20, x0
     aa4: aa0803e0     	mov	x0, x8
     aa8: 528028c3     	mov	w3, #0x146              // =326
     aac: 94000000     	bl	0xaac <gyro_z_axial_show+0x74>
		0000000000000aac:  R_AARCH64_CALL26	_printk
     ab0: aa1403e0     	mov	x0, x20
     ab4: 17ffffeb     	b	0xa60 <gyro_z_axial_show+0x28>
