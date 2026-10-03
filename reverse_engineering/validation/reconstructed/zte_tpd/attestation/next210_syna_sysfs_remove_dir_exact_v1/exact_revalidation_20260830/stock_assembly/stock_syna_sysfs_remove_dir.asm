
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013c90 <syna_sysfs_remove_dir>:
   13c90: d503233f     	paciasp
   13c94: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13c98: f9000bf3     	str	x19, [sp, #0x10]
   13c9c: 910003fd     	mov	x29, sp
   13ca0: b40002e0     	cbz	x0, 0x13cfc <syna_sysfs_remove_dir+0x6c>
   13ca4: f941cc08     	ldr	x8, [x0, #0x398]
   13ca8: aa0003f3     	mov	x19, x0
   13cac: b4000208     	cbz	x8, 0x13cec <syna_sysfs_remove_dir+0x5c>
   13cb0: aa1303e0     	mov	x0, x19
   13cb4: 94000000     	bl	0x13cb4 <syna_sysfs_remove_dir+0x24>
		0000000000013cb4:  R_AARCH64_CALL26	syna_testing_remove_dir
   13cb8: f941d260     	ldr	x0, [x19, #0x3a0]
   13cbc: b40000c0     	cbz	x0, 0x13cd4 <syna_sysfs_remove_dir+0x44>
   13cc0: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013cc0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9e8
   13cc4: 91000021     	add	x1, x1, #0x0
		0000000000013cc4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9e8
   13cc8: 94000000     	bl	0x13cc8 <syna_sysfs_remove_dir+0x38>
		0000000000013cc8:  R_AARCH64_CALL26	sysfs_remove_group
   13ccc: f941d260     	ldr	x0, [x19, #0x3a0]
   13cd0: 94000000     	bl	0x13cd0 <syna_sysfs_remove_dir+0x40>
		0000000000013cd0:  R_AARCH64_CALL26	kobject_put
   13cd4: f941ce60     	ldr	x0, [x19, #0x398]
   13cd8: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013cd8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x9c0
   13cdc: 91000021     	add	x1, x1, #0x0
		0000000000013cdc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x9c0
   13ce0: 94000000     	bl	0x13ce0 <syna_sysfs_remove_dir+0x50>
		0000000000013ce0:  R_AARCH64_CALL26	sysfs_remove_group
   13ce4: f941ce60     	ldr	x0, [x19, #0x398]
   13ce8: 94000000     	bl	0x13ce8 <syna_sysfs_remove_dir+0x58>
		0000000000013ce8:  R_AARCH64_CALL26	kobject_put
   13cec: f9400bf3     	ldr	x19, [sp, #0x10]
   13cf0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13cf4: d50323bf     	autiasp
   13cf8: d65f03c0     	ret
   13cfc: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   13d00: 91000000     	add	x0, x0, #0x0
		0000000000013d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   13d04: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cd4
   13d08: 91000021     	add	x1, x1, #0x0
		0000000000013d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cd4
   13d0c: 94000000     	bl	0x13d0c <syna_sysfs_remove_dir+0x7c>
		0000000000013d0c:  R_AARCH64_CALL26	_printk
   13d10: 17fffff7     	b	0x13cec <syna_sysfs_remove_dir+0x5c>
