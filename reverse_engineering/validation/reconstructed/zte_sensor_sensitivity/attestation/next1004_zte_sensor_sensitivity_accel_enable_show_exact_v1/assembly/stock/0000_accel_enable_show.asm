
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000054c <accel_enable_show>:
     54c: d503233f     	paciasp
     550: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     554: a9014ff4     	stp	x20, x19, [sp, #0x10]
     558: 910003fd     	mov	x29, sp
     55c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     560: f9404c13     	ldr	x19, [x0, #0x98]
     564: aa0203e0     	mov	x0, x2
     568: b9400108     	ldr	w8, [x8]
		0000000000000568:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     56c: 7100091f     	cmp	w8, #0x2
     570: 5400014a     	b.ge	0x598 <accel_enable_show+0x4c>
     574: 39410262     	ldrb	w2, [x19, #0x40]
     578: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     57c: 91000021     	add	x1, x1, #0x0
		000000000000057c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     580: 94000000     	bl	0x580 <accel_enable_show+0x34>
		0000000000000580:  R_AARCH64_CALL26	sprintf
     584: 93407c00     	sxtw	x0, w0
     588: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     58c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     590: d50323bf     	autiasp
     594: d65f03c0     	ret
     598: 39410264     	ldrb	w4, [x19, #0x40]
     59c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000059c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     5a0: 91000108     	add	x8, x8, #0x0
		00000000000005a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     5a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     5a8: 91000021     	add	x1, x1, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     5ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000005ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x722
     5b0: 91000042     	add	x2, x2, #0x0
		00000000000005b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x722
     5b4: aa0003f4     	mov	x20, x0
     5b8: aa0803e0     	mov	x0, x8
     5bc: 52800d23     	mov	w3, #0x69               // =105
     5c0: 94000000     	bl	0x5c0 <accel_enable_show+0x74>
		00000000000005c0:  R_AARCH64_CALL26	_printk
     5c4: aa1403e0     	mov	x0, x20
     5c8: 17ffffeb     	b	0x574 <accel_enable_show+0x28>
