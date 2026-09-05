
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008c4 <gyro_y_axial_show>:
     8c4: d503233f     	paciasp
     8c8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8cc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     8d0: 910003fd     	mov	x29, sp
     8d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008d4:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     8d8: f9404c13     	ldr	x19, [x0, #0x98]
     8dc: aa0203e0     	mov	x0, x2
     8e0: b9400108     	ldr	w8, [x8]
		00000000000008e0:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     8e4: 7100091f     	cmp	w8, #0x2
     8e8: 5400014a     	b.ge	0x910 <gyro_y_axial_show+0x4c>
     8ec: b9405a62     	ldr	w2, [x19, #0x58]
     8f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     8f4: 91000021     	add	x1, x1, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     8f8: 94000000     	bl	0x8f8 <gyro_y_axial_show+0x34>
		00000000000008f8:  R_AARCH64_CALL26	sprintf
     8fc: 93407c00     	sxtw	x0, w0
     900: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     904: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     908: d50323bf     	autiasp
     90c: d65f03c0     	ret
     910: b9405a64     	ldr	w4, [x19, #0x58]
     914: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f8
     918: 91000108     	add	x8, x8, #0x0
		0000000000000918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f8
     91c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     920: 91000021     	add	x1, x1, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     924: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x69e
     928: 91000042     	add	x2, x2, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x69e
     92c: aa0003f4     	mov	x20, x0
     930: aa0803e0     	mov	x0, x8
     934: 52802523     	mov	w3, #0x129              // =297
     938: 94000000     	bl	0x938 <gyro_y_axial_show+0x74>
		0000000000000938:  R_AARCH64_CALL26	_printk
     93c: aa1403e0     	mov	x0, x20
     940: 17ffffeb     	b	0x8ec <gyro_y_axial_show+0x28>
