
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b474 <syna_sysfs_fw_update_store>:
   1b474: d503233f     	paciasp
   1b478: d100c3ff     	sub	sp, sp, #0x30
   1b47c: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1b480: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1b484: 910043fd     	add	x29, sp, #0x10
   1b488: d5384109     	mrs	x9, SP_EL0
   1b48c: aa0303f3     	mov	x19, x3
   1b490: f9438929     	ldr	x9, [x9, #0x710]
   1b494: f90007e9     	str	x9, [sp, #0x8]
   1b498: f9400c09     	ldr	x9, [x0, #0x18]
   1b49c: b90007ff     	str	wzr, [sp, #0x4]
   1b4a0: f9400d29     	ldr	x9, [x9, #0x18]
   1b4a4: f9404d34     	ldr	x20, [x9, #0x98]
   1b4a8: 39560a89     	ldrb	w9, [x20, #0x582]
   1b4ac: 360004c9     	tbz	w9, #0x0, 0x1b544 <syna_sysfs_fw_update_store+0xd0>
   1b4b0: aa0203e8     	mov	x8, x2
   1b4b4: 910013e2     	add	x2, sp, #0x4
   1b4b8: 52800141     	mov	w1, #0xa                // =10
   1b4bc: aa0803e0     	mov	x0, x8
   1b4c0: 94000000     	bl	0x1b4c0 <syna_sysfs_fw_update_store+0x4c>
		000000000001b4c0:  R_AARCH64_CALL26	kstrtouint
   1b4c4: 34000060     	cbz	w0, 0x1b4d0 <syna_sysfs_fw_update_store+0x5c>
   1b4c8: 928002b3     	mov	x19, #-0x16             // =-22
   1b4cc: 14000013     	b	0x1b518 <syna_sysfs_fw_update_store+0xa4>
   1b4d0: aa1403e0     	mov	x0, x20
   1b4d4: 52800021     	mov	w1, #0x1                // =1
   1b4d8: 94000000     	bl	0x1b4d8 <syna_sysfs_fw_update_store+0x64>
		000000000001b4d8:  R_AARCH64_CALL26	syna_dev_do_reflash
   1b4dc: 37f80400     	tbnz	w0, #0x1f, 0x1b55c <syna_sysfs_fw_update_store+0xe8>
   1b4e0: f9400288     	ldr	x8, [x20]
   1b4e4: 39402508     	ldrb	w8, [x8, #0x9]
   1b4e8: 7100051f     	cmp	w8, #0x1
   1b4ec: 54000141     	b.ne	0x1b514 <syna_sysfs_fw_update_store+0xa0>
   1b4f0: f9435e88     	ldr	x8, [x20, #0x6b8]
   1b4f4: aa1403e0     	mov	x0, x20
   1b4f8: b85fc110     	ldur	w16, [x8, #-0x4]
   1b4fc: 7288e391     	movk	w17, #0x471c
   1b500: 72b5c411     	movk	w17, #0xae20, lsl #16
   1b504: 6b11021f     	cmp	w16, w17
   1b508: 54000040     	b.eq	0x1b510 <syna_sysfs_fw_update_store+0x9c>
   1b50c: d4304500     	brk	#0x8228
   1b510: d63f0100     	blr	x8
   1b514: 93407e73     	sxtw	x19, w19
   1b518: d5384108     	mrs	x8, SP_EL0
   1b51c: f9438908     	ldr	x8, [x8, #0x710]
   1b520: f94007e9     	ldr	x9, [sp, #0x8]
   1b524: eb09011f     	cmp	x8, x9
   1b528: 540002a1     	b.ne	0x1b57c <syna_sysfs_fw_update_store+0x108>
   1b52c: aa1303e0     	mov	x0, x19
   1b530: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1b534: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1b538: 9100c3ff     	add	sp, sp, #0x30
   1b53c: d50323bf     	autiasp
   1b540: d65f03c0     	ret
   1b544: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4840
   1b548: 91000000     	add	x0, x0, #0x0
		000000000001b548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4840
   1b54c: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b54c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
   1b550: 91000021     	add	x1, x1, #0x0
		000000000001b550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
   1b554: 94000000     	bl	0x1b554 <syna_sysfs_fw_update_store+0xe0>
		000000000001b554:  R_AARCH64_CALL26	_printk
   1b558: 17fffff0     	b	0x1b518 <syna_sysfs_fw_update_store+0xa4>
   1b55c: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b55c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd26
   1b560: 91000108     	add	x8, x8, #0x0
		000000000001b560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd26
   1b564: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
   1b568: 91000021     	add	x1, x1, #0x0
		000000000001b568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
   1b56c: 2a0003f3     	mov	w19, w0
   1b570: aa0803e0     	mov	x0, x8
   1b574: 94000000     	bl	0x1b574 <syna_sysfs_fw_update_store+0x100>
		000000000001b574:  R_AARCH64_CALL26	_printk
   1b578: 17ffffe7     	b	0x1b514 <syna_sysfs_fw_update_store+0xa0>
   1b57c: 94000000     	bl	0x1b57c <syna_sysfs_fw_update_store+0x108>
		000000000001b57c:  R_AARCH64_CALL26	__stack_chk_fail
