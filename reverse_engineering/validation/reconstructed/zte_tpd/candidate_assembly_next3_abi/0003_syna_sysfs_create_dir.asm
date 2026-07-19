
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d8d8 <syna_sysfs_create_dir>:
    d8d8: d503233f     	paciasp
    d8dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d8e0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    d8e4: 910003fd     	mov	x29, sp
    d8e8: aa0003f3     	mov	x19, x0
    d8ec: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xf44>
		000000000000d8ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x450c
    d8f0: 91000000     	add	x0, x0, #0x0
		000000000000d8f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x450c
    d8f4: 91004021     	add	x1, x1, #0x10
    d8f8: 94000000     	bl	0xd8f8 <syna_sysfs_create_dir+0x20>
		000000000000d8f8:  R_AARCH64_CALL26	kobject_create_and_add
    d8fc: f901ce60     	str	x0, [x19, #0x398]
    d900: b40001a0     	cbz	x0, 0xd934 <syna_sysfs_create_dir+0x5c>
    d904: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xf44>
		000000000000d904:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    d908: 91000021     	add	x1, x1, #0x0
		000000000000d908:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    d90c: 94000000     	bl	0xd90c <syna_sysfs_create_dir+0x34>
		000000000000d90c:  R_AARCH64_CALL26	sysfs_create_group
    d910: 37f80200     	tbnz	w0, #0x1f, 0xd950 <syna_sysfs_create_dir+0x78>
    d914: aa1303e0     	mov	x0, x19
    d918: 94000000     	bl	0xd918 <syna_sysfs_create_dir+0x40>
		000000000000d918:  R_AARCH64_CALL26	syna_testing_create_dir
    d91c: 37f80280     	tbnz	w0, #0x1f, 0xd96c <syna_sysfs_create_dir+0x94>
    d920: 2a1f03e0     	mov	w0, wzr
    d924: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    d928: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d92c: d50323bf     	autiasp
    d930: d65f03c0     	ret
    d934: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xf44>
		000000000000d934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4512
    d938: 91000000     	add	x0, x0, #0x0
		000000000000d938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4512
    d93c: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xf44>
		000000000000d93c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43bd
    d940: 91000021     	add	x1, x1, #0x0
		000000000000d940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43bd
    d944: 94000000     	bl	0xd944 <syna_sysfs_create_dir+0x6c>
		000000000000d944:  R_AARCH64_CALL26	_printk
    d948: 12800260     	mov	w0, #-0x14              // =-20
    d94c: 17fffff6     	b	0xd924 <syna_sysfs_create_dir+0x4c>
    d950: 2a0003f4     	mov	w20, w0
    d954: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xf44>
		000000000000d954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1580
    d958: 91000000     	add	x0, x0, #0x0
		000000000000d958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1580
    d95c: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xf44>
		000000000000d95c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43bd
    d960: 91000021     	add	x1, x1, #0x0
		000000000000d960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43bd
    d964: 94000000     	bl	0xd964 <syna_sysfs_create_dir+0x8c>
		000000000000d964:  R_AARCH64_CALL26	_printk
    d968: 1400000b     	b	0xd994 <syna_sysfs_create_dir+0xbc>
    d96c: 2a0003f4     	mov	w20, w0
    d970: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xf44>
		000000000000d970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d35
    d974: 91000000     	add	x0, x0, #0x0
		000000000000d974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d35
    d978: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xf44>
		000000000000d978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43bd
    d97c: 91000021     	add	x1, x1, #0x0
		000000000000d97c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43bd
    d980: 94000000     	bl	0xd980 <syna_sysfs_create_dir+0xa8>
		000000000000d980:  R_AARCH64_CALL26	_printk
    d984: f941ce60     	ldr	x0, [x19, #0x398]
    d988: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xf44>
		000000000000d988:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    d98c: 91000021     	add	x1, x1, #0x0
		000000000000d98c:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    d990: 94000000     	bl	0xd990 <syna_sysfs_create_dir+0xb8>
		000000000000d990:  R_AARCH64_CALL26	sysfs_remove_group
    d994: f941ce60     	ldr	x0, [x19, #0x398]
    d998: 94000000     	bl	0xd998 <syna_sysfs_create_dir+0xc0>
		000000000000d998:  R_AARCH64_CALL26	kobject_put
    d99c: 2a1403e0     	mov	w0, w20
    d9a0: 17ffffe1     	b	0xd924 <syna_sysfs_create_dir+0x4c>
