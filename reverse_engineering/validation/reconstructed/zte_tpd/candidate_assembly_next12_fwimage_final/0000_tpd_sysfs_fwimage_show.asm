
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002265c <tpd_sysfs_fwimage_show>:
   2265c: d503233f     	paciasp
   22660: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   22664: f9000bf5     	str	x21, [sp, #0x10]
   22668: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2266c: 910003fd     	mov	x29, sp
   22670: 90000008     	adrp	x8, 0x22000 <tpd_set_rotation_limit_level+0x18>
		0000000000022670:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   22674: f9400115     	ldr	x21, [x8]
		0000000000022674:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   22678: f9462ea8     	ldr	x8, [x21, #0xc58]
   2267c: b4000468     	cbz	x8, 0x22708 <tpd_sysfs_fwimage_show+0xac>
   22680: f9400509     	ldr	x9, [x8, #0x8]
   22684: b4000429     	cbz	x9, 0x22708 <tpd_sysfs_fwimage_show+0xac>
   22688: f9400108     	ldr	x8, [x8]
   2268c: b4000488     	cbz	x8, 0x2271c <tpd_sysfs_fwimage_show+0xc0>
   22690: 913182a0     	add	x0, x21, #0xc60
   22694: aa0503f4     	mov	x20, x5
   22698: aa0303f3     	mov	x19, x3
   2269c: 94000000     	bl	0x2269c <tpd_sysfs_fwimage_show+0x40>
		000000000002269c:  R_AARCH64_CALL26	mutex_lock
   226a0: f9462ea8     	ldr	x8, [x21, #0xc58]
   226a4: b9444aaa     	ldr	w10, [x21, #0x448]
   226a8: f940010b     	ldr	x11, [x8]
   226ac: eb0a0169     	subs	x9, x11, x10
   226b0: 54000409     	b.ls	0x22730 <tpd_sysfs_fwimage_show+0xd4>
   226b4: f9462ea8     	ldr	x8, [x21, #0xc58]
   226b8: 8b14014a     	add	x10, x10, x20
   226bc: aa1303e0     	mov	x0, x19
   226c0: eb0b015f     	cmp	x10, x11
   226c4: b9444aaa     	ldr	w10, [x21, #0x448]
   226c8: f9400508     	ldr	x8, [x8, #0x8]
   226cc: 9a948134     	csel	x20, x9, x20, hi
   226d0: aa1403e2     	mov	x2, x20
   226d4: 8b0a0101     	add	x1, x8, x10
   226d8: 94000000     	bl	0x226d8 <tpd_sysfs_fwimage_show+0x7c>
		00000000000226d8:  R_AARCH64_CALL26	memcpy
   226dc: b9444aa8     	ldr	w8, [x21, #0x448]
   226e0: 913182a0     	add	x0, x21, #0xc60
   226e4: 0b140108     	add	w8, w8, w20
   226e8: b9044aa8     	str	w8, [x21, #0x448]
   226ec: 94000000     	bl	0x226ec <tpd_sysfs_fwimage_show+0x90>
		00000000000226ec:  R_AARCH64_CALL26	mutex_unlock
   226f0: aa1403e0     	mov	x0, x20
   226f4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   226f8: f9400bf5     	ldr	x21, [sp, #0x10]
   226fc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   22700: d50323bf     	autiasp
   22704: d65f03c0     	ret
   22708: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		0000000000022708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5269
   2270c: 91000000     	add	x0, x0, #0x0
		000000000002270c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5269
   22710: 94000000     	bl	0x22710 <tpd_sysfs_fwimage_show+0xb4>
		0000000000022710:  R_AARCH64_CALL26	_printk
   22714: 92800174     	mov	x20, #-0xc              // =-12
   22718: 17fffff6     	b	0x226f0 <tpd_sysfs_fwimage_show+0x94>
   2271c: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		000000000002271c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4418
   22720: 91000000     	add	x0, x0, #0x0
		0000000000022720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4418
   22724: 94000000     	bl	0x22724 <tpd_sysfs_fwimage_show+0xc8>
		0000000000022724:  R_AARCH64_CALL26	_printk
   22728: 928002b4     	mov	x20, #-0x16             // =-22
   2272c: 17fffff1     	b	0x226f0 <tpd_sysfs_fwimage_show+0x94>
   22730: b9044abf     	str	wzr, [x21, #0x448]
   22734: f9400500     	ldr	x0, [x8, #0x8]
   22738: 94000000     	bl	0x22738 <tpd_sysfs_fwimage_show+0xdc>
		0000000000022738:  R_AARCH64_CALL26	vfree
   2273c: f9462ea8     	ldr	x8, [x21, #0xc58]
   22740: f900051f     	str	xzr, [x8, #0x8]
   22744: f9462ea0     	ldr	x0, [x21, #0xc58]
   22748: 94000000     	bl	0x22748 <tpd_sysfs_fwimage_show+0xec>
		0000000000022748:  R_AARCH64_CALL26	kfree
   2274c: 90000000     	adrp	x0, 0x22000 <tpd_set_rotation_limit_level+0x18>
		000000000002274c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2219
   22750: 91000000     	add	x0, x0, #0x0
		0000000000022750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2219
   22754: f9062ebf     	str	xzr, [x21, #0xc58]
   22758: 94000000     	bl	0x22758 <tpd_sysfs_fwimage_show+0xfc>
		0000000000022758:  R_AARCH64_CALL26	_printk
   2275c: 913182a0     	add	x0, x21, #0xc60
   22760: 94000000     	bl	0x22760 <tpd_sysfs_fwimage_show+0x104>
		0000000000022760:  R_AARCH64_CALL26	mutex_unlock
   22764: aa1f03f4     	mov	x20, xzr
   22768: 17ffffe2     	b	0x226f0 <tpd_sysfs_fwimage_show+0x94>
