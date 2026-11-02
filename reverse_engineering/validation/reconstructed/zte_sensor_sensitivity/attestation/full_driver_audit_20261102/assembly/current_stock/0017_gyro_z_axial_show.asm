
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f80 <gyro_z_axial_show>:
     f80: d503233f     	paciasp
     f84: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     f88: a9014ff4     	stp	x20, x19, [sp, #0x10]
     f8c: 910003fd     	mov	x29, sp
     f90: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f90:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     f94: f9404c13     	ldr	x19, [x0, #0x98]
     f98: aa0203e0     	mov	x0, x2
     f9c: b9400108     	ldr	w8, [x8]
		0000000000000f9c:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     fa0: 7100091f     	cmp	w8, #0x2
     fa4: 5400014a     	b.ge	0xfcc <gyro_z_axial_show+0x4c>
     fa8: b9405e62     	ldr	w2, [x19, #0x5c]
     fac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
     fb0: 91000021     	add	x1, x1, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
     fb4: 94000000     	bl	0xfb4 <gyro_z_axial_show+0x34>
		0000000000000fb4:  R_AARCH64_CALL26	sprintf
     fb8: 93407c00     	sxtw	x0, w0
     fbc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     fc0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     fc4: d50323bf     	autiasp
     fc8: d65f03c0     	ret
     fcc: b9405e64     	ldr	w4, [x19, #0x5c]
     fd0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x469
     fd4: 91000108     	add	x8, x8, #0x0
		0000000000000fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x469
     fd8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     fdc: 91000021     	add	x1, x1, #0x0
		0000000000000fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     fe0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b3
     fe4: 91000042     	add	x2, x2, #0x0
		0000000000000fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b3
     fe8: aa0003f4     	mov	x20, x0
     fec: aa0803e0     	mov	x0, x8
     ff0: 528028c3     	mov	w3, #0x146              // =326
     ff4: 94000000     	bl	0xff4 <gyro_z_axial_show+0x74>
		0000000000000ff4:  R_AARCH64_CALL26	_printk
     ff8: aa1403e0     	mov	x0, x20
     ffc: 17ffffeb     	b	0xfa8 <gyro_z_axial_show+0x28>
