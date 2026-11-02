
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005d8 <gyro_enable_show>:
     5d8: d503233f     	paciasp
     5dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     5e0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     5e4: 910003fd     	mov	x29, sp
     5e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000005e8:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     5ec: f9404c13     	ldr	x19, [x0, #0x98]
     5f0: aa0203e0     	mov	x0, x2
     5f4: b9400108     	ldr	w8, [x8]
		00000000000005f4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     5f8: 7100091f     	cmp	w8, #0x2
     5fc: 5400014a     	b.ge	0x624 <gyro_enable_show+0x4c>
     600: 39414262     	ldrb	w2, [x19, #0x50]
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     60c: 94000000     	bl	0x60c <gyro_enable_show+0x34>
		000000000000060c:  R_AARCH64_CALL26	sprintf
     610: 93407c00     	sxtw	x0, w0
     614: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     618: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     61c: d50323bf     	autiasp
     620: d65f03c0     	ret
     624: 39414264     	ldrb	w4, [x19, #0x50]
     628: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50
     62c: 91000108     	add	x8, x8, #0x0
		000000000000062c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50
     630: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     634: 91000021     	add	x1, x1, #0x0
		0000000000000634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     638: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000638:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x914
     63c: 91000042     	add	x2, x2, #0x0
		000000000000063c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x914
     640: aa0003f4     	mov	x20, x0
     644: aa0803e0     	mov	x0, x8
     648: 52801de3     	mov	w3, #0xef               // =239
     64c: 94000000     	bl	0x64c <gyro_enable_show+0x74>
		000000000000064c:  R_AARCH64_CALL26	_printk
     650: aa1403e0     	mov	x0, x20
     654: 17ffffeb     	b	0x600 <gyro_enable_show+0x28>
