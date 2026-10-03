
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014b28 <syna_sysfs_fw_update_store>:
   14b28: d503233f     	paciasp
   14b2c: d100c3ff     	sub	sp, sp, #0x30
   14b30: a9017bfd     	stp	x29, x30, [sp, #0x10]
   14b34: a9024ff4     	stp	x20, x19, [sp, #0x20]
   14b38: 910043fd     	add	x29, sp, #0x10
   14b3c: d5384109     	mrs	x9, SP_EL0
   14b40: aa0303f3     	mov	x19, x3
   14b44: f9438929     	ldr	x9, [x9, #0x710]
   14b48: f90007e9     	str	x9, [sp, #0x8]
   14b4c: f9400c09     	ldr	x9, [x0, #0x18]
   14b50: b90007ff     	str	wzr, [sp, #0x4]
   14b54: f9400d29     	ldr	x9, [x9, #0x18]
   14b58: f9404d34     	ldr	x20, [x9, #0x98]
   14b5c: 39560a89     	ldrb	w9, [x20, #0x582]
   14b60: 360004c9     	tbz	w9, #0x0, 0x14bf8 <syna_sysfs_fw_update_store+0xd0>
   14b64: aa0203e8     	mov	x8, x2
   14b68: 910013e2     	add	x2, sp, #0x4
   14b6c: 52800141     	mov	w1, #0xa                // =10
   14b70: aa0803e0     	mov	x0, x8
   14b74: 94000000     	bl	0x14b74 <syna_sysfs_fw_update_store+0x4c>
		0000000000014b74:  R_AARCH64_CALL26	kstrtouint
   14b78: 34000060     	cbz	w0, 0x14b84 <syna_sysfs_fw_update_store+0x5c>
   14b7c: 928002b3     	mov	x19, #-0x16             // =-22
   14b80: 14000013     	b	0x14bcc <syna_sysfs_fw_update_store+0xa4>
   14b84: aa1403e0     	mov	x0, x20
   14b88: 52800021     	mov	w1, #0x1                // =1
   14b8c: 94000000     	bl	0x14b8c <syna_sysfs_fw_update_store+0x64>
		0000000000014b8c:  R_AARCH64_CALL26	syna_dev_do_reflash
   14b90: 37f80400     	tbnz	w0, #0x1f, 0x14c10 <syna_sysfs_fw_update_store+0xe8>
   14b94: f9400288     	ldr	x8, [x20]
   14b98: 39402508     	ldrb	w8, [x8, #0x9]
   14b9c: 7100051f     	cmp	w8, #0x1
   14ba0: 54000141     	b.ne	0x14bc8 <syna_sysfs_fw_update_store+0xa0>
   14ba4: f9435e88     	ldr	x8, [x20, #0x6b8]
   14ba8: aa1403e0     	mov	x0, x20
   14bac: b85fc110     	ldur	w16, [x8, #-0x4]
   14bb0: 7288e391     	movk	w17, #0x471c
   14bb4: 72b5c411     	movk	w17, #0xae20, lsl #16
   14bb8: 6b11021f     	cmp	w16, w17
   14bbc: 54000040     	b.eq	0x14bc4 <syna_sysfs_fw_update_store+0x9c>
   14bc0: d4304500     	brk	#0x8228
   14bc4: d63f0100     	blr	x8
   14bc8: 93407e73     	sxtw	x19, w19
   14bcc: d5384108     	mrs	x8, SP_EL0
   14bd0: f9438908     	ldr	x8, [x8, #0x710]
   14bd4: f94007e9     	ldr	x9, [sp, #0x8]
   14bd8: eb09011f     	cmp	x8, x9
   14bdc: 540002a1     	b.ne	0x14c30 <syna_sysfs_fw_update_store+0x108>
   14be0: aa1303e0     	mov	x0, x19
   14be4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   14be8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14bec: 9100c3ff     	add	sp, sp, #0x30
   14bf0: d50323bf     	autiasp
   14bf4: d65f03c0     	ret
   14bf8: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473c
   14bfc: 91000000     	add	x0, x0, #0x0
		0000000000014bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473c
   14c00: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23c
   14c04: 91000021     	add	x1, x1, #0x0
		0000000000014c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23c
   14c08: 94000000     	bl	0x14c08 <syna_sysfs_fw_update_store+0xe0>
		0000000000014c08:  R_AARCH64_CALL26	_printk
   14c0c: 17fffff0     	b	0x14bcc <syna_sysfs_fw_update_store+0xa4>
   14c10: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf5
   14c14: 91000108     	add	x8, x8, #0x0
		0000000000014c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf5
   14c18: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23c
   14c1c: 91000021     	add	x1, x1, #0x0
		0000000000014c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23c
   14c20: 2a0003f3     	mov	w19, w0
   14c24: aa0803e0     	mov	x0, x8
   14c28: 94000000     	bl	0x14c28 <syna_sysfs_fw_update_store+0x100>
		0000000000014c28:  R_AARCH64_CALL26	_printk
   14c2c: 17ffffe7     	b	0x14bc8 <syna_sysfs_fw_update_store+0xa0>
   14c30: 94000000     	bl	0x14c30 <syna_sysfs_fw_update_store+0x108>
		0000000000014c30:  R_AARCH64_CALL26	__stack_chk_fail
