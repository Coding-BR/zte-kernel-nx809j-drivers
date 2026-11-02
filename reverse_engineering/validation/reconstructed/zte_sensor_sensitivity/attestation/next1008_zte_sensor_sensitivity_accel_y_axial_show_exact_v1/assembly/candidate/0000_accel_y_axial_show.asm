
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002f0 <accel_y_axial_show>:
     2f0: d503233f     	paciasp
     2f4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     2f8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     2fc: 910003fd     	mov	x29, sp
     300: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000300:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     304: f9404c13     	ldr	x19, [x0, #0x98]
     308: aa0203e0     	mov	x0, x2
     30c: b9400108     	ldr	w8, [x8]
		000000000000030c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     310: 7100091f     	cmp	w8, #0x2
     314: 5400014a     	b.ge	0x33c <accel_y_axial_show+0x4c>
     318: b9404a62     	ldr	w2, [x19, #0x48]
     31c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000031c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x212
     320: 91000021     	add	x1, x1, #0x0
		0000000000000320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x212
     324: 94000000     	bl	0x324 <accel_y_axial_show+0x34>
		0000000000000324:  R_AARCH64_CALL26	sprintf
     328: 93407c00     	sxtw	x0, w0
     32c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     330: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     334: d50323bf     	autiasp
     338: d65f03c0     	ret
     33c: b9404a64     	ldr	w4, [x19, #0x48]
     340: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     344: 91000108     	add	x8, x8, #0x0
		0000000000000344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     348: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92
     34c: 91000021     	add	x1, x1, #0x0
		000000000000034c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92
     350: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
     354: 91000042     	add	x2, x2, #0x0
		0000000000000354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
     358: aa0003f4     	mov	x20, x0
     35c: aa0803e0     	mov	x0, x8
     360: 52801463     	mov	w3, #0xa3               // =163
     364: 94000000     	bl	0x364 <accel_y_axial_show+0x74>
		0000000000000364:  R_AARCH64_CALL26	_printk
     368: aa1403e0     	mov	x0, x20
     36c: 17ffffeb     	b	0x318 <accel_y_axial_show+0x28>
