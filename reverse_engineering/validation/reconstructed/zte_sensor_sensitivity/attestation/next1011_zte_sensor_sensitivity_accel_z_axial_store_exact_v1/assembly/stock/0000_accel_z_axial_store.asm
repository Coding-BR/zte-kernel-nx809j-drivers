
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a30 <accel_z_axial_store>:
     a30: d503233f     	paciasp
     a34: d100c3ff     	sub	sp, sp, #0x30
     a38: a9017bfd     	stp	x29, x30, [sp, #0x10]
     a3c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     a40: 910043fd     	add	x29, sp, #0x10
     a44: d5384109     	mrs	x9, SP_EL0
     a48: aa0203e8     	mov	x8, x2
     a4c: 910013e2     	add	x2, sp, #0x4
     a50: f9438929     	ldr	x9, [x9, #0x710]
     a54: 2a1f03e1     	mov	w1, wzr
     a58: aa0303f3     	mov	x19, x3
     a5c: f90007e9     	str	x9, [sp, #0x8]
     a60: f9404c14     	ldr	x20, [x0, #0x98]
     a64: aa0803e0     	mov	x0, x8
     a68: b90007ff     	str	wzr, [sp, #0x4]
     a6c: 94000000     	bl	0xa6c <accel_z_axial_store+0x3c>
		0000000000000a6c:  R_AARCH64_CALL26	kstrtoint
     a70: 34000060     	cbz	w0, 0xa7c <accel_z_axial_store+0x4c>
     a74: 928002b3     	mov	x19, #-0x16             // =-22
     a78: 14000009     	b	0xa9c <accel_z_axial_store+0x6c>
     a7c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     a80: b9400108     	ldr	w8, [x8]
		0000000000000a80:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     a84: 7100091f     	cmp	w8, #0x2
     a88: 5400020a     	b.ge	0xac8 <accel_z_axial_store+0x98>
     a8c: b94007e8     	ldr	w8, [sp, #0x4]
     a90: 7103251f     	cmp	w8, #0xc9
     a94: 540002e2     	b.hs	0xaf0 <accel_z_axial_store+0xc0>
     a98: b9004e88     	str	w8, [x20, #0x4c]
     a9c: d5384108     	mrs	x8, SP_EL0
     aa0: f9438908     	ldr	x8, [x8, #0x710]
     aa4: f94007e9     	ldr	x9, [sp, #0x8]
     aa8: eb09011f     	cmp	x8, x9
     aac: 54000361     	b.ne	0xb18 <accel_z_axial_store+0xe8>
     ab0: aa1303e0     	mov	x0, x19
     ab4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     ab8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     abc: 9100c3ff     	add	sp, sp, #0x30
     ac0: d50323bf     	autiasp
     ac4: d65f03c0     	ret
     ac8: b94007e4     	ldr	w4, [sp, #0x4]
     acc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21b
     ad0: 91000000     	add	x0, x0, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21b
     ad4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     ad8: 91000021     	add	x1, x1, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     adc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x503
     ae0: 91000042     	add	x2, x2, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x503
     ae4: 52801643     	mov	w3, #0xb2               // =178
     ae8: 94000000     	bl	0xae8 <accel_z_axial_store+0xb8>
		0000000000000ae8:  R_AARCH64_CALL26	_printk
     aec: 17ffffe8     	b	0xa8c <accel_z_axial_store+0x5c>
     af0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x492
     af4: 91000000     	add	x0, x0, #0x0
		0000000000000af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x492
     af8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     afc: 91000021     	add	x1, x1, #0x0
		0000000000000afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     b00: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x503
     b04: 91000042     	add	x2, x2, #0x0
		0000000000000b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x503
     b08: 52801683     	mov	w3, #0xb4               // =180
     b0c: 94000000     	bl	0xb0c <accel_z_axial_store+0xdc>
		0000000000000b0c:  R_AARCH64_CALL26	_printk
     b10: 928002b3     	mov	x19, #-0x16             // =-22
     b14: 17ffffe2     	b	0xa9c <accel_z_axial_store+0x6c>
     b18: 94000000     	bl	0xb18 <accel_z_axial_store+0xe8>
		0000000000000b18:  R_AARCH64_CALL26	__stack_chk_fail
