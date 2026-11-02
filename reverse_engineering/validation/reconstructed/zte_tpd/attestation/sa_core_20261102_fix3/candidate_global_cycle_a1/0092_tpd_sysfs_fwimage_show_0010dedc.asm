
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001798c <tpd_sysfs_fwimage_show>:
   1798c: d503233f     	paciasp
   17990: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   17994: f9000bf5     	str	x21, [sp, #0x10]
   17998: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1799c: 910003fd     	mov	x29, sp
   179a0: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		00000000000179a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   179a4: f9400115     	ldr	x21, [x8]
		00000000000179a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   179a8: f9462ea8     	ldr	x8, [x21, #0xc58]
   179ac: b4000468     	cbz	x8, 0x17a38 <tpd_sysfs_fwimage_show+0xac>
   179b0: f9400509     	ldr	x9, [x8, #0x8]
   179b4: b4000429     	cbz	x9, 0x17a38 <tpd_sysfs_fwimage_show+0xac>
   179b8: f9400108     	ldr	x8, [x8]
   179bc: b4000488     	cbz	x8, 0x17a4c <tpd_sysfs_fwimage_show+0xc0>
   179c0: 913182a0     	add	x0, x21, #0xc60
   179c4: aa0503f4     	mov	x20, x5
   179c8: aa0303f3     	mov	x19, x3
   179cc: 94000000     	bl	0x179cc <tpd_sysfs_fwimage_show+0x40>
		00000000000179cc:  R_AARCH64_CALL26	mutex_lock
   179d0: f9462eab     	ldr	x11, [x21, #0xc58]
   179d4: b9444aa9     	ldr	w9, [x21, #0x448]
   179d8: f940016a     	ldr	x10, [x11]
   179dc: eb090148     	subs	x8, x10, x9
   179e0: 54000409     	b.ls	0x17a60 <tpd_sysfs_fwimage_show+0xd4>
   179e4: f9462eab     	ldr	x11, [x21, #0xc58]
   179e8: 8b140129     	add	x9, x9, x20
   179ec: aa1303e0     	mov	x0, x19
   179f0: eb0a013f     	cmp	x9, x10
   179f4: b9444aaa     	ldr	w10, [x21, #0x448]
   179f8: f9400569     	ldr	x9, [x11, #0x8]
   179fc: 9a948114     	csel	x20, x8, x20, hi
   17a00: aa1403e2     	mov	x2, x20
   17a04: 8b0a0121     	add	x1, x9, x10
   17a08: 94000000     	bl	0x17a08 <tpd_sysfs_fwimage_show+0x7c>
		0000000000017a08:  R_AARCH64_CALL26	memcpy
   17a0c: b9444aa8     	ldr	w8, [x21, #0x448]
   17a10: 913182a0     	add	x0, x21, #0xc60
   17a14: 0b140108     	add	w8, w8, w20
   17a18: b9044aa8     	str	w8, [x21, #0x448]
   17a1c: 94000000     	bl	0x17a1c <tpd_sysfs_fwimage_show+0x90>
		0000000000017a1c:  R_AARCH64_CALL26	mutex_unlock
   17a20: aa1403e0     	mov	x0, x20
   17a24: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   17a28: f9400bf5     	ldr	x21, [sp, #0x10]
   17a2c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   17a30: d50323bf     	autiasp
   17a34: d65f03c0     	ret
   17a38: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017a38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2a
   17a3c: 91000000     	add	x0, x0, #0x0
		0000000000017a3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2a
   17a40: 94000000     	bl	0x17a40 <tpd_sysfs_fwimage_show+0xb4>
		0000000000017a40:  R_AARCH64_CALL26	_printk
   17a44: 92800174     	mov	x20, #-0xc              // =-12
   17a48: 17fffff6     	b	0x17a20 <tpd_sysfs_fwimage_show+0x94>
   17a4c: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cc8
   17a50: 91000000     	add	x0, x0, #0x0
		0000000000017a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cc8
   17a54: 94000000     	bl	0x17a54 <tpd_sysfs_fwimage_show+0xc8>
		0000000000017a54:  R_AARCH64_CALL26	_printk
   17a58: 928002b4     	mov	x20, #-0x16             // =-22
   17a5c: 17fffff1     	b	0x17a20 <tpd_sysfs_fwimage_show+0x94>
   17a60: b9044abf     	str	wzr, [x21, #0x448]
   17a64: f9400560     	ldr	x0, [x11, #0x8]
   17a68: 94000000     	bl	0x17a68 <tpd_sysfs_fwimage_show+0xdc>
		0000000000017a68:  R_AARCH64_CALL26	vfree
   17a6c: f9462ea8     	ldr	x8, [x21, #0xc58]
   17a70: f900051f     	str	xzr, [x8, #0x8]
   17a74: f9462ea0     	ldr	x0, [x21, #0xc58]
   17a78: 94000000     	bl	0x17a78 <tpd_sysfs_fwimage_show+0xec>
		0000000000017a78:  R_AARCH64_CALL26	kfree
   17a7c: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fc4
   17a80: 91000000     	add	x0, x0, #0x0
		0000000000017a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fc4
   17a84: f9062ebf     	str	xzr, [x21, #0xc58]
   17a88: 94000000     	bl	0x17a88 <tpd_sysfs_fwimage_show+0xfc>
		0000000000017a88:  R_AARCH64_CALL26	_printk
   17a8c: 913182a0     	add	x0, x21, #0xc60
   17a90: 94000000     	bl	0x17a90 <tpd_sysfs_fwimage_show+0x104>
		0000000000017a90:  R_AARCH64_CALL26	mutex_unlock
   17a94: aa1f03f4     	mov	x20, xzr
   17a98: 17ffffe2     	b	0x17a20 <tpd_sysfs_fwimage_show+0x94>
