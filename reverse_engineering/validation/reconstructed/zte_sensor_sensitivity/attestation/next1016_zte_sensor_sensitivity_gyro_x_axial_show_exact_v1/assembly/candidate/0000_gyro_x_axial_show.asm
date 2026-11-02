
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000750 <gyro_x_axial_show>:
     750: d503233f     	paciasp
     754: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     758: a9014ff4     	stp	x20, x19, [sp, #0x10]
     75c: 910003fd     	mov	x29, sp
     760: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     764: f9404c13     	ldr	x19, [x0, #0x98]
     768: aa0203e0     	mov	x0, x2
     76c: b9400108     	ldr	w8, [x8]
		000000000000076c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     770: 7100091f     	cmp	w8, #0x2
     774: 5400014a     	b.ge	0x79c <gyro_x_axial_show+0x4c>
     778: b9405662     	ldr	w2, [x19, #0x54]
     77c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     780: 91000021     	add	x1, x1, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     784: 94000000     	bl	0x784 <gyro_x_axial_show+0x34>
		0000000000000784:  R_AARCH64_CALL26	sprintf
     788: 93407c00     	sxtw	x0, w0
     78c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     790: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     794: d50323bf     	autiasp
     798: d65f03c0     	ret
     79c: b9405664     	ldr	w4, [x19, #0x54]
     7a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65e
     7a4: 91000108     	add	x8, x8, #0x0
		00000000000007a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65e
     7a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     7ac: 91000021     	add	x1, x1, #0x0
		00000000000007ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     7b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b6
     7b4: 91000042     	add	x2, x2, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b6
     7b8: aa0003f4     	mov	x20, x0
     7bc: aa0803e0     	mov	x0, x8
     7c0: 52802183     	mov	w3, #0x10c              // =268
     7c4: 94000000     	bl	0x7c4 <gyro_x_axial_show+0x74>
		00000000000007c4:  R_AARCH64_CALL26	_printk
     7c8: aa1403e0     	mov	x0, x20
     7cc: 17ffffeb     	b	0x778 <gyro_x_axial_show+0x28>
