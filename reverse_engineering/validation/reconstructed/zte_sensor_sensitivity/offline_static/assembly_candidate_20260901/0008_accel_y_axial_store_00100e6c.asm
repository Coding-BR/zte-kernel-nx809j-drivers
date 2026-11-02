
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000087c <accel_y_axial_store>:
     87c: d503233f     	paciasp
     880: d100c3ff     	sub	sp, sp, #0x30
     884: a9017bfd     	stp	x29, x30, [sp, #0x10]
     888: a9024ff4     	stp	x20, x19, [sp, #0x20]
     88c: 910043fd     	add	x29, sp, #0x10
     890: d5384109     	mrs	x9, SP_EL0
     894: aa0203e8     	mov	x8, x2
     898: 910013e2     	add	x2, sp, #0x4
     89c: f9438929     	ldr	x9, [x9, #0x710]
     8a0: 2a1f03e1     	mov	w1, wzr
     8a4: aa0303f3     	mov	x19, x3
     8a8: f90007e9     	str	x9, [sp, #0x8]
     8ac: f9404c14     	ldr	x20, [x0, #0x98]
     8b0: aa0803e0     	mov	x0, x8
     8b4: b90007ff     	str	wzr, [sp, #0x4]
     8b8: 94000000     	bl	0x8b8 <accel_y_axial_store+0x3c>
		00000000000008b8:  R_AARCH64_CALL26	kstrtoint
     8bc: 34000060     	cbz	w0, 0x8c8 <accel_y_axial_store+0x4c>
     8c0: 928002b3     	mov	x19, #-0x16             // =-22
     8c4: 14000009     	b	0x8e8 <accel_y_axial_store+0x6c>
     8c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008c8:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     8cc: b9400108     	ldr	w8, [x8]
		00000000000008cc:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     8d0: 7100091f     	cmp	w8, #0x2
     8d4: 5400020a     	b.ge	0x914 <accel_y_axial_store+0x98>
     8d8: b94007e8     	ldr	w8, [sp, #0x4]
     8dc: 7103251f     	cmp	w8, #0xc9
     8e0: 540002e2     	b.hs	0x93c <accel_y_axial_store+0xc0>
     8e4: b9004a88     	str	w8, [x20, #0x48]
     8e8: d5384108     	mrs	x8, SP_EL0
     8ec: f9438908     	ldr	x8, [x8, #0x710]
     8f0: f94007e9     	ldr	x9, [sp, #0x8]
     8f4: eb09011f     	cmp	x8, x9
     8f8: 54000361     	b.ne	0x964 <accel_y_axial_store+0xe8>
     8fc: aa1303e0     	mov	x0, x19
     900: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     904: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     908: 9100c3ff     	add	sp, sp, #0x30
     90c: d50323bf     	autiasp
     910: d65f03c0     	ret
     914: b94007e4     	ldr	w4, [sp, #0x4]
     918: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     91c: 91000000     	add	x0, x0, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     920: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     924: 91000021     	add	x1, x1, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     928: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2
     92c: 91000042     	add	x2, x2, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2
     930: 52800f03     	mov	w3, #0x78               // =120
     934: 94000000     	bl	0x934 <accel_y_axial_store+0xb8>
		0000000000000934:  R_AARCH64_CALL26	_printk
     938: 17ffffe8     	b	0x8d8 <accel_y_axial_store+0x5c>
     93c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42d
     940: 91000000     	add	x0, x0, #0x0
		0000000000000940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42d
     944: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     948: 91000021     	add	x1, x1, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     94c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2
     950: 91000042     	add	x2, x2, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2
     954: 528014a3     	mov	w3, #0xa5               // =165
     958: 94000000     	bl	0x958 <accel_y_axial_store+0xdc>
		0000000000000958:  R_AARCH64_CALL26	_printk
     95c: 928002b3     	mov	x19, #-0x16             // =-22
     960: 17ffffe2     	b	0x8e8 <accel_y_axial_store+0x6c>
     964: 94000000     	bl	0x964 <accel_y_axial_store+0xe8>
		0000000000000964:  R_AARCH64_CALL26	__stack_chk_fail
