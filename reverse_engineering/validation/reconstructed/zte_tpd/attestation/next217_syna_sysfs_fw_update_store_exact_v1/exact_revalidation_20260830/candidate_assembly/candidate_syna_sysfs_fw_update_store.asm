
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b418 <syna_sysfs_fw_update_store>:
   1b418: d503233f     	paciasp
   1b41c: d100c3ff     	sub	sp, sp, #0x30
   1b420: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1b424: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b428: 910043fd     	add	x29, sp, #0x10
   1b42c: d5384109     	mrs	x9, SP_EL0
   1b430: aa0303f3     	mov	x19, x3
   1b434: f9438929     	ldr	x9, [x9, #0x710]
   1b438: f90007e9     	str	x9, [sp, #0x8]
   1b43c: f9400c09     	ldr	x9, [x0, #0x18]
   1b440: b90007ff     	str	wzr, [sp, #0x4]
   1b444: f9400d29     	ldr	x9, [x9, #0x18]
   1b448: f9404d34     	ldr	x20, [x9, #0x98]
   1b44c: 39560a89     	ldrb	w9, [x20, #0x582]
   1b450: 360004c9     	tbz	w9, #0x0, 0x1b4e8 <syna_sysfs_fw_update_store+0xd0>
   1b454: aa0203e8     	mov	x8, x2
   1b458: 910013e2     	add	x2, sp, #0x4
   1b45c: 52800141     	mov	w1, #0xa                // =10
   1b460: aa0803e0     	mov	x0, x8
   1b464: 94000000     	bl	0x1b464 <syna_sysfs_fw_update_store+0x4c>
		000000000001b464:  R_AARCH64_CALL26	kstrtouint
   1b468: 34000060     	cbz	w0, 0x1b474 <syna_sysfs_fw_update_store+0x5c>
   1b46c: 928002b3     	mov	x19, #-0x16             // =-22
   1b470: 14000013     	b	0x1b4bc <syna_sysfs_fw_update_store+0xa4>
   1b474: aa1403e0     	mov	x0, x20
   1b478: 52800021     	mov	w1, #0x1                // =1
   1b47c: 94000000     	bl	0x1b47c <syna_sysfs_fw_update_store+0x64>
		000000000001b47c:  R_AARCH64_CALL26	syna_dev_do_reflash
   1b480: 37f80400     	tbnz	w0, #0x1f, 0x1b500 <syna_sysfs_fw_update_store+0xe8>
   1b484: f9400288     	ldr	x8, [x20]
   1b488: 39402508     	ldrb	w8, [x8, #0x9]
   1b48c: 7100051f     	cmp	w8, #0x1
   1b490: 54000141     	b.ne	0x1b4b8 <syna_sysfs_fw_update_store+0xa0>
   1b494: f9435e88     	ldr	x8, [x20, #0x6b8]
   1b498: aa1403e0     	mov	x0, x20
   1b49c: b85fc110     	ldur	w16, [x8, #-0x4]
   1b4a0: 7288e391     	movk	w17, #0x471c
   1b4a4: 72b5c411     	movk	w17, #0xae20, lsl #16
   1b4a8: 6b11021f     	cmp	w16, w17
   1b4ac: 54000040     	b.eq	0x1b4b4 <syna_sysfs_fw_update_store+0x9c>
   1b4b0: d4304500     	brk	#0x8228
   1b4b4: d63f0100     	blr	x8
   1b4b8: 93407e73     	sxtw	x19, w19
   1b4bc: d5384108     	mrs	x8, SP_EL0
   1b4c0: f9438908     	ldr	x8, [x8, #0x710]
   1b4c4: f94007e9     	ldr	x9, [sp, #0x8]
   1b4c8: eb09011f     	cmp	x8, x9
   1b4cc: 540002a1     	b.ne	0x1b520 <syna_sysfs_fw_update_store+0x108>
   1b4d0: aa1303e0     	mov	x0, x19
   1b4d4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b4d8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1b4dc: 9100c3ff     	add	sp, sp, #0x30
   1b4e0: d50323bf     	autiasp
   1b4e4: d65f03c0     	ret
   1b4e8: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b4e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4840
   1b4ec: 91000000     	add	x0, x0, #0x0
		000000000001b4ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4840
   1b4f0: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b4f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
   1b4f4: 91000021     	add	x1, x1, #0x0
		000000000001b4f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
   1b4f8: 94000000     	bl	0x1b4f8 <syna_sysfs_fw_update_store+0xe0>
		000000000001b4f8:  R_AARCH64_CALL26	_printk
   1b4fc: 17fffff0     	b	0x1b4bc <syna_sysfs_fw_update_store+0xa4>
   1b500: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd26
   1b504: 91000108     	add	x8, x8, #0x0
		000000000001b504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd26
   1b508: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
   1b50c: 91000021     	add	x1, x1, #0x0
		000000000001b50c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
   1b510: 2a0003f3     	mov	w19, w0
   1b514: aa0803e0     	mov	x0, x8
   1b518: 94000000     	bl	0x1b518 <syna_sysfs_fw_update_store+0x100>
		000000000001b518:  R_AARCH64_CALL26	_printk
   1b51c: 17ffffe7     	b	0x1b4b8 <syna_sysfs_fw_update_store+0xa0>
   1b520: 94000000     	bl	0x1b520 <syna_sysfs_fw_update_store+0x108>
		000000000001b520:  R_AARCH64_CALL26	__stack_chk_fail
