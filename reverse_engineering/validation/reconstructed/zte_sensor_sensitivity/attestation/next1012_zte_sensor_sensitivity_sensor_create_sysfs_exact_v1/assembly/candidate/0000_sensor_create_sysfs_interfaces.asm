
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005d4 <sensor_create_sysfs_interfaces>:
     5d4: d503233f     	paciasp
     5d8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     5dc: f9000bf7     	str	x23, [sp, #0x10]
     5e0: a90257f6     	stp	x22, x21, [sp, #0x20]
     5e4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     5e8: 910003fd     	mov	x29, sp
     5ec: aa0103f4     	mov	x20, x1
     5f0: aa0003f3     	mov	x19, x0
     5f4: 94000000     	bl	0x5f4 <sensor_create_sysfs_interfaces+0x20>
		00000000000005f4:  R_AARCH64_CALL26	device_create_file
     5f8: 2a0003f5     	mov	w21, w0
     5fc: 350001e0     	cbnz	w0, 0x638 <sensor_create_sysfs_interfaces+0x64>
     600: 91008281     	add	x1, x20, #0x20
     604: aa1303e0     	mov	x0, x19
     608: 94000000     	bl	0x608 <sensor_create_sysfs_interfaces+0x34>
		0000000000000608:  R_AARCH64_CALL26	device_create_file
     60c: 350001a0     	cbnz	w0, 0x640 <sensor_create_sysfs_interfaces+0x6c>
     610: 91010281     	add	x1, x20, #0x40
     614: aa1303e0     	mov	x0, x19
     618: 94000000     	bl	0x618 <sensor_create_sysfs_interfaces+0x44>
		0000000000000618:  R_AARCH64_CALL26	device_create_file
     61c: 35000160     	cbnz	w0, 0x648 <sensor_create_sysfs_interfaces+0x74>
     620: 91018281     	add	x1, x20, #0x60
     624: aa1303e0     	mov	x0, x19
     628: 94000000     	bl	0x628 <sensor_create_sysfs_interfaces+0x54>
		0000000000000628:  R_AARCH64_CALL26	device_create_file
     62c: 34000460     	cbz	w0, 0x6b8 <sensor_create_sysfs_interfaces+0xe4>
     630: 52800077     	mov	w23, #0x3               // =3
     634: 14000006     	b	0x64c <sensor_create_sysfs_interfaces+0x78>
     638: aa1f03f7     	mov	x23, xzr
     63c: 14000004     	b	0x64c <sensor_create_sysfs_interfaces+0x78>
     640: 52800037     	mov	w23, #0x1               // =1
     644: 14000002     	b	0x64c <sensor_create_sysfs_interfaces+0x78>
     648: 52800057     	mov	w23, #0x2               // =2
     64c: 8b171696     	add	x22, x20, x23, lsl #5
     650: aa1303e0     	mov	x0, x19
     654: aa1603e1     	mov	x1, x22
     658: 94000000     	bl	0x658 <sensor_create_sysfs_interfaces+0x84>
		0000000000000658:  R_AARCH64_CALL26	device_remove_file
     65c: 350001d5     	cbnz	w21, 0x694 <sensor_create_sysfs_interfaces+0xc0>
     660: d10006f5     	sub	x21, x23, #0x1
     664: aa1303e0     	mov	x0, x19
     668: 8b151681     	add	x1, x20, x21, lsl #5
     66c: 94000000     	bl	0x66c <sensor_create_sysfs_interfaces+0x98>
		000000000000066c:  R_AARCH64_CALL26	device_remove_file
     670: b4000135     	cbz	x21, 0x694 <sensor_create_sysfs_interfaces+0xc0>
     674: d1000af5     	sub	x21, x23, #0x2
     678: aa1303e0     	mov	x0, x19
     67c: 8b151681     	add	x1, x20, x21, lsl #5
     680: 94000000     	bl	0x680 <sensor_create_sysfs_interfaces+0xac>
		0000000000000680:  R_AARCH64_CALL26	device_remove_file
     684: b4000095     	cbz	x21, 0x694 <sensor_create_sysfs_interfaces+0xc0>
     688: d10182c1     	sub	x1, x22, #0x60
     68c: aa1303e0     	mov	x0, x19
     690: 94000000     	bl	0x690 <sensor_create_sysfs_interfaces+0xbc>
		0000000000000690:  R_AARCH64_CALL26	device_remove_file
     694: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
     698: 91000000     	add	x0, x0, #0x0
		0000000000000698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
     69c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x104
     6a0: 91000021     	add	x1, x1, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x104
     6a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000006a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x942
     6a8: 91000042     	add	x2, x2, #0x0
		00000000000006a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x942
     6ac: 52800723     	mov	w3, #0x39               // =57
     6b0: 94000000     	bl	0x6b0 <sensor_create_sysfs_interfaces+0xdc>
		00000000000006b0:  R_AARCH64_CALL26	_printk
     6b4: 12800240     	mov	w0, #-0x13              // =-19
     6b8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     6bc: f9400bf7     	ldr	x23, [sp, #0x10]
     6c0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     6c4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     6c8: d50323bf     	autiasp
     6cc: d65f03c0     	ret
