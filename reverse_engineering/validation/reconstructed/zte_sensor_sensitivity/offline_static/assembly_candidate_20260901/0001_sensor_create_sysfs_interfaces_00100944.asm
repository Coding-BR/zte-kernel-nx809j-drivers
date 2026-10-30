
/input/zte_sensor_sensitivity_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000037c <sensor_create_sysfs_interfaces>:
     37c: d503233f     	paciasp
     380: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     384: f9000bf7     	str	x23, [sp, #0x10]
     388: a90257f6     	stp	x22, x21, [sp, #0x20]
     38c: a9034ff4     	stp	x20, x19, [sp, #0x30]
     390: 910003fd     	mov	x29, sp
     394: aa0103f4     	mov	x20, x1
     398: aa0003f3     	mov	x19, x0
     39c: 94000000     	bl	0x39c <sensor_create_sysfs_interfaces+0x20>
		000000000000039c:  R_AARCH64_CALL26	device_create_file
     3a0: 2a0003f5     	mov	w21, w0
     3a4: 350001e0     	cbnz	w0, 0x3e0 <sensor_create_sysfs_interfaces+0x64>
     3a8: 91008281     	add	x1, x20, #0x20
     3ac: aa1303e0     	mov	x0, x19
     3b0: 94000000     	bl	0x3b0 <sensor_create_sysfs_interfaces+0x34>
		00000000000003b0:  R_AARCH64_CALL26	device_create_file
     3b4: 350001a0     	cbnz	w0, 0x3e8 <sensor_create_sysfs_interfaces+0x6c>
     3b8: 91010281     	add	x1, x20, #0x40
     3bc: aa1303e0     	mov	x0, x19
     3c0: 94000000     	bl	0x3c0 <sensor_create_sysfs_interfaces+0x44>
		00000000000003c0:  R_AARCH64_CALL26	device_create_file
     3c4: 35000160     	cbnz	w0, 0x3f0 <sensor_create_sysfs_interfaces+0x74>
     3c8: 91018281     	add	x1, x20, #0x60
     3cc: aa1303e0     	mov	x0, x19
     3d0: 94000000     	bl	0x3d0 <sensor_create_sysfs_interfaces+0x54>
		00000000000003d0:  R_AARCH64_CALL26	device_create_file
     3d4: 34000460     	cbz	w0, 0x460 <sensor_create_sysfs_interfaces+0xe4>
     3d8: 52800077     	mov	w23, #0x3               // =3
     3dc: 14000006     	b	0x3f4 <sensor_create_sysfs_interfaces+0x78>
     3e0: aa1f03f7     	mov	x23, xzr
     3e4: 14000004     	b	0x3f4 <sensor_create_sysfs_interfaces+0x78>
     3e8: 52800037     	mov	w23, #0x1               // =1
     3ec: 14000002     	b	0x3f4 <sensor_create_sysfs_interfaces+0x78>
     3f0: 52800057     	mov	w23, #0x2               // =2
     3f4: 8b171696     	add	x22, x20, x23, lsl #5
     3f8: aa1303e0     	mov	x0, x19
     3fc: aa1603e1     	mov	x1, x22
     400: 94000000     	bl	0x400 <sensor_create_sysfs_interfaces+0x84>
		0000000000000400:  R_AARCH64_CALL26	device_remove_file
     404: 350001d5     	cbnz	w21, 0x43c <sensor_create_sysfs_interfaces+0xc0>
     408: d10006f5     	sub	x21, x23, #0x1
     40c: aa1303e0     	mov	x0, x19
     410: 8b151681     	add	x1, x20, x21, lsl #5
     414: 94000000     	bl	0x414 <sensor_create_sysfs_interfaces+0x98>
		0000000000000414:  R_AARCH64_CALL26	device_remove_file
     418: b4000135     	cbz	x21, 0x43c <sensor_create_sysfs_interfaces+0xc0>
     41c: d1000af5     	sub	x21, x23, #0x2
     420: aa1303e0     	mov	x0, x19
     424: 8b151681     	add	x1, x20, x21, lsl #5
     428: 94000000     	bl	0x428 <sensor_create_sysfs_interfaces+0xac>
		0000000000000428:  R_AARCH64_CALL26	device_remove_file
     42c: b4000095     	cbz	x21, 0x43c <sensor_create_sysfs_interfaces+0xc0>
     430: d10182c1     	sub	x1, x22, #0x60
     434: aa1303e0     	mov	x0, x19
     438: 94000000     	bl	0x438 <sensor_create_sysfs_interfaces+0xbc>
		0000000000000438:  R_AARCH64_CALL26	device_remove_file
     43c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000043c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca
     440: 91000000     	add	x0, x0, #0x0
		0000000000000440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca
     444: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     448: 91000021     	add	x1, x1, #0x0
		0000000000000448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     44c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d7
     450: 91000042     	add	x2, x2, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d7
     454: 52800723     	mov	w3, #0x39               // =57
     458: 94000000     	bl	0x458 <sensor_create_sysfs_interfaces+0xdc>
		0000000000000458:  R_AARCH64_CALL26	_printk
     45c: 12800240     	mov	w0, #-0x13              // =-19
     460: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     464: f9400bf7     	ldr	x23, [sp, #0x10]
     468: a94257f6     	ldp	x22, x21, [sp, #0x20]
     46c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     470: d50323bf     	autiasp
     474: d65f03c0     	ret
