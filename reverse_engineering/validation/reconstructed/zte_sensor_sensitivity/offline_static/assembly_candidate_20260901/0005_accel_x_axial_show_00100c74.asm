
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000068c <accel_x_axial_show>:
     68c: d503233f     	paciasp
     690: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     694: a9014ff4     	stp	x20, x19, [sp, #0x10]
     698: 910003fd     	mov	x29, sp
     69c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     6a0: f9404c13     	ldr	x19, [x0, #0x98]
     6a4: aa0203e0     	mov	x0, x2
     6a8: b9400108     	ldr	w8, [x8]
		00000000000006a8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     6ac: 7100091f     	cmp	w8, #0x2
     6b0: 5400014a     	b.ge	0x6d8 <accel_x_axial_show+0x4c>
     6b4: b9404662     	ldr	w2, [x19, #0x44]
     6b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     6bc: 91000021     	add	x1, x1, #0x0
		00000000000006bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     6c0: 94000000     	bl	0x6c0 <accel_x_axial_show+0x34>
		00000000000006c0:  R_AARCH64_CALL26	sprintf
     6c4: 93407c00     	sxtw	x0, w0
     6c8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     6cc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     6d0: d50323bf     	autiasp
     6d4: d65f03c0     	ret
     6d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     6dc: 91000108     	add	x8, x8, #0x0
		00000000000006dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     6e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     6e4: 91000021     	add	x1, x1, #0x0
		00000000000006e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     6e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x218
     6ec: 91000042     	add	x2, x2, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x218
     6f0: aa0003f4     	mov	x20, x0
     6f4: aa0803e0     	mov	x0, x8
     6f8: 528010c3     	mov	w3, #0x86               // =134
     6fc: 94000000     	bl	0x6fc <accel_x_axial_show+0x70>
		00000000000006fc:  R_AARCH64_CALL26	_printk
     700: aa1403e0     	mov	x0, x20
     704: 17ffffec     	b	0x6b4 <accel_x_axial_show+0x28>
