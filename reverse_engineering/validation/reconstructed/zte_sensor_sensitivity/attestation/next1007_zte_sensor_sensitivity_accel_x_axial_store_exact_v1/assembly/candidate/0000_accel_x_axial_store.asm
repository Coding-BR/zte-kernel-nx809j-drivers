
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000200 <accel_x_axial_store>:
     200: d503233f     	paciasp
     204: d100c3ff     	sub	sp, sp, #0x30
     208: a9017bfd     	stp	x29, x30, [sp, #0x10]
     20c: a9024ff4     	stp	x20, x19, [sp, #0x20]
     210: 910043fd     	add	x29, sp, #0x10
     214: d5384109     	mrs	x9, SP_EL0
     218: aa0203e8     	mov	x8, x2
     21c: 910013e2     	add	x2, sp, #0x4
     220: f9438929     	ldr	x9, [x9, #0x710]
     224: 2a1f03e1     	mov	w1, wzr
     228: aa0303f3     	mov	x19, x3
     22c: f90007e9     	str	x9, [sp, #0x8]
     230: f9404c14     	ldr	x20, [x0, #0x98]
     234: aa0803e0     	mov	x0, x8
     238: b90007ff     	str	wzr, [sp, #0x4]
     23c: 94000000     	bl	0x23c <accel_x_axial_store+0x3c>
		000000000000023c:  R_AARCH64_CALL26	kstrtoint
     240: 34000060     	cbz	w0, 0x24c <accel_x_axial_store+0x4c>
     244: 928002b3     	mov	x19, #-0x16             // =-22
     248: 14000009     	b	0x26c <accel_x_axial_store+0x6c>
     24c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     250: b9400108     	ldr	w8, [x8]
		0000000000000250:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     254: 7100091f     	cmp	w8, #0x2
     258: 5400020a     	b.ge	0x298 <accel_x_axial_store+0x98>
     25c: b94007e8     	ldr	w8, [sp, #0x4]
     260: 7103251f     	cmp	w8, #0xc9
     264: 540002e2     	b.hs	0x2c0 <accel_x_axial_store+0xc0>
     268: b9004688     	str	w8, [x20, #0x44]
     26c: d5384108     	mrs	x8, SP_EL0
     270: f9438908     	ldr	x8, [x8, #0x710]
     274: f94007e9     	ldr	x9, [sp, #0x8]
     278: eb09011f     	cmp	x8, x9
     27c: 54000361     	b.ne	0x2e8 <accel_x_axial_store+0xe8>
     280: aa1303e0     	mov	x0, x19
     284: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     288: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     28c: 9100c3ff     	add	sp, sp, #0x30
     290: d50323bf     	autiasp
     294: d65f03c0     	ret
     298: b94007e4     	ldr	w4, [sp, #0x4]
     29c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000029c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272
     2a0: 91000000     	add	x0, x0, #0x0
		00000000000002a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272
     2a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
     2a8: 91000021     	add	x1, x1, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
     2ac: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a
     2b0: 91000042     	add	x2, x2, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a
     2b4: 52800f03     	mov	w3, #0x78               // =120
     2b8: 94000000     	bl	0x2b8 <accel_x_axial_store+0xb8>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: 17ffffe8     	b	0x25c <accel_x_axial_store+0x5c>
     2c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170
     2c4: 91000000     	add	x0, x0, #0x0
		00000000000002c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170
     2c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68
     2cc: 91000021     	add	x1, x1, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68
     2d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41a
     2d4: 91000042     	add	x2, x2, #0x0
		00000000000002d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41a
     2d8: 52800f43     	mov	w3, #0x7a               // =122
     2dc: 94000000     	bl	0x2dc <accel_x_axial_store+0xdc>
		00000000000002dc:  R_AARCH64_CALL26	_printk
     2e0: 928002b3     	mov	x19, #-0x16             // =-22
     2e4: 17ffffe2     	b	0x26c <accel_x_axial_store+0x6c>
     2e8: 94000000     	bl	0x2e8 <accel_x_axial_store+0xe8>
		00000000000002e8:  R_AARCH64_CALL26	__stack_chk_fail
