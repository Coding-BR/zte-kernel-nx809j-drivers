
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000530 <accel_enable_show>:
     530: d503233f     	paciasp
     534: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     538: a9014ff4     	stp	x20, x19, [sp, #0x10]
     53c: 910003fd     	mov	x29, sp
     540: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     544: f9404c13     	ldr	x19, [x0, #0x98]
     548: aa0203e0     	mov	x0, x2
     54c: b9400108     	ldr	w8, [x8]
		000000000000054c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     550: 7100091f     	cmp	w8, #0x2
     554: 5400014a     	b.ge	0x57c <accel_enable_show+0x4c>
     558: 39410262     	ldrb	w2, [x19, #0x40]
     55c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     560: 91000021     	add	x1, x1, #0x0
		0000000000000560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     564: 94000000     	bl	0x564 <accel_enable_show+0x34>
		0000000000000564:  R_AARCH64_CALL26	sprintf
     568: 93407c00     	sxtw	x0, w0
     56c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     570: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     574: d50323bf     	autiasp
     578: d65f03c0     	ret
     57c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000057c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     580: 91000108     	add	x8, x8, #0x0
		0000000000000580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     584: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     588: 91000021     	add	x1, x1, #0x0
		0000000000000588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     58c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f6
     590: 91000042     	add	x2, x2, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f6
     594: aa0003f4     	mov	x20, x0
     598: aa0803e0     	mov	x0, x8
     59c: 52800d23     	mov	w3, #0x69               // =105
     5a0: 94000000     	bl	0x5a0 <accel_enable_show+0x70>
		00000000000005a0:  R_AARCH64_CALL26	_printk
     5a4: aa1403e0     	mov	x0, x20
     5a8: 17ffffec     	b	0x558 <accel_enable_show+0x28>
