
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000da8 <gyro_y_axial_show>:
     da8: d503233f     	paciasp
     dac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     db0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     db4: 910003fd     	mov	x29, sp
     db8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     dbc: f9404c13     	ldr	x19, [x0, #0x98]
     dc0: aa0203e0     	mov	x0, x2
     dc4: b9400108     	ldr	w8, [x8]
		0000000000000dc4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     dc8: 7100091f     	cmp	w8, #0x2
     dcc: 5400014a     	b.ge	0xdf4 <gyro_y_axial_show+0x4c>
     dd0: b9405a62     	ldr	w2, [x19, #0x58]
     dd4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f
     dd8: 91000021     	add	x1, x1, #0x0
		0000000000000dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f
     ddc: 94000000     	bl	0xddc <gyro_y_axial_show+0x34>
		0000000000000ddc:  R_AARCH64_CALL26	sprintf
     de0: 93407c00     	sxtw	x0, w0
     de4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     de8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     dec: d50323bf     	autiasp
     df0: d65f03c0     	ret
     df4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13
     df8: 91000108     	add	x8, x8, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13
     dfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     e00: 91000021     	add	x1, x1, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     e04: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d9
     e08: 91000042     	add	x2, x2, #0x0
		0000000000000e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d9
     e0c: aa0003f4     	mov	x20, x0
     e10: aa0803e0     	mov	x0, x8
     e14: 528010c3     	mov	w3, #0x86               // =134
     e18: 94000000     	bl	0xe18 <gyro_y_axial_show+0x70>
		0000000000000e18:  R_AARCH64_CALL26	_printk
     e1c: aa1403e0     	mov	x0, x20
     e20: 17ffffec     	b	0xdd0 <gyro_y_axial_show+0x28>
