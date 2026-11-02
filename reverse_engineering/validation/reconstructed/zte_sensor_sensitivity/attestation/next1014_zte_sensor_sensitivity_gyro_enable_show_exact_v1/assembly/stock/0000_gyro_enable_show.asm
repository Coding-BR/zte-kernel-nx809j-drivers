
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b20 <gyro_enable_show>:
     b20: d503233f     	paciasp
     b24: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b28: a9014ff4     	stp	x20, x19, [sp, #0x10]
     b2c: 910003fd     	mov	x29, sp
     b30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b30:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     b34: f9404c13     	ldr	x19, [x0, #0x98]
     b38: aa0203e0     	mov	x0, x2
     b3c: b9400108     	ldr	w8, [x8]
		0000000000000b3c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     b40: 7100091f     	cmp	w8, #0x2
     b44: 5400014a     	b.ge	0xb6c <gyro_enable_show+0x4c>
     b48: 39414262     	ldrb	w2, [x19, #0x50]
     b4c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     b50: 91000021     	add	x1, x1, #0x0
		0000000000000b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     b54: 94000000     	bl	0xb54 <gyro_enable_show+0x34>
		0000000000000b54:  R_AARCH64_CALL26	sprintf
     b58: 93407c00     	sxtw	x0, w0
     b5c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     b60: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b64: d50323bf     	autiasp
     b68: d65f03c0     	ret
     b6c: 39414264     	ldrb	w4, [x19, #0x50]
     b70: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c
     b74: 91000108     	add	x8, x8, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c
     b78: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     b7c: 91000021     	add	x1, x1, #0x0
		0000000000000b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     b80: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f2
     b84: 91000042     	add	x2, x2, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f2
     b88: aa0003f4     	mov	x20, x0
     b8c: aa0803e0     	mov	x0, x8
     b90: 52801de3     	mov	w3, #0xef               // =239
     b94: 94000000     	bl	0xb94 <gyro_enable_show+0x74>
		0000000000000b94:  R_AARCH64_CALL26	_printk
     b98: aa1403e0     	mov	x0, x20
     b9c: 17ffffeb     	b	0xb48 <gyro_enable_show+0x28>
