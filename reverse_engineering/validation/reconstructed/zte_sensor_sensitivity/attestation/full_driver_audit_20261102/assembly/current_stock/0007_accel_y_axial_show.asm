
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000838 <accel_y_axial_show>:
     838: d503233f     	paciasp
     83c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     840: a9014ff4     	stp	x20, x19, [sp, #0x10]
     844: 910003fd     	mov	x29, sp
     848: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     84c: f9404c13     	ldr	x19, [x0, #0x98]
     850: aa0203e0     	mov	x0, x2
     854: b9400108     	ldr	w8, [x8]
		0000000000000854:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     858: 7100091f     	cmp	w8, #0x2
     85c: 5400014a     	b.ge	0x884 <accel_y_axial_show+0x4c>
     860: b9404a62     	ldr	w2, [x19, #0x48]
     864: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     868: 91000021     	add	x1, x1, #0x0
		0000000000000868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     86c: 94000000     	bl	0x86c <accel_y_axial_show+0x34>
		000000000000086c:  R_AARCH64_CALL26	sprintf
     870: 93407c00     	sxtw	x0, w0
     874: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     878: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     87c: d50323bf     	autiasp
     880: d65f03c0     	ret
     884: b9404a64     	ldr	w4, [x19, #0x48]
     888: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     88c: 91000108     	add	x8, x8, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     890: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     894: 91000021     	add	x1, x1, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     898: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f0
     89c: 91000042     	add	x2, x2, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f0
     8a0: aa0003f4     	mov	x20, x0
     8a4: aa0803e0     	mov	x0, x8
     8a8: 52801463     	mov	w3, #0xa3               // =163
     8ac: 94000000     	bl	0x8ac <accel_y_axial_show+0x74>
		00000000000008ac:  R_AARCH64_CALL26	_printk
     8b0: aa1403e0     	mov	x0, x20
     8b4: 17ffffeb     	b	0x860 <accel_y_axial_show+0x28>
