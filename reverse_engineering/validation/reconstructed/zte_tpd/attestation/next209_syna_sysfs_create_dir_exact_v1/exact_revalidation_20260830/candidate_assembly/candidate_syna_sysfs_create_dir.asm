
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b070 <syna_sysfs_create_dir>:
    b070: d503233f     	paciasp
    b074: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    b078: a9014ff4     	stp	x20, x19, [sp, #0x10]
    b07c: 910003fd     	mov	x29, sp
    b080: aa0003f3     	mov	x19, x0
    b084: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c42b
    b088: 91000000     	add	x0, x0, #0x0
		000000000000b088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c42b
    b08c: 91004021     	add	x1, x1, #0x10
    b090: 94000000     	bl	0xb090 <syna_sysfs_create_dir+0x20>
		000000000000b090:  R_AARCH64_CALL26	kobject_create_and_add
    b094: f901ce60     	str	x0, [x19, #0x398]
    b098: b40001a0     	cbz	x0, 0xb0cc <syna_sysfs_create_dir+0x5c>
    b09c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b09c:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    b0a0: 91000021     	add	x1, x1, #0x0
		000000000000b0a0:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    b0a4: 94000000     	bl	0xb0a4 <syna_sysfs_create_dir+0x34>
		000000000000b0a4:  R_AARCH64_CALL26	sysfs_create_group
    b0a8: 37f80200     	tbnz	w0, #0x1f, 0xb0e8 <syna_sysfs_create_dir+0x78>
    b0ac: aa1303e0     	mov	x0, x19
    b0b0: 94000000     	bl	0xb0b0 <syna_sysfs_create_dir+0x40>
		000000000000b0b0:  R_AARCH64_CALL26	syna_testing_create_dir
    b0b4: 37f802a0     	tbnz	w0, #0x1f, 0xb108 <syna_sysfs_create_dir+0x98>
    b0b8: 2a1f03e0     	mov	w0, wzr
    b0bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    b0c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    b0c4: d50323bf     	autiasp
    b0c8: d65f03c0     	ret
    b0cc: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b0cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c431
    b0d0: 91000000     	add	x0, x0, #0x0
		000000000000b0d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c431
    b0d4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b0d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c241
    b0d8: 91000021     	add	x1, x1, #0x0
		000000000000b0d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c241
    b0dc: 94000000     	bl	0xb0dc <syna_sysfs_create_dir+0x6c>
		000000000000b0dc:  R_AARCH64_CALL26	_printk
    b0e0: 12800260     	mov	w0, #-0x14              // =-20
    b0e4: 17fffff6     	b	0xb0bc <syna_sysfs_create_dir+0x4c>
    b0e8: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b0e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189b9
    b0ec: 91000108     	add	x8, x8, #0x0
		000000000000b0ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189b9
    b0f0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b0f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c241
    b0f4: 91000021     	add	x1, x1, #0x0
		000000000000b0f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c241
    b0f8: 2a0003f4     	mov	w20, w0
    b0fc: aa0803e0     	mov	x0, x8
    b100: 94000000     	bl	0xb100 <syna_sysfs_create_dir+0x90>
		000000000000b100:  R_AARCH64_CALL26	_printk
    b104: 1400000c     	b	0xb134 <syna_sysfs_create_dir+0xc4>
    b108: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b983
    b10c: 91000108     	add	x8, x8, #0x0
		000000000000b10c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b983
    b110: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c241
    b114: 91000021     	add	x1, x1, #0x0
		000000000000b114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c241
    b118: 2a0003f4     	mov	w20, w0
    b11c: aa0803e0     	mov	x0, x8
    b120: 94000000     	bl	0xb120 <syna_sysfs_create_dir+0xb0>
		000000000000b120:  R_AARCH64_CALL26	_printk
    b124: f941ce60     	ldr	x0, [x19, #0x398]
    b128: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b128:  R_AARCH64_ADR_PREL_PG_HI21	attr_group
    b12c: 91000021     	add	x1, x1, #0x0
		000000000000b12c:  R_AARCH64_ADD_ABS_LO12_NC	attr_group
    b130: 94000000     	bl	0xb130 <syna_sysfs_create_dir+0xc0>
		000000000000b130:  R_AARCH64_CALL26	sysfs_remove_group
    b134: f941ce60     	ldr	x0, [x19, #0x398]
    b138: 94000000     	bl	0xb138 <syna_sysfs_create_dir+0xc8>
		000000000000b138:  R_AARCH64_CALL26	kobject_put
    b13c: 2a1403e0     	mov	w0, w20
    b140: 17ffffdf     	b	0xb0bc <syna_sysfs_create_dir+0x4c>
