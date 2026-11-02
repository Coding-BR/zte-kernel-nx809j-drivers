
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002532c <tpd_sysfs_fwimage_store>:
   2532c: d503233f     	paciasp
   25330: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   25334: f9000bf5     	str	x21, [sp, #0x10]
   25338: a9024ff4     	stp	x20, x19, [sp, #0x20]
   2533c: 910003fd     	mov	x29, sp
   25340: 90000008     	adrp	x8, 0x25000 <tp_test_read+0xf4>
		0000000000025340:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25344: f9400115     	ldr	x21, [x8]
		0000000000025344:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25348: f9462ea8     	ldr	x8, [x21, #0xc58]
   2534c: b40001e8     	cbz	x8, 0x25388 <tpd_sysfs_fwimage_store+0x5c>
   25350: f9400509     	ldr	x9, [x8, #0x8]
   25354: b40001a9     	cbz	x9, 0x25388 <tpd_sysfs_fwimage_store+0x5c>
   25358: f9400108     	ldr	x8, [x8]
   2535c: b4000208     	cbz	x8, 0x2539c <tpd_sysfs_fwimage_store+0x70>
   25360: b9444aa1     	ldr	w1, [x21, #0x448]
   25364: eb010109     	subs	x9, x8, x1
   25368: 54000228     	b.hi	0x253ac <tpd_sysfs_fwimage_store+0x80>
   2536c: b9044abf     	str	wzr, [x21, #0x448]
   25370: 928002a0     	mov	x0, #-0x16              // =-22
   25374: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25378: f9400bf5     	ldr	x21, [sp, #0x10]
   2537c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   25380: d50323bf     	autiasp
   25384: d65f03c0     	ret
   25388: 90000000     	adrp	x0, 0x25000 <tp_test_read+0xf4>
		0000000000025388:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ca40
   2538c: 91000000     	add	x0, x0, #0x0
		000000000002538c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ca40
   25390: 94000000     	bl	0x25390 <tpd_sysfs_fwimage_store+0x64>
		0000000000025390:  R_AARCH64_CALL26	_printk
   25394: 92800160     	mov	x0, #-0xc               // =-12
   25398: 17fffff7     	b	0x25374 <tpd_sysfs_fwimage_store+0x48>
   2539c: 90000000     	adrp	x0, 0x25000 <tp_test_read+0xf4>
		000000000002539c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a88e
   253a0: 91000000     	add	x0, x0, #0x0
		00000000000253a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a88e
   253a4: 94000000     	bl	0x253a4 <tpd_sysfs_fwimage_store+0x78>
		00000000000253a4:  R_AARCH64_CALL26	_printk
   253a8: 17fffff2     	b	0x25370 <tpd_sysfs_fwimage_store+0x44>
   253ac: 8b05002a     	add	x10, x1, x5
   253b0: 90000000     	adrp	x0, 0x25000 <tp_test_read+0xf4>
		00000000000253b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15bf8
   253b4: 91000000     	add	x0, x0, #0x0
		00000000000253b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15bf8
   253b8: eb08015f     	cmp	x10, x8
   253bc: aa0303f4     	mov	x20, x3
   253c0: 9a858133     	csel	x19, x9, x5, hi
   253c4: aa1303e2     	mov	x2, x19
   253c8: 94000000     	bl	0x253c8 <tpd_sysfs_fwimage_store+0x9c>
		00000000000253c8:  R_AARCH64_CALL26	_printk
   253cc: 913182a0     	add	x0, x21, #0xc60
   253d0: 94000000     	bl	0x253d0 <tpd_sysfs_fwimage_store+0xa4>
		00000000000253d0:  R_AARCH64_CALL26	mutex_lock
   253d4: f9462ea8     	ldr	x8, [x21, #0xc58]
   253d8: b9444aa9     	ldr	w9, [x21, #0x448]
   253dc: aa1403e1     	mov	x1, x20
   253e0: aa1303e2     	mov	x2, x19
   253e4: f9400508     	ldr	x8, [x8, #0x8]
   253e8: 8b090100     	add	x0, x8, x9
   253ec: 94000000     	bl	0x253ec <tpd_sysfs_fwimage_store+0xc0>
		00000000000253ec:  R_AARCH64_CALL26	memcpy
   253f0: b9444aa8     	ldr	w8, [x21, #0x448]
   253f4: 913182a0     	add	x0, x21, #0xc60
   253f8: 0b130108     	add	w8, w8, w19
   253fc: b9044aa8     	str	w8, [x21, #0x448]
   25400: 94000000     	bl	0x25400 <tpd_sysfs_fwimage_store+0xd4>
		0000000000025400:  R_AARCH64_CALL26	mutex_unlock
   25404: aa1303e0     	mov	x0, x19
   25408: 17ffffdb     	b	0x25374 <tpd_sysfs_fwimage_store+0x48>
