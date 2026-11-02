
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017a44 <tpd_sysfs_fwimage_store>:
   17a44: d503233f     	paciasp
   17a48: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   17a4c: f9000bf5     	str	x21, [sp, #0x10]
   17a50: a9024ff4     	stp	x20, x19, [sp, #0x20]
   17a54: 910003fd     	mov	x29, sp
   17a58: 90000008     	adrp	x8, 0x17000 <ghost_debug_read+0x30>
		0000000000017a58:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   17a5c: f9400115     	ldr	x21, [x8]
		0000000000017a5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   17a60: f9462ea8     	ldr	x8, [x21, #0xc58]
   17a64: b40001e8     	cbz	x8, 0x17aa0 <tpd_sysfs_fwimage_store+0x5c>
   17a68: f9400509     	ldr	x9, [x8, #0x8]
   17a6c: b40001a9     	cbz	x9, 0x17aa0 <tpd_sysfs_fwimage_store+0x5c>
   17a70: f9400108     	ldr	x8, [x8]
   17a74: b4000208     	cbz	x8, 0x17ab4 <tpd_sysfs_fwimage_store+0x70>
   17a78: b9444aa1     	ldr	w1, [x21, #0x448]
   17a7c: eb010109     	subs	x9, x8, x1
   17a80: 54000228     	b.hi	0x17ac4 <tpd_sysfs_fwimage_store+0x80>
   17a84: b9044abf     	str	wzr, [x21, #0x448]
   17a88: 928002a0     	mov	x0, #-0x16              // =-22
   17a8c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   17a90: f9400bf5     	ldr	x21, [sp, #0x10]
   17a94: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   17a98: d50323bf     	autiasp
   17a9c: d65f03c0     	ret
   17aa0: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae2a
   17aa4: 91000000     	add	x0, x0, #0x0
		0000000000017aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae2a
   17aa8: 94000000     	bl	0x17aa8 <tpd_sysfs_fwimage_store+0x64>
		0000000000017aa8:  R_AARCH64_CALL26	_printk
   17aac: 92800160     	mov	x0, #-0xc               // =-12
   17ab0: 17fffff7     	b	0x17a8c <tpd_sysfs_fwimage_store+0x48>
   17ab4: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8cc8
   17ab8: 91000000     	add	x0, x0, #0x0
		0000000000017ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8cc8
   17abc: 94000000     	bl	0x17abc <tpd_sysfs_fwimage_store+0x78>
		0000000000017abc:  R_AARCH64_CALL26	_printk
   17ac0: 17fffff2     	b	0x17a88 <tpd_sysfs_fwimage_store+0x44>
   17ac4: 8b05002a     	add	x10, x1, x5
   17ac8: 90000000     	adrp	x0, 0x17000 <ghost_debug_read+0x30>
		0000000000017ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fde
   17acc: 91000000     	add	x0, x0, #0x0
		0000000000017acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fde
   17ad0: eb08015f     	cmp	x10, x8
   17ad4: aa0303f4     	mov	x20, x3
   17ad8: 9a858133     	csel	x19, x9, x5, hi
   17adc: aa1303e2     	mov	x2, x19
   17ae0: 94000000     	bl	0x17ae0 <tpd_sysfs_fwimage_store+0x9c>
		0000000000017ae0:  R_AARCH64_CALL26	_printk
   17ae4: 913182a0     	add	x0, x21, #0xc60
   17ae8: 94000000     	bl	0x17ae8 <tpd_sysfs_fwimage_store+0xa4>
		0000000000017ae8:  R_AARCH64_CALL26	mutex_lock
   17aec: f9462ea8     	ldr	x8, [x21, #0xc58]
   17af0: b9444aa9     	ldr	w9, [x21, #0x448]
   17af4: aa1403e1     	mov	x1, x20
   17af8: aa1303e2     	mov	x2, x19
   17afc: f9400508     	ldr	x8, [x8, #0x8]
   17b00: 8b090100     	add	x0, x8, x9
   17b04: 94000000     	bl	0x17b04 <tpd_sysfs_fwimage_store+0xc0>
		0000000000017b04:  R_AARCH64_CALL26	memcpy
   17b08: b9444aa8     	ldr	w8, [x21, #0x448]
   17b0c: 913182a0     	add	x0, x21, #0xc60
   17b10: 0b130108     	add	w8, w8, w19
   17b14: b9044aa8     	str	w8, [x21, #0x448]
   17b18: 94000000     	bl	0x17b18 <tpd_sysfs_fwimage_store+0xd4>
		0000000000017b18:  R_AARCH64_CALL26	mutex_unlock
   17b1c: aa1303e0     	mov	x0, x19
   17b20: 17ffffdb     	b	0x17a8c <tpd_sysfs_fwimage_store+0x48>
