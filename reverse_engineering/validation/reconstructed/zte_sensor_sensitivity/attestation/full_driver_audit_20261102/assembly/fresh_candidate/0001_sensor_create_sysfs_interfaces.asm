
/input/zte_sensor_sensitivity.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ba8 <sensor_create_sysfs_interfaces>:
     ba8: d503233f     	paciasp
     bac: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     bb0: f9000bf7     	str	x23, [sp, #0x10]
     bb4: a90257f6     	stp	x22, x21, [sp, #0x20]
     bb8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     bbc: 910003fd     	mov	x29, sp
     bc0: aa0103f4     	mov	x20, x1
     bc4: aa0003f3     	mov	x19, x0
     bc8: 94000000     	bl	0xbc8 <sensor_create_sysfs_interfaces+0x20>
		0000000000000bc8:  R_AARCH64_CALL26	device_create_file
     bcc: 2a0003f5     	mov	w21, w0
     bd0: 350001e0     	cbnz	w0, 0xc0c <sensor_create_sysfs_interfaces+0x64>
     bd4: 91008281     	add	x1, x20, #0x20
     bd8: aa1303e0     	mov	x0, x19
     bdc: 94000000     	bl	0xbdc <sensor_create_sysfs_interfaces+0x34>
		0000000000000bdc:  R_AARCH64_CALL26	device_create_file
     be0: 350001a0     	cbnz	w0, 0xc14 <sensor_create_sysfs_interfaces+0x6c>
     be4: 91010281     	add	x1, x20, #0x40
     be8: aa1303e0     	mov	x0, x19
     bec: 94000000     	bl	0xbec <sensor_create_sysfs_interfaces+0x44>
		0000000000000bec:  R_AARCH64_CALL26	device_create_file
     bf0: 35000160     	cbnz	w0, 0xc1c <sensor_create_sysfs_interfaces+0x74>
     bf4: 91018281     	add	x1, x20, #0x60
     bf8: aa1303e0     	mov	x0, x19
     bfc: 94000000     	bl	0xbfc <sensor_create_sysfs_interfaces+0x54>
		0000000000000bfc:  R_AARCH64_CALL26	device_create_file
     c00: 34000460     	cbz	w0, 0xc8c <sensor_create_sysfs_interfaces+0xe4>
     c04: 52800077     	mov	w23, #0x3               // =3
     c08: 14000006     	b	0xc20 <sensor_create_sysfs_interfaces+0x78>
     c0c: aa1f03f7     	mov	x23, xzr
     c10: 14000004     	b	0xc20 <sensor_create_sysfs_interfaces+0x78>
     c14: 52800037     	mov	w23, #0x1               // =1
     c18: 14000002     	b	0xc20 <sensor_create_sysfs_interfaces+0x78>
     c1c: 52800057     	mov	w23, #0x2               // =2
     c20: 8b171696     	add	x22, x20, x23, lsl #5
     c24: aa1303e0     	mov	x0, x19
     c28: aa1603e1     	mov	x1, x22
     c2c: 94000000     	bl	0xc2c <sensor_create_sysfs_interfaces+0x84>
		0000000000000c2c:  R_AARCH64_CALL26	device_remove_file
     c30: 350001d5     	cbnz	w21, 0xc68 <sensor_create_sysfs_interfaces+0xc0>
     c34: d10006f5     	sub	x21, x23, #0x1
     c38: aa1303e0     	mov	x0, x19
     c3c: 8b151681     	add	x1, x20, x21, lsl #5
     c40: 94000000     	bl	0xc40 <sensor_create_sysfs_interfaces+0x98>
		0000000000000c40:  R_AARCH64_CALL26	device_remove_file
     c44: b4000135     	cbz	x21, 0xc68 <sensor_create_sysfs_interfaces+0xc0>
     c48: d1000af5     	sub	x21, x23, #0x2
     c4c: aa1303e0     	mov	x0, x19
     c50: 8b151681     	add	x1, x20, x21, lsl #5
     c54: 94000000     	bl	0xc54 <sensor_create_sysfs_interfaces+0xac>
		0000000000000c54:  R_AARCH64_CALL26	device_remove_file
     c58: b4000095     	cbz	x21, 0xc68 <sensor_create_sysfs_interfaces+0xc0>
     c5c: d10182c1     	sub	x1, x22, #0x60
     c60: aa1303e0     	mov	x0, x19
     c64: 94000000     	bl	0xc64 <sensor_create_sysfs_interfaces+0xbc>
		0000000000000c64:  R_AARCH64_CALL26	device_remove_file
     c68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x526
     c6c: 91000000     	add	x0, x0, #0x0
		0000000000000c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x526
     c70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x160
     c74: 91000021     	add	x1, x1, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x160
     c78: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9a
     c7c: 91000042     	add	x2, x2, #0x0
		0000000000000c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9a
     c80: 52800723     	mov	w3, #0x39               // =57
     c84: 94000000     	bl	0xc84 <sensor_create_sysfs_interfaces+0xdc>
		0000000000000c84:  R_AARCH64_CALL26	_printk
     c88: 12800240     	mov	w0, #-0x13              // =-19
     c8c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     c90: f9400bf7     	ldr	x23, [sp, #0x10]
     c94: a94257f6     	ldp	x22, x21, [sp, #0x20]
     c98: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     c9c: d50323bf     	autiasp
     ca0: d65f03c0     	ret
