
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000748 <accel_x_axial_store>:
     748: d503233f     	paciasp
     74c: d100c3ff     	sub	sp, sp, #0x30
     750: a9017bfd     	stp	x29, x30, [sp, #0x10]
     754: a9024ff4     	stp	x20, x19, [sp, #0x20]
     758: 910043fd     	add	x29, sp, #0x10
     75c: d5384109     	mrs	x9, SP_EL0
     760: aa0203e8     	mov	x8, x2
     764: 910013e2     	add	x2, sp, #0x4
     768: f9438929     	ldr	x9, [x9, #0x710]
     76c: 2a1f03e1     	mov	w1, wzr
     770: aa0303f3     	mov	x19, x3
     774: f90007e9     	str	x9, [sp, #0x8]
     778: f9404c14     	ldr	x20, [x0, #0x98]
     77c: aa0803e0     	mov	x0, x8
     780: b90007ff     	str	wzr, [sp, #0x4]
     784: 94000000     	bl	0x784 <accel_x_axial_store+0x3c>
		0000000000000784:  R_AARCH64_CALL26	kstrtoint
     788: 34000060     	cbz	w0, 0x794 <accel_x_axial_store+0x4c>
     78c: 928002b3     	mov	x19, #-0x16             // =-22
     790: 14000009     	b	0x7b4 <accel_x_axial_store+0x6c>
     794: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000794:  R_AARCH64_ADR_PREL_PG_HI21	SENSORS_SENS_LOG_LEVEL
     798: b9400108     	ldr	w8, [x8]
		0000000000000798:  R_AARCH64_LDST32_ABS_LO12_NC	SENSORS_SENS_LOG_LEVEL
     79c: 7100091f     	cmp	w8, #0x2
     7a0: 5400020a     	b.ge	0x7e0 <accel_x_axial_store+0x98>
     7a4: b94007e8     	ldr	w8, [sp, #0x4]
     7a8: 7103251f     	cmp	w8, #0xc9
     7ac: 540002e2     	b.hs	0x808 <accel_x_axial_store+0xc0>
     7b0: b9004688     	str	w8, [x20, #0x44]
     7b4: d5384108     	mrs	x8, SP_EL0
     7b8: f9438908     	ldr	x8, [x8, #0x710]
     7bc: f94007e9     	ldr	x9, [sp, #0x8]
     7c0: eb09011f     	cmp	x8, x9
     7c4: 54000361     	b.ne	0x830 <accel_x_axial_store+0xe8>
     7c8: aa1303e0     	mov	x0, x19
     7cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     7d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     7d4: 9100c3ff     	add	sp, sp, #0x30
     7d8: d50323bf     	autiasp
     7dc: d65f03c0     	ret
     7e0: b94007e4     	ldr	w4, [sp, #0x4]
     7e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d8
     7e8: 91000000     	add	x0, x0, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d8
     7ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     7f0: 91000021     	add	x1, x1, #0x0
		00000000000007f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     7f4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c
     7f8: 91000042     	add	x2, x2, #0x0
		00000000000007f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c
     7fc: 52800f03     	mov	w3, #0x78               // =120
     800: 94000000     	bl	0x800 <accel_x_axial_store+0xb8>
		0000000000000800:  R_AARCH64_CALL26	_printk
     804: 17ffffe8     	b	0x7a4 <accel_x_axial_store+0x5c>
     808: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b
     80c: 91000000     	add	x0, x0, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b
     810: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     814: 91000021     	add	x1, x1, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     818: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c
     81c: 91000042     	add	x2, x2, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c
     820: 52800f43     	mov	w3, #0x7a               // =122
     824: 94000000     	bl	0x824 <accel_x_axial_store+0xdc>
		0000000000000824:  R_AARCH64_CALL26	_printk
     828: 928002b3     	mov	x19, #-0x16             // =-22
     82c: 17ffffe2     	b	0x7b4 <accel_x_axial_store+0x6c>
     830: 94000000     	bl	0x830 <accel_x_axial_store+0xe8>
		0000000000000830:  R_AARCH64_CALL26	__stack_chk_fail
