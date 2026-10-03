
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017930 <tpd_sysfs_fwimage_show>:
   17930: d503233f     	paciasp
   17934: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   17938: f9000bf5     	str	x21, [sp, #0x10]
   1793c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   17940: 910003fd     	mov	x29, sp
   17944: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017944:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17948: f9400115     	ldr	x21, [x8]
		0000000000017948:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1794c: f9462ea8     	ldr	x8, [x21, #0xc58]
   17950: b4000468     	cbz	x8, 0x179dc <tpd_sysfs_fwimage_show+0xac>
   17954: f9400509     	ldr	x9, [x8, #0x8]
   17958: b4000429     	cbz	x9, 0x179dc <tpd_sysfs_fwimage_show+0xac>
   1795c: f9400108     	ldr	x8, [x8]
   17960: b4000488     	cbz	x8, 0x179f0 <tpd_sysfs_fwimage_show+0xc0>
   17964: 913182a0     	add	x0, x21, #0xc60
   17968: aa0503f4     	mov	x20, x5
   1796c: aa0303f3     	mov	x19, x3
   17970: 94000000     	bl	0x17970 <tpd_sysfs_fwimage_show+0x40>
		0000000000017970:  R_AARCH64_CALL26	mutex_lock
   17974: f9462eab     	ldr	x11, [x21, #0xc58]
   17978: b9444aa9     	ldr	w9, [x21, #0x448]
   1797c: f940016a     	ldr	x10, [x11]
   17980: eb090148     	subs	x8, x10, x9
   17984: 54000409     	b.ls	0x17a04 <tpd_sysfs_fwimage_show+0xd4>
   17988: f9462eab     	ldr	x11, [x21, #0xc58]
   1798c: 8b140129     	add	x9, x9, x20
   17990: aa1303e0     	mov	x0, x19
   17994: eb0a013f     	cmp	x9, x10
   17998: b9444aaa     	ldr	w10, [x21, #0x448]
   1799c: f9400569     	ldr	x9, [x11, #0x8]
   179a0: 9a948114     	csel	x20, x8, x20, hi
   179a4: aa1403e2     	mov	x2, x20
   179a8: 8b0a0121     	add	x1, x9, x10
   179ac: 94000000     	bl	0x179ac <tpd_sysfs_fwimage_show+0x7c>
		00000000000179ac:  R_AARCH64_CALL26	memcpy
   179b0: b9444aa8     	ldr	w8, [x21, #0x448]
   179b4: 913182a0     	add	x0, x21, #0xc60
   179b8: 0b140108     	add	w8, w8, w20
   179bc: b9044aa8     	str	w8, [x21, #0x448]
   179c0: 94000000     	bl	0x179c0 <tpd_sysfs_fwimage_show+0x90>
		00000000000179c0:  R_AARCH64_CALL26	mutex_unlock
   179c4: aa1403e0     	mov	x0, x20
   179c8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   179cc: f9400bf5     	ldr	x21, [sp, #0x10]
   179d0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   179d4: d50323bf     	autiasp
   179d8: d65f03c0     	ret
   179dc: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000179dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2a
   179e0: 91000000     	add	x0, x0, #0x0
		00000000000179e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2a
   179e4: 94000000     	bl	0x179e4 <tpd_sysfs_fwimage_show+0xb4>
		00000000000179e4:  R_AARCH64_CALL26	_printk
   179e8: 92800174     	mov	x20, #-0xc              // =-12
   179ec: 17fffff6     	b	0x179c4 <tpd_sysfs_fwimage_show+0x94>
   179f0: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		00000000000179f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cc8
   179f4: 91000000     	add	x0, x0, #0x0
		00000000000179f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cc8
   179f8: 94000000     	bl	0x179f8 <tpd_sysfs_fwimage_show+0xc8>
		00000000000179f8:  R_AARCH64_CALL26	_printk
   179fc: 928002b4     	mov	x20, #-0x16             // =-22
   17a00: 17fffff1     	b	0x179c4 <tpd_sysfs_fwimage_show+0x94>
   17a04: b9044abf     	str	wzr, [x21, #0x448]
   17a08: f9400560     	ldr	x0, [x11, #0x8]
   17a0c: 94000000     	bl	0x17a0c <tpd_sysfs_fwimage_show+0xdc>
		0000000000017a0c:  R_AARCH64_CALL26	vfree
   17a10: f9462ea8     	ldr	x8, [x21, #0xc58]
   17a14: f900051f     	str	xzr, [x8, #0x8]
   17a18: f9462ea0     	ldr	x0, [x21, #0xc58]
   17a1c: 94000000     	bl	0x17a1c <tpd_sysfs_fwimage_show+0xec>
		0000000000017a1c:  R_AARCH64_CALL26	kfree
   17a20: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fc4
   17a24: 91000000     	add	x0, x0, #0x0
		0000000000017a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fc4
   17a28: f9062ebf     	str	xzr, [x21, #0xc58]
   17a2c: 94000000     	bl	0x17a2c <tpd_sysfs_fwimage_show+0xfc>
		0000000000017a2c:  R_AARCH64_CALL26	_printk
   17a30: 913182a0     	add	x0, x21, #0xc60
   17a34: 94000000     	bl	0x17a34 <tpd_sysfs_fwimage_show+0x104>
		0000000000017a34:  R_AARCH64_CALL26	mutex_unlock
   17a38: aa1f03f4     	mov	x20, xzr
   17a3c: 17ffffe2     	b	0x179c4 <tpd_sysfs_fwimage_show+0x94>
