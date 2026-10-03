
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000374 <accel_y_axial_store>:
     374: d503233f     	paciasp
     378: d100c3ff     	sub	sp, sp, #0x30
     37c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     380: a9024ff4     	stp	x20, x19, [sp, #0x20]
     384: 910043fd     	add	x29, sp, #0x10
     388: d5384109     	mrs	x9, SP_EL0
     38c: aa0203e8     	mov	x8, x2
     390: 910013e2     	add	x2, sp, #0x4
     394: f9438929     	ldr	x9, [x9, #0x710]
     398: 2a1f03e1     	mov	w1, wzr
     39c: aa0303f3     	mov	x19, x3
     3a0: f90007e9     	str	x9, [sp, #0x8]
     3a4: f9404c14     	ldr	x20, [x0, #0x98]
     3a8: aa0803e0     	mov	x0, x8
     3ac: b90007ff     	str	wzr, [sp, #0x4]
     3b0: 94000000     	bl	0x3b0 <accel_y_axial_store+0x3c>
		00000000000003b0:  R_AARCH64_CALL26	kstrtoint
     3b4: 34000060     	cbz	w0, 0x3c0 <accel_y_axial_store+0x4c>
     3b8: 928002b3     	mov	x19, #-0x16             // =-22
     3bc: 14000009     	b	0x3e0 <accel_y_axial_store+0x6c>
     3c0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     3c4: b9400108     	ldr	w8, [x8]
		00000000000003c4:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     3c8: 7100091f     	cmp	w8, #0x2
     3cc: 5400020a     	b.ge	0x40c <accel_y_axial_store+0x98>
     3d0: b94007e8     	ldr	w8, [sp, #0x4]
     3d4: 7103251f     	cmp	w8, #0xc9
     3d8: 540002e2     	b.hs	0x434 <accel_y_axial_store+0xc0>
     3dc: b9004a88     	str	w8, [x20, #0x48]
     3e0: d5384108     	mrs	x8, SP_EL0
     3e4: f9438908     	ldr	x8, [x8, #0x710]
     3e8: f94007e9     	ldr	x9, [sp, #0x8]
     3ec: eb09011f     	cmp	x8, x9
     3f0: 54000361     	b.ne	0x45c <accel_y_axial_store+0xe8>
     3f4: aa1303e0     	mov	x0, x19
     3f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     3fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     400: 9100c3ff     	add	sp, sp, #0x30
     404: d50323bf     	autiasp
     408: d65f03c0     	ret
     40c: b94007e4     	ldr	w4, [sp, #0x4]
     410: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7aa
     414: 91000000     	add	x0, x0, #0x0
		0000000000000414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7aa
     418: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4
     41c: 91000021     	add	x1, x1, #0x0
		000000000000041c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4
     420: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
     424: 91000042     	add	x2, x2, #0x0
		0000000000000424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
     428: 528012a3     	mov	w3, #0x95               // =149
     42c: 94000000     	bl	0x42c <accel_y_axial_store+0xb8>
		000000000000042c:  R_AARCH64_CALL26	_printk
     430: 17ffffe8     	b	0x3d0 <accel_y_axial_store+0x5c>
     434: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60
     438: 91000000     	add	x0, x0, #0x0
		0000000000000438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60
     43c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4
     440: 91000021     	add	x1, x1, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4
     444: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16e
     448: 91000042     	add	x2, x2, #0x0
		0000000000000448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16e
     44c: 528012e3     	mov	w3, #0x97               // =151
     450: 94000000     	bl	0x450 <accel_y_axial_store+0xdc>
		0000000000000450:  R_AARCH64_CALL26	_printk
     454: 928002b3     	mov	x19, #-0x16             // =-22
     458: 17ffffe2     	b	0x3e0 <accel_y_axial_store+0x6c>
     45c: 94000000     	bl	0x45c <accel_y_axial_store+0xe8>
		000000000000045c:  R_AARCH64_CALL26	__stack_chk_fail
