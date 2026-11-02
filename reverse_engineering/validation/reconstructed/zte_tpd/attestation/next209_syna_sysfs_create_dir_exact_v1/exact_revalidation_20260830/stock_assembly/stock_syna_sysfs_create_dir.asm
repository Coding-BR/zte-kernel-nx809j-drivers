
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013bb8 <syna_sysfs_create_dir>:
   13bb8: d503233f     	paciasp
   13bbc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13bc0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13bc4: 910003fd     	mov	x29, sp
   13bc8: aa0003f3     	mov	x19, x0
   13bcc: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb8b
   13bd0: 91000000     	add	x0, x0, #0x0
		0000000000013bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb8b
   13bd4: 91004021     	add	x1, x1, #0x10
   13bd8: 94000000     	bl	0x13bd8 <syna_sysfs_create_dir+0x20>
		0000000000013bd8:  R_AARCH64_CALL26	kobject_create_and_add
   13bdc: f901ce60     	str	x0, [x19, #0x398]
   13be0: b40001a0     	cbz	x0, 0x13c14 <syna_sysfs_create_dir+0x5c>
   13be4: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013be4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9c0
   13be8: 91000021     	add	x1, x1, #0x0
		0000000000013be8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9c0
   13bec: 94000000     	bl	0x13bec <syna_sysfs_create_dir+0x34>
		0000000000013bec:  R_AARCH64_CALL26	sysfs_create_group
   13bf0: 37f80200     	tbnz	w0, #0x1f, 0x13c30 <syna_sysfs_create_dir+0x78>
   13bf4: aa1303e0     	mov	x0, x19
   13bf8: 94000000     	bl	0x13bf8 <syna_sysfs_create_dir+0x40>
		0000000000013bf8:  R_AARCH64_CALL26	syna_testing_create_dir
   13bfc: 37f802a0     	tbnz	w0, #0x1f, 0x13c50 <syna_sysfs_create_dir+0x98>
   13c00: 2a1f03e0     	mov	w0, wzr
   13c04: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13c08: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13c0c: d50323bf     	autiasp
   13c10: d65f03c0     	ret
   13c14: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbb91
   13c18: 91000000     	add	x0, x0, #0x0
		0000000000013c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbb91
   13c1c: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   13c20: 91000021     	add	x1, x1, #0x0
		0000000000013c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   13c24: 94000000     	bl	0x13c24 <syna_sysfs_create_dir+0x6c>
		0000000000013c24:  R_AARCH64_CALL26	_printk
   13c28: 12800260     	mov	w0, #-0x14              // =-20
   13c2c: 17fffff6     	b	0x13c04 <syna_sysfs_create_dir+0x4c>
   13c30: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3432
   13c34: 91000108     	add	x8, x8, #0x0
		0000000000013c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3432
   13c38: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   13c3c: 91000021     	add	x1, x1, #0x0
		0000000000013c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   13c40: 2a0003f4     	mov	w20, w0
   13c44: aa0803e0     	mov	x0, x8
   13c48: 94000000     	bl	0x13c48 <syna_sysfs_create_dir+0x90>
		0000000000013c48:  R_AARCH64_CALL26	_printk
   13c4c: 1400000c     	b	0x13c7c <syna_sysfs_create_dir+0xc4>
   13c50: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa062
   13c54: 91000108     	add	x8, x8, #0x0
		0000000000013c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa062
   13c58: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb508
   13c5c: 91000021     	add	x1, x1, #0x0
		0000000000013c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb508
   13c60: 2a0003f4     	mov	w20, w0
   13c64: aa0803e0     	mov	x0, x8
   13c68: 94000000     	bl	0x13c68 <syna_sysfs_create_dir+0xb0>
		0000000000013c68:  R_AARCH64_CALL26	_printk
   13c6c: f941ce60     	ldr	x0, [x19, #0x398]
   13c70: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013c70:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9c0
   13c74: 91000021     	add	x1, x1, #0x0
		0000000000013c74:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9c0
   13c78: 94000000     	bl	0x13c78 <syna_sysfs_create_dir+0xc0>
		0000000000013c78:  R_AARCH64_CALL26	sysfs_remove_group
   13c7c: f941ce60     	ldr	x0, [x19, #0x398]
   13c80: 94000000     	bl	0x13c80 <syna_sysfs_create_dir+0xc8>
		0000000000013c80:  R_AARCH64_CALL26	kobject_put
   13c84: 2a1403e0     	mov	w0, w20
   13c88: 17ffffdf     	b	0x13c04 <syna_sysfs_create_dir+0x4c>
