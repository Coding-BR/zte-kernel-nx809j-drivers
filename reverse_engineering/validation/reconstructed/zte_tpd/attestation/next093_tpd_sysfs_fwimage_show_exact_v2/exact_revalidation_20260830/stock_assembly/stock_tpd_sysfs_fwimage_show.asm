
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007654 <tpd_sysfs_fwimage_show>:
    7654: d503233f     	paciasp
    7658: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    765c: f9000bf5     	str	x21, [sp, #0x10]
    7660: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7664: 910003fd     	mov	x29, sp
    7668: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		0000000000007668:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    766c: f9400115     	ldr	x21, [x8]
		000000000000766c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7670: f9462ea8     	ldr	x8, [x21, #0xc58]
    7674: b4000468     	cbz	x8, 0x7700 <tpd_sysfs_fwimage_show+0xac>
    7678: f9400509     	ldr	x9, [x8, #0x8]
    767c: b4000429     	cbz	x9, 0x7700 <tpd_sysfs_fwimage_show+0xac>
    7680: f9400108     	ldr	x8, [x8]
    7684: b4000488     	cbz	x8, 0x7714 <tpd_sysfs_fwimage_show+0xc0>
    7688: 913182a0     	add	x0, x21, #0xc60
    768c: aa0503f4     	mov	x20, x5
    7690: aa0303f3     	mov	x19, x3
    7694: 94000000     	bl	0x7694 <tpd_sysfs_fwimage_show+0x40>
		0000000000007694:  R_AARCH64_CALL26	mutex_lock
    7698: f9462eab     	ldr	x11, [x21, #0xc58]
    769c: b9444aa9     	ldr	w9, [x21, #0x448]
    76a0: f940016a     	ldr	x10, [x11]
    76a4: eb090148     	subs	x8, x10, x9
    76a8: 54000409     	b.ls	0x7728 <tpd_sysfs_fwimage_show+0xd4>
    76ac: f9462eab     	ldr	x11, [x21, #0xc58]
    76b0: 8b140129     	add	x9, x9, x20
    76b4: aa1303e0     	mov	x0, x19
    76b8: eb0a013f     	cmp	x9, x10
    76bc: b9444aaa     	ldr	w10, [x21, #0x448]
    76c0: f9400569     	ldr	x9, [x11, #0x8]
    76c4: 9a948114     	csel	x20, x8, x20, hi
    76c8: aa1403e2     	mov	x2, x20
    76cc: 8b0a0121     	add	x1, x9, x10
    76d0: 94000000     	bl	0x76d0 <tpd_sysfs_fwimage_show+0x7c>
		00000000000076d0:  R_AARCH64_CALL26	memcpy
    76d4: b9444aa8     	ldr	w8, [x21, #0x448]
    76d8: 913182a0     	add	x0, x21, #0xc60
    76dc: 0b140108     	add	w8, w8, w20
    76e0: b9044aa8     	str	w8, [x21, #0x448]
    76e4: 94000000     	bl	0x76e4 <tpd_sysfs_fwimage_show+0x90>
		00000000000076e4:  R_AARCH64_CALL26	mutex_unlock
    76e8: aa1403e0     	mov	x0, x20
    76ec: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    76f0: f9400bf5     	ldr	x21, [sp, #0x10]
    76f4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    76f8: d50323bf     	autiasp
    76fc: d65f03c0     	ret
    7700: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab8b
    7704: 91000000     	add	x0, x0, #0x0
		0000000000007704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab8b
    7708: 94000000     	bl	0x7708 <tpd_sysfs_fwimage_show+0xb4>
		0000000000007708:  R_AARCH64_CALL26	_printk
    770c: 92800174     	mov	x20, #-0xc              // =-12
    7710: 17fffff6     	b	0x76e8 <tpd_sysfs_fwimage_show+0x94>
    7714: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a95
    7718: 91000000     	add	x0, x0, #0x0
		0000000000007718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a95
    771c: 94000000     	bl	0x771c <tpd_sysfs_fwimage_show+0xc8>
		000000000000771c:  R_AARCH64_CALL26	_printk
    7720: 928002b4     	mov	x20, #-0x16             // =-22
    7724: 17fffff1     	b	0x76e8 <tpd_sysfs_fwimage_show+0x94>
    7728: b9044abf     	str	wzr, [x21, #0x448]
    772c: f9400560     	ldr	x0, [x11, #0x8]
    7730: 94000000     	bl	0x7730 <tpd_sysfs_fwimage_show+0xdc>
		0000000000007730:  R_AARCH64_CALL26	vfree
    7734: f9462ea8     	ldr	x8, [x21, #0xc58]
    7738: f900051f     	str	xzr, [x8, #0x8]
    773c: f9462ea0     	ldr	x0, [x21, #0xc58]
    7740: 94000000     	bl	0x7740 <tpd_sysfs_fwimage_show+0xec>
		0000000000007740:  R_AARCH64_CALL26	kfree
    7744: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		0000000000007744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3edd
    7748: 91000000     	add	x0, x0, #0x0
		0000000000007748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3edd
    774c: f9062ebf     	str	xzr, [x21, #0xc58]
    7750: 94000000     	bl	0x7750 <tpd_sysfs_fwimage_show+0xfc>
		0000000000007750:  R_AARCH64_CALL26	_printk
    7754: 913182a0     	add	x0, x21, #0xc60
    7758: 94000000     	bl	0x7758 <tpd_sysfs_fwimage_show+0x104>
		0000000000007758:  R_AARCH64_CALL26	mutex_unlock
    775c: aa1f03f4     	mov	x20, xzr
    7760: 17ffffe2     	b	0x76e8 <tpd_sysfs_fwimage_show+0x94>
