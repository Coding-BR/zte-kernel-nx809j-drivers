
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b148 <syna_sysfs_debug_store>:
    b148: d503233f     	paciasp
    b14c: d100c3ff     	sub	sp, sp, #0x30
    b150: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b154: a9024ff4     	stp	x20, x19, [sp, #0x20]
    b158: 910043fd     	add	x29, sp, #0x10
    b15c: d5384109     	mrs	x9, SP_EL0
    b160: aa0203e8     	mov	x8, x2
    b164: 910013e2     	add	x2, sp, #0x4
    b168: f9438929     	ldr	x9, [x9, #0x710]
    b16c: 52800141     	mov	w1, #0xa                // =10
    b170: aa0303f3     	mov	x19, x3
    b174: f90007e9     	str	x9, [sp, #0x8]
    b178: f9400c09     	ldr	x9, [x0, #0x18]
    b17c: aa0803e0     	mov	x0, x8
    b180: b90007ff     	str	wzr, [sp, #0x4]
    b184: f9404d34     	ldr	x20, [x9, #0x98]
    b188: 94000000     	bl	0xb188 <syna_sysfs_debug_store+0x40>
		000000000000b188:  R_AARCH64_CALL26	kstrtouint
    b18c: 340001a0     	cbz	w0, 0xb1c0 <syna_sysfs_debug_store+0x78>
    b190: 928002b3     	mov	x19, #-0x16             // =-22
    b194: d5384108     	mrs	x8, SP_EL0
    b198: f9438908     	ldr	x8, [x8, #0x710]
    b19c: f94007e9     	ldr	x9, [sp, #0x8]
    b1a0: eb09011f     	cmp	x8, x9
    b1a4: 540006c1     	b.ne	0xb27c <syna_sysfs_debug_store+0x134>
    b1a8: aa1303e0     	mov	x0, x19
    b1ac: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    b1b0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b1b4: 9100c3ff     	add	sp, sp, #0x30
    b1b8: d50323bf     	autiasp
    b1bc: d65f03c0     	ret
    b1c0: b94007e2     	ldr	w2, [sp, #0x4]
    b1c4: 34000302     	cbz	w2, 0xb224 <syna_sysfs_debug_store+0xdc>
    b1c8: 7100045f     	cmp	w2, #0x1
    b1cc: 540003e1     	b.ne	0xb248 <syna_sysfs_debug_store+0x100>
    b1d0: f941d288     	ldr	x8, [x20, #0x3a0]
    b1d4: b50003a8     	cbnz	x8, 0xb248 <syna_sysfs_debug_store+0x100>
    b1d8: f941ce81     	ldr	x1, [x20, #0x398]
    b1dc: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b1dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e18
    b1e0: 91000000     	add	x0, x0, #0x0
		000000000000b1e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e18
    b1e4: 94000000     	bl	0xb1e4 <syna_sysfs_debug_store+0x9c>
		000000000000b1e4:  R_AARCH64_CALL26	kobject_create_and_add
    b1e8: f901d280     	str	x0, [x20, #0x3a0]
    b1ec: b40003a0     	cbz	x0, 0xb260 <syna_sysfs_debug_store+0x118>
    b1f0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b1f0:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    b1f4: 91000021     	add	x1, x1, #0x0
		000000000000b1f4:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    b1f8: 94000000     	bl	0xb1f8 <syna_sysfs_debug_store+0xb0>
		000000000000b1f8:  R_AARCH64_CALL26	sysfs_create_group
    b1fc: 36fffcc0     	tbz	w0, #0x1f, 0xb194 <syna_sysfs_debug_store+0x4c>
    b200: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18141
    b204: 91000000     	add	x0, x0, #0x0
		000000000000b204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18141
    b208: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17462
    b20c: 91000021     	add	x1, x1, #0x0
		000000000000b20c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17462
    b210: 94000000     	bl	0xb210 <syna_sysfs_debug_store+0xc8>
		000000000000b210:  R_AARCH64_CALL26	_printk
    b214: f941d280     	ldr	x0, [x20, #0x3a0]
    b218: 94000000     	bl	0xb218 <syna_sysfs_debug_store+0xd0>
		000000000000b218:  R_AARCH64_CALL26	kobject_put
    b21c: 92800273     	mov	x19, #-0x14             // =-20
    b220: 17ffffdd     	b	0xb194 <syna_sysfs_debug_store+0x4c>
    b224: f941d280     	ldr	x0, [x20, #0x3a0]
    b228: b4fffb60     	cbz	x0, 0xb194 <syna_sysfs_debug_store+0x4c>
    b22c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b22c:  R_AARCH64_ADR_PREL_PG_HI21	attr_debug_group
    b230: 91000021     	add	x1, x1, #0x0
		000000000000b230:  R_AARCH64_ADD_ABS_LO12_NC	attr_debug_group
    b234: 94000000     	bl	0xb234 <syna_sysfs_debug_store+0xec>
		000000000000b234:  R_AARCH64_CALL26	sysfs_remove_group
    b238: f941d280     	ldr	x0, [x20, #0x3a0]
    b23c: 94000000     	bl	0xb23c <syna_sysfs_debug_store+0xf4>
		000000000000b23c:  R_AARCH64_CALL26	kobject_put
    b240: f901d29f     	str	xzr, [x20, #0x3a0]
    b244: 17ffffd4     	b	0xb194 <syna_sysfs_debug_store+0x4c>
    b248: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177f0
    b24c: 91000000     	add	x0, x0, #0x0
		000000000000b24c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177f0
    b250: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17462
    b254: 91000021     	add	x1, x1, #0x0
		000000000000b254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17462
    b258: 94000000     	bl	0xb258 <syna_sysfs_debug_store+0x110>
		000000000000b258:  R_AARCH64_CALL26	_printk
    b25c: 17ffffcd     	b	0xb190 <syna_sysfs_debug_store+0x48>
    b260: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b260:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17df9
    b264: 91000000     	add	x0, x0, #0x0
		000000000000b264:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17df9
    b268: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17462
    b26c: 91000021     	add	x1, x1, #0x0
		000000000000b26c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17462
    b270: 94000000     	bl	0xb270 <syna_sysfs_debug_store+0x128>
		000000000000b270:  R_AARCH64_CALL26	_printk
    b274: 92800273     	mov	x19, #-0x14             // =-20
    b278: 17ffffc7     	b	0xb194 <syna_sysfs_debug_store+0x4c>
    b27c: 94000000     	bl	0xb27c <syna_sysfs_debug_store+0x134>
		000000000000b27c:  R_AARCH64_CALL26	__stack_chk_fail
