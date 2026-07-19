
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022770 <tpd_sysfs_fwimage_store>:
   22770: d503233f     	paciasp
   22774: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   22778: f9000bf5     	str	x21, [sp, #0x10]
   2277c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   22780: 910003fd     	mov	x29, sp
   22784: 90000008     	adrp	x8, 0x22000 <tpd_set_rotation_limit_level+0x18>
		0000000000022784:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   22788: f9400115     	ldr	x21, [x8]
		0000000000022788:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   2278c: f9462ea8     	ldr	x8, [x21, #0xc58]
   22790: b40001e8     	cbz	x8, 0x227cc <tpd_sysfs_fwimage_store+0x5c>
   22794: f9400509     	ldr	x9, [x8, #0x8]
   22798: b40001a9     	cbz	x9, 0x227cc <tpd_sysfs_fwimage_store+0x5c>
   2279c: f9400108     	ldr	x8, [x8]
   227a0: b4000208     	cbz	x8, 0x227e0 <tpd_sysfs_fwimage_store+0x70>
   227a4: b9444aa1     	ldr	w1, [x21, #0x448]
   227a8: eb010109     	subs	x9, x8, x1
   227ac: 54000228     	b.hi	0x227f0 <tpd_sysfs_fwimage_store+0x80>
   227b0: b9044abf     	str	wzr, [x21, #0x448]
   227b4: 928002a0     	mov	x0, #-0x16              // =-22
   227b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   227bc: f9400bf5     	ldr	x21, [sp, #0x10]
   227c0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   227c4: d50323bf     	autiasp
   227c8: d65f03c0     	ret
   227cc: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		00000000000227cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5269
   227d0: 91000000     	add	x0, x0, #0x0
		00000000000227d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5269
   227d4: 94000000     	bl	0x227d4 <tpd_sysfs_fwimage_store+0x64>
		00000000000227d4:  R_AARCH64_CALL26	_printk
   227d8: 92800160     	mov	x0, #-0xc               // =-12
   227dc: 17fffff7     	b	0x227b8 <tpd_sysfs_fwimage_store+0x48>
   227e0: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		00000000000227e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4418
   227e4: 91000000     	add	x0, x0, #0x0
		00000000000227e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4418
   227e8: 94000000     	bl	0x227e8 <tpd_sysfs_fwimage_store+0x78>
		00000000000227e8:  R_AARCH64_CALL26	_printk
   227ec: 17fffff2     	b	0x227b4 <tpd_sysfs_fwimage_store+0x44>
   227f0: 8b05002a     	add	x10, x1, x5
   227f4: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		00000000000227f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2233
   227f8: 91000000     	add	x0, x0, #0x0
		00000000000227f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2233
   227fc: eb08015f     	cmp	x10, x8
   22800: aa0303f4     	mov	x20, x3
   22804: 9a858133     	csel	x19, x9, x5, hi
   22808: aa1303e2     	mov	x2, x19
   2280c: 94000000     	bl	0x2280c <tpd_sysfs_fwimage_store+0x9c>
		000000000002280c:  R_AARCH64_CALL26	_printk
   22810: 913182a0     	add	x0, x21, #0xc60
   22814: 94000000     	bl	0x22814 <tpd_sysfs_fwimage_store+0xa4>
		0000000000022814:  R_AARCH64_CALL26	mutex_lock
   22818: f9462ea8     	ldr	x8, [x21, #0xc58]
   2281c: b9444aa9     	ldr	w9, [x21, #0x448]
   22820: aa1403e1     	mov	x1, x20
   22824: aa1303e2     	mov	x2, x19
   22828: f9400508     	ldr	x8, [x8, #0x8]
   2282c: 8b090100     	add	x0, x8, x9
   22830: 94000000     	bl	0x22830 <tpd_sysfs_fwimage_store+0xc0>
		0000000000022830:  R_AARCH64_CALL26	memcpy
   22834: b9444aa8     	ldr	w8, [x21, #0x448]
   22838: 913182a0     	add	x0, x21, #0xc60
   2283c: 0b130108     	add	w8, w8, w19
   22840: b9044aa8     	str	w8, [x21, #0x448]
   22844: 94000000     	bl	0x22844 <tpd_sysfs_fwimage_store+0xd4>
		0000000000022844:  R_AARCH64_CALL26	mutex_unlock
   22848: aa1303e0     	mov	x0, x19
   2284c: 17ffffdb     	b	0x227b8 <tpd_sysfs_fwimage_store+0x48>
