
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007768 <tpd_sysfs_fwimage_store>:
    7768: d503233f     	paciasp
    776c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    7770: f9000bf5     	str	x21, [sp, #0x10]
    7774: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7778: 910003fd     	mov	x29, sp
    777c: 90000008     	adrp	x8, 0x7000 <ghost_debug_read+0x30c>
		000000000000777c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    7780: f9400115     	ldr	x21, [x8]
		0000000000007780:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    7784: f9462ea8     	ldr	x8, [x21, #0xc58]
    7788: b40001e8     	cbz	x8, 0x77c4 <tpd_sysfs_fwimage_store+0x5c>
    778c: f9400509     	ldr	x9, [x8, #0x8]
    7790: b40001a9     	cbz	x9, 0x77c4 <tpd_sysfs_fwimage_store+0x5c>
    7794: f9400108     	ldr	x8, [x8]
    7798: b4000208     	cbz	x8, 0x77d8 <tpd_sysfs_fwimage_store+0x70>
    779c: b9444aa1     	ldr	w1, [x21, #0x448]
    77a0: eb010109     	subs	x9, x8, x1
    77a4: 54000228     	b.hi	0x77e8 <tpd_sysfs_fwimage_store+0x80>
    77a8: b9044abf     	str	wzr, [x21, #0x448]
    77ac: 928002a0     	mov	x0, #-0x16              // =-22
    77b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    77b4: f9400bf5     	ldr	x21, [sp, #0x10]
    77b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    77bc: d50323bf     	autiasp
    77c0: d65f03c0     	ret
    77c4: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000077c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab8b
    77c8: 91000000     	add	x0, x0, #0x0
		00000000000077c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab8b
    77cc: 94000000     	bl	0x77cc <tpd_sysfs_fwimage_store+0x64>
		00000000000077cc:  R_AARCH64_CALL26	_printk
    77d0: 92800160     	mov	x0, #-0xc               // =-12
    77d4: 17fffff7     	b	0x77b0 <tpd_sysfs_fwimage_store+0x48>
    77d8: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000077d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a95
    77dc: 91000000     	add	x0, x0, #0x0
		00000000000077dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a95
    77e0: 94000000     	bl	0x77e0 <tpd_sysfs_fwimage_store+0x78>
		00000000000077e0:  R_AARCH64_CALL26	_printk
    77e4: 17fffff2     	b	0x77ac <tpd_sysfs_fwimage_store+0x44>
    77e8: 8b05002a     	add	x10, x1, x5
    77ec: 90000000     	adrp	x0, 0x7000 <ghost_debug_read+0x30c>
		00000000000077ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ef7
    77f0: 91000000     	add	x0, x0, #0x0
		00000000000077f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ef7
    77f4: eb08015f     	cmp	x10, x8
    77f8: aa0303f4     	mov	x20, x3
    77fc: 9a858133     	csel	x19, x9, x5, hi
    7800: aa1303e2     	mov	x2, x19
    7804: 94000000     	bl	0x7804 <tpd_sysfs_fwimage_store+0x9c>
		0000000000007804:  R_AARCH64_CALL26	_printk
    7808: 913182a0     	add	x0, x21, #0xc60
    780c: 94000000     	bl	0x780c <tpd_sysfs_fwimage_store+0xa4>
		000000000000780c:  R_AARCH64_CALL26	mutex_lock
    7810: f9462ea8     	ldr	x8, [x21, #0xc58]
    7814: b9444aa9     	ldr	w9, [x21, #0x448]
    7818: aa1403e1     	mov	x1, x20
    781c: aa1303e2     	mov	x2, x19
    7820: f9400508     	ldr	x8, [x8, #0x8]
    7824: 8b090100     	add	x0, x8, x9
    7828: 94000000     	bl	0x7828 <tpd_sysfs_fwimage_store+0xc0>
		0000000000007828:  R_AARCH64_CALL26	memcpy
    782c: b9444aa8     	ldr	w8, [x21, #0x448]
    7830: 913182a0     	add	x0, x21, #0xc60
    7834: 0b130108     	add	w8, w8, w19
    7838: b9044aa8     	str	w8, [x21, #0x448]
    783c: 94000000     	bl	0x783c <tpd_sysfs_fwimage_store+0xd4>
		000000000000783c:  R_AARCH64_CALL26	mutex_unlock
    7840: aa1303e0     	mov	x0, x19
    7844: 17ffffdb     	b	0x77b0 <tpd_sysfs_fwimage_store+0x48>
