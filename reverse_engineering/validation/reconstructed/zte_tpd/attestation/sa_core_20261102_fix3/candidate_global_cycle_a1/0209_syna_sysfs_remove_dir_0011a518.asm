
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b370 <syna_sysfs_remove_dir>:
    b370: d503233f     	paciasp
    b374: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b378: f9000bf3     	str	x19, [sp, #0x10]
    b37c: 910003fd     	mov	x29, sp
    b380: b40002e0     	cbz	x0, 0xb3dc <syna_sysfs_remove_dir+0x6c>
    b384: f941cc08     	ldr	x8, [x0, #0x398]
    b388: aa0003f3     	mov	x19, x0
    b38c: b4000208     	cbz	x8, 0xb3cc <syna_sysfs_remove_dir+0x5c>
    b390: aa1303e0     	mov	x0, x19
    b394: 94000000     	bl	0xb394 <syna_sysfs_remove_dir+0x24>
		000000000000b394:  R_AARCH64_CALL26	syna_testing_remove_dir
    b398: f941d260     	ldr	x0, [x19, #0x3a0]
    b39c: b40000c0     	cbz	x0, 0xb3b4 <syna_sysfs_remove_dir+0x44>
    b3a0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b3a0:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    b3a4: 91000021     	add	x1, x1, #0x0
		000000000000b3a4:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    b3a8: 94000000     	bl	0xb3a8 <syna_sysfs_remove_dir+0x38>
		000000000000b3a8:  R_AARCH64_CALL26	sysfs_remove_group
    b3ac: f941d260     	ldr	x0, [x19, #0x3a0]
    b3b0: 94000000     	bl	0xb3b0 <syna_sysfs_remove_dir+0x40>
		000000000000b3b0:  R_AARCH64_CALL26	kobject_put
    b3b4: f941ce60     	ldr	x0, [x19, #0x398]
    b3b8: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b3b8:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    b3bc: 91000021     	add	x1, x1, #0x0
		000000000000b3bc:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    b3c0: 94000000     	bl	0xb3c0 <syna_sysfs_remove_dir+0x50>
		000000000000b3c0:  R_AARCH64_CALL26	sysfs_remove_group
    b3c4: f941ce60     	ldr	x0, [x19, #0x398]
    b3c8: 94000000     	bl	0xb3c8 <syna_sysfs_remove_dir+0x58>
		000000000000b3c8:  R_AARCH64_CALL26	kobject_put
    b3cc: f9400bf3     	ldr	x19, [sp, #0x10]
    b3d0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b3d4: d50323bf     	autiasp
    b3d8: d65f03c0     	ret
    b3dc: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b3dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b3e0: 91000000     	add	x0, x0, #0x0
		000000000000b3e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b3e4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b3e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1867c
    b3e8: 91000021     	add	x1, x1, #0x0
		000000000000b3e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1867c
    b3ec: 94000000     	bl	0xb3ec <syna_sysfs_remove_dir+0x7c>
		000000000000b3ec:  R_AARCH64_CALL26	_printk
    b3f0: 17fffff7     	b	0xb3cc <syna_sysfs_remove_dir+0x5c>
