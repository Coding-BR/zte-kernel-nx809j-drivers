
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009ec <accel_z_axial_store>:
     9ec: d503233f     	paciasp
     9f0: d100c3ff     	sub	sp, sp, #0x30
     9f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     9f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     9fc: 910043fd     	add	x29, sp, #0x10
     a00: d5384109     	mrs	x9, SP_EL0
     a04: aa0203e8     	mov	x8, x2
     a08: 910013e2     	add	x2, sp, #0x4
     a0c: f9438929     	ldr	x9, [x9, #0x710]
     a10: 2a1f03e1     	mov	w1, wzr
     a14: aa0303f3     	mov	x19, x3
     a18: f90007e9     	str	x9, [sp, #0x8]
     a1c: f9404c14     	ldr	x20, [x0, #0x98]
     a20: aa0803e0     	mov	x0, x8
     a24: b90007ff     	str	wzr, [sp, #0x4]
     a28: 94000000     	bl	0xa28 <accel_z_axial_store+0x3c>
		0000000000000a28:  R_AARCH64_CALL26	kstrtoint
     a2c: 34000060     	cbz	w0, 0xa38 <accel_z_axial_store+0x4c>
     a30: 928002b3     	mov	x19, #-0x16             // =-22
     a34: 14000009     	b	0xa58 <accel_z_axial_store+0x6c>
     a38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000a38:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     a3c: b9400108     	ldr	w8, [x8]
		0000000000000a3c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     a40: 7100091f     	cmp	w8, #0x2
     a44: 5400020a     	b.ge	0xa84 <accel_z_axial_store+0x98>
     a48: b94007e8     	ldr	w8, [sp, #0x4]
     a4c: 7103251f     	cmp	w8, #0xc9
     a50: 540002e2     	b.hs	0xaac <accel_z_axial_store+0xc0>
     a54: b9004e88     	str	w8, [x20, #0x4c]
     a58: d5384108     	mrs	x8, SP_EL0
     a5c: f9438908     	ldr	x8, [x8, #0x710]
     a60: f94007e9     	ldr	x9, [sp, #0x8]
     a64: eb09011f     	cmp	x8, x9
     a68: 54000361     	b.ne	0xad4 <accel_z_axial_store+0xe8>
     a6c: aa1303e0     	mov	x0, x19
     a70: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     a74: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     a78: 9100c3ff     	add	sp, sp, #0x30
     a7c: d50323bf     	autiasp
     a80: d65f03c0     	ret
     a84: b94007e4     	ldr	w4, [sp, #0x4]
     a88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     a8c: 91000000     	add	x0, x0, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     a90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     a94: 91000021     	add	x1, x1, #0x0
		0000000000000a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     a98: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x311
     a9c: 91000042     	add	x2, x2, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x311
     aa0: 52800f03     	mov	w3, #0x78               // =120
     aa4: 94000000     	bl	0xaa4 <accel_z_axial_store+0xb8>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: 17ffffe8     	b	0xa48 <accel_z_axial_store+0x5c>
     aac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a7
     ab0: 91000000     	add	x0, x0, #0x0
		0000000000000ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a7
     ab4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ab8: 91000021     	add	x1, x1, #0x0
		0000000000000ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     abc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x311
     ac0: 91000042     	add	x2, x2, #0x0
		0000000000000ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x311
     ac4: 52801a43     	mov	w3, #0xd2               // =210
     ac8: 94000000     	bl	0xac8 <accel_z_axial_store+0xdc>
		0000000000000ac8:  R_AARCH64_CALL26	_printk
     acc: 928002b3     	mov	x19, #-0x16             // =-22
     ad0: 17ffffe2     	b	0xa58 <accel_z_axial_store+0x6c>
     ad4: 94000000     	bl	0xad4 <accel_z_axial_store+0xe8>
		0000000000000ad4:  R_AARCH64_CALL26	__stack_chk_fail
