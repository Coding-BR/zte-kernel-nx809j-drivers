
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007fc <accel_y_axial_show>:
     7fc: d503233f     	paciasp
     800: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     804: a9014ff4     	stp	x20, x19, [sp, #0x10]
     808: 910003fd     	mov	x29, sp
     80c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     810: f9404c13     	ldr	x19, [x0, #0x98]
     814: aa0203e0     	mov	x0, x2
     818: b9400108     	ldr	w8, [x8]
		0000000000000818:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     81c: 7100091f     	cmp	w8, #0x2
     820: 5400014a     	b.ge	0x848 <accel_y_axial_show+0x4c>
     824: b9404a62     	ldr	w2, [x19, #0x48]
     828: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     82c: 91000021     	add	x1, x1, #0x0
		000000000000082c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     830: 94000000     	bl	0x830 <accel_y_axial_show+0x34>
		0000000000000830:  R_AARCH64_CALL26	sprintf
     834: 93407c00     	sxtw	x0, w0
     838: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     83c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     840: d50323bf     	autiasp
     844: d65f03c0     	ret
     848: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     84c: 91000108     	add	x8, x8, #0x0
		000000000000084c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     850: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     854: 91000021     	add	x1, x1, #0x0
		0000000000000854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     858: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     85c: 91000042     	add	x2, x2, #0x0
		000000000000085c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     860: aa0003f4     	mov	x20, x0
     864: aa0803e0     	mov	x0, x8
     868: 528010c3     	mov	w3, #0x86               // =134
     86c: 94000000     	bl	0x86c <accel_y_axial_show+0x70>
		000000000000086c:  R_AARCH64_CALL26	_printk
     870: aa1403e0     	mov	x0, x20
     874: 17ffffec     	b	0x824 <accel_y_axial_show+0x28>
