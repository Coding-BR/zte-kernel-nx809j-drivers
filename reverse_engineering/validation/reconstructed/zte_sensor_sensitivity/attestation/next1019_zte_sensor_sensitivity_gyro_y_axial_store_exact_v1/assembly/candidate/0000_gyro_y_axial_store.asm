
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000948 <gyro_y_axial_store>:
     948: d503233f     	paciasp
     94c: d100c3ff     	sub	sp, sp, #0x30
     950: a9017bfd     	stp	x29, x30, [sp, #0x10]
     954: a9024ff4     	stp	x20, x19, [sp, #0x20]
     958: 910043fd     	add	x29, sp, #0x10
     95c: d5384109     	mrs	x9, SP_EL0
     960: aa0203e8     	mov	x8, x2
     964: 910013e2     	add	x2, sp, #0x4
     968: f9438929     	ldr	x9, [x9, #0x710]
     96c: 2a1f03e1     	mov	w1, wzr
     970: aa0303f3     	mov	x19, x3
     974: f90007e9     	str	x9, [sp, #0x8]
     978: f9404c14     	ldr	x20, [x0, #0x98]
     97c: aa0803e0     	mov	x0, x8
     980: b90007ff     	str	wzr, [sp, #0x4]
     984: 94000000     	bl	0x984 <gyro_y_axial_store+0x3c>
		0000000000000984:  R_AARCH64_CALL26	kstrtoint
     988: 34000060     	cbz	w0, 0x994 <gyro_y_axial_store+0x4c>
     98c: 928002b3     	mov	x19, #-0x16             // =-22
     990: 14000009     	b	0x9b4 <gyro_y_axial_store+0x6c>
     994: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     998: b9400108     	ldr	w8, [x8]
		0000000000000998:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     99c: 7100091f     	cmp	w8, #0x2
     9a0: 5400020a     	b.ge	0x9e0 <gyro_y_axial_store+0x98>
     9a4: b94007e8     	ldr	w8, [sp, #0x4]
     9a8: 7103251f     	cmp	w8, #0xc9
     9ac: 540002e2     	b.hs	0xa08 <gyro_y_axial_store+0xc0>
     9b0: b9005a88     	str	w8, [x20, #0x58]
     9b4: d5384108     	mrs	x8, SP_EL0
     9b8: f9438908     	ldr	x8, [x8, #0x710]
     9bc: f94007e9     	ldr	x9, [sp, #0x8]
     9c0: eb09011f     	cmp	x8, x9
     9c4: 54000361     	b.ne	0xa30 <gyro_y_axial_store+0xe8>
     9c8: aa1303e0     	mov	x0, x19
     9cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     9d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     9d4: 9100c3ff     	add	sp, sp, #0x30
     9d8: d50323bf     	autiasp
     9dc: d65f03c0     	ret
     9e0: b94007e4     	ldr	w4, [sp, #0x4]
     9e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     9e8: 91000000     	add	x0, x0, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     9ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     9f0: 91000021     	add	x1, x1, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     9f4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x440
     9f8: 91000042     	add	x2, x2, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x440
     9fc: 52802363     	mov	w3, #0x11b              // =283
     a00: 94000000     	bl	0xa00 <gyro_y_axial_store+0xb8>
		0000000000000a00:  R_AARCH64_CALL26	_printk
     a04: 17ffffe8     	b	0x9a4 <gyro_y_axial_store+0x5c>
     a08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2
     a0c: 91000000     	add	x0, x0, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2
     a10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12e
     a14: 91000021     	add	x1, x1, #0x0
		0000000000000a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12e
     a18: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x440
     a1c: 91000042     	add	x2, x2, #0x0
		0000000000000a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x440
     a20: 528023a3     	mov	w3, #0x11d              // =285
     a24: 94000000     	bl	0xa24 <gyro_y_axial_store+0xdc>
		0000000000000a24:  R_AARCH64_CALL26	_printk
     a28: 928002b3     	mov	x19, #-0x16             // =-22
     a2c: 17ffffe2     	b	0x9b4 <gyro_y_axial_store+0x6c>
     a30: 94000000     	bl	0xa30 <gyro_y_axial_store+0xe8>
		0000000000000a30:  R_AARCH64_CALL26	__stack_chk_fail
