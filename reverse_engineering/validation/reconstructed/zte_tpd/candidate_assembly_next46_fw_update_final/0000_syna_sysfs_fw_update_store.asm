
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000da40 <syna_sysfs_fw_update_store>:
    da40: d503233f     	paciasp
    da44: d100c3ff     	sub	sp, sp, #0x30
    da48: a9017bfd     	stp	x29, x30, [sp, #0x10]
    da4c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    da50: 910043fd     	add	x29, sp, #0x10
    da54: d5384108     	mrs	x8, SP_EL0
    da58: aa0303f3     	mov	x19, x3
    da5c: f9438908     	ldr	x8, [x8, #0x710]
    da60: f90007e8     	str	x8, [sp, #0x8]
    da64: f9400c09     	ldr	x9, [x0, #0x18]
    da68: b90007ff     	str	wzr, [sp, #0x4]
    da6c: f9400d29     	ldr	x9, [x9, #0x18]
    da70: f9404d34     	ldr	x20, [x9, #0x98]
    da74: 39560a89     	ldrb	w9, [x20, #0x582]
    da78: 360004c9     	tbz	w9, #0x0, 0xdb10 <syna_sysfs_fw_update_store+0xd0>
    da7c: aa0203e8     	mov	x8, x2
    da80: 910013e2     	add	x2, sp, #0x4
    da84: 52800141     	mov	w1, #0xa                // =10
    da88: aa0803e0     	mov	x0, x8
    da8c: 94000000     	bl	0xda8c <syna_sysfs_fw_update_store+0x4c>
		000000000000da8c:  R_AARCH64_CALL26	kstrtouint
    da90: 34000060     	cbz	w0, 0xda9c <syna_sysfs_fw_update_store+0x5c>
    da94: 928002b3     	mov	x19, #-0x16             // =-22
    da98: 14000013     	b	0xdae4 <syna_sysfs_fw_update_store+0xa4>
    da9c: aa1403e0     	mov	x0, x20
    daa0: 52800021     	mov	w1, #0x1                // =1
    daa4: 94000000     	bl	0xdaa4 <syna_sysfs_fw_update_store+0x64>
		000000000000daa4:  R_AARCH64_CALL26	syna_dev_do_reflash
    daa8: 37f80400     	tbnz	w0, #0x1f, 0xdb28 <syna_sysfs_fw_update_store+0xe8>
    daac: f9400288     	ldr	x8, [x20]
    dab0: 39402508     	ldrb	w8, [x8, #0x9]
    dab4: 7100051f     	cmp	w8, #0x1
    dab8: 54000141     	b.ne	0xdae0 <syna_sysfs_fw_update_store+0xa0>
    dabc: f9435e88     	ldr	x8, [x20, #0x6b8]
    dac0: aa1403e0     	mov	x0, x20
    dac4: b85fc110     	ldur	w16, [x8, #-0x4]
    dac8: 7288e391     	movk	w17, #0x471c
    dacc: 72b5c411     	movk	w17, #0xae20, lsl #16
    dad0: 6b11021f     	cmp	w16, w17
    dad4: 54000040     	b.eq	0xdadc <syna_sysfs_fw_update_store+0x9c>
    dad8: d4304500     	brk	#0x8228
    dadc: d63f0100     	blr	x8
    dae0: 93407e73     	sxtw	x19, w19
    dae4: d5384108     	mrs	x8, SP_EL0
    dae8: f9438908     	ldr	x8, [x8, #0x710]
    daec: f94007e9     	ldr	x9, [sp, #0x8]
    daf0: eb09011f     	cmp	x8, x9
    daf4: 540002a1     	b.ne	0xdb48 <syna_sysfs_fw_update_store+0x108>
    daf8: aa1303e0     	mov	x0, x19
    dafc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    db00: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    db04: 9100c3ff     	add	sp, sp, #0x30
    db08: d50323bf     	autiasp
    db0c: d65f03c0     	ret
    db10: 90000000     	adrp	x0, 0xd000 <syna_spi_probe+0xff0>
		000000000000db10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20d9
    db14: 91000000     	add	x0, x0, #0x0
		000000000000db14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20d9
    db18: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000db18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113
    db1c: 91000021     	add	x1, x1, #0x0
		000000000000db1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113
    db20: 94000000     	bl	0xdb20 <syna_sysfs_fw_update_store+0xe0>
		000000000000db20:  R_AARCH64_CALL26	_printk
    db24: 17fffff0     	b	0xdae4 <syna_sysfs_fw_update_store+0xa4>
    db28: 90000008     	adrp	x8, 0xd000 <syna_spi_probe+0xff0>
		000000000000db28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55b
    db2c: 91000108     	add	x8, x8, #0x0
		000000000000db2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55b
    db30: 90000001     	adrp	x1, 0xd000 <syna_spi_probe+0xff0>
		000000000000db30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113
    db34: 91000021     	add	x1, x1, #0x0
		000000000000db34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113
    db38: 2a0003f3     	mov	w19, w0
    db3c: aa0803e0     	mov	x0, x8
    db40: 94000000     	bl	0xdb40 <syna_sysfs_fw_update_store+0x100>
		000000000000db40:  R_AARCH64_CALL26	_printk
    db44: 17ffffe7     	b	0xdae0 <syna_sysfs_fw_update_store+0xa0>
    db48: 94000000     	bl	0xdb48 <syna_sysfs_fw_update_store+0x108>
		000000000000db48:  R_AARCH64_CALL26	__stack_chk_fail
