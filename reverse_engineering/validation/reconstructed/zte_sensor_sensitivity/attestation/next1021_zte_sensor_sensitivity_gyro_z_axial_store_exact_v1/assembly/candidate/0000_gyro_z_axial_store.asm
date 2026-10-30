
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000abc <gyro_z_axial_store>:
     abc: d503233f     	paciasp
     ac0: d100c3ff     	sub	sp, sp, #0x30
     ac4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     ac8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     acc: 910043fd     	add	x29, sp, #0x10
     ad0: d5384109     	mrs	x9, SP_EL0
     ad4: aa0203e8     	mov	x8, x2
     ad8: 910013e2     	add	x2, sp, #0x4
     adc: f9438929     	ldr	x9, [x9, #0x710]
     ae0: 2a1f03e1     	mov	w1, wzr
     ae4: aa0303f3     	mov	x19, x3
     ae8: f90007e9     	str	x9, [sp, #0x8]
     aec: f9404c14     	ldr	x20, [x0, #0x98]
     af0: aa0803e0     	mov	x0, x8
     af4: b90007ff     	str	wzr, [sp, #0x4]
     af8: 94000000     	bl	0xaf8 <gyro_z_axial_store+0x3c>
		0000000000000af8:  R_AARCH64_CALL26	kstrtoint
     afc: 34000060     	cbz	w0, 0xb08 <gyro_z_axial_store+0x4c>
     b00: 928002b3     	mov	x19, #-0x16             // =-22
     b04: 14000009     	b	0xb28 <gyro_z_axial_store+0x6c>
     b08: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     b0c: b9400108     	ldr	w8, [x8]
		0000000000000b0c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     b10: 7100091f     	cmp	w8, #0x2
     b14: 5400020a     	b.ge	0xb54 <gyro_z_axial_store+0x98>
     b18: b94007e8     	ldr	w8, [sp, #0x4]
     b1c: 7103251f     	cmp	w8, #0xc9
     b20: 540002e2     	b.hs	0xb7c <gyro_z_axial_store+0xc0>
     b24: b9005e88     	str	w8, [x20, #0x5c]
     b28: d5384108     	mrs	x8, SP_EL0
     b2c: f9438908     	ldr	x8, [x8, #0x710]
     b30: f94007e9     	ldr	x9, [sp, #0x8]
     b34: eb09011f     	cmp	x8, x9
     b38: 54000361     	b.ne	0xba4 <gyro_z_axial_store+0xe8>
     b3c: aa1303e0     	mov	x0, x19
     b40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     b44: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     b48: 9100c3ff     	add	sp, sp, #0x30
     b4c: d50323bf     	autiasp
     b50: d65f03c0     	ret
     b54: b94007e4     	ldr	w4, [sp, #0x4]
     b58: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x356
     b5c: 91000000     	add	x0, x0, #0x0
		0000000000000b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x356
     b60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     b64: 91000021     	add	x1, x1, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     b68: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac
     b6c: 91000042     	add	x2, x2, #0x0
		0000000000000b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac
     b70: 52802703     	mov	w3, #0x138              // =312
     b74: 94000000     	bl	0xb74 <gyro_z_axial_store+0xb8>
		0000000000000b74:  R_AARCH64_CALL26	_printk
     b78: 17ffffe8     	b	0xb18 <gyro_z_axial_store+0x5c>
     b7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a
     b80: 91000000     	add	x0, x0, #0x0
		0000000000000b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a
     b84: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     b88: 91000021     	add	x1, x1, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     b8c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ac
     b90: 91000042     	add	x2, x2, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ac
     b94: 52802743     	mov	w3, #0x13a              // =314
     b98: 94000000     	bl	0xb98 <gyro_z_axial_store+0xdc>
		0000000000000b98:  R_AARCH64_CALL26	_printk
     b9c: 928002b3     	mov	x19, #-0x16             // =-22
     ba0: 17ffffe2     	b	0xb28 <gyro_z_axial_store+0x6c>
     ba4: 94000000     	bl	0xba4 <gyro_z_axial_store+0xe8>
		0000000000000ba4:  R_AARCH64_CALL26	__stack_chk_fail
