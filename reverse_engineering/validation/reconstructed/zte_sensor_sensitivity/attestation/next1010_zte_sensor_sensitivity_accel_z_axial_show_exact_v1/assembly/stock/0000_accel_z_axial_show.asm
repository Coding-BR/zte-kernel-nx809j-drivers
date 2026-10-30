
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009ac <accel_z_axial_show>:
     9ac: d503233f     	paciasp
     9b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     9b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     9b8: 910003fd     	mov	x29, sp
     9bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     9c0: f9404c13     	ldr	x19, [x0, #0x98]
     9c4: aa0203e0     	mov	x0, x2
     9c8: b9400108     	ldr	w8, [x8]
		00000000000009c8:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     9cc: 7100091f     	cmp	w8, #0x2
     9d0: 5400014a     	b.ge	0x9f8 <accel_z_axial_show+0x4c>
     9d4: b9404e62     	ldr	w2, [x19, #0x4c]
     9d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     9dc: 91000021     	add	x1, x1, #0x0
		00000000000009dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     9e0: 94000000     	bl	0x9e0 <accel_z_axial_show+0x34>
		00000000000009e0:  R_AARCH64_CALL26	sprintf
     9e4: 93407c00     	sxtw	x0, w0
     9e8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     9ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9f0: d50323bf     	autiasp
     9f4: d65f03c0     	ret
     9f8: b9404e64     	ldr	w4, [x19, #0x4c]
     9fc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x622
     a00: 91000108     	add	x8, x8, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x622
     a04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     a08: 91000021     	add	x1, x1, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     a0c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f0
     a10: 91000042     	add	x2, x2, #0x0
		0000000000000a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f0
     a14: aa0003f4     	mov	x20, x0
     a18: aa0803e0     	mov	x0, x8
     a1c: 52801803     	mov	w3, #0xc0               // =192
     a20: 94000000     	bl	0xa20 <accel_z_axial_show+0x74>
		0000000000000a20:  R_AARCH64_CALL26	_printk
     a24: aa1403e0     	mov	x0, x20
     a28: 17ffffeb     	b	0x9d4 <accel_z_axial_show+0x28>
