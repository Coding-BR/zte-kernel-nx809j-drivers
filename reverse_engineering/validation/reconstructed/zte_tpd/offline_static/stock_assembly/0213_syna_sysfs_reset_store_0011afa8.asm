
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014720 <syna_sysfs_reset_store>:
   14720: d503233f     	paciasp
   14724: d10103ff     	sub	sp, sp, #0x40
   14728: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1472c: f90013f5     	str	x21, [sp, #0x20]
   14730: a9034ff4     	stp	x20, x19, [sp, #0x30]
   14734: 910043fd     	add	x29, sp, #0x10
   14738: d5384109     	mrs	x9, SP_EL0
   1473c: aa0203e8     	mov	x8, x2
   14740: 910013e2     	add	x2, sp, #0x4
   14744: f9438929     	ldr	x9, [x9, #0x710]
   14748: 52800141     	mov	w1, #0xa                // =10
   1474c: aa0303f3     	mov	x19, x3
   14750: f90007e9     	str	x9, [sp, #0x8]
   14754: f9400c09     	ldr	x9, [x0, #0x18]
   14758: aa0803e0     	mov	x0, x8
   1475c: b90007ff     	str	wzr, [sp, #0x4]
   14760: 390003ff     	strb	wzr, [sp]
   14764: f9400d29     	ldr	x9, [x9, #0x18]
   14768: f9404d34     	ldr	x20, [x9, #0x98]
   1476c: f9413a95     	ldr	x21, [x20, #0x270]
   14770: 94000000     	bl	0x14770 <syna_sysfs_reset_store+0x50>
		0000000000014770:  R_AARCH64_CALL26	kstrtouint
   14774: 34000060     	cbz	w0, 0x14780 <syna_sysfs_reset_store+0x60>
   14778: 928002b3     	mov	x19, #-0x16             // =-22
   1477c: 14000021     	b	0x14800 <syna_sysfs_reset_store+0xe0>
   14780: 39560a88     	ldrb	w8, [x20, #0x582]
   14784: 36000568     	tbz	w8, #0x0, 0x14830 <syna_sysfs_reset_store+0x110>
   14788: b9457e88     	ldr	w8, [x20, #0x57c]
   1478c: b94007e2     	ldr	w2, [sp, #0x4]
   14790: 71000d1f     	cmp	w8, #0x3
   14794: 7a421844     	ccmp	w2, #0x2, #0x4, ne
   14798: 54000241     	b.ne	0x147e0 <syna_sysfs_reset_store+0xc0>
   1479c: f9413a80     	ldr	x0, [x20, #0x270]
   147a0: f940c408     	ldr	x8, [x0, #0x188]
   147a4: b4000528     	cbz	x8, 0x14848 <syna_sysfs_reset_store+0x128>
   147a8: b85fc110     	ldur	w16, [x8, #-0x4]
   147ac: 72974371     	movk	w17, #0xba1b
   147b0: 72a56791     	movk	w17, #0x2b3c, lsl #16
   147b4: 6b11021f     	cmp	w16, w17
   147b8: 54000040     	b.eq	0x147c0 <syna_sysfs_reset_store+0xa0>
   147bc: d4304500     	brk	#0x8228
   147c0: d63f0100     	blr	x8
   147c4: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   147c8: 37000188     	tbnz	w8, #0x0, 0x147f8 <syna_sysfs_reset_store+0xd8>
   147cc: f9400280     	ldr	x0, [x20]
   147d0: 910003e1     	mov	x1, sp
   147d4: aa1f03e2     	mov	x2, xzr
   147d8: 94000000     	bl	0x147d8 <syna_sysfs_reset_store+0xb8>
		00000000000147d8:  R_AARCH64_CALL26	syna_tcm_get_event_data
   147dc: 14000007     	b	0x147f8 <syna_sysfs_reset_store+0xd8>
   147e0: 7100045f     	cmp	w2, #0x1
   147e4: 54000401     	b.ne	0x14864 <syna_sysfs_reset_store+0x144>
   147e8: f9400280     	ldr	x0, [x20]
   147ec: b9420c01     	ldr	w1, [x0, #0x20c]
   147f0: 94000000     	bl	0x147f0 <syna_sysfs_reset_store+0xd0>
		00000000000147f0:  R_AARCH64_CALL26	syna_tcm_reset
   147f4: 37f80460     	tbnz	w0, #0x1f, 0x14880 <syna_sysfs_reset_store+0x160>
   147f8: 2a1303f4     	mov	w20, w19
   147fc: 93407e93     	sxtw	x19, w20
   14800: d5384108     	mrs	x8, SP_EL0
   14804: f9438908     	ldr	x8, [x8, #0x710]
   14808: f94007e9     	ldr	x9, [sp, #0x8]
   1480c: eb09011f     	cmp	x8, x9
   14810: 54000461     	b.ne	0x1489c <syna_sysfs_reset_store+0x17c>
   14814: aa1303e0     	mov	x0, x19
   14818: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1481c: f94013f5     	ldr	x21, [sp, #0x20]
   14820: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   14824: 910103ff     	add	sp, sp, #0x40
   14828: d50323bf     	autiasp
   1482c: d65f03c0     	ret
   14830: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473c
   14834: 91000000     	add	x0, x0, #0x0
		0000000000014834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473c
   14838: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225
   1483c: 91000021     	add	x1, x1, #0x0
		000000000001483c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225
   14840: 94000000     	bl	0x14840 <syna_sysfs_reset_store+0x120>
		0000000000014840:  R_AARCH64_CALL26	_printk
   14844: 17ffffef     	b	0x14800 <syna_sysfs_reset_store+0xe0>
   14848: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91ee
   1484c: 91000000     	add	x0, x0, #0x0
		000000000001484c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91ee
   14850: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225
   14854: 91000021     	add	x1, x1, #0x0
		0000000000014854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225
   14858: 94000000     	bl	0x14858 <syna_sysfs_reset_store+0x138>
		0000000000014858:  R_AARCH64_CALL26	_printk
   1485c: 2a1f03f4     	mov	w20, wzr
   14860: 17ffffe7     	b	0x147fc <syna_sysfs_reset_store+0xdc>
   14864: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21d1
   14868: 91000000     	add	x0, x0, #0x0
		0000000000014868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21d1
   1486c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001486c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225
   14870: 91000021     	add	x1, x1, #0x0
		0000000000014870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225
   14874: 94000000     	bl	0x14874 <syna_sysfs_reset_store+0x154>
		0000000000014874:  R_AARCH64_CALL26	_printk
   14878: 128002b4     	mov	w20, #-0x16             // =-22
   1487c: 17ffffe0     	b	0x147fc <syna_sysfs_reset_store+0xdc>
   14880: 2a0003f4     	mov	w20, w0
   14884: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86eb
   14888: 91000000     	add	x0, x0, #0x0
		0000000000014888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86eb
   1488c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001488c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x225
   14890: 91000021     	add	x1, x1, #0x0
		0000000000014890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x225
   14894: 94000000     	bl	0x14894 <syna_sysfs_reset_store+0x174>
		0000000000014894:  R_AARCH64_CALL26	_printk
   14898: 17ffffd9     	b	0x147fc <syna_sysfs_reset_store+0xdc>
   1489c: 94000000     	bl	0x1489c <syna_sysfs_reset_store+0x17c>
		000000000001489c:  R_AARCH64_CALL26	__stack_chk_fail
