
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000464 <accel_z_axial_show>:
     464: d503233f     	paciasp
     468: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     46c: a9014ff4     	stp	x20, x19, [sp, #0x10]
     470: 910003fd     	mov	x29, sp
     474: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000474:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     478: f9404c13     	ldr	x19, [x0, #0x98]
     47c: aa0203e0     	mov	x0, x2
     480: b9400108     	ldr	w8, [x8]
		0000000000000480:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     484: 7100091f     	cmp	w8, #0x2
     488: 5400014a     	b.ge	0x4b0 <accel_z_axial_show+0x4c>
     48c: b9404e62     	ldr	w2, [x19, #0x4c]
     490: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x244
     494: 91000021     	add	x1, x1, #0x0
		0000000000000494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x244
     498: 94000000     	bl	0x498 <accel_z_axial_show+0x34>
		0000000000000498:  R_AARCH64_CALL26	sprintf
     49c: 93407c00     	sxtw	x0, w0
     4a0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     4a4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     4a8: d50323bf     	autiasp
     4ac: d65f03c0     	ret
     4b0: b9404e64     	ldr	w4, [x19, #0x4c]
     4b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a
     4b8: 91000108     	add	x8, x8, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a
     4bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4
     4c0: 91000021     	add	x1, x1, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4
     4c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000004c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     4c8: 91000042     	add	x2, x2, #0x0
		00000000000004c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     4cc: aa0003f4     	mov	x20, x0
     4d0: aa0803e0     	mov	x0, x8
     4d4: 52801803     	mov	w3, #0xc0               // =192
     4d8: 94000000     	bl	0x4d8 <accel_z_axial_show+0x74>
		00000000000004d8:  R_AARCH64_CALL26	_printk
     4dc: aa1403e0     	mov	x0, x20
     4e0: 17ffffeb     	b	0x48c <accel_z_axial_show+0x28>
