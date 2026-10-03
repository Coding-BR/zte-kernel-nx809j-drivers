
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000070c <accel_x_axial_store>:
     70c: d503233f     	paciasp
     710: d100c3ff     	sub	sp, sp, #0x30
     714: a9017bfd     	stp	x29, x30, [sp, #0x10]
     718: a9024ff4     	stp	x20, x19, [sp, #0x20]
     71c: 910043fd     	add	x29, sp, #0x10
     720: d5384109     	mrs	x9, SP_EL0
     724: aa0203e8     	mov	x8, x2
     728: 910013e2     	add	x2, sp, #0x4
     72c: f9438929     	ldr	x9, [x9, #0x710]
     730: 2a1f03e1     	mov	w1, wzr
     734: aa0303f3     	mov	x19, x3
     738: f90007e9     	str	x9, [sp, #0x8]
     73c: f9404c14     	ldr	x20, [x0, #0x98]
     740: aa0803e0     	mov	x0, x8
     744: b90007ff     	str	wzr, [sp, #0x4]
     748: 94000000     	bl	0x748 <accel_x_axial_store+0x3c>
		0000000000000748:  R_AARCH64_CALL26	kstrtoint
     74c: 34000060     	cbz	w0, 0x758 <accel_x_axial_store+0x4c>
     750: 928002b3     	mov	x19, #-0x16             // =-22
     754: 14000009     	b	0x778 <accel_x_axial_store+0x6c>
     758: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     75c: b9400108     	ldr	w8, [x8]
		000000000000075c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     760: 7100091f     	cmp	w8, #0x2
     764: 5400020a     	b.ge	0x7a4 <accel_x_axial_store+0x98>
     768: b94007e4     	ldr	w4, [sp, #0x4]
     76c: 7103249f     	cmp	w4, #0xc9
     770: 540002e2     	b.hs	0x7cc <accel_x_axial_store+0xc0>
     774: b9004684     	str	w4, [x20, #0x44]
     778: d5384108     	mrs	x8, SP_EL0
     77c: f9438908     	ldr	x8, [x8, #0x710]
     780: f94007e9     	ldr	x9, [sp, #0x8]
     784: eb09011f     	cmp	x8, x9
     788: 54000361     	b.ne	0x7f4 <accel_x_axial_store+0xe8>
     78c: aa1303e0     	mov	x0, x19
     790: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     794: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     798: 9100c3ff     	add	sp, sp, #0x30
     79c: d50323bf     	autiasp
     7a0: d65f03c0     	ret
     7a4: b94007e4     	ldr	w4, [sp, #0x4]
     7a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58
     7ac: 91000000     	add	x0, x0, #0x0
		00000000000007ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58
     7b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     7b4: 91000021     	add	x1, x1, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     7b8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x293
     7bc: 91000042     	add	x2, x2, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x293
     7c0: 52800f03     	mov	w3, #0x78               // =120
     7c4: 94000000     	bl	0x7c4 <accel_x_axial_store+0xb8>
		00000000000007c4:  R_AARCH64_CALL26	_printk
     7c8: 17ffffe8     	b	0x768 <accel_x_axial_store+0x5c>
     7cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74
     7d0: 91000000     	add	x0, x0, #0x0
		00000000000007d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74
     7d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     7d8: 91000021     	add	x1, x1, #0x0
		00000000000007d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     7dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x293
     7e0: 91000042     	add	x2, x2, #0x0
		00000000000007e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x293
     7e4: 52800f43     	mov	w3, #0x7a               // =122
     7e8: 94000000     	bl	0x7e8 <accel_x_axial_store+0xdc>
		00000000000007e8:  R_AARCH64_CALL26	_printk
     7ec: 928002b3     	mov	x19, #-0x16             // =-22
     7f0: 17ffffe2     	b	0x778 <accel_x_axial_store+0x6c>
     7f4: 94000000     	bl	0x7f4 <accel_x_axial_store+0xe8>
		00000000000007f4:  R_AARCH64_CALL26	__stack_chk_fail
