
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d904 <syna_sysfs_debug_store>:
    d904: d503233f     	paciasp
    d908: d100c3ff     	sub	sp, sp, #0x30
    d90c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    d910: a9024ff4     	stp	x20, x19, [sp, #0x20]
    d914: 910043fd     	add	x29, sp, #0x10
    d918: d5384109     	mrs	x9, SP_EL0
    d91c: aa0203e8     	mov	x8, x2
    d920: 910013e2     	add	x2, sp, #0x4
    d924: f9438929     	ldr	x9, [x9, #0x710]
    d928: 52800141     	mov	w1, #0xa                // =10
    d92c: aa0303f3     	mov	x19, x3
    d930: f90007e9     	str	x9, [sp, #0x8]
    d934: f9400c09     	ldr	x9, [x0, #0x18]
    d938: aa0803e0     	mov	x0, x8
    d93c: b90007ff     	str	wzr, [sp, #0x4]
    d940: f9404d34     	ldr	x20, [x9, #0x98]
    d944: 94000000     	bl	0xd944 <syna_sysfs_debug_store+0x40>
		000000000000d944:  R_AARCH64_CALL26	kstrtouint
    d948: 340001a0     	cbz	w0, 0xd97c <syna_sysfs_debug_store+0x78>
    d94c: 928002b3     	mov	x19, #-0x16             // =-22
    d950: d5384108     	mrs	x8, SP_EL0
    d954: f9438908     	ldr	x8, [x8, #0x710]
    d958: f94007e9     	ldr	x9, [sp, #0x8]
    d95c: eb09011f     	cmp	x8, x9
    d960: 540006c1     	b.ne	0xda38 <syna_sysfs_debug_store+0x134>
    d964: aa1303e0     	mov	x0, x19
    d968: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d96c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    d970: 9100c3ff     	add	sp, sp, #0x30
    d974: d50323bf     	autiasp
    d978: d65f03c0     	ret
    d97c: b94007e2     	ldr	w2, [sp, #0x4]
    d980: 34000302     	cbz	w2, 0xd9e0 <syna_sysfs_debug_store+0xdc>
    d984: 7100045f     	cmp	w2, #0x1
    d988: 540003e1     	b.ne	0xda04 <syna_sysfs_debug_store+0x100>
    d98c: f941d288     	ldr	x8, [x20, #0x3a0]
    d990: b50003a8     	cbnz	x8, 0xda04 <syna_sysfs_debug_store+0x100>
    d994: f941ce81     	ldr	x1, [x20, #0x398]
    d998: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000d998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b44
    d99c: 91000000     	add	x0, x0, #0x0
		000000000000d99c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b44
    d9a0: 94000000     	bl	0xd9a0 <syna_sysfs_debug_store+0x9c>
		000000000000d9a0:  R_AARCH64_CALL26	kobject_create_and_add
    d9a4: f901d280     	str	x0, [x20, #0x3a0]
    d9a8: b40003a0     	cbz	x0, 0xda1c <syna_sysfs_debug_store+0x118>
    d9ac: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d9ac:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    d9b0: 91000021     	add	x1, x1, #0x0
		000000000000d9b0:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    d9b4: 94000000     	bl	0xd9b4 <syna_sysfs_debug_store+0xb0>
		000000000000d9b4:  R_AARCH64_CALL26	sysfs_create_group
    d9b8: 36fffcc0     	tbz	w0, #0x1f, 0xd950 <syna_sysfs_debug_store+0x4c>
    d9bc: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000d9bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5f
    d9c0: 91000000     	add	x0, x0, #0x0
		000000000000d9c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5f
    d9c4: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d9c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc
    d9c8: 91000021     	add	x1, x1, #0x0
		000000000000d9c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc
    d9cc: 94000000     	bl	0xd9cc <syna_sysfs_debug_store+0xc8>
		000000000000d9cc:  R_AARCH64_CALL26	_printk
    d9d0: f941d280     	ldr	x0, [x20, #0x3a0]
    d9d4: 94000000     	bl	0xd9d4 <syna_sysfs_debug_store+0xd0>
		000000000000d9d4:  R_AARCH64_CALL26	kobject_put
    d9d8: 92800273     	mov	x19, #-0x14             // =-20
    d9dc: 17ffffdd     	b	0xd950 <syna_sysfs_debug_store+0x4c>
    d9e0: f941d280     	ldr	x0, [x20, #0x3a0]
    d9e4: b4fffb60     	cbz	x0, 0xd950 <syna_sysfs_debug_store+0x4c>
    d9e8: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000d9e8:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    d9ec: 91000021     	add	x1, x1, #0x0
		000000000000d9ec:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    d9f0: 94000000     	bl	0xd9f0 <syna_sysfs_debug_store+0xec>
		000000000000d9f0:  R_AARCH64_CALL26	sysfs_remove_group
    d9f4: f941d280     	ldr	x0, [x20, #0x3a0]
    d9f8: 94000000     	bl	0xd9f8 <syna_sysfs_debug_store+0xf4>
		000000000000d9f8:  R_AARCH64_CALL26	kobject_put
    d9fc: f901d29f     	str	xzr, [x20, #0x3a0]
    da00: 17ffffd4     	b	0xd950 <syna_sysfs_debug_store+0x4c>
    da04: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000da04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x592
    da08: 91000000     	add	x0, x0, #0x0
		000000000000da08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x592
    da0c: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000da0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc
    da10: 91000021     	add	x1, x1, #0x0
		000000000000da10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc
    da14: 94000000     	bl	0xda14 <syna_sysfs_debug_store+0x110>
		000000000000da14:  R_AARCH64_CALL26	_printk
    da18: 17ffffcd     	b	0xd94c <syna_sysfs_debug_store+0x48>
    da1c: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000da1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb53
    da20: 91000000     	add	x0, x0, #0x0
		000000000000da20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb53
    da24: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000da24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc
    da28: 91000021     	add	x1, x1, #0x0
		000000000000da28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc
    da2c: 94000000     	bl	0xda2c <syna_sysfs_debug_store+0x128>
		000000000000da2c:  R_AARCH64_CALL26	_printk
    da30: 92800273     	mov	x19, #-0x14             // =-20
    da34: 17ffffc7     	b	0xd950 <syna_sysfs_debug_store+0x4c>
    da38: 94000000     	bl	0xda38 <syna_sysfs_debug_store+0x134>
		000000000000da38:  R_AARCH64_CALL26	__stack_chk_fail
