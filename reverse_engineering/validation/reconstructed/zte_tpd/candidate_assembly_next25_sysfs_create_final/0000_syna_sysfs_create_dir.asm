
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d82c <syna_sysfs_create_dir>:
    d82c: d503233f     	paciasp
    d830: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d834: a9014ff4     	stp	x20, x19, [sp, #0x10]
    d838: 910003fd     	mov	x29, sp
    d83c: aa0003f3     	mov	x19, x0
    d840: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000d840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e25
    d844: 91000000     	add	x0, x0, #0x0
		000000000000d844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e25
    d848: 91004021     	add	x1, x1, #0x10
    d84c: 94000000     	bl	0xd84c <syna_sysfs_create_dir+0x20>
		000000000000d84c:  R_AARCH64_CALL26	kobject_create_and_add
    d850: f901ce60     	str	x0, [x19, #0x398]
    d854: b40001a0     	cbz	x0, 0xd888 <syna_sysfs_create_dir+0x5c>
    d858: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d858:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    d85c: 91000021     	add	x1, x1, #0x0
		000000000000d85c:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    d860: 94000000     	bl	0xd860 <syna_sysfs_create_dir+0x34>
		000000000000d860:  R_AARCH64_CALL26	sysfs_create_group
    d864: 37f80200     	tbnz	w0, #0x1f, 0xd8a4 <syna_sysfs_create_dir+0x78>
    d868: aa1303e0     	mov	x0, x19
    d86c: 94000000     	bl	0xd86c <syna_sysfs_create_dir+0x40>
		000000000000d86c:  R_AARCH64_CALL26	syna_testing_create_dir
    d870: 37f802a0     	tbnz	w0, #0x1f, 0xd8c4 <syna_sysfs_create_dir+0x98>
    d874: 2a1f03e0     	mov	w0, wzr
    d878: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d87c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d880: d50323bf     	autiasp
    d884: d65f03c0     	ret
    d888: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000d888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e2b
    d88c: 91000000     	add	x0, x0, #0x0
		000000000000d88c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e2b
    d890: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c11
    d894: 91000021     	add	x1, x1, #0x0
		000000000000d894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c11
    d898: 94000000     	bl	0xd898 <syna_sysfs_create_dir+0x6c>
		000000000000d898:  R_AARCH64_CALL26	_printk
    d89c: 12800260     	mov	w0, #-0x14              // =-20
    d8a0: 17fffff6     	b	0xd878 <syna_sysfs_create_dir+0x4c>
    d8a4: 90000008     	adrp	x8, 0xd000 <syna_spi_probe+0xff0>
		000000000000d8a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16d8
    d8a8: 91000108     	add	x8, x8, #0x0
		000000000000d8a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16d8
    d8ac: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d8ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c11
    d8b0: 91000021     	add	x1, x1, #0x0
		000000000000d8b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c11
    d8b4: 2a0003f4     	mov	w20, w0
    d8b8: aa0803e0     	mov	x0, x8
    d8bc: 94000000     	bl	0xd8bc <syna_sysfs_create_dir+0x90>
		000000000000d8bc:  R_AARCH64_CALL26	_printk
    d8c0: 1400000c     	b	0xd8f0 <syna_sysfs_create_dir+0xc4>
    d8c4: 90000008     	adrp	x8, 0xd000 <syna_spi_probe+0xff0>
		000000000000d8c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4383
    d8c8: 91000108     	add	x8, x8, #0x0
		000000000000d8c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4383
    d8cc: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d8cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c11
    d8d0: 91000021     	add	x1, x1, #0x0
		000000000000d8d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c11
    d8d4: 2a0003f4     	mov	w20, w0
    d8d8: aa0803e0     	mov	x0, x8
    d8dc: 94000000     	bl	0xd8dc <syna_sysfs_create_dir+0xb0>
		000000000000d8dc:  R_AARCH64_CALL26	_printk
    d8e0: f941ce60     	ldr	x0, [x19, #0x398]
    d8e4: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d8e4:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    d8e8: 91000021     	add	x1, x1, #0x0
		000000000000d8e8:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    d8ec: 94000000     	bl	0xd8ec <syna_sysfs_create_dir+0xc0>
		000000000000d8ec:  R_AARCH64_CALL26	sysfs_remove_group
    d8f0: f941ce60     	ldr	x0, [x19, #0x398]
    d8f4: 94000000     	bl	0xd8f4 <syna_sysfs_create_dir+0xc8>
		000000000000d8f4:  R_AARCH64_CALL26	kobject_put
    d8f8: 2a1403e0     	mov	w0, w20
    d8fc: 17ffffdf     	b	0xd878 <syna_sysfs_create_dir+0x4c>
