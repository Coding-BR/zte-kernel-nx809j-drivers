
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000394 <sensor_create_sysfs_interfaces>:
     394: d503233f     	paciasp
     398: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     39c: f9000bf7     	str	x23, [sp, #0x10]
     3a0: a90257f6     	stp	x22, x21, [sp, #0x20]
     3a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     3a8: 910003fd     	mov	x29, sp
     3ac: aa0103f4     	mov	x20, x1
     3b0: aa0003f3     	mov	x19, x0
     3b4: 94000000     	bl	0x3b4 <sensor_create_sysfs_interfaces+0x20>
		00000000000003b4:  R_AARCH64_CALL26	device_create_file
     3b8: 2a0003f5     	mov	w21, w0
     3bc: 350001e0     	cbnz	w0, 0x3f8 <sensor_create_sysfs_interfaces+0x64>
     3c0: 91008281     	add	x1, x20, #0x20
     3c4: aa1303e0     	mov	x0, x19
     3c8: 94000000     	bl	0x3c8 <sensor_create_sysfs_interfaces+0x34>
		00000000000003c8:  R_AARCH64_CALL26	device_create_file
     3cc: 350001a0     	cbnz	w0, 0x400 <sensor_create_sysfs_interfaces+0x6c>
     3d0: 91010281     	add	x1, x20, #0x40
     3d4: aa1303e0     	mov	x0, x19
     3d8: 94000000     	bl	0x3d8 <sensor_create_sysfs_interfaces+0x44>
		00000000000003d8:  R_AARCH64_CALL26	device_create_file
     3dc: 35000160     	cbnz	w0, 0x408 <sensor_create_sysfs_interfaces+0x74>
     3e0: 91018281     	add	x1, x20, #0x60
     3e4: aa1303e0     	mov	x0, x19
     3e8: 94000000     	bl	0x3e8 <sensor_create_sysfs_interfaces+0x54>
		00000000000003e8:  R_AARCH64_CALL26	device_create_file
     3ec: 34000460     	cbz	w0, 0x478 <sensor_create_sysfs_interfaces+0xe4>
     3f0: 52800077     	mov	w23, #0x3               // =3
     3f4: 14000006     	b	0x40c <sensor_create_sysfs_interfaces+0x78>
     3f8: aa1f03f7     	mov	x23, xzr
     3fc: 14000004     	b	0x40c <sensor_create_sysfs_interfaces+0x78>
     400: 52800037     	mov	w23, #0x1               // =1
     404: 14000002     	b	0x40c <sensor_create_sysfs_interfaces+0x78>
     408: 52800057     	mov	w23, #0x2               // =2
     40c: 8b171696     	add	x22, x20, x23, lsl #5
     410: aa1303e0     	mov	x0, x19
     414: aa1603e1     	mov	x1, x22
     418: 94000000     	bl	0x418 <sensor_create_sysfs_interfaces+0x84>
		0000000000000418:  R_AARCH64_CALL26	device_remove_file
     41c: 350001d5     	cbnz	w21, 0x454 <sensor_create_sysfs_interfaces+0xc0>
     420: d10006f5     	sub	x21, x23, #0x1
     424: aa1303e0     	mov	x0, x19
     428: 8b151681     	add	x1, x20, x21, lsl #5
     42c: 94000000     	bl	0x42c <sensor_create_sysfs_interfaces+0x98>
		000000000000042c:  R_AARCH64_CALL26	device_remove_file
     430: b4000135     	cbz	x21, 0x454 <sensor_create_sysfs_interfaces+0xc0>
     434: d1000af5     	sub	x21, x23, #0x2
     438: aa1303e0     	mov	x0, x19
     43c: 8b151681     	add	x1, x20, x21, lsl #5
     440: 94000000     	bl	0x440 <sensor_create_sysfs_interfaces+0xac>
		0000000000000440:  R_AARCH64_CALL26	device_remove_file
     444: b4000095     	cbz	x21, 0x454 <sensor_create_sysfs_interfaces+0xc0>
     448: d10182c1     	sub	x1, x22, #0x60
     44c: aa1303e0     	mov	x0, x19
     450: 94000000     	bl	0x450 <sensor_create_sysfs_interfaces+0xbc>
		0000000000000450:  R_AARCH64_CALL26	device_remove_file
     454: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x393
     458: 91000000     	add	x0, x0, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x393
     45c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000045c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e
     460: 91000021     	add	x1, x1, #0x0
		0000000000000460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e
     464: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x703
     468: 91000042     	add	x2, x2, #0x0
		0000000000000468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x703
     46c: 52800723     	mov	w3, #0x39               // =57
     470: 94000000     	bl	0x470 <sensor_create_sysfs_interfaces+0xdc>
		0000000000000470:  R_AARCH64_CALL26	_printk
     474: 12800240     	mov	w0, #-0x13              // =-19
     478: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     47c: f9400bf7     	ldr	x23, [sp, #0x10]
     480: a94257f6     	ldp	x22, x21, [sp, #0x20]
     484: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     488: d50323bf     	autiasp
     48c: d65f03c0     	ret
