
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007d4 <gyro_x_axial_store>:
     7d4: d503233f     	paciasp
     7d8: d100c3ff     	sub	sp, sp, #0x30
     7dc: a9017bfd     	stp	x29, x30, [sp, #0x10]
     7e0: a9024ff4     	stp	x20, x19, [sp, #0x20]
     7e4: 910043fd     	add	x29, sp, #0x10
     7e8: d5384109     	mrs	x9, SP_EL0
     7ec: aa0203e8     	mov	x8, x2
     7f0: 910013e2     	add	x2, sp, #0x4
     7f4: f9438929     	ldr	x9, [x9, #0x710]
     7f8: 2a1f03e1     	mov	w1, wzr
     7fc: aa0303f3     	mov	x19, x3
     800: f90007e9     	str	x9, [sp, #0x8]
     804: f9404c14     	ldr	x20, [x0, #0x98]
     808: aa0803e0     	mov	x0, x8
     80c: b90007ff     	str	wzr, [sp, #0x4]
     810: 94000000     	bl	0x810 <gyro_x_axial_store+0x3c>
		0000000000000810:  R_AARCH64_CALL26	kstrtoint
     814: 34000060     	cbz	w0, 0x820 <gyro_x_axial_store+0x4c>
     818: 928002b3     	mov	x19, #-0x16             // =-22
     81c: 14000009     	b	0x840 <gyro_x_axial_store+0x6c>
     820: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     824: b9400108     	ldr	w8, [x8]
		0000000000000824:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     828: 7100091f     	cmp	w8, #0x2
     82c: 5400020a     	b.ge	0x86c <gyro_x_axial_store+0x98>
     830: b94007e8     	ldr	w8, [sp, #0x4]
     834: 7103251f     	cmp	w8, #0xc9
     838: 540002e2     	b.hs	0x894 <gyro_x_axial_store+0xc0>
     83c: b9005688     	str	w8, [x20, #0x54]
     840: d5384108     	mrs	x8, SP_EL0
     844: f9438908     	ldr	x8, [x8, #0x710]
     848: f94007e9     	ldr	x9, [sp, #0x8]
     84c: eb09011f     	cmp	x8, x9
     850: 54000361     	b.ne	0x8bc <gyro_x_axial_store+0xe8>
     854: aa1303e0     	mov	x0, x19
     858: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     85c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     860: 9100c3ff     	add	sp, sp, #0x30
     864: d50323bf     	autiasp
     868: d65f03c0     	ret
     86c: b94007e4     	ldr	w4, [sp, #0x4]
     870: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95a
     874: 91000000     	add	x0, x0, #0x0
		0000000000000874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95a
     878: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     87c: 91000021     	add	x1, x1, #0x0
		000000000000087c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     880: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d4
     884: 91000042     	add	x2, x2, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d4
     888: 52801fc3     	mov	w3, #0xfe               // =254
     88c: 94000000     	bl	0x88c <gyro_x_axial_store+0xb8>
		000000000000088c:  R_AARCH64_CALL26	_printk
     890: 17ffffe8     	b	0x830 <gyro_x_axial_store+0x5c>
     894: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39a
     898: 91000000     	add	x0, x0, #0x0
		0000000000000898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39a
     89c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000089c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     8a0: 91000021     	add	x1, x1, #0x0
		00000000000008a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     8a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d4
     8a8: 91000042     	add	x2, x2, #0x0
		00000000000008a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d4
     8ac: 52802003     	mov	w3, #0x100              // =256
     8b0: 94000000     	bl	0x8b0 <gyro_x_axial_store+0xdc>
		00000000000008b0:  R_AARCH64_CALL26	_printk
     8b4: 928002b3     	mov	x19, #-0x16             // =-22
     8b8: 17ffffe2     	b	0x840 <gyro_x_axial_store+0x6c>
     8bc: 94000000     	bl	0x8bc <gyro_x_axial_store+0xe8>
		00000000000008bc:  R_AARCH64_CALL26	__stack_chk_fail
