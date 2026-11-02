
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000006c4 <accel_x_axial_show>:
     6c4: d503233f     	paciasp
     6c8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     6cc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     6d0: 910003fd     	mov	x29, sp
     6d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006d4:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     6d8: f9404c13     	ldr	x19, [x0, #0x98]
     6dc: aa0203e0     	mov	x0, x2
     6e0: b9400108     	ldr	w8, [x8]
		00000000000006e0:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     6e4: 7100091f     	cmp	w8, #0x2
     6e8: 5400014a     	b.ge	0x710 <accel_x_axial_show+0x4c>
     6ec: b9404662     	ldr	w2, [x19, #0x44]
     6f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     6f4: 91000021     	add	x1, x1, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     6f8: 94000000     	bl	0x6f8 <accel_x_axial_show+0x34>
		00000000000006f8:  R_AARCH64_CALL26	sprintf
     6fc: 93407c00     	sxtw	x0, w0
     700: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     704: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     708: d50323bf     	autiasp
     70c: d65f03c0     	ret
     710: b9404664     	ldr	w4, [x19, #0x44]
     714: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x595
     718: 91000108     	add	x8, x8, #0x0
		0000000000000718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x595
     71c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000071c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     720: 91000021     	add	x1, x1, #0x0
		0000000000000720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     724: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c4
     728: 91000042     	add	x2, x2, #0x0
		0000000000000728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c4
     72c: aa0003f4     	mov	x20, x0
     730: aa0803e0     	mov	x0, x8
     734: 528010c3     	mov	w3, #0x86               // =134
     738: 94000000     	bl	0x738 <accel_x_axial_show+0x74>
		0000000000000738:  R_AARCH64_CALL26	_printk
     73c: aa1403e0     	mov	x0, x20
     740: 17ffffeb     	b	0x6ec <accel_x_axial_show+0x28>
