
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000096c <accel_z_axial_show>:
     96c: d503233f     	paciasp
     970: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     974: a9014ff4     	stp	x20, x19, [sp, #0x10]
     978: 910003fd     	mov	x29, sp
     97c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000097c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     980: f9404c13     	ldr	x19, [x0, #0x98]
     984: aa0203e0     	mov	x0, x2
     988: b9400108     	ldr	w8, [x8]
		0000000000000988:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     98c: 7100091f     	cmp	w8, #0x2
     990: 5400014a     	b.ge	0x9b8 <accel_z_axial_show+0x4c>
     994: b9404e62     	ldr	w2, [x19, #0x4c]
     998: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     99c: 91000021     	add	x1, x1, #0x0
		000000000000099c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     9a0: 94000000     	bl	0x9a0 <accel_z_axial_show+0x34>
		00000000000009a0:  R_AARCH64_CALL26	sprintf
     9a4: 93407c00     	sxtw	x0, w0
     9a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     9ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     9b0: d50323bf     	autiasp
     9b4: d65f03c0     	ret
     9b8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     9bc: 91000108     	add	x8, x8, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     9c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     9c4: 91000021     	add	x1, x1, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     9c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x479
     9cc: 91000042     	add	x2, x2, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x479
     9d0: aa0003f4     	mov	x20, x0
     9d4: aa0803e0     	mov	x0, x8
     9d8: 528010c3     	mov	w3, #0x86               // =134
     9dc: 94000000     	bl	0x9dc <accel_z_axial_show+0x70>
		00000000000009dc:  R_AARCH64_CALL26	_printk
     9e0: aa1403e0     	mov	x0, x20
     9e4: 17ffffec     	b	0x994 <accel_z_axial_show+0x28>
