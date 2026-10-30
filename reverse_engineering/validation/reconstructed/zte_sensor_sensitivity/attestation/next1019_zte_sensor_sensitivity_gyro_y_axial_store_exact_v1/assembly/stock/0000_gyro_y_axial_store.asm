
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e90 <gyro_y_axial_store>:
     e90: d503233f     	paciasp
     e94: d100c3ff     	sub	sp, sp, #0x30
     e98: a9017bfd     	stp	x29, x30, [sp, #0x10]
     e9c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ea0: 910043fd     	add	x29, sp, #0x10
     ea4: d5384109     	mrs	x9, SP_EL0
     ea8: aa0203e8     	mov	x8, x2
     eac: 910013e2     	add	x2, sp, #0x4
     eb0: f9438929     	ldr	x9, [x9, #0x710]
     eb4: 2a1f03e1     	mov	w1, wzr
     eb8: aa0303f3     	mov	x19, x3
     ebc: f90007e9     	str	x9, [sp, #0x8]
     ec0: f9404c14     	ldr	x20, [x0, #0x98]
     ec4: aa0803e0     	mov	x0, x8
     ec8: b90007ff     	str	wzr, [sp, #0x4]
     ecc: 94000000     	bl	0xecc <gyro_y_axial_store+0x3c>
		0000000000000ecc:  R_AARCH64_CALL26	kstrtoint
     ed0: 34000060     	cbz	w0, 0xedc <gyro_y_axial_store+0x4c>
     ed4: 928002b3     	mov	x19, #-0x16             // =-22
     ed8: 14000009     	b	0xefc <gyro_y_axial_store+0x6c>
     edc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     ee0: b9400108     	ldr	w8, [x8]
		0000000000000ee0:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     ee4: 7100091f     	cmp	w8, #0x2
     ee8: 5400020a     	b.ge	0xf28 <gyro_y_axial_store+0x98>
     eec: b94007e8     	ldr	w8, [sp, #0x4]
     ef0: 7103251f     	cmp	w8, #0xc9
     ef4: 540002e2     	b.hs	0xf50 <gyro_y_axial_store+0xc0>
     ef8: b9005a88     	str	w8, [x20, #0x58]
     efc: d5384108     	mrs	x8, SP_EL0
     f00: f9438908     	ldr	x8, [x8, #0x710]
     f04: f94007e9     	ldr	x9, [sp, #0x8]
     f08: eb09011f     	cmp	x8, x9
     f0c: 54000361     	b.ne	0xf78 <gyro_y_axial_store+0xe8>
     f10: aa1303e0     	mov	x0, x19
     f14: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     f18: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     f1c: 9100c3ff     	add	sp, sp, #0x30
     f20: d50323bf     	autiasp
     f24: d65f03c0     	ret
     f28: b94007e4     	ldr	w4, [sp, #0x4]
     f2c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf4
     f30: 91000000     	add	x0, x0, #0x0
		0000000000000f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf4
     f34: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     f38: 91000021     	add	x1, x1, #0x0
		0000000000000f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     f3c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x334
     f40: 91000042     	add	x2, x2, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x334
     f44: 52802363     	mov	w3, #0x11b              // =283
     f48: 94000000     	bl	0xf48 <gyro_y_axial_store+0xb8>
		0000000000000f48:  R_AARCH64_CALL26	_printk
     f4c: 17ffffe8     	b	0xeec <gyro_y_axial_store+0x5c>
     f50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x258
     f54: 91000000     	add	x0, x0, #0x0
		0000000000000f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x258
     f58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     f5c: 91000021     	add	x1, x1, #0x0
		0000000000000f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     f60: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x334
     f64: 91000042     	add	x2, x2, #0x0
		0000000000000f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x334
     f68: 528023a3     	mov	w3, #0x11d              // =285
     f6c: 94000000     	bl	0xf6c <gyro_y_axial_store+0xdc>
		0000000000000f6c:  R_AARCH64_CALL26	_printk
     f70: 928002b3     	mov	x19, #-0x16             // =-22
     f74: 17ffffe2     	b	0xefc <gyro_y_axial_store+0x6c>
     f78: 94000000     	bl	0xf78 <gyro_y_axial_store+0xe8>
		0000000000000f78:  R_AARCH64_CALL26	__stack_chk_fail
