
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000065e0 <aw9620x_read_chipid>:
    65e0: d503233f     	paciasp
    65e4: d100c3ff     	sub	sp, sp, #0x30
    65e8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    65ec: f90013f3     	str	x19, [sp, #0x20]
    65f0: 910043fd     	add	x29, sp, #0x10
    65f4: d5384108     	mrs	x8, SP_EL0
    65f8: aa0003f3     	mov	x19, x0
    65fc: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000065fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    6600: 91000042     	add	x2, x2, #0x0
		0000000000006600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    6604: f9438908     	ldr	x8, [x8, #0x710]
    6608: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    660c: 91000063     	add	x3, x3, #0x0
		000000000000660c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    6610: 528064c4     	mov	w4, #0x326              // =806
    6614: f90007e8     	str	x8, [sp, #0x8]
    6618: f9401801     	ldr	x1, [x0, #0x30]
    661c: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000661c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6620: 91000000     	add	x0, x0, #0x0
		0000000000006620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6624: b90007ff     	str	wzr, [sp, #0x4]
    6628: 94000000     	bl	0x6628 <aw9620x_read_chipid+0x48>
		0000000000006628:  R_AARCH64_CALL26	_dev_printk
    662c: 910013e2     	add	x2, sp, #0x4
    6630: aa1303e0     	mov	x0, x19
    6634: 529fe001     	mov	w1, #0xff00             // =65280
    6638: 97fff532     	bl	0x3b00 <aw9620x_i2c_read>
    663c: 36f801a0     	tbz	w0, #0x1f, 0x6670 <aw9620x_read_chipid+0x90>
    6640: f9401a61     	ldr	x1, [x19, #0x30]
    6644: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    6648: 91000000     	add	x0, x0, #0x0
		0000000000006648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    664c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000664c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b3e
    6650: 91000042     	add	x2, x2, #0x0
		0000000000006650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b3e
    6654: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    6658: 91000063     	add	x3, x3, #0x0
		0000000000006658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    665c: 52806544     	mov	w4, #0x32a              // =810
    6660: 12800005     	mov	w5, #-0x1               // =-1
    6664: 12800013     	mov	w19, #-0x1              // =-1
    6668: 94000000     	bl	0x6668 <aw9620x_read_chipid+0x88>
		0000000000006668:  R_AARCH64_CALL26	_dev_printk
    666c: 1400004f     	b	0x67a8 <aw9620x_read_chipid+0x1c8>
    6670: b94007e5     	ldr	w5, [sp, #0x4]
    6674: 528c4108     	mov	w8, #0x6208             // =25096
    6678: 72a40448     	movk	w8, #0x2022, lsl #16
    667c: 6b0800bf     	cmp	w5, w8
    6680: 54000580     	b.eq	0x6730 <aw9620x_read_chipid+0x150>
    6684: 528c40a8     	mov	w8, #0x6205             // =25093
    6688: 72a40448     	movk	w8, #0x2022, lsl #16
    668c: 6b0800bf     	cmp	w5, w8
    6690: 540002c0     	b.eq	0x66e8 <aw9620x_read_chipid+0x108>
    6694: 528c4068     	mov	w8, #0x6203             // =25091
    6698: 72a40448     	movk	w8, #0x2022, lsl #16
    669c: 6b0800bf     	cmp	w5, w8
    66a0: 54000701     	b.ne	0x6780 <aw9620x_read_chipid+0x1a0>
    66a4: d28ae829     	mov	x9, #0x5741             // =22337
    66a8: f9401a61     	ldr	x1, [x19, #0x30]
    66ac: 528c4065     	mov	w5, #0x6203             // =25091
    66b0: f2a6c729     	movk	x9, #0x3639, lsl #16
    66b4: 910a8668     	add	x8, x19, #0x2a1
    66b8: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000066b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    66bc: 91000000     	add	x0, x0, #0x0
		00000000000066bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    66c0: f2c60649     	movk	x9, #0x3032, lsl #32
    66c4: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000066c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13cd
    66c8: 91000042     	add	x2, x2, #0x0
		00000000000066c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13cd
    66cc: f2e00669     	movk	x9, #0x33, lsl #48
    66d0: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000066d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    66d4: 91000063     	add	x3, x3, #0x0
		00000000000066d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    66d8: 52806644     	mov	w4, #0x332              // =818
    66dc: 72a40445     	movk	w5, #0x2022, lsl #16
    66e0: f9000109     	str	x9, [x8]
    66e4: 14000024     	b	0x6774 <aw9620x_read_chipid+0x194>
    66e8: d28ae829     	mov	x9, #0x5741             // =22337
    66ec: 910a8668     	add	x8, x19, #0x2a1
    66f0: f9401a61     	ldr	x1, [x19, #0x30]
    66f4: f2a6c729     	movk	x9, #0x3639, lsl #16
    66f8: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		00000000000066f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    66fc: 91000000     	add	x0, x0, #0x0
		00000000000066fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6700: f2c60649     	movk	x9, #0x3032, lsl #32
    6704: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3248
    6708: 91000042     	add	x2, x2, #0x0
		0000000000006708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3248
    670c: f2e006a9     	movk	x9, #0x35, lsl #48
    6710: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    6714: 91000063     	add	x3, x3, #0x0
		0000000000006714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    6718: f9000109     	str	x9, [x8]
    671c: 528c4068     	mov	w8, #0x6203             // =25091
    6720: 528066c4     	mov	w4, #0x336              // =822
    6724: 72a40448     	movk	w8, #0x2022, lsl #16
    6728: 11000905     	add	w5, w8, #0x2
    672c: 14000012     	b	0x6774 <aw9620x_read_chipid+0x194>
    6730: d28ae829     	mov	x9, #0x5741             // =22337
    6734: 910a8668     	add	x8, x19, #0x2a1
    6738: f9401a61     	ldr	x1, [x19, #0x30]
    673c: f2a6c729     	movk	x9, #0x3639, lsl #16
    6740: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6744: 91000000     	add	x0, x0, #0x0
		0000000000006744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    6748: f2c60649     	movk	x9, #0x3032, lsl #32
    674c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000674c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20ea
    6750: 91000042     	add	x2, x2, #0x0
		0000000000006750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20ea
    6754: f2e00709     	movk	x9, #0x38, lsl #48
    6758: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    675c: 91000063     	add	x3, x3, #0x0
		000000000000675c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    6760: f9000109     	str	x9, [x8]
    6764: 528c4068     	mov	w8, #0x6203             // =25091
    6768: 52806744     	mov	w4, #0x33a              // =826
    676c: 72a40448     	movk	w8, #0x2022, lsl #16
    6770: 11001505     	add	w5, w8, #0x5
    6774: 94000000     	bl	0x6774 <aw9620x_read_chipid+0x194>
		0000000000006774:  R_AARCH64_CALL26	_dev_printk
    6778: 2a1f03f3     	mov	w19, wzr
    677c: 1400000b     	b	0x67a8 <aw9620x_read_chipid+0x1c8>
    6780: f9401a61     	ldr	x1, [x19, #0x30]
    6784: 90000000     	adrp	x0, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    6788: 91000000     	add	x0, x0, #0x0
		0000000000006788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    678c: 90000002     	adrp	x2, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		000000000000678c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
    6790: 91000042     	add	x2, x2, #0x0
		0000000000006790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
    6794: 90000003     	adrp	x3, 0x6000 <aw9620x_reg_update_boot_work+0x368>
		0000000000006794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78d
    6798: 91000063     	add	x3, x3, #0x0
		0000000000006798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78d
    679c: 528067c4     	mov	w4, #0x33e              // =830
    67a0: 94000000     	bl	0x67a0 <aw9620x_read_chipid+0x1c0>
		00000000000067a0:  R_AARCH64_CALL26	_dev_printk
    67a4: 12800033     	mov	w19, #-0x2              // =-2
    67a8: d5384108     	mrs	x8, SP_EL0
    67ac: f9438908     	ldr	x8, [x8, #0x710]
    67b0: f94007e9     	ldr	x9, [sp, #0x8]
    67b4: eb09011f     	cmp	x8, x9
    67b8: 540000e1     	b.ne	0x67d4 <aw9620x_read_chipid+0x1f4>
    67bc: 2a1303e0     	mov	w0, w19
    67c0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    67c4: f94013f3     	ldr	x19, [sp, #0x20]
    67c8: 9100c3ff     	add	sp, sp, #0x30
    67cc: d50323bf     	autiasp
    67d0: d65f03c0     	ret
    67d4: 94000000     	bl	0x67d4 <aw9620x_read_chipid+0x1f4>
		00000000000067d4:  R_AARCH64_CALL26	__stack_chk_fail
