
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000017c <accel_x_axial_show>:
     17c: d503233f     	paciasp
     180: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     184: a9014ff4     	stp	x20, x19, [sp, #0x10]
     188: 910003fd     	mov	x29, sp
     18c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     190: f9404c13     	ldr	x19, [x0, #0x98]
     194: aa0203e0     	mov	x0, x2
     198: b9400108     	ldr	w8, [x8]
		0000000000000198:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     19c: 7100091f     	cmp	w8, #0x2
     1a0: 5400014a     	b.ge	0x1c8 <accel_x_axial_show+0x4c>
     1a4: b9404662     	ldr	w2, [x19, #0x44]
     1a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6
     1ac: 91000021     	add	x1, x1, #0x0
		00000000000001ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6
     1b0: 94000000     	bl	0x1b0 <accel_x_axial_show+0x34>
		00000000000001b0:  R_AARCH64_CALL26	sprintf
     1b4: 93407c00     	sxtw	x0, w0
     1b8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     1bc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     1c0: d50323bf     	autiasp
     1c4: d65f03c0     	ret
     1c8: b9404664     	ldr	w4, [x19, #0x44]
     1cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dc
     1d0: 91000108     	add	x8, x8, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dc
     1d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
     1d8: 91000021     	add	x1, x1, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
     1dc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe
     1e0: 91000042     	add	x2, x2, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe
     1e4: aa0003f4     	mov	x20, x0
     1e8: aa0803e0     	mov	x0, x8
     1ec: 528010c3     	mov	w3, #0x86               // =134
     1f0: 94000000     	bl	0x1f0 <accel_x_axial_show+0x74>
		00000000000001f0:  R_AARCH64_CALL26	_printk
     1f4: aa1403e0     	mov	x0, x20
     1f8: 17ffffeb     	b	0x1a4 <accel_x_axial_show+0x28>
