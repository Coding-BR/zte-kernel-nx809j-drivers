
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000adc <gyro_enable_show>:
     adc: d503233f     	paciasp
     ae0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ae4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     ae8: 910003fd     	mov	x29, sp
     aec: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     af0: f9404c13     	ldr	x19, [x0, #0x98]
     af4: aa0203e0     	mov	x0, x2
     af8: b9400108     	ldr	w8, [x8]
		0000000000000af8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     afc: 7100091f     	cmp	w8, #0x2
     b00: 5400014a     	b.ge	0xb28 <gyro_enable_show+0x4c>
     b04: 39414262     	ldrb	w2, [x19, #0x50]
     b08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     b0c: 91000021     	add	x1, x1, #0x0
		0000000000000b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     b10: 94000000     	bl	0xb10 <gyro_enable_show+0x34>
		0000000000000b10:  R_AARCH64_CALL26	sprintf
     b14: 93407c00     	sxtw	x0, w0
     b18: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     b1c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b20: d50323bf     	autiasp
     b24: d65f03c0     	ret
     b28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     b2c: 91000108     	add	x8, x8, #0x0
		0000000000000b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     b30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     b34: 91000021     	add	x1, x1, #0x0
		0000000000000b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     b38: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6
     b3c: 91000042     	add	x2, x2, #0x0
		0000000000000b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6
     b40: aa0003f4     	mov	x20, x0
     b44: aa0803e0     	mov	x0, x8
     b48: 52800d23     	mov	w3, #0x69               // =105
     b4c: 94000000     	bl	0xb4c <gyro_enable_show+0x70>
		0000000000000b4c:  R_AARCH64_CALL26	_printk
     b50: aa1403e0     	mov	x0, x20
     b54: 17ffffec     	b	0xb04 <gyro_enable_show+0x28>
