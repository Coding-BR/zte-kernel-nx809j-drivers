
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bd40 <syna_testing_create_dir>:
    bd40: d503233f     	paciasp
    bd44: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    bd48: a9014ff4     	stp	x20, x19, [sp, #0x10]
    bd4c: 910003fd     	mov	x29, sp
    bd50: f941cc01     	ldr	x1, [x0, #0x398]
    bd54: aa0003f3     	mov	x19, x0
    bd58: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad0e
    bd5c: 91000000     	add	x0, x0, #0x0
		000000000000bd5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad0e
    bd60: 94000000     	bl	0xbd60 <syna_testing_create_dir+0x20>
		000000000000bd60:  R_AARCH64_CALL26	kobject_create_and_add
    bd64: f901d660     	str	x0, [x19, #0x3a8]
    bd68: b4000140     	cbz	x0, 0xbd90 <syna_testing_create_dir+0x50>
    bd6c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd6c:  R_AARCH64_ADR_PREL_PG_HI21	attr_testing_group
    bd70: 91000021     	add	x1, x1, #0x0
		000000000000bd70:  R_AARCH64_ADD_ABS_LO12_NC	attr_testing_group
    bd74: 94000000     	bl	0xbd74 <syna_testing_create_dir+0x34>
		000000000000bd74:  R_AARCH64_CALL26	sysfs_create_group
    bd78: 37f801a0     	tbnz	w0, #0x1f, 0xbdac <syna_testing_create_dir+0x6c>
    bd7c: 2a1f03e0     	mov	w0, wzr
    bd80: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    bd84: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    bd88: d50323bf     	autiasp
    bd8c: d65f03c0     	ret
    bd90: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6ca
    bd94: 91000000     	add	x0, x0, #0x0
		000000000000bd94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6ca
    bd98: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bd98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17617
    bd9c: 91000021     	add	x1, x1, #0x0
		000000000000bd9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17617
    bda0: 94000000     	bl	0xbda0 <syna_testing_create_dir+0x60>
		000000000000bda0:  R_AARCH64_CALL26	_printk
    bda4: 128002a0     	mov	w0, #-0x16              // =-22
    bda8: 17fffff6     	b	0xbd80 <syna_testing_create_dir+0x40>
    bdac: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bdac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189b9
    bdb0: 91000108     	add	x8, x8, #0x0
		000000000000bdb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189b9
    bdb4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bdb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17617
    bdb8: 91000021     	add	x1, x1, #0x0
		000000000000bdb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17617
    bdbc: 2a0003f4     	mov	w20, w0
    bdc0: aa0803e0     	mov	x0, x8
    bdc4: 94000000     	bl	0xbdc4 <syna_testing_create_dir+0x84>
		000000000000bdc4:  R_AARCH64_CALL26	_printk
    bdc8: f941d660     	ldr	x0, [x19, #0x3a8]
    bdcc: 94000000     	bl	0xbdcc <syna_testing_create_dir+0x8c>
		000000000000bdcc:  R_AARCH64_CALL26	kobject_put
    bdd0: 2a1403e0     	mov	w0, w20
    bdd4: 17ffffeb     	b	0xbd80 <syna_testing_create_dir+0x40>
