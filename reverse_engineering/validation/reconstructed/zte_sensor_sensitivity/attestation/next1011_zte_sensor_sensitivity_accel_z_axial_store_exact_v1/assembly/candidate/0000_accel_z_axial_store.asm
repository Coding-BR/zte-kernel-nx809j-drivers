
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004e8 <accel_z_axial_store>:
     4e8: d503233f     	paciasp
     4ec: d100c3ff     	sub	sp, sp, #0x30
     4f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
     4f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     4f8: 910043fd     	add	x29, sp, #0x10
     4fc: d5384109     	mrs	x9, SP_EL0
     500: aa0203e8     	mov	x8, x2
     504: 910013e2     	add	x2, sp, #0x4
     508: f9438929     	ldr	x9, [x9, #0x710]
     50c: 2a1f03e1     	mov	w1, wzr
     510: aa0303f3     	mov	x19, x3
     514: f90007e9     	str	x9, [sp, #0x8]
     518: f9404c14     	ldr	x20, [x0, #0x98]
     51c: aa0803e0     	mov	x0, x8
     520: b90007ff     	str	wzr, [sp, #0x4]
     524: 94000000     	bl	0x524 <accel_z_axial_store+0x3c>
		0000000000000524:  R_AARCH64_CALL26	kstrtoint
     528: 34000060     	cbz	w0, 0x534 <accel_z_axial_store+0x4c>
     52c: 928002b3     	mov	x19, #-0x16             // =-22
     530: 14000009     	b	0x554 <accel_z_axial_store+0x6c>
     534: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000534:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     538: b9400108     	ldr	w8, [x8]
		0000000000000538:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     53c: 7100091f     	cmp	w8, #0x2
     540: 5400020a     	b.ge	0x580 <accel_z_axial_store+0x98>
     544: b94007e8     	ldr	w8, [sp, #0x4]
     548: 7103251f     	cmp	w8, #0xc9
     54c: 540002e2     	b.hs	0x5a8 <accel_z_axial_store+0xc0>
     550: b9004e88     	str	w8, [x20, #0x4c]
     554: d5384108     	mrs	x8, SP_EL0
     558: f9438908     	ldr	x8, [x8, #0x710]
     55c: f94007e9     	ldr	x9, [sp, #0x8]
     560: eb09011f     	cmp	x8, x9
     564: 54000361     	b.ne	0x5d0 <accel_z_axial_store+0xe8>
     568: aa1303e0     	mov	x0, x19
     56c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     570: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     574: 9100c3ff     	add	sp, sp, #0x30
     578: d50323bf     	autiasp
     57c: d65f03c0     	ret
     580: b94007e4     	ldr	w4, [sp, #0x4]
     584: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
     588: 91000000     	add	x0, x0, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
     58c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
     590: 91000021     	add	x1, x1, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
     594: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5da
     598: 91000042     	add	x2, x2, #0x0
		0000000000000598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5da
     59c: 52801643     	mov	w3, #0xb2               // =178
     5a0: 94000000     	bl	0x5a0 <accel_z_axial_store+0xb8>
		00000000000005a0:  R_AARCH64_CALL26	_printk
     5a4: 17ffffe8     	b	0x544 <accel_z_axial_store+0x5c>
     5a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56e
     5ac: 91000000     	add	x0, x0, #0x0
		00000000000005ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56e
     5b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde
     5b4: 91000021     	add	x1, x1, #0x0
		00000000000005b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde
     5b8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5da
     5bc: 91000042     	add	x2, x2, #0x0
		00000000000005bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5da
     5c0: 52801683     	mov	w3, #0xb4               // =180
     5c4: 94000000     	bl	0x5c4 <accel_z_axial_store+0xdc>
		00000000000005c4:  R_AARCH64_CALL26	_printk
     5c8: 928002b3     	mov	x19, #-0x16             // =-22
     5cc: 17ffffe2     	b	0x554 <accel_z_axial_store+0x6c>
     5d0: 94000000     	bl	0x5d0 <accel_z_axial_store+0xe8>
		00000000000005d0:  R_AARCH64_CALL26	__stack_chk_fail
