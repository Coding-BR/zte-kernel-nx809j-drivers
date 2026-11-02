
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017aa0 <tpd_sysfs_fwimage_store>:
   17aa0: d503233f     	paciasp
   17aa4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   17aa8: f9000bf5     	str	x21, [sp, #0x10]
   17aac: a9024ff4     	stp	x20, x19, [sp, #0x20]
   17ab0: 910003fd     	mov	x29, sp
   17ab4: 90000008     	adrp	x8, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017ab4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17ab8: f9400115     	ldr	x21, [x8]
		0000000000017ab8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17abc: f9462ea8     	ldr	x8, [x21, #0xc58]
   17ac0: b40001e8     	cbz	x8, 0x17afc <tpd_sysfs_fwimage_store+0x5c>
   17ac4: f9400509     	ldr	x9, [x8, #0x8]
   17ac8: b40001a9     	cbz	x9, 0x17afc <tpd_sysfs_fwimage_store+0x5c>
   17acc: f9400108     	ldr	x8, [x8]
   17ad0: b4000208     	cbz	x8, 0x17b10 <tpd_sysfs_fwimage_store+0x70>
   17ad4: b9444aa1     	ldr	w1, [x21, #0x448]
   17ad8: eb010109     	subs	x9, x8, x1
   17adc: 54000228     	b.hi	0x17b20 <tpd_sysfs_fwimage_store+0x80>
   17ae0: b9044abf     	str	wzr, [x21, #0x448]
   17ae4: 928002a0     	mov	x0, #-0x16              // =-22
   17ae8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   17aec: f9400bf5     	ldr	x21, [sp, #0x10]
   17af0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   17af4: d50323bf     	autiasp
   17af8: d65f03c0     	ret
   17afc: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2a
   17b00: 91000000     	add	x0, x0, #0x0
		0000000000017b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2a
   17b04: 94000000     	bl	0x17b04 <tpd_sysfs_fwimage_store+0x64>
		0000000000017b04:  R_AARCH64_CALL26	_printk
   17b08: 92800160     	mov	x0, #-0xc               // =-12
   17b0c: 17fffff7     	b	0x17ae8 <tpd_sysfs_fwimage_store+0x48>
   17b10: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cc8
   17b14: 91000000     	add	x0, x0, #0x0
		0000000000017b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cc8
   17b18: 94000000     	bl	0x17b18 <tpd_sysfs_fwimage_store+0x78>
		0000000000017b18:  R_AARCH64_CALL26	_printk
   17b1c: 17fffff2     	b	0x17ae4 <tpd_sysfs_fwimage_store+0x44>
   17b20: 8b05002a     	add	x10, x1, x5
   17b24: 90000000     	adrp	x0, 0x17000 <tp_zlog_debug_write+0xa8>
		0000000000017b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fde
   17b28: 91000000     	add	x0, x0, #0x0
		0000000000017b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fde
   17b2c: eb08015f     	cmp	x10, x8
   17b30: aa0303f4     	mov	x20, x3
   17b34: 9a858133     	csel	x19, x9, x5, hi
   17b38: aa1303e2     	mov	x2, x19
   17b3c: 94000000     	bl	0x17b3c <tpd_sysfs_fwimage_store+0x9c>
		0000000000017b3c:  R_AARCH64_CALL26	_printk
   17b40: 913182a0     	add	x0, x21, #0xc60
   17b44: 94000000     	bl	0x17b44 <tpd_sysfs_fwimage_store+0xa4>
		0000000000017b44:  R_AARCH64_CALL26	mutex_lock
   17b48: f9462ea8     	ldr	x8, [x21, #0xc58]
   17b4c: b9444aa9     	ldr	w9, [x21, #0x448]
   17b50: aa1403e1     	mov	x1, x20
   17b54: aa1303e2     	mov	x2, x19
   17b58: f9400508     	ldr	x8, [x8, #0x8]
   17b5c: 8b090100     	add	x0, x8, x9
   17b60: 94000000     	bl	0x17b60 <tpd_sysfs_fwimage_store+0xc0>
		0000000000017b60:  R_AARCH64_CALL26	memcpy
   17b64: b9444aa8     	ldr	w8, [x21, #0x448]
   17b68: 913182a0     	add	x0, x21, #0xc60
   17b6c: 0b130108     	add	w8, w8, w19
   17b70: b9044aa8     	str	w8, [x21, #0x448]
   17b74: 94000000     	bl	0x17b74 <tpd_sysfs_fwimage_store+0xd4>
		0000000000017b74:  R_AARCH64_CALL26	mutex_unlock
   17b78: aa1303e0     	mov	x0, x19
   17b7c: 17ffffdb     	b	0x17ae8 <tpd_sysfs_fwimage_store+0x48>
