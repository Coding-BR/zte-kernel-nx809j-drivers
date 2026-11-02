
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008bc <accel_y_axial_store>:
     8bc: d503233f     	paciasp
     8c0: d100c3ff     	sub	sp, sp, #0x30
     8c4: a9017bfd     	stp	x29, x30, [sp, #0x10]
     8c8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     8cc: 910043fd     	add	x29, sp, #0x10
     8d0: d5384109     	mrs	x9, SP_EL0
     8d4: aa0203e8     	mov	x8, x2
     8d8: 910013e2     	add	x2, sp, #0x4
     8dc: f9438929     	ldr	x9, [x9, #0x710]
     8e0: 2a1f03e1     	mov	w1, wzr
     8e4: aa0303f3     	mov	x19, x3
     8e8: f90007e9     	str	x9, [sp, #0x8]
     8ec: f9404c14     	ldr	x20, [x0, #0x98]
     8f0: aa0803e0     	mov	x0, x8
     8f4: b90007ff     	str	wzr, [sp, #0x4]
     8f8: 94000000     	bl	0x8f8 <accel_y_axial_store+0x3c>
		00000000000008f8:  R_AARCH64_CALL26	kstrtoint
     8fc: 34000060     	cbz	w0, 0x908 <accel_y_axial_store+0x4c>
     900: 928002b3     	mov	x19, #-0x16             // =-22
     904: 14000009     	b	0x928 <accel_y_axial_store+0x6c>
     908: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000908:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     90c: b9400108     	ldr	w8, [x8]
		000000000000090c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     910: 7100091f     	cmp	w8, #0x2
     914: 5400020a     	b.ge	0x954 <accel_y_axial_store+0x98>
     918: b94007e8     	ldr	w8, [sp, #0x4]
     91c: 7103251f     	cmp	w8, #0xc9
     920: 540002e2     	b.hs	0x97c <accel_y_axial_store+0xc0>
     924: b9004a88     	str	w8, [x20, #0x48]
     928: d5384108     	mrs	x8, SP_EL0
     92c: f9438908     	ldr	x8, [x8, #0x710]
     930: f94007e9     	ldr	x9, [sp, #0x8]
     934: eb09011f     	cmp	x8, x9
     938: 54000361     	b.ne	0x9a4 <accel_y_axial_store+0xe8>
     93c: aa1303e0     	mov	x0, x19
     940: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     944: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     948: 9100c3ff     	add	sp, sp, #0x30
     94c: d50323bf     	autiasp
     950: d65f03c0     	ret
     954: b94007e4     	ldr	w4, [sp, #0x4]
     958: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x683
     95c: 91000000     	add	x0, x0, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x683
     960: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     964: 91000021     	add	x1, x1, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     968: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170
     96c: 91000042     	add	x2, x2, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170
     970: 528012a3     	mov	w3, #0x95               // =149
     974: 94000000     	bl	0x974 <accel_y_axial_store+0xb8>
		0000000000000974:  R_AARCH64_CALL26	_printk
     978: 17ffffe8     	b	0x918 <accel_y_axial_store+0x5c>
     97c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000097c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc2
     980: 91000000     	add	x0, x0, #0x0
		0000000000000980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc2
     984: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     988: 91000021     	add	x1, x1, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     98c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170
     990: 91000042     	add	x2, x2, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170
     994: 528012e3     	mov	w3, #0x97               // =151
     998: 94000000     	bl	0x998 <accel_y_axial_store+0xdc>
		0000000000000998:  R_AARCH64_CALL26	_printk
     99c: 928002b3     	mov	x19, #-0x16             // =-22
     9a0: 17ffffe2     	b	0x928 <accel_y_axial_store+0x6c>
     9a4: 94000000     	bl	0x9a4 <accel_y_axial_store+0xe8>
		00000000000009a4:  R_AARCH64_CALL26	__stack_chk_fail
