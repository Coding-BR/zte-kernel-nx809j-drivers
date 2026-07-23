
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000e4f8 <syna_sysfs_remove_dir>:
    e4f8: d503233f     	paciasp
    e4fc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    e500: f9000bf3     	str	x19, [sp, #0x10]
    e504: 910003fd     	mov	x29, sp
    e508: b40002e0     	cbz	x0, 0xe564 <syna_sysfs_remove_dir+0x6c>
    e50c: f941cc08     	ldr	x8, [x0, #0x398]
    e510: aa0003f3     	mov	x19, x0
    e514: b4000208     	cbz	x8, 0xe554 <syna_sysfs_remove_dir+0x5c>
    e518: aa1303e0     	mov	x0, x19
    e51c: 94000000     	bl	0xe51c <syna_sysfs_remove_dir+0x24>
		000000000000e51c:  R_AARCH64_CALL26	syna_testing_remove_dir
    e520: f941d260     	ldr	x0, [x19, #0x3a0]
    e524: b40000c0     	cbz	x0, 0xe53c <syna_sysfs_remove_dir+0x44>
    e528: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e528:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    e52c: 91000021     	add	x1, x1, #0x0
		000000000000e52c:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    e530: 94000000     	bl	0xe530 <syna_sysfs_remove_dir+0x38>
		000000000000e530:  R_AARCH64_CALL26	sysfs_remove_group
    e534: f941d260     	ldr	x0, [x19, #0x3a0]
    e538: 94000000     	bl	0xe538 <syna_sysfs_remove_dir+0x40>
		000000000000e538:  R_AARCH64_CALL26	kobject_put
    e53c: f941ce60     	ldr	x0, [x19, #0x398]
    e540: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e540:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    e544: 91000021     	add	x1, x1, #0x0
		000000000000e544:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    e548: 94000000     	bl	0xe548 <syna_sysfs_remove_dir+0x50>
		000000000000e548:  R_AARCH64_CALL26	sysfs_remove_group
    e54c: f941ce60     	ldr	x0, [x19, #0x398]
    e550: 94000000     	bl	0xe550 <syna_sysfs_remove_dir+0x58>
		000000000000e550:  R_AARCH64_CALL26	kobject_put
    e554: f9400bf3     	ldr	x19, [sp, #0x10]
    e558: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    e55c: d50323bf     	autiasp
    e560: d65f03c0     	ret
    e564: 90000000     	adrp	x0, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xde7
    e568: 91000000     	add	x0, x0, #0x0
		000000000000e568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xde7
    e56c: 90000001     	adrp	x1, 0xe000 <syna_sysfs_info_show+0x17c>
		000000000000e56c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e3
    e570: 91000021     	add	x1, x1, #0x0
		000000000000e570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e3
    e574: 94000000     	bl	0xe574 <syna_sysfs_remove_dir+0x7c>
		000000000000e574:  R_AARCH64_CALL26	_printk
    e578: 17fffff7     	b	0xe554 <syna_sysfs_remove_dir+0x5c>
