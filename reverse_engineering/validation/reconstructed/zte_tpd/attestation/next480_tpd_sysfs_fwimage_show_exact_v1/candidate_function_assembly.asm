
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252fc <tpd_sysfs_fwimage_show>:
   252fc: d503233f     	paciasp
   25300: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25304: f9000bf5     	str	x21, [sp, #0x10]
   25308: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2530c: 910003fd     	mov	x29, sp
   25310: 90000008     	adrp	x8, 0x25000 <tp_test_read+0x10>
		0000000000025310:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25314: f9400115     	ldr	x21, [x8]
		0000000000025314:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25318: f9462ea8     	ldr	x8, [x21, #0xc58]
   2531c: b4000468     	cbz	x8, 0x253a8 <tpd_sysfs_fwimage_show+0xac>
   25320: f9400509     	ldr	x9, [x8, #0x8]
   25324: b4000429     	cbz	x9, 0x253a8 <tpd_sysfs_fwimage_show+0xac>
   25328: f9400108     	ldr	x8, [x8]
   2532c: b4000488     	cbz	x8, 0x253bc <tpd_sysfs_fwimage_show+0xc0>
   25330: 913182a0     	add	x0, x21, #0xc60
   25334: aa0503f4     	mov	x20, x5
   25338: aa0303f3     	mov	x19, x3
   2533c: 94000000     	bl	0x2533c <tpd_sysfs_fwimage_show+0x40>
		000000000002533c:  R_AARCH64_CALL26	mutex_lock
   25340: f9462eab     	ldr	x11, [x21, #0xc58]
   25344: b9444aa9     	ldr	w9, [x21, #0x448]
   25348: f940016a     	ldr	x10, [x11]
   2534c: eb090148     	subs	x8, x10, x9
   25350: 54000409     	b.ls	0x253d0 <tpd_sysfs_fwimage_show+0xd4>
   25354: f9462eab     	ldr	x11, [x21, #0xc58]
   25358: 8b140129     	add	x9, x9, x20
   2535c: aa1303e0     	mov	x0, x19
   25360: eb0a013f     	cmp	x9, x10
   25364: b9444aaa     	ldr	w10, [x21, #0x448]
   25368: f9400569     	ldr	x9, [x11, #0x8]
   2536c: 9a948114     	csel	x20, x8, x20, hi
   25370: aa1403e2     	mov	x2, x20
   25374: 8b0a0121     	add	x1, x9, x10
   25378: 94000000     	bl	0x25378 <tpd_sysfs_fwimage_show+0x7c>
		0000000000025378:  R_AARCH64_CALL26	memcpy
   2537c: b9444aa8     	ldr	w8, [x21, #0x448]
   25380: 913182a0     	add	x0, x21, #0xc60
   25384: 0b140108     	add	w8, w8, w20
   25388: b9044aa8     	str	w8, [x21, #0x448]
   2538c: 94000000     	bl	0x2538c <tpd_sysfs_fwimage_show+0x90>
		000000000002538c:  R_AARCH64_CALL26	mutex_unlock
   25390: aa1403e0     	mov	x0, x20
   25394: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25398: f9400bf5     	ldr	x21, [sp, #0x10]
   2539c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   253a0: d50323bf     	autiasp
   253a4: d65f03c0     	ret
   253a8: 90000000     	adrp	x0, 0x25000 <tp_test_read+0x10>
		00000000000253a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca6a
   253ac: 91000000     	add	x0, x0, #0x0
		00000000000253ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca6a
   253b0: 94000000     	bl	0x253b0 <tpd_sysfs_fwimage_show+0xb4>
		00000000000253b0:  R_AARCH64_CALL26	_printk
   253b4: 92800174     	mov	x20, #-0xc              // =-12
   253b8: 17fffff6     	b	0x25390 <tpd_sysfs_fwimage_show+0x94>
   253bc: 90000000     	adrp	x0, 0x25000 <tp_test_read+0x10>
		00000000000253bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8b8
   253c0: 91000000     	add	x0, x0, #0x0
		00000000000253c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8b8
   253c4: 94000000     	bl	0x253c4 <tpd_sysfs_fwimage_show+0xc8>
		00000000000253c4:  R_AARCH64_CALL26	_printk
   253c8: 928002b4     	mov	x20, #-0x16             // =-22
   253cc: 17fffff1     	b	0x25390 <tpd_sysfs_fwimage_show+0x94>
   253d0: b9044abf     	str	wzr, [x21, #0x448]
   253d4: f9400560     	ldr	x0, [x11, #0x8]
   253d8: 94000000     	bl	0x253d8 <tpd_sysfs_fwimage_show+0xdc>
		00000000000253d8:  R_AARCH64_CALL26	vfree
   253dc: f9462ea8     	ldr	x8, [x21, #0xc58]
   253e0: f900051f     	str	xzr, [x8, #0x8]
   253e4: f9462ea0     	ldr	x0, [x21, #0xc58]
   253e8: 94000000     	bl	0x253e8 <tpd_sysfs_fwimage_show+0xec>
		00000000000253e8:  R_AARCH64_CALL26	kfree
   253ec: 90000000     	adrp	x0, 0x25000 <tp_test_read+0x10>
		00000000000253ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c08
   253f0: 91000000     	add	x0, x0, #0x0
		00000000000253f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c08
   253f4: f9062ebf     	str	xzr, [x21, #0xc58]
   253f8: 94000000     	bl	0x253f8 <tpd_sysfs_fwimage_show+0xfc>
		00000000000253f8:  R_AARCH64_CALL26	_printk
   253fc: 913182a0     	add	x0, x21, #0xc60
   25400: 94000000     	bl	0x25400 <tpd_sysfs_fwimage_show+0x104>
		0000000000025400:  R_AARCH64_CALL26	mutex_unlock
   25404: aa1f03f4     	mov	x20, xzr
   25408: 17ffffe2     	b	0x25390 <tpd_sysfs_fwimage_show+0x94>
