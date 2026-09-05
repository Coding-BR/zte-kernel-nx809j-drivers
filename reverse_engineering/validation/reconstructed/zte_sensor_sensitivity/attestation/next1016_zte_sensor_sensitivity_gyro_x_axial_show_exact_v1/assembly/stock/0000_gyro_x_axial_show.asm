
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c98 <gyro_x_axial_show>:
     c98: d503233f     	paciasp
     c9c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ca0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     ca4: 910003fd     	mov	x29, sp
     ca8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ca8:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     cac: f9404c13     	ldr	x19, [x0, #0x98]
     cb0: aa0203e0     	mov	x0, x2
     cb4: b9400108     	ldr	w8, [x8]
		0000000000000cb4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     cb8: 7100091f     	cmp	w8, #0x2
     cbc: 5400014a     	b.ge	0xce4 <gyro_x_axial_show+0x4c>
     cc0: b9405662     	ldr	w2, [x19, #0x54]
     cc4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     cc8: 91000021     	add	x1, x1, #0x0
		0000000000000cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     ccc: 94000000     	bl	0xccc <gyro_x_axial_show+0x34>
		0000000000000ccc:  R_AARCH64_CALL26	sprintf
     cd0: 93407c00     	sxtw	x0, w0
     cd4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     cd8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     cdc: d50323bf     	autiasp
     ce0: d65f03c0     	ret
     ce4: b9405664     	ldr	w4, [x19, #0x54]
     ce8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51e
     cec: 91000108     	add	x8, x8, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51e
     cf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     cf4: 91000021     	add	x1, x1, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     cf8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     cfc: 91000042     	add	x2, x2, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     d00: aa0003f4     	mov	x20, x0
     d04: aa0803e0     	mov	x0, x8
     d08: 52802183     	mov	w3, #0x10c              // =268
     d0c: 94000000     	bl	0xd0c <gyro_x_axial_show+0x74>
		0000000000000d0c:  R_AARCH64_CALL26	_printk
     d10: aa1403e0     	mov	x0, x20
     d14: 17ffffeb     	b	0xcc0 <gyro_x_axial_show+0x28>
