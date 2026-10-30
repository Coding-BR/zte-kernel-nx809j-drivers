
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000216c0 <syna_spi_probe>:
   216c0: d503233f     	paciasp
   216c4: d10243ff     	sub	sp, sp, #0x90
   216c8: a9037bfd     	stp	x29, x30, [sp, #0x30]
   216cc: a9046ffc     	stp	x28, x27, [sp, #0x40]
   216d0: a90567fa     	stp	x26, x25, [sp, #0x50]
   216d4: a9065ff8     	stp	x24, x23, [sp, #0x60]
   216d8: a90757f6     	stp	x22, x21, [sp, #0x70]
   216dc: a9084ff4     	stp	x20, x19, [sp, #0x80]
   216e0: 9100c3fd     	add	x29, sp, #0x30
   216e4: d5384108     	mrs	x8, SP_EL0
   216e8: aa0003f3     	mov	x19, x0
   216ec: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000216ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0ff
   216f0: 91000000     	add	x0, x0, #0x0
		00000000000216f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0ff
   216f4: f9438908     	ldr	x8, [x8, #0x710]
   216f8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000216f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   216fc: 91000021     	add	x1, x1, #0x0
		00000000000216fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   21700: f81f83a8     	stur	x8, [x29, #-0x8]
   21704: 94000000     	bl	0x21704 <syna_spi_probe+0x44>
		0000000000021704:  R_AARCH64_CALL26	_printk
   21708: f9417674     	ldr	x20, [x19, #0x2e8]
   2170c: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002170c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   21710: 12800008     	mov	w8, #-0x1               // =-1
   21714: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab2a
   21718: 91000021     	add	x1, x1, #0x0
		0000000000021718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab2a
   2171c: aa1f03e2     	mov	x2, xzr
   21720: aa1403e0     	mov	x0, x20
   21724: b90023ff     	str	wzr, [sp, #0x20]
   21728: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   2172c: b90002a8     	str	w8, [x21]
		000000000002172c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   21730: 94000000     	bl	0x21730 <syna_spi_probe+0x70>
		0000000000021730:  R_AARCH64_CALL26	of_find_property
   21734: b4000120     	cbz	x0, 0x21758 <syna_spi_probe+0x98>
   21738: b9400808     	ldr	w8, [x0, #0x8]
   2173c: 340000e8     	cbz	w8, 0x21758 <syna_spi_probe+0x98>
   21740: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab2a
   21744: 91000021     	add	x1, x1, #0x0
		0000000000021744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab2a
   21748: aa1403e0     	mov	x0, x20
   2174c: 2a1f03e2     	mov	w2, wzr
   21750: 94000000     	bl	0x21750 <syna_spi_probe+0x90>
		0000000000021750:  R_AARCH64_CALL26	of_get_named_gpio
   21754: b90002a0     	str	w0, [x21]
		0000000000021754:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   21758: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021758:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xb0
   2175c: 52840108     	mov	w8, #0x2008             // =8200
   21760: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b892
   21764: 91000021     	add	x1, x1, #0x0
		0000000000021764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b892
   21768: aa1403e0     	mov	x0, x20
   2176c: aa1f03e2     	mov	x2, xzr
   21770: f90002a8     	str	x8, [x21]
		0000000000021770:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   21774: 94000000     	bl	0x21774 <syna_spi_probe+0xb4>
		0000000000021774:  R_AARCH64_CALL26	of_find_property
   21778: b4000180     	cbz	x0, 0x217a8 <syna_spi_probe+0xe8>
   2177c: b9400808     	ldr	w8, [x0, #0x8]
   21780: 34000148     	cbz	w8, 0x217a8 <syna_spi_probe+0xe8>
   21784: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b892
   21788: 91000021     	add	x1, x1, #0x0
		0000000000021788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b892
   2178c: 910043e2     	add	x2, sp, #0x10
   21790: aa1403e0     	mov	x0, x20
   21794: 52800023     	mov	w3, #0x1                // =1
   21798: aa1f03e4     	mov	x4, xzr
   2179c: 94000000     	bl	0x2179c <syna_spi_probe+0xdc>
		000000000002179c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   217a0: b98013e8     	ldrsw	x8, [sp, #0x10]
   217a4: f90002a8     	str	x8, [x21]
		00000000000217a4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   217a8: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   217ac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17766
   217b0: 91000021     	add	x1, x1, #0x0
		00000000000217b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17766
   217b4: aa1403e0     	mov	x0, x20
   217b8: aa1f03e2     	mov	x2, xzr
   217bc: b900011f     	str	wzr, [x8]
		00000000000217bc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xac
   217c0: 94000000     	bl	0x217c0 <syna_spi_probe+0x100>
		00000000000217c0:  R_AARCH64_CALL26	of_find_property
   217c4: b4000160     	cbz	x0, 0x217f0 <syna_spi_probe+0x130>
   217c8: b9400808     	ldr	w8, [x0, #0x8]
   217cc: 34000128     	cbz	w8, 0x217f0 <syna_spi_probe+0x130>
   217d0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17766
   217d4: 91000021     	add	x1, x1, #0x0
		00000000000217d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17766
   217d8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217d8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   217dc: 91000042     	add	x2, x2, #0x0
		00000000000217dc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xac
   217e0: aa1403e0     	mov	x0, x20
   217e4: 52800023     	mov	w3, #0x1                // =1
   217e8: aa1f03e4     	mov	x4, xzr
   217ec: 94000000     	bl	0x217ec <syna_spi_probe+0x12c>
		00000000000217ec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   217f0: 90000019     	adrp	x25, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217f0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   217f4: 52800028     	mov	w8, #0x1                // =1
   217f8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000217f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198c1
   217fc: 91000021     	add	x1, x1, #0x0
		00000000000217fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198c1
   21800: aa1403e0     	mov	x0, x20
   21804: aa1f03e2     	mov	x2, xzr
   21808: b9000328     	str	w8, [x25]
		0000000000021808:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   2180c: 94000000     	bl	0x2180c <syna_spi_probe+0x14c>
		000000000002180c:  R_AARCH64_CALL26	of_find_property
   21810: b4000160     	cbz	x0, 0x2183c <syna_spi_probe+0x17c>
   21814: b9400808     	ldr	w8, [x0, #0x8]
   21818: 34000128     	cbz	w8, 0x2183c <syna_spi_probe+0x17c>
   2181c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002181c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198c1
   21820: 91000021     	add	x1, x1, #0x0
		0000000000021820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198c1
   21824: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021824:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   21828: 91000042     	add	x2, x2, #0x0
		0000000000021828:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x150
   2182c: aa1403e0     	mov	x0, x20
   21830: 52800023     	mov	w3, #0x1                // =1
   21834: aa1f03e4     	mov	x4, xzr
   21838: 94000000     	bl	0x21838 <syna_spi_probe+0x178>
		0000000000021838:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2183c: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002183c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   21840: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b555
   21844: 91000021     	add	x1, x1, #0x0
		0000000000021844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b555
   21848: aa1403e0     	mov	x0, x20
   2184c: aa1f03e2     	mov	x2, xzr
   21850: b900011f     	str	wzr, [x8]
		0000000000021850:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x154
   21854: 94000000     	bl	0x21854 <syna_spi_probe+0x194>
		0000000000021854:  R_AARCH64_CALL26	of_find_property
   21858: b4000160     	cbz	x0, 0x21884 <syna_spi_probe+0x1c4>
   2185c: b9400808     	ldr	w8, [x0, #0x8]
   21860: 34000128     	cbz	w8, 0x21884 <syna_spi_probe+0x1c4>
   21864: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b555
   21868: 91000021     	add	x1, x1, #0x0
		0000000000021868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b555
   2186c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002186c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   21870: 91000042     	add	x2, x2, #0x0
		0000000000021870:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x154
   21874: aa1403e0     	mov	x0, x20
   21878: 52800023     	mov	w3, #0x1                // =1
   2187c: aa1f03e4     	mov	x4, xzr
   21880: 94000000     	bl	0x21880 <syna_spi_probe+0x1c0>
		0000000000021880:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21884: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021884:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   21888: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190d3
   2188c: 91000021     	add	x1, x1, #0x0
		000000000002188c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190d3
   21890: aa1403e0     	mov	x0, x20
   21894: aa1f03e2     	mov	x2, xzr
   21898: b90002bf     	str	wzr, [x21]
		0000000000021898:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   2189c: 94000000     	bl	0x2189c <syna_spi_probe+0x1dc>
		000000000002189c:  R_AARCH64_CALL26	of_find_property
   218a0: b4000160     	cbz	x0, 0x218cc <syna_spi_probe+0x20c>
   218a4: b9400808     	ldr	w8, [x0, #0x8]
   218a8: 34000128     	cbz	w8, 0x218cc <syna_spi_probe+0x20c>
   218ac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190d3
   218b0: 91000021     	add	x1, x1, #0x0
		00000000000218b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190d3
   218b4: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218b4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   218b8: 91000042     	add	x2, x2, #0x0
		00000000000218b8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x100
   218bc: aa1403e0     	mov	x0, x20
   218c0: 52800023     	mov	w3, #0x1                // =1
   218c4: aa1f03e4     	mov	x4, xzr
   218c8: 94000000     	bl	0x218c8 <syna_spi_probe+0x208>
		00000000000218c8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   218cc: 9000001a     	adrp	x26, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218cc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   218d0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c84
   218d4: 91000021     	add	x1, x1, #0x0
		00000000000218d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c84
   218d8: aa1403e0     	mov	x0, x20
   218dc: aa1f03e2     	mov	x2, xzr
   218e0: f900035f     	str	xzr, [x26]
		00000000000218e0:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   218e4: 94000000     	bl	0x218e4 <syna_spi_probe+0x224>
		00000000000218e4:  R_AARCH64_CALL26	of_find_property
   218e8: b4000120     	cbz	x0, 0x2190c <syna_spi_probe+0x24c>
   218ec: b9400808     	ldr	w8, [x0, #0x8]
   218f0: 340000e8     	cbz	w8, 0x2190c <syna_spi_probe+0x24c>
   218f4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c84
   218f8: 91000021     	add	x1, x1, #0x0
		00000000000218f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c84
   218fc: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000218fc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   21900: 91000042     	add	x2, x2, #0x0
		0000000000021900:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x108
   21904: aa1403e0     	mov	x0, x20
   21908: 94000000     	bl	0x21908 <syna_spi_probe+0x248>
		0000000000021908:  R_AARCH64_CALL26	of_property_read_string
   2190c: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002190c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   21910: 12800008     	mov	w8, #-0x1               // =-1
   21914: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a588
   21918: 91000021     	add	x1, x1, #0x0
		0000000000021918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a588
   2191c: aa1403e0     	mov	x0, x20
   21920: aa1f03e2     	mov	x2, xzr
   21924: b9000128     	str	w8, [x9]
		0000000000021924:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   21928: 94000000     	bl	0x21928 <syna_spi_probe+0x268>
		0000000000021928:  R_AARCH64_CALL26	of_find_property
   2192c: b4000140     	cbz	x0, 0x21954 <syna_spi_probe+0x294>
   21930: b9400808     	ldr	w8, [x0, #0x8]
   21934: 34000108     	cbz	w8, 0x21954 <syna_spi_probe+0x294>
   21938: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a588
   2193c: 91000021     	add	x1, x1, #0x0
		000000000002193c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a588
   21940: aa1403e0     	mov	x0, x20
   21944: 2a1f03e2     	mov	w2, wzr
   21948: 94000000     	bl	0x21948 <syna_spi_probe+0x288>
		0000000000021948:  R_AARCH64_CALL26	of_get_named_gpio
   2194c: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002194c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   21950: b9000100     	str	w0, [x8]
		0000000000021950:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   21954: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021954:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   21958: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18360
   2195c: 91000021     	add	x1, x1, #0x0
		000000000002195c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18360
   21960: aa1403e0     	mov	x0, x20
   21964: aa1f03e2     	mov	x2, xzr
   21968: b900011f     	str	wzr, [x8]
		0000000000021968:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x120
   2196c: 94000000     	bl	0x2196c <syna_spi_probe+0x2ac>
		000000000002196c:  R_AARCH64_CALL26	of_find_property
   21970: b4000160     	cbz	x0, 0x2199c <syna_spi_probe+0x2dc>
   21974: b9400808     	ldr	w8, [x0, #0x8]
   21978: 34000128     	cbz	w8, 0x2199c <syna_spi_probe+0x2dc>
   2197c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002197c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18360
   21980: 91000021     	add	x1, x1, #0x0
		0000000000021980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18360
   21984: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021984:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   21988: 91000042     	add	x2, x2, #0x0
		0000000000021988:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x120
   2198c: aa1403e0     	mov	x0, x20
   21990: 52800023     	mov	w3, #0x1                // =1
   21994: aa1f03e4     	mov	x4, xzr
   21998: 94000000     	bl	0x21998 <syna_spi_probe+0x2d8>
		0000000000021998:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2199c: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		000000000002199c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   219a0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000219a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8a6
   219a4: 91000021     	add	x1, x1, #0x0
		00000000000219a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8a6
   219a8: aa1403e0     	mov	x0, x20
   219ac: aa1f03e2     	mov	x2, xzr
   219b0: b900011f     	str	wzr, [x8]
		00000000000219b0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x124
   219b4: 94000000     	bl	0x219b4 <syna_spi_probe+0x2f4>
		00000000000219b4:  R_AARCH64_CALL26	of_find_property
   219b8: b4000160     	cbz	x0, 0x219e4 <syna_spi_probe+0x324>
   219bc: b9400808     	ldr	w8, [x0, #0x8]
   219c0: 34000128     	cbz	w8, 0x219e4 <syna_spi_probe+0x324>
   219c4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000219c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8a6
   219c8: 91000021     	add	x1, x1, #0x0
		00000000000219c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8a6
   219cc: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000219cc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   219d0: 91000042     	add	x2, x2, #0x0
		00000000000219d0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x124
   219d4: aa1403e0     	mov	x0, x20
   219d8: 52800023     	mov	w3, #0x1                // =1
   219dc: aa1f03e4     	mov	x4, xzr
   219e0: 94000000     	bl	0x219e0 <syna_spi_probe+0x320>
		00000000000219e0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   219e4: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000219e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   219e8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		00000000000219e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0d0
   219ec: 91000021     	add	x1, x1, #0x0
		00000000000219ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0d0
   219f0: aa1403e0     	mov	x0, x20
   219f4: aa1f03e2     	mov	x2, xzr
   219f8: b900011f     	str	wzr, [x8]
		00000000000219f8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   219fc: 94000000     	bl	0x219fc <syna_spi_probe+0x33c>
		00000000000219fc:  R_AARCH64_CALL26	of_find_property
   21a00: b4000160     	cbz	x0, 0x21a2c <syna_spi_probe+0x36c>
   21a04: b9400808     	ldr	w8, [x0, #0x8]
   21a08: 34000128     	cbz	w8, 0x21a2c <syna_spi_probe+0x36c>
   21a0c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0d0
   21a10: 91000021     	add	x1, x1, #0x0
		0000000000021a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0d0
   21a14: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a14:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   21a18: 91000042     	add	x2, x2, #0x0
		0000000000021a18:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x128
   21a1c: aa1403e0     	mov	x0, x20
   21a20: 52800023     	mov	w3, #0x1                // =1
   21a24: aa1f03e4     	mov	x4, xzr
   21a28: 94000000     	bl	0x21a28 <syna_spi_probe+0x368>
		0000000000021a28:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21a2c: 90000017     	adrp	x23, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a2c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   21a30: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bf4
   21a34: 91000021     	add	x1, x1, #0x0
		0000000000021a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bf4
   21a38: aa1403e0     	mov	x0, x20
   21a3c: aa1f03e2     	mov	x2, xzr
   21a40: f90002ff     	str	xzr, [x23]
		0000000000021a40:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   21a44: 94000000     	bl	0x21a44 <syna_spi_probe+0x384>
		0000000000021a44:  R_AARCH64_CALL26	of_find_property
   21a48: b4000120     	cbz	x0, 0x21a6c <syna_spi_probe+0x3ac>
   21a4c: b9400808     	ldr	w8, [x0, #0x8]
   21a50: 340000e8     	cbz	w8, 0x21a6c <syna_spi_probe+0x3ac>
   21a54: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bf4
   21a58: 91000021     	add	x1, x1, #0x0
		0000000000021a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bf4
   21a5c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a5c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   21a60: 91000042     	add	x2, x2, #0x0
		0000000000021a60:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x130
   21a64: aa1403e0     	mov	x0, x20
   21a68: 94000000     	bl	0x21a68 <syna_spi_probe+0x3a8>
		0000000000021a68:  R_AARCH64_CALL26	of_property_read_string
   21a6c: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a6c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   21a70: 12800008     	mov	w8, #-0x1               // =-1
   21a74: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c97
   21a78: 91000021     	add	x1, x1, #0x0
		0000000000021a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c97
   21a7c: aa1403e0     	mov	x0, x20
   21a80: aa1f03e2     	mov	x2, xzr
   21a84: b9000128     	str	w8, [x9]
		0000000000021a84:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   21a88: 94000000     	bl	0x21a88 <syna_spi_probe+0x3c8>
		0000000000021a88:  R_AARCH64_CALL26	of_find_property
   21a8c: b4000140     	cbz	x0, 0x21ab4 <syna_spi_probe+0x3f4>
   21a90: b9400808     	ldr	w8, [x0, #0x8]
   21a94: 34000108     	cbz	w8, 0x21ab4 <syna_spi_probe+0x3f4>
   21a98: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c97
   21a9c: 91000021     	add	x1, x1, #0x0
		0000000000021a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c97
   21aa0: aa1403e0     	mov	x0, x20
   21aa4: 2a1f03e2     	mov	w2, wzr
   21aa8: 94000000     	bl	0x21aa8 <syna_spi_probe+0x3e8>
		0000000000021aa8:  R_AARCH64_CALL26	of_get_named_gpio
   21aac: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021aac:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   21ab0: b9000100     	str	w0, [x8]
		0000000000021ab0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   21ab4: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ab4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   21ab8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb20
   21abc: 91000021     	add	x1, x1, #0x0
		0000000000021abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb20
   21ac0: aa1403e0     	mov	x0, x20
   21ac4: aa1f03e2     	mov	x2, xzr
   21ac8: b900011f     	str	wzr, [x8]
		0000000000021ac8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x148
   21acc: 94000000     	bl	0x21acc <syna_spi_probe+0x40c>
		0000000000021acc:  R_AARCH64_CALL26	of_find_property
   21ad0: b4000160     	cbz	x0, 0x21afc <syna_spi_probe+0x43c>
   21ad4: b9400808     	ldr	w8, [x0, #0x8]
   21ad8: 34000128     	cbz	w8, 0x21afc <syna_spi_probe+0x43c>
   21adc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb20
   21ae0: 91000021     	add	x1, x1, #0x0
		0000000000021ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb20
   21ae4: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ae4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   21ae8: 91000042     	add	x2, x2, #0x0
		0000000000021ae8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x148
   21aec: aa1403e0     	mov	x0, x20
   21af0: 52800023     	mov	w3, #0x1                // =1
   21af4: aa1f03e4     	mov	x4, xzr
   21af8: 94000000     	bl	0x21af8 <syna_spi_probe+0x438>
		0000000000021af8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21afc: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021afc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   21b00: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8fa
   21b04: 91000021     	add	x1, x1, #0x0
		0000000000021b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8fa
   21b08: aa1403e0     	mov	x0, x20
   21b0c: aa1f03e2     	mov	x2, xzr
   21b10: b900011f     	str	wzr, [x8]
		0000000000021b10:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x14c
   21b14: 94000000     	bl	0x21b14 <syna_spi_probe+0x454>
		0000000000021b14:  R_AARCH64_CALL26	of_find_property
   21b18: b4000160     	cbz	x0, 0x21b44 <syna_spi_probe+0x484>
   21b1c: b9400808     	ldr	w8, [x0, #0x8]
   21b20: 34000128     	cbz	w8, 0x21b44 <syna_spi_probe+0x484>
   21b24: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8fa
   21b28: 91000021     	add	x1, x1, #0x0
		0000000000021b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8fa
   21b2c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b2c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   21b30: 91000042     	add	x2, x2, #0x0
		0000000000021b30:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14c
   21b34: aa1403e0     	mov	x0, x20
   21b38: 52800023     	mov	w3, #0x1                // =1
   21b3c: aa1f03e4     	mov	x4, xzr
   21b40: 94000000     	bl	0x21b40 <syna_spi_probe+0x480>
		0000000000021b40:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21b44: 9000001b     	adrp	x27, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b44:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   21b48: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae65
   21b4c: 91000021     	add	x1, x1, #0x0
		0000000000021b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae65
   21b50: aa1403e0     	mov	x0, x20
   21b54: aa1f03e2     	mov	x2, xzr
   21b58: b900037f     	str	wzr, [x27]
		0000000000021b58:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   21b5c: 94000000     	bl	0x21b5c <syna_spi_probe+0x49c>
		0000000000021b5c:  R_AARCH64_CALL26	of_find_property
   21b60: b4000160     	cbz	x0, 0x21b8c <syna_spi_probe+0x4cc>
   21b64: b9400808     	ldr	w8, [x0, #0x8]
   21b68: 34000128     	cbz	w8, 0x21b8c <syna_spi_probe+0x4cc>
   21b6c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae65
   21b70: 91000021     	add	x1, x1, #0x0
		0000000000021b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae65
   21b74: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b74:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   21b78: 91000042     	add	x2, x2, #0x0
		0000000000021b78:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf4
   21b7c: aa1403e0     	mov	x0, x20
   21b80: 52800023     	mov	w3, #0x1                // =1
   21b84: aa1f03e4     	mov	x4, xzr
   21b88: 94000000     	bl	0x21b88 <syna_spi_probe+0x4c8>
		0000000000021b88:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21b8c: 9000001c     	adrp	x28, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf0
   21b90: 12800008     	mov	w8, #-0x1               // =-1
   21b94: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a8a
   21b98: 91000021     	add	x1, x1, #0x0
		0000000000021b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a8a
   21b9c: aa1403e0     	mov	x0, x20
   21ba0: aa1f03e2     	mov	x2, xzr
   21ba4: b9000388     	str	w8, [x28]
		0000000000021ba4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   21ba8: 94000000     	bl	0x21ba8 <syna_spi_probe+0x4e8>
		0000000000021ba8:  R_AARCH64_CALL26	of_find_property
   21bac: b4000120     	cbz	x0, 0x21bd0 <syna_spi_probe+0x510>
   21bb0: b9400808     	ldr	w8, [x0, #0x8]
   21bb4: 340000e8     	cbz	w8, 0x21bd0 <syna_spi_probe+0x510>
   21bb8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a8a
   21bbc: 91000021     	add	x1, x1, #0x0
		0000000000021bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a8a
   21bc0: aa1403e0     	mov	x0, x20
   21bc4: 2a1f03e2     	mov	w2, wzr
   21bc8: 94000000     	bl	0x21bc8 <syna_spi_probe+0x508>
		0000000000021bc8:  R_AARCH64_CALL26	of_get_named_gpio
   21bcc: b9000380     	str	w0, [x28]
		0000000000021bcc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   21bd0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a018
   21bd4: 91000021     	add	x1, x1, #0x0
		0000000000021bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a018
   21bd8: aa1403e0     	mov	x0, x20
   21bdc: aa1f03e2     	mov	x2, xzr
   21be0: 94000000     	bl	0x21be0 <syna_spi_probe+0x520>
		0000000000021be0:  R_AARCH64_CALL26	of_find_property
   21be4: b4000160     	cbz	x0, 0x21c10 <syna_spi_probe+0x550>
   21be8: b9400808     	ldr	w8, [x0, #0x8]
   21bec: 34000128     	cbz	w8, 0x21c10 <syna_spi_probe+0x550>
   21bf0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a018
   21bf4: 91000021     	add	x1, x1, #0x0
		0000000000021bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a018
   21bf8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021bf8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xfc
   21bfc: 91000042     	add	x2, x2, #0x0
		0000000000021bfc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xfc
   21c00: aa1403e0     	mov	x0, x20
   21c04: 52800023     	mov	w3, #0x1                // =1
   21c08: aa1f03e4     	mov	x4, xzr
   21c0c: 94000000     	bl	0x21c0c <syna_spi_probe+0x54c>
		0000000000021c0c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21c10: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1806a
   21c14: 91000021     	add	x1, x1, #0x0
		0000000000021c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1806a
   21c18: aa1403e0     	mov	x0, x20
   21c1c: aa1f03e2     	mov	x2, xzr
   21c20: 94000000     	bl	0x21c20 <syna_spi_probe+0x560>
		0000000000021c20:  R_AARCH64_CALL26	of_find_property
   21c24: b4000160     	cbz	x0, 0x21c50 <syna_spi_probe+0x590>
   21c28: b9400808     	ldr	w8, [x0, #0x8]
   21c2c: 34000128     	cbz	w8, 0x21c50 <syna_spi_probe+0x590>
   21c30: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1806a
   21c34: 91000021     	add	x1, x1, #0x0
		0000000000021c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1806a
   21c38: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c38:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf8
   21c3c: 91000042     	add	x2, x2, #0x0
		0000000000021c3c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf8
   21c40: aa1403e0     	mov	x0, x20
   21c44: 52800023     	mov	w3, #0x1                // =1
   21c48: aa1f03e4     	mov	x4, xzr
   21c4c: 94000000     	bl	0x21c4c <syna_spi_probe+0x58c>
		0000000000021c4c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21c50: 90000016     	adrp	x22, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c50:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   21c54: 12800008     	mov	w8, #-0x1               // =-1
   21c58: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2aa
   21c5c: 91000021     	add	x1, x1, #0x0
		0000000000021c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2aa
   21c60: aa1403e0     	mov	x0, x20
   21c64: aa1f03e2     	mov	x2, xzr
   21c68: b90002c8     	str	w8, [x22]
		0000000000021c68:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   21c6c: 94000000     	bl	0x21c6c <syna_spi_probe+0x5ac>
		0000000000021c6c:  R_AARCH64_CALL26	of_find_property
   21c70: b4000120     	cbz	x0, 0x21c94 <syna_spi_probe+0x5d4>
   21c74: b9400808     	ldr	w8, [x0, #0x8]
   21c78: 340000e8     	cbz	w8, 0x21c94 <syna_spi_probe+0x5d4>
   21c7c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2aa
   21c80: 91000021     	add	x1, x1, #0x0
		0000000000021c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2aa
   21c84: aa1403e0     	mov	x0, x20
   21c88: 2a1f03e2     	mov	w2, wzr
   21c8c: 94000000     	bl	0x21c8c <syna_spi_probe+0x5cc>
		0000000000021c8c:  R_AARCH64_CALL26	of_get_named_gpio
   21c90: b90002c0     	str	w0, [x22]
		0000000000021c90:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   21c94: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187fa
   21c98: 91000021     	add	x1, x1, #0x0
		0000000000021c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187fa
   21c9c: aa1403e0     	mov	x0, x20
   21ca0: aa1f03e2     	mov	x2, xzr
   21ca4: 94000000     	bl	0x21ca4 <syna_spi_probe+0x5e4>
		0000000000021ca4:  R_AARCH64_CALL26	of_find_property
   21ca8: b4000160     	cbz	x0, 0x21cd4 <syna_spi_probe+0x614>
   21cac: b9400808     	ldr	w8, [x0, #0x8]
   21cb0: 34000128     	cbz	w8, 0x21cd4 <syna_spi_probe+0x614>
   21cb4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187fa
   21cb8: 91000021     	add	x1, x1, #0x0
		0000000000021cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187fa
   21cbc: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021cbc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   21cc0: 91000042     	add	x2, x2, #0x0
		0000000000021cc0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa4
   21cc4: aa1403e0     	mov	x0, x20
   21cc8: 52800023     	mov	w3, #0x1                // =1
   21ccc: aa1f03e4     	mov	x4, xzr
   21cd0: 94000000     	bl	0x21cd0 <syna_spi_probe+0x610>
		0000000000021cd0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21cd4: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021cd4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   21cd8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c33c
   21cdc: 91000021     	add	x1, x1, #0x0
		0000000000021cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c33c
   21ce0: aa1403e0     	mov	x0, x20
   21ce4: aa1f03e2     	mov	x2, xzr
   21ce8: b900011f     	str	wzr, [x8]
		0000000000021ce8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x64
   21cec: 94000000     	bl	0x21cec <syna_spi_probe+0x62c>
		0000000000021cec:  R_AARCH64_CALL26	of_find_property
   21cf0: b4000160     	cbz	x0, 0x21d1c <syna_spi_probe+0x65c>
   21cf4: b9400808     	ldr	w8, [x0, #0x8]
   21cf8: 34000128     	cbz	w8, 0x21d1c <syna_spi_probe+0x65c>
   21cfc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c33c
   21d00: 91000021     	add	x1, x1, #0x0
		0000000000021d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c33c
   21d04: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d04:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   21d08: 91000042     	add	x2, x2, #0x0
		0000000000021d08:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x64
   21d0c: aa1403e0     	mov	x0, x20
   21d10: 52800023     	mov	w3, #0x1                // =1
   21d14: aa1f03e4     	mov	x4, xzr
   21d18: 94000000     	bl	0x21d18 <syna_spi_probe+0x658>
		0000000000021d18:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21d1c: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d1c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   21d20: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e08
   21d24: 91000021     	add	x1, x1, #0x0
		0000000000021d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e08
   21d28: aa1403e0     	mov	x0, x20
   21d2c: aa1f03e2     	mov	x2, xzr
   21d30: b900011f     	str	wzr, [x8]
		0000000000021d30:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x68
   21d34: 94000000     	bl	0x21d34 <syna_spi_probe+0x674>
		0000000000021d34:  R_AARCH64_CALL26	of_find_property
   21d38: b4000160     	cbz	x0, 0x21d64 <syna_spi_probe+0x6a4>
   21d3c: b9400808     	ldr	w8, [x0, #0x8]
   21d40: 34000128     	cbz	w8, 0x21d64 <syna_spi_probe+0x6a4>
   21d44: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e08
   21d48: 91000021     	add	x1, x1, #0x0
		0000000000021d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e08
   21d4c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d4c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   21d50: 91000042     	add	x2, x2, #0x0
		0000000000021d50:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x68
   21d54: aa1403e0     	mov	x0, x20
   21d58: 52800023     	mov	w3, #0x1                // =1
   21d5c: aa1f03e4     	mov	x4, xzr
   21d60: 94000000     	bl	0x21d60 <syna_spi_probe+0x6a0>
		0000000000021d60:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21d64: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d64:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   21d68: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab3d
   21d6c: 91000021     	add	x1, x1, #0x0
		0000000000021d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab3d
   21d70: aa1403e0     	mov	x0, x20
   21d74: aa1f03e2     	mov	x2, xzr
   21d78: b900011f     	str	wzr, [x8]
		0000000000021d78:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x60
   21d7c: 94000000     	bl	0x21d7c <syna_spi_probe+0x6bc>
		0000000000021d7c:  R_AARCH64_CALL26	of_find_property
   21d80: b4000160     	cbz	x0, 0x21dac <syna_spi_probe+0x6ec>
   21d84: b9400808     	ldr	w8, [x0, #0x8]
   21d88: 34000128     	cbz	w8, 0x21dac <syna_spi_probe+0x6ec>
   21d8c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab3d
   21d90: 91000021     	add	x1, x1, #0x0
		0000000000021d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab3d
   21d94: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021d94:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   21d98: 91000042     	add	x2, x2, #0x0
		0000000000021d98:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   21d9c: aa1403e0     	mov	x0, x20
   21da0: 52800023     	mov	w3, #0x1                // =1
   21da4: aa1f03e4     	mov	x4, xzr
   21da8: 94000000     	bl	0x21da8 <syna_spi_probe+0x6e8>
		0000000000021da8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21dac: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e6
   21db0: 91000021     	add	x1, x1, #0x0
		0000000000021db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e6
   21db4: aa1403e0     	mov	x0, x20
   21db8: aa1f03e2     	mov	x2, xzr
   21dbc: 94000000     	bl	0x21dbc <syna_spi_probe+0x6fc>
		0000000000021dbc:  R_AARCH64_CALL26	of_find_property
   21dc0: b40001e0     	cbz	x0, 0x21dfc <syna_spi_probe+0x73c>
   21dc4: b9400808     	ldr	w8, [x0, #0x8]
   21dc8: 340001a8     	cbz	w8, 0x21dfc <syna_spi_probe+0x73c>
   21dcc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e6
   21dd0: 91000021     	add	x1, x1, #0x0
		0000000000021dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e6
   21dd4: 910043e2     	add	x2, sp, #0x10
   21dd8: aa1403e0     	mov	x0, x20
   21ddc: 52800043     	mov	w3, #0x2                // =2
   21de0: aa1f03e4     	mov	x4, xzr
   21de4: 94000000     	bl	0x21de4 <syna_spi_probe+0x724>
		0000000000021de4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21de8: 37f800a0     	tbnz	w0, #0x1f, 0x21dfc <syna_spi_probe+0x73c>
   21dec: 294227e8     	ldp	w8, w9, [sp, #0x10]
   21df0: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021df0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14
   21df4: 9100014a     	add	x10, x10, #0x0
		0000000000021df4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14
   21df8: 29002548     	stp	w8, w9, [x10]
   21dfc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19387
   21e00: 91000021     	add	x1, x1, #0x0
		0000000000021e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19387
   21e04: aa1403e0     	mov	x0, x20
   21e08: aa1f03e2     	mov	x2, xzr
   21e0c: 94000000     	bl	0x21e0c <syna_spi_probe+0x74c>
		0000000000021e0c:  R_AARCH64_CALL26	of_find_property
   21e10: b4000220     	cbz	x0, 0x21e54 <syna_spi_probe+0x794>
   21e14: b9400808     	ldr	w8, [x0, #0x8]
   21e18: 340001e8     	cbz	w8, 0x21e54 <syna_spi_probe+0x794>
   21e1c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a335
   21e20: 91000021     	add	x1, x1, #0x0
		0000000000021e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a335
   21e24: 910043e2     	add	x2, sp, #0x10
   21e28: aa1403e0     	mov	x0, x20
   21e2c: 52800063     	mov	w3, #0x3                // =3
   21e30: aa1f03e4     	mov	x4, xzr
   21e34: 94000000     	bl	0x21e34 <syna_spi_probe+0x774>
		0000000000021e34:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21e38: 37f800e0     	tbnz	w0, #0x1f, 0x21e54 <syna_spi_probe+0x794>
   21e3c: f9400be8     	ldr	x8, [sp, #0x10]
   21e40: b9401be9     	ldr	w9, [sp, #0x18]
   21e44: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e44:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x170
   21e48: 9100014a     	add	x10, x10, #0x0
		0000000000021e48:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x170
   21e4c: f9000148     	str	x8, [x10]
   21e50: b9000949     	str	w9, [x10, #0x8]
   21e54: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1754b
   21e58: 91000021     	add	x1, x1, #0x0
		0000000000021e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1754b
   21e5c: aa1403e0     	mov	x0, x20
   21e60: aa1f03e2     	mov	x2, xzr
   21e64: 94000000     	bl	0x21e64 <syna_spi_probe+0x7a4>
		0000000000021e64:  R_AARCH64_CALL26	of_find_property
   21e68: b4000160     	cbz	x0, 0x21e94 <syna_spi_probe+0x7d4>
   21e6c: b9400808     	ldr	w8, [x0, #0x8]
   21e70: 34000128     	cbz	w8, 0x21e94 <syna_spi_probe+0x7d4>
   21e74: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1754b
   21e78: 91000021     	add	x1, x1, #0x0
		0000000000021e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1754b
   21e7c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e7c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x158
   21e80: 91000042     	add	x2, x2, #0x0
		0000000000021e80:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x158
   21e84: aa1403e0     	mov	x0, x20
   21e88: 52800023     	mov	w3, #0x1                // =1
   21e8c: aa1f03e4     	mov	x4, xzr
   21e90: 94000000     	bl	0x21e90 <syna_spi_probe+0x7d0>
		0000000000021e90:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21e94: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c658
   21e98: 91000021     	add	x1, x1, #0x0
		0000000000021e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c658
   21e9c: aa1403e0     	mov	x0, x20
   21ea0: aa1f03e2     	mov	x2, xzr
   21ea4: 94000000     	bl	0x21ea4 <syna_spi_probe+0x7e4>
		0000000000021ea4:  R_AARCH64_CALL26	of_find_property
   21ea8: b4000160     	cbz	x0, 0x21ed4 <syna_spi_probe+0x814>
   21eac: b9400808     	ldr	w8, [x0, #0x8]
   21eb0: 34000128     	cbz	w8, 0x21ed4 <syna_spi_probe+0x814>
   21eb4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c658
   21eb8: 91000021     	add	x1, x1, #0x0
		0000000000021eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c658
   21ebc: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ebc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x15c
   21ec0: 91000042     	add	x2, x2, #0x0
		0000000000021ec0:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x15c
   21ec4: aa1403e0     	mov	x0, x20
   21ec8: 52800023     	mov	w3, #0x1                // =1
   21ecc: aa1f03e4     	mov	x4, xzr
   21ed0: 94000000     	bl	0x21ed0 <syna_spi_probe+0x810>
		0000000000021ed0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21ed4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab50
   21ed8: 91000021     	add	x1, x1, #0x0
		0000000000021ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab50
   21edc: aa1403e0     	mov	x0, x20
   21ee0: aa1f03e2     	mov	x2, xzr
   21ee4: 94000000     	bl	0x21ee4 <syna_spi_probe+0x824>
		0000000000021ee4:  R_AARCH64_CALL26	of_find_property
   21ee8: b40001e0     	cbz	x0, 0x21f24 <syna_spi_probe+0x864>
   21eec: b9400808     	ldr	w8, [x0, #0x8]
   21ef0: 340001a8     	cbz	w8, 0x21f24 <syna_spi_probe+0x864>
   21ef4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab50
   21ef8: 91000021     	add	x1, x1, #0x0
		0000000000021ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab50
   21efc: 910043e2     	add	x2, sp, #0x10
   21f00: aa1403e0     	mov	x0, x20
   21f04: 52800043     	mov	w3, #0x2                // =2
   21f08: aa1f03e4     	mov	x4, xzr
   21f0c: 94000000     	bl	0x21f0c <syna_spi_probe+0x84c>
		0000000000021f0c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21f10: 37f800a0     	tbnz	w0, #0x1f, 0x21f24 <syna_spi_probe+0x864>
   21f14: 294227e8     	ldp	w8, w9, [sp, #0x10]
   21f18: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f18:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x160
   21f1c: 9100014a     	add	x10, x10, #0x0
		0000000000021f1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x160
   21f20: 29002548     	stp	w8, w9, [x10]
   21f24: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a59b
   21f28: 91000021     	add	x1, x1, #0x0
		0000000000021f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a59b
   21f2c: aa1403e0     	mov	x0, x20
   21f30: aa1f03e2     	mov	x2, xzr
   21f34: 94000000     	bl	0x21f34 <syna_spi_probe+0x874>
		0000000000021f34:  R_AARCH64_CALL26	of_find_property
   21f38: b4000160     	cbz	x0, 0x21f64 <syna_spi_probe+0x8a4>
   21f3c: b9400808     	ldr	w8, [x0, #0x8]
   21f40: 34000128     	cbz	w8, 0x21f64 <syna_spi_probe+0x8a4>
   21f44: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a59b
   21f48: 91000021     	add	x1, x1, #0x0
		0000000000021f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a59b
   21f4c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f4c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x168
   21f50: 91000042     	add	x2, x2, #0x0
		0000000000021f50:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x168
   21f54: aa1403e0     	mov	x0, x20
   21f58: 52800023     	mov	w3, #0x1                // =1
   21f5c: aa1f03e4     	mov	x4, xzr
   21f60: 94000000     	bl	0x21f60 <syna_spi_probe+0x8a0>
		0000000000021f60:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21f64: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8fb
   21f68: 91000021     	add	x1, x1, #0x0
		0000000000021f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8fb
   21f6c: aa1403e0     	mov	x0, x20
   21f70: aa1f03e2     	mov	x2, xzr
   21f74: 94000000     	bl	0x21f74 <syna_spi_probe+0x8b4>
		0000000000021f74:  R_AARCH64_CALL26	of_find_property
   21f78: b4000160     	cbz	x0, 0x21fa4 <syna_spi_probe+0x8e4>
   21f7c: b9400808     	ldr	w8, [x0, #0x8]
   21f80: 34000128     	cbz	w8, 0x21fa4 <syna_spi_probe+0x8e4>
   21f84: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8fb
   21f88: 91000021     	add	x1, x1, #0x0
		0000000000021f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8fb
   21f8c: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021f8c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x16c
   21f90: 91000042     	add	x2, x2, #0x0
		0000000000021f90:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x16c
   21f94: aa1403e0     	mov	x0, x20
   21f98: 52800023     	mov	w3, #0x1                // =1
   21f9c: aa1f03e4     	mov	x4, xzr
   21fa0: 94000000     	bl	0x21fa0 <syna_spi_probe+0x8e0>
		0000000000021fa0:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21fa4: 90000018     	adrp	x24, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021fa4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   21fa8: 91000318     	add	x24, x24, #0x0
		0000000000021fa8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if
   21fac: 90000014     	adrp	x20, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c11b
   21fb0: 91000294     	add	x20, x20, #0x0
		0000000000021fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c11b
   21fb4: b9412306     	ldr	w6, [x24, #0x120]
   21fb8: b9412707     	ldr	w7, [x24, #0x124]
   21fbc: 29428f02     	ldp	w2, w3, [x24, #0x14]
   21fc0: 295f1305     	ldp	w5, w4, [x24, #0xf8]
   21fc4: b9414b08     	ldr	w8, [x24, #0x148]
   21fc8: b9414f09     	ldr	w9, [x24, #0x14c]
   21fcc: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196b7
   21fd0: 91000000     	add	x0, x0, #0x0
		0000000000021fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196b7
   21fd4: aa1403e1     	mov	x1, x20
   21fd8: b9000be9     	str	w9, [sp, #0x8]
   21fdc: b90003e8     	str	w8, [sp]
   21fe0: 94000000     	bl	0x21fe0 <syna_spi_probe+0x920>
		0000000000021fe0:  R_AARCH64_CALL26	_printk
   21fe4: b9415b02     	ldr	w2, [x24, #0x158]
   21fe8: b9416303     	ldr	w3, [x24, #0x160]
   21fec: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1acc>
		0000000000021fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae7e
   21ff0: 91000000     	add	x0, x0, #0x0
		0000000000021ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae7e
   21ff4: b9416704     	ldr	w4, [x24, #0x164]
   21ff8: b9416b05     	ldr	w5, [x24, #0x168]
   21ffc: aa1403e1     	mov	x1, x20
   22000: 94000000     	bl	0x22000 <syna_spi_probe+0x940>
		0000000000022000:  R_AARCH64_CALL26	_printk
   22004: b9417302     	ldr	w2, [x24, #0x170]
   22008: b9417703     	ldr	w3, [x24, #0x174]
   2200c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		000000000002200c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c91b
   22010: 91000000     	add	x0, x0, #0x0
		0000000000022010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c91b
   22014: b9417b04     	ldr	w4, [x24, #0x178]
   22018: b9416f05     	ldr	w5, [x24, #0x16c]
   2201c: aa1403e1     	mov	x1, x20
   22020: 94000000     	bl	0x22020 <syna_spi_probe+0x960>
		0000000000022020:  R_AARCH64_CALL26	_printk
   22024: aa1303e0     	mov	x0, x19
   22028: 94000000     	bl	0x22028 <syna_spi_probe+0x968>
		0000000000022028:  R_AARCH64_CALL26	syna_ts_check_dt
   2202c: 90000014     	adrp	x20, 0x22000 <syna_spi_probe+0x940>
		000000000002202c:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   22030: a9006313     	stp	x19, x24, [x24]
   22034: f9400288     	ldr	x8, [x20]
		0000000000022034:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22038: f9003913     	str	x19, [x8, #0x70]
   2203c: f9005118     	str	x24, [x8, #0xa0]
   22040: b9412b09     	ldr	w9, [x24, #0x128]
   22044: 340005c9     	cbz	w9, 0x220fc <syna_spi_probe+0xa3c>
   22048: b94002aa     	ldr	w10, [x21]
		0000000000022048:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   2204c: 3400068a     	cbz	w10, 0x2211c <syna_spi_probe+0xa5c>
   22050: 7100053f     	cmp	w9, #0x1
   22054: 540002e1     	b.ne	0x220b0 <syna_spi_probe+0x9f0>
   22058: f94002e1     	ldr	x1, [x23]
		0000000000022058:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   2205c: b4001de1     	cbz	x1, 0x22418 <syna_spi_probe+0xd58>
   22060: 39400029     	ldrb	w9, [x1]
   22064: 34001da9     	cbz	w9, 0x22418 <syna_spi_probe+0xd58>
   22068: 39400029     	ldrb	w9, [x1]
   2206c: 34000669     	cbz	w9, 0x22138 <syna_spi_probe+0xa78>
   22070: f9403900     	ldr	x0, [x8, #0x70]
   22074: 94000000     	bl	0x22074 <syna_spi_probe+0x9b4>
		0000000000022074:  R_AARCH64_CALL26	devm_regulator_get
   22078: b13ffc1f     	cmn	x0, #0xfff
   2207c: 54000603     	b.lo	0x2213c <syna_spi_probe+0xa7c>
   22080: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c358
   22084: 91000108     	add	x8, x8, #0x0
		0000000000022084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c358
   22088: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0f7
   2208c: 91000021     	add	x1, x1, #0x0
		000000000002208c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0f7
   22090: aa0003f3     	mov	x19, x0
   22094: aa0803e0     	mov	x0, x8
   22098: 94000000     	bl	0x22098 <syna_spi_probe+0x9d8>
		0000000000022098:  R_AARCH64_CALL26	_printk
   2209c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002209c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   220a0: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000220a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5b6
   220a4: 91000000     	add	x0, x0, #0x0
		00000000000220a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5b6
   220a8: f9000113     	str	x19, [x8]
		00000000000220a8:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   220ac: 140000e0     	b	0x2242c <syna_spi_probe+0xd6c>
   220b0: 540004ab     	b.lt	0x22144 <syna_spi_probe+0xa84>
   220b4: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000220b4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   220b8: b9400100     	ldr	w0, [x8]
		00000000000220b8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   220bc: 7100041f     	cmp	w0, #0x1
   220c0: 5400042b     	b.lt	0x22144 <syna_spi_probe+0xa84>
   220c4: b9400328     	ldr	w8, [x25]
		00000000000220c4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   220c8: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x940>
		00000000000220c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6372
   220cc: 91000063     	add	x3, x3, #0x0
		00000000000220cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6372
   220d0: 52800021     	mov	w1, #0x1                // =1
   220d4: 7100011f     	cmp	w8, #0x0
   220d8: 1a9f17e2     	cset	w2, eq
   220dc: 94000000     	bl	0x220dc <syna_spi_probe+0xa1c>
		00000000000220dc:  R_AARCH64_CALL26	syna_spi_get_gpio
   220e0: 36f80320     	tbz	w0, #0x1f, 0x22144 <syna_spi_probe+0xa84>
   220e4: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000220e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   220e8: 2a0003f3     	mov	w19, w0
   220ec: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000220ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a032
   220f0: 91000000     	add	x0, x0, #0x0
		00000000000220f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a032
   220f4: b9400102     	ldr	w2, [x8]
		00000000000220f4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   220f8: 1400003f     	b	0x221f4 <syna_spi_probe+0xb34>
   220fc: f94002e9     	ldr	x9, [x23]
		00000000000220fc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   22100: b4fffa49     	cbz	x9, 0x22048 <syna_spi_probe+0x988>
   22104: 39400129     	ldrb	w9, [x9]
   22108: 34fffa09     	cbz	w9, 0x22048 <syna_spi_probe+0x988>
   2210c: 52800029     	mov	w9, #0x1                // =1
   22110: 9000000a     	adrp	x10, 0x22000 <syna_spi_probe+0x940>
		0000000000022110:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   22114: b9000149     	str	w9, [x10]
		0000000000022114:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   22118: 17ffffcc     	b	0x22048 <syna_spi_probe+0x988>
   2211c: f940034a     	ldr	x10, [x26]
		000000000002211c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   22120: b4fff98a     	cbz	x10, 0x22050 <syna_spi_probe+0x990>
   22124: 3940014a     	ldrb	w10, [x10]
   22128: 34fff94a     	cbz	w10, 0x22050 <syna_spi_probe+0x990>
   2212c: 5280002a     	mov	w10, #0x1               // =1
   22130: b90002aa     	str	w10, [x21]
		0000000000022130:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22134: 17ffffc7     	b	0x22050 <syna_spi_probe+0x990>
   22138: aa1f03e0     	mov	x0, xzr
   2213c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002213c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   22140: f9000100     	str	x0, [x8]
		0000000000022140:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   22144: b94002a8     	ldr	w8, [x21]
		0000000000022144:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22148: 7100051f     	cmp	w8, #0x1
   2214c: 54000301     	b.ne	0x221ac <syna_spi_probe+0xaec>
   22150: f9400341     	ldr	x1, [x26]
		0000000000022150:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   22154: b4001681     	cbz	x1, 0x22424 <syna_spi_probe+0xd64>
   22158: 39400028     	ldrb	w8, [x1]
   2215c: 34001648     	cbz	w8, 0x22424 <syna_spi_probe+0xd64>
   22160: 39400028     	ldrb	w8, [x1]
   22164: 34000508     	cbz	w8, 0x22204 <syna_spi_probe+0xb44>
   22168: f9400288     	ldr	x8, [x20]
		0000000000022168:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2216c: f9403900     	ldr	x0, [x8, #0x70]
   22170: 94000000     	bl	0x22170 <syna_spi_probe+0xab0>
		0000000000022170:  R_AARCH64_CALL26	devm_regulator_get
   22174: b13ffc1f     	cmn	x0, #0xfff
   22178: 54000483     	b.lo	0x22208 <syna_spi_probe+0xb48>
   2217c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002217c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c358
   22180: 91000108     	add	x8, x8, #0x0
		0000000000022180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c358
   22184: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0f7
   22188: 91000021     	add	x1, x1, #0x0
		0000000000022188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0f7
   2218c: aa0003f3     	mov	x19, x0
   22190: aa0803e0     	mov	x0, x8
   22194: 94000000     	bl	0x22194 <syna_spi_probe+0xad4>
		0000000000022194:  R_AARCH64_CALL26	_printk
   22198: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022198:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   2219c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		000000000002219c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18814
   221a0: 91000000     	add	x0, x0, #0x0
		00000000000221a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18814
   221a4: f9000113     	str	x19, [x8]
		00000000000221a4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   221a8: 140000a1     	b	0x2242c <syna_spi_probe+0xd6c>
   221ac: 5400032b     	b.lt	0x22210 <syna_spi_probe+0xb50>
   221b0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000221b0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   221b4: b9400100     	ldr	w0, [x8]
		00000000000221b4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   221b8: 7100041f     	cmp	w0, #0x1
   221bc: 540002ab     	b.lt	0x22210 <syna_spi_probe+0xb50>
   221c0: b9400328     	ldr	w8, [x25]
		00000000000221c0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   221c4: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x940>
		00000000000221c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6392
   221c8: 91000063     	add	x3, x3, #0x0
		00000000000221c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6392
   221cc: 52800021     	mov	w1, #0x1                // =1
   221d0: 7100011f     	cmp	w8, #0x0
   221d4: 1a9f17e2     	cset	w2, eq
   221d8: 94000000     	bl	0x221d8 <syna_spi_probe+0xb18>
		00000000000221d8:  R_AARCH64_CALL26	syna_spi_get_gpio
   221dc: 36f801a0     	tbz	w0, #0x1f, 0x22210 <syna_spi_probe+0xb50>
   221e0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000221e0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   221e4: 2a0003f3     	mov	w19, w0
   221e8: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000221e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e25
   221ec: 91000000     	add	x0, x0, #0x0
		00000000000221ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e25
   221f0: b9400102     	ldr	w2, [x8]
		00000000000221f0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   221f4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000221f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18083
   221f8: 91000021     	add	x1, x1, #0x0
		00000000000221f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18083
   221fc: 94000000     	bl	0x221fc <syna_spi_probe+0xb3c>
		00000000000221fc:  R_AARCH64_CALL26	_printk
   22200: 1400008f     	b	0x2243c <syna_spi_probe+0xd7c>
   22204: aa1f03e0     	mov	x0, xzr
   22208: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022208:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   2220c: f9000100     	str	x0, [x8]
		000000000002220c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22210: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022210:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   22214: f9400113     	ldr	x19, [x8]
		0000000000022214:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if
   22218: b40011f3     	cbz	x19, 0x22454 <syna_spi_probe+0xd94>
   2221c: 90000017     	adrp	x23, 0x22000 <syna_spi_probe+0x940>
		000000000002221c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   22220: 910002f7     	add	x23, x23, #0x0
		0000000000022220:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   22224: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   22228: 91000021     	add	x1, x1, #0x0
		0000000000022228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   2222c: 90000002     	adrp	x2, 0x22000 <syna_spi_probe+0x940>
		000000000002222c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d2
   22230: 91000042     	add	x2, x2, #0x0
		0000000000022230:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d2
   22234: 910042e0     	add	x0, x23, #0x10
   22238: 94000000     	bl	0x22238 <syna_spi_probe+0xb78>
		0000000000022238:  R_AARCH64_CALL26	__mutex_init
   2223c: b94002e8     	ldr	w8, [x23]
   22240: 52800109     	mov	w9, #0x8                // =8
   22244: 390eb269     	strb	w9, [x19, #0x3ac]
   22248: 71000d1f     	cmp	w8, #0x3
   2224c: 54000048     	b.hi	0x22254 <syna_spi_probe+0xb94>
   22250: b903b268     	str	w8, [x19, #0x3b0]
   22254: aa1303e0     	mov	x0, x19
   22258: 94000000     	bl	0x22258 <syna_spi_probe+0xb98>
		0000000000022258:  R_AARCH64_CALL26	spi_setup
   2225c: 37f81000     	tbnz	w0, #0x1f, 0x2245c <syna_spi_probe+0xd9c>
   22260: d503201f     	nop
   22264: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022264:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   22268: 5281b801     	mov	w1, #0xdc0              // =3520
   2226c: 52800102     	mov	w2, #0x8                // =8
   22270: f9400100     	ldr	x0, [x8]
		0000000000022270:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   22274: 94000000     	bl	0x22274 <syna_spi_probe+0xbb4>
		0000000000022274:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   22278: b4002480     	cbz	x0, 0x22708 <syna_spi_probe+0x1048>
   2227c: b94002c8     	ldr	w8, [x22]
		000000000002227c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   22280: 52807fc9     	mov	w9, #0x3fe              // =1022
   22284: b9000009     	str	w9, [x0]
   22288: 7100051f     	cmp	w8, #0x1
   2228c: f901e260     	str	x0, [x19, #0x3c0]
   22290: 5400012b     	b.lt	0x222b4 <syna_spi_probe+0xbf4>
   22294: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		0000000000022294:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   22298: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x940>
		0000000000022298:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63b2
   2229c: 91000063     	add	x3, x3, #0x0
		000000000002229c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63b2
   222a0: b9400122     	ldr	w2, [x9]
		00000000000222a0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa4
   222a4: 2a0803e0     	mov	w0, w8
   222a8: 52800021     	mov	w1, #0x1                // =1
   222ac: 94000000     	bl	0x222ac <syna_spi_probe+0xbec>
		00000000000222ac:  R_AARCH64_CALL26	syna_spi_get_gpio
   222b0: 37f80e40     	tbnz	w0, #0x1f, 0x22478 <syna_spi_probe+0xdb8>
   222b4: b9400380     	ldr	w0, [x28]
		00000000000222b4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   222b8: 7100041f     	cmp	w0, #0x1
   222bc: 540000eb     	b.lt	0x222d8 <syna_spi_probe+0xc18>
   222c0: b9400362     	ldr	w2, [x27]
		00000000000222c0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   222c4: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x940>
		00000000000222c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d3
   222c8: 91000063     	add	x3, x3, #0x0
		00000000000222c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d3
   222cc: 52800021     	mov	w1, #0x1                // =1
   222d0: 94000000     	bl	0x222d0 <syna_spi_probe+0xc10>
		00000000000222d0:  R_AARCH64_CALL26	syna_spi_get_gpio
   222d4: 37f80e20     	tbnz	w0, #0x1f, 0x22498 <syna_spi_probe+0xdd8>
   222d8: 90000017     	adrp	x23, 0x22000 <syna_spi_probe+0x940>
		00000000000222d8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   222dc: 910002f7     	add	x23, x23, #0x0
		00000000000222dc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa8
   222e0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000222e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   222e4: 91000021     	add	x1, x1, #0x0
		00000000000222e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   222e8: 90000002     	adrp	x2, 0x22000 <syna_spi_probe+0x940>
		00000000000222e8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d2
   222ec: 91000042     	add	x2, x2, #0x0
		00000000000222ec:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d2
   222f0: 910062e0     	add	x0, x23, #0x18
   222f4: 94000000     	bl	0x222f4 <syna_spi_probe+0xc34>
		00000000000222f4:  R_AARCH64_CALL26	__mutex_init
   222f8: b94002e0     	ldr	w0, [x23]
   222fc: 7100041f     	cmp	w0, #0x1
   22300: 5400088b     	b.lt	0x22410 <syna_spi_probe+0xd50>
   22304: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x940>
		0000000000022304:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63f3
   22308: 91000063     	add	x3, x3, #0x0
		0000000000022308:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63f3
   2230c: 2a1f03e1     	mov	w1, wzr
   22310: 2a1f03e2     	mov	w2, wzr
   22314: 94000000     	bl	0x22314 <syna_spi_probe+0xc54>
		0000000000022314:  R_AARCH64_CALL26	syna_spi_get_gpio
   22318: 2a0003e8     	mov	w8, w0
   2231c: 2a1f03e0     	mov	w0, wzr
   22320: 36f82468     	tbz	w8, #0x1f, 0x227ac <syna_spi_probe+0x10ec>
   22324: b94002e2     	ldr	w2, [x23]
   22328: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   2232c: 91000000     	add	x0, x0, #0x0
		000000000002232c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   22330: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19716
   22334: 91000021     	add	x1, x1, #0x0
		0000000000022334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19716
   22338: 2a0803f3     	mov	w19, w8
   2233c: 94000000     	bl	0x2233c <syna_spi_probe+0xc7c>
		000000000002233c:  R_AARCH64_CALL26	_printk
   22340: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8c8
   22344: 91000000     	add	x0, x0, #0x0
		0000000000022344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8c8
   22348: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022348:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   2234c: 91000021     	add	x1, x1, #0x0
		000000000002234c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   22350: 94000000     	bl	0x22350 <syna_spi_probe+0xc90>
		0000000000022350:  R_AARCH64_CALL26	_printk
   22354: b9404ae0     	ldr	w0, [x23, #0x48]
   22358: 7100041f     	cmp	w0, #0x1
   2235c: 5400004b     	b.lt	0x22364 <syna_spi_probe+0xca4>
   22360: 94000000     	bl	0x22360 <syna_spi_probe+0xca0>
		0000000000022360:  R_AARCH64_CALL26	gpio_free
   22364: b94002c0     	ldr	w0, [x22]
		0000000000022364:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   22368: 7100041f     	cmp	w0, #0x1
   2236c: 5400004b     	b.lt	0x22374 <syna_spi_probe+0xcb4>
   22370: 94000000     	bl	0x22370 <syna_spi_probe+0xcb0>
		0000000000022370:  R_AARCH64_CALL26	gpio_free
   22374: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		0000000000022374:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   22378: f94002c1     	ldr	x1, [x22]
		0000000000022378:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   2237c: b40000e1     	cbz	x1, 0x22398 <syna_spi_probe+0xcd8>
   22380: f9400288     	ldr	x8, [x20]
		0000000000022380:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22384: b4001868     	cbz	x8, 0x22690 <syna_spi_probe+0xfd0>
   22388: f9403900     	ldr	x0, [x8, #0x70]
   2238c: b4001820     	cbz	x0, 0x22690 <syna_spi_probe+0xfd0>
   22390: 94000000     	bl	0x22390 <syna_spi_probe+0xcd0>
		0000000000022390:  R_AARCH64_CALL26	devm_kfree
   22394: f90002df     	str	xzr, [x22]
		0000000000022394:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   22398: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		0000000000022398:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   2239c: 2a1303e8     	mov	w8, w19
   223a0: f94002c1     	ldr	x1, [x22]
		00000000000223a0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   223a4: b4000101     	cbz	x1, 0x223c4 <syna_spi_probe+0xd04>
   223a8: f9400288     	ldr	x8, [x20]
		00000000000223a8:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   223ac: b40017e8     	cbz	x8, 0x226a8 <syna_spi_probe+0xfe8>
   223b0: f9403900     	ldr	x0, [x8, #0x70]
   223b4: b40017a0     	cbz	x0, 0x226a8 <syna_spi_probe+0xfe8>
   223b8: 94000000     	bl	0x223b8 <syna_spi_probe+0xcf8>
		00000000000223b8:  R_AARCH64_CALL26	devm_kfree
   223bc: 2a1303e8     	mov	w8, w19
   223c0: f90002df     	str	xzr, [x22]
		00000000000223c0:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   223c4: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		00000000000223c4:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   223c8: f94002c1     	ldr	x1, [x22]
		00000000000223c8:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   223cc: b4000101     	cbz	x1, 0x223ec <syna_spi_probe+0xd2c>
   223d0: f9400288     	ldr	x8, [x20]
		00000000000223d0:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   223d4: b4001768     	cbz	x8, 0x226c0 <syna_spi_probe+0x1000>
   223d8: f9403900     	ldr	x0, [x8, #0x70]
   223dc: b4001720     	cbz	x0, 0x226c0 <syna_spi_probe+0x1000>
   223e0: 94000000     	bl	0x223e0 <syna_spi_probe+0xd20>
		00000000000223e0:  R_AARCH64_CALL26	devm_kfree
   223e4: 2a1303e8     	mov	w8, w19
   223e8: f90002df     	str	xzr, [x22]
		00000000000223e8:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   223ec: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		00000000000223ec:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   223f0: b9400129     	ldr	w9, [x9]
		00000000000223f0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   223f4: 7100053f     	cmp	w9, #0x1
   223f8: 54000f61     	b.ne	0x225e4 <syna_spi_probe+0xf24>
   223fc: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		00000000000223fc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   22400: f9400120     	ldr	x0, [x9]
		0000000000022400:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   22404: b4000fe0     	cbz	x0, 0x22600 <syna_spi_probe+0xf40>
   22408: 94000000     	bl	0x22408 <syna_spi_probe+0xd48>
		0000000000022408:  R_AARCH64_CALL26	devm_regulator_put
   2240c: 1400007c     	b	0x225fc <syna_spi_probe+0xf3c>
   22410: 2a1f03e0     	mov	w0, wzr
   22414: 140000e6     	b	0x227ac <syna_spi_probe+0x10ec>
   22418: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18380
   2241c: 91000000     	add	x0, x0, #0x0
		000000000002241c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18380
   22420: 14000003     	b	0x2242c <syna_spi_probe+0xd6c>
   22424: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab70
   22428: 91000000     	add	x0, x0, #0x0
		0000000000022428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab70
   2242c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		000000000002242c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18083
   22430: 91000021     	add	x1, x1, #0x0
		0000000000022430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18083
   22434: 94000000     	bl	0x22434 <syna_spi_probe+0xd74>
		0000000000022434:  R_AARCH64_CALL26	_printk
   22438: 128000b3     	mov	w19, #-0x6              // =-6
   2243c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		000000000002243c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82c
   22440: 91000000     	add	x0, x0, #0x0
		0000000000022440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82c
   22444: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   22448: 91000021     	add	x1, x1, #0x0
		0000000000022448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   2244c: 94000000     	bl	0x2244c <syna_spi_probe+0xd8c>
		000000000002244c:  R_AARCH64_CALL26	_printk
   22450: 140000d6     	b	0x227a8 <syna_spi_probe+0x10e8>
   22454: 128002b3     	mov	w19, #-0x16             // =-22
   22458: 140000b2     	b	0x22720 <syna_spi_probe+0x1060>
   2245c: 2a0003f3     	mov	w19, w0
   22460: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19caa
   22464: 91000000     	add	x0, x0, #0x0
		0000000000022464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19caa
   22468: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   2246c: 91000021     	add	x1, x1, #0x0
		000000000002246c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   22470: 94000000     	bl	0x22470 <syna_spi_probe+0xdb0>
		0000000000022470:  R_AARCH64_CALL26	_printk
   22474: 140000ab     	b	0x22720 <syna_spi_probe+0x1060>
   22478: b94002c2     	ldr	w2, [x22]
		0000000000022478:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   2247c: 2a0003f3     	mov	w19, w0
   22480: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e73
   22484: 91000000     	add	x0, x0, #0x0
		0000000000022484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e73
   22488: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   2248c: 91000021     	add	x1, x1, #0x0
		000000000002248c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   22490: 94000000     	bl	0x22490 <syna_spi_probe+0xdd0>
		0000000000022490:  R_AARCH64_CALL26	_printk
   22494: 140000a3     	b	0x22720 <syna_spi_probe+0x1060>
   22498: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		0000000000022498:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   2249c: 910002d6     	add	x22, x22, #0x0
		000000000002249c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa0
   224a0: 2a0003f3     	mov	w19, w0
   224a4: b94052c2     	ldr	w2, [x22, #0x50]
   224a8: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000224a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180a4
   224ac: 91000000     	add	x0, x0, #0x0
		00000000000224ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180a4
   224b0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000224b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18845
   224b4: 91000021     	add	x1, x1, #0x0
		00000000000224b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18845
   224b8: 94000000     	bl	0x224b8 <syna_spi_probe+0xdf8>
		00000000000224b8:  R_AARCH64_CALL26	_printk
   224bc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000224bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b85f
   224c0: 91000000     	add	x0, x0, #0x0
		00000000000224c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b85f
   224c4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000224c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   224c8: 91000021     	add	x1, x1, #0x0
		00000000000224c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   224cc: 94000000     	bl	0x224cc <syna_spi_probe+0xe0c>
		00000000000224cc:  R_AARCH64_CALL26	_printk
   224d0: b94002c0     	ldr	w0, [x22]
   224d4: 7100041f     	cmp	w0, #0x1
   224d8: 5400004b     	b.lt	0x224e0 <syna_spi_probe+0xe20>
   224dc: 94000000     	bl	0x224dc <syna_spi_probe+0xe1c>
		00000000000224dc:  R_AARCH64_CALL26	gpio_free
   224e0: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		00000000000224e0:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   224e4: 2a1303e0     	mov	w0, w19
   224e8: f94002c1     	ldr	x1, [x22]
		00000000000224e8:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   224ec: b4000101     	cbz	x1, 0x2250c <syna_spi_probe+0xe4c>
   224f0: f9400288     	ldr	x8, [x20]
		00000000000224f0:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   224f4: b4000aa8     	cbz	x8, 0x22648 <syna_spi_probe+0xf88>
   224f8: f9403900     	ldr	x0, [x8, #0x70]
   224fc: b4000a60     	cbz	x0, 0x22648 <syna_spi_probe+0xf88>
   22500: 94000000     	bl	0x22500 <syna_spi_probe+0xe40>
		0000000000022500:  R_AARCH64_CALL26	devm_kfree
   22504: 2a1303e0     	mov	w0, w19
   22508: f90002df     	str	xzr, [x22]
		0000000000022508:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   2250c: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		000000000002250c:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   22510: f94002c1     	ldr	x1, [x22]
		0000000000022510:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22514: b4000101     	cbz	x1, 0x22534 <syna_spi_probe+0xe74>
   22518: f9400288     	ldr	x8, [x20]
		0000000000022518:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2251c: b4000a28     	cbz	x8, 0x22660 <syna_spi_probe+0xfa0>
   22520: f9403900     	ldr	x0, [x8, #0x70]
   22524: b40009e0     	cbz	x0, 0x22660 <syna_spi_probe+0xfa0>
   22528: 94000000     	bl	0x22528 <syna_spi_probe+0xe68>
		0000000000022528:  R_AARCH64_CALL26	devm_kfree
   2252c: 2a1303e0     	mov	w0, w19
   22530: f90002df     	str	xzr, [x22]
		0000000000022530:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22534: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x940>
		0000000000022534:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22538: f94002c1     	ldr	x1, [x22]
		0000000000022538:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   2253c: b4000101     	cbz	x1, 0x2255c <syna_spi_probe+0xe9c>
   22540: f9400288     	ldr	x8, [x20]
		0000000000022540:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22544: b40009a8     	cbz	x8, 0x22678 <syna_spi_probe+0xfb8>
   22548: f9403900     	ldr	x0, [x8, #0x70]
   2254c: b4000960     	cbz	x0, 0x22678 <syna_spi_probe+0xfb8>
   22550: 94000000     	bl	0x22550 <syna_spi_probe+0xe90>
		0000000000022550:  R_AARCH64_CALL26	devm_kfree
   22554: 2a1303e0     	mov	w0, w19
   22558: f90002df     	str	xzr, [x22]
		0000000000022558:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   2255c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002255c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   22560: b9400108     	ldr	w8, [x8]
		0000000000022560:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   22564: 7100051f     	cmp	w8, #0x1
   22568: 540000e1     	b.ne	0x22584 <syna_spi_probe+0xec4>
   2256c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002256c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   22570: f9400108     	ldr	x8, [x8]
		0000000000022570:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   22574: b4000188     	cbz	x8, 0x225a4 <syna_spi_probe+0xee4>
   22578: aa0803e0     	mov	x0, x8
   2257c: 94000000     	bl	0x2257c <syna_spi_probe+0xebc>
		000000000002257c:  R_AARCH64_CALL26	devm_regulator_put
   22580: 14000008     	b	0x225a0 <syna_spi_probe+0xee0>
   22584: 5400010b     	b.lt	0x225a4 <syna_spi_probe+0xee4>
   22588: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022588:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   2258c: b9400108     	ldr	w8, [x8]
		000000000002258c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   22590: 7100051f     	cmp	w8, #0x1
   22594: 5400008b     	b.lt	0x225a4 <syna_spi_probe+0xee4>
   22598: 2a0803e0     	mov	w0, w8
   2259c: 94000000     	bl	0x2259c <syna_spi_probe+0xedc>
		000000000002259c:  R_AARCH64_CALL26	gpio_free
   225a0: 2a1303e0     	mov	w0, w19
   225a4: b94002a8     	ldr	w8, [x21]
		00000000000225a4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   225a8: 7100051f     	cmp	w8, #0x1
   225ac: 540000e1     	b.ne	0x225c8 <syna_spi_probe+0xf08>
   225b0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000225b0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   225b4: f9400108     	ldr	x8, [x8]
		00000000000225b4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   225b8: b4000fa8     	cbz	x8, 0x227ac <syna_spi_probe+0x10ec>
   225bc: aa0803e0     	mov	x0, x8
   225c0: 94000000     	bl	0x225c0 <syna_spi_probe+0xf00>
		00000000000225c0:  R_AARCH64_CALL26	devm_regulator_put
   225c4: 14000079     	b	0x227a8 <syna_spi_probe+0x10e8>
   225c8: 54000f2b     	b.lt	0x227ac <syna_spi_probe+0x10ec>
   225cc: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000225cc:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   225d0: b9400108     	ldr	w8, [x8]
		00000000000225d0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   225d4: 7100051f     	cmp	w8, #0x1
   225d8: 54000eab     	b.lt	0x227ac <syna_spi_probe+0x10ec>
   225dc: 2a0803e0     	mov	w0, w8
   225e0: 14000071     	b	0x227a4 <syna_spi_probe+0x10e4>
   225e4: 540000eb     	b.lt	0x22600 <syna_spi_probe+0xf40>
   225e8: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		00000000000225e8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   225ec: b9400120     	ldr	w0, [x9]
		00000000000225ec:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   225f0: 7100041f     	cmp	w0, #0x1
   225f4: 5400006b     	b.lt	0x22600 <syna_spi_probe+0xf40>
   225f8: 94000000     	bl	0x225f8 <syna_spi_probe+0xf38>
		00000000000225f8:  R_AARCH64_CALL26	gpio_free
   225fc: 2a1303e8     	mov	w8, w19
   22600: b94002a9     	ldr	w9, [x21]
		0000000000022600:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22604: 7100053f     	cmp	w9, #0x1
   22608: 540000e1     	b.ne	0x22624 <syna_spi_probe+0xf64>
   2260c: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		000000000002260c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   22610: f9400120     	ldr	x0, [x9]
		0000000000022610:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22614: b4000160     	cbz	x0, 0x22640 <syna_spi_probe+0xf80>
   22618: 2a0803f3     	mov	w19, w8
   2261c: 94000000     	bl	0x2261c <syna_spi_probe+0xf5c>
		000000000002261c:  R_AARCH64_CALL26	devm_regulator_put
   22620: 14000062     	b	0x227a8 <syna_spi_probe+0x10e8>
   22624: 540000eb     	b.lt	0x22640 <syna_spi_probe+0xf80>
   22628: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x940>
		0000000000022628:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   2262c: b9400120     	ldr	w0, [x9]
		000000000002262c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   22630: 7100041f     	cmp	w0, #0x1
   22634: 5400006b     	b.lt	0x22640 <syna_spi_probe+0xf80>
   22638: 2a0803f3     	mov	w19, w8
   2263c: 1400005a     	b	0x227a4 <syna_spi_probe+0x10e4>
   22640: 2a0803e0     	mov	w0, w8
   22644: 1400005a     	b	0x227ac <syna_spi_probe+0x10ec>
   22648: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022648:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2264c: 91000000     	add	x0, x0, #0x0
		000000000002264c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   22650: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   22654: 91000021     	add	x1, x1, #0x0
		0000000000022654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   22658: 94000000     	bl	0x22658 <syna_spi_probe+0xf98>
		0000000000022658:  R_AARCH64_CALL26	_printk
   2265c: 17ffffaa     	b	0x22504 <syna_spi_probe+0xe44>
   22660: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   22664: 91000000     	add	x0, x0, #0x0
		0000000000022664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   22668: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2266c: 91000021     	add	x1, x1, #0x0
		000000000002266c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   22670: 94000000     	bl	0x22670 <syna_spi_probe+0xfb0>
		0000000000022670:  R_AARCH64_CALL26	_printk
   22674: 17ffffae     	b	0x2252c <syna_spi_probe+0xe6c>
   22678: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2267c: 91000000     	add	x0, x0, #0x0
		000000000002267c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   22680: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   22684: 91000021     	add	x1, x1, #0x0
		0000000000022684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   22688: 94000000     	bl	0x22688 <syna_spi_probe+0xfc8>
		0000000000022688:  R_AARCH64_CALL26	_printk
   2268c: 17ffffb2     	b	0x22554 <syna_spi_probe+0xe94>
   22690: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   22694: 91000000     	add	x0, x0, #0x0
		0000000000022694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   22698: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   2269c: 91000021     	add	x1, x1, #0x0
		000000000002269c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226a0: 94000000     	bl	0x226a0 <syna_spi_probe+0xfe0>
		00000000000226a0:  R_AARCH64_CALL26	_printk
   226a4: 17ffff3c     	b	0x22394 <syna_spi_probe+0xcd4>
   226a8: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000226a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226ac: 91000000     	add	x0, x0, #0x0
		00000000000226ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226b0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000226b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226b4: 91000021     	add	x1, x1, #0x0
		00000000000226b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226b8: 94000000     	bl	0x226b8 <syna_spi_probe+0xff8>
		00000000000226b8:  R_AARCH64_CALL26	_printk
   226bc: 17ffff40     	b	0x223bc <syna_spi_probe+0xcfc>
   226c0: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		00000000000226c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226c4: 91000000     	add	x0, x0, #0x0
		00000000000226c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226c8: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		00000000000226c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226cc: 91000021     	add	x1, x1, #0x0
		00000000000226cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226d0: 94000000     	bl	0x226d0 <syna_spi_probe+0x1010>
		00000000000226d0:  R_AARCH64_CALL26	_printk
   226d4: 17ffff44     	b	0x223e4 <syna_spi_probe+0xd24>
   226d8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000226d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   226dc: d5384117     	mrs	x23, SP_EL0
   226e0: f9402af8     	ldr	x24, [x23, #0x50]
   226e4: f9400100     	ldr	x0, [x8]
		00000000000226e4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   226e8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		00000000000226e8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xef0
   226ec: 91000108     	add	x8, x8, #0x0
		00000000000226ec:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xef0
   226f0: 5281b801     	mov	w1, #0xdc0              // =3520
   226f4: 52800102     	mov	w2, #0x8                // =8
   226f8: f9002ae8     	str	x8, [x23, #0x50]
   226fc: 94000000     	bl	0x226fc <syna_spi_probe+0x103c>
		00000000000226fc:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   22700: f9002af8     	str	x24, [x23, #0x50]
   22704: b5ffdbc0     	cbnz	x0, 0x2227c <syna_spi_probe+0xbbc>
   22708: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a061
   2270c: 91000000     	add	x0, x0, #0x0
		000000000002270c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a061
   22710: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   22714: 91000021     	add	x1, x1, #0x0
		0000000000022714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   22718: 94000000     	bl	0x22718 <syna_spi_probe+0x1058>
		0000000000022718:  R_AARCH64_CALL26	_printk
   2271c: 12800173     	mov	w19, #-0xc              // =-12
   22720: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x940>
		0000000000022720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c53
   22724: 91000000     	add	x0, x0, #0x0
		0000000000022724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c53
   22728: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x940>
		0000000000022728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   2272c: 91000021     	add	x1, x1, #0x0
		000000000002272c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   22730: 94000000     	bl	0x22730 <syna_spi_probe+0x1070>
		0000000000022730:  R_AARCH64_CALL26	_printk
   22734: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022734:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   22738: b9400108     	ldr	w8, [x8]
		0000000000022738:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   2273c: 7100051f     	cmp	w8, #0x1
   22740: 540000c1     	b.ne	0x22758 <syna_spi_probe+0x1098>
   22744: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022744:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   22748: f9400100     	ldr	x0, [x8]
		0000000000022748:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   2274c: b4000120     	cbz	x0, 0x22770 <syna_spi_probe+0x10b0>
   22750: 94000000     	bl	0x22750 <syna_spi_probe+0x1090>
		0000000000022750:  R_AARCH64_CALL26	devm_regulator_put
   22754: 14000007     	b	0x22770 <syna_spi_probe+0x10b0>
   22758: 540000cb     	b.lt	0x22770 <syna_spi_probe+0x10b0>
   2275c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002275c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   22760: b9400100     	ldr	w0, [x8]
		0000000000022760:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   22764: 7100041f     	cmp	w0, #0x1
   22768: 5400004b     	b.lt	0x22770 <syna_spi_probe+0x10b0>
   2276c: 94000000     	bl	0x2276c <syna_spi_probe+0x10ac>
		000000000002276c:  R_AARCH64_CALL26	gpio_free
   22770: b94002a8     	ldr	w8, [x21]
		0000000000022770:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22774: 7100051f     	cmp	w8, #0x1
   22778: 540000c1     	b.ne	0x22790 <syna_spi_probe+0x10d0>
   2277c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		000000000002277c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   22780: f9400100     	ldr	x0, [x8]
		0000000000022780:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22784: b4000120     	cbz	x0, 0x227a8 <syna_spi_probe+0x10e8>
   22788: 94000000     	bl	0x22788 <syna_spi_probe+0x10c8>
		0000000000022788:  R_AARCH64_CALL26	devm_regulator_put
   2278c: 14000007     	b	0x227a8 <syna_spi_probe+0x10e8>
   22790: 540000cb     	b.lt	0x227a8 <syna_spi_probe+0x10e8>
   22794: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x940>
		0000000000022794:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   22798: b9400100     	ldr	w0, [x8]
		0000000000022798:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   2279c: 7100041f     	cmp	w0, #0x1
   227a0: 5400004b     	b.lt	0x227a8 <syna_spi_probe+0x10e8>
   227a4: 94000000     	bl	0x227a4 <syna_spi_probe+0x10e4>
		00000000000227a4:  R_AARCH64_CALL26	gpio_free
   227a8: 2a1303e0     	mov	w0, w19
   227ac: d5384108     	mrs	x8, SP_EL0
   227b0: f9438908     	ldr	x8, [x8, #0x710]
   227b4: f85f83a9     	ldur	x9, [x29, #-0x8]
   227b8: eb09011f     	cmp	x8, x9
   227bc: 54000141     	b.ne	0x227e4 <syna_spi_probe+0x1124>
   227c0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   227c4: a94757f6     	ldp	x22, x21, [sp, #0x70]
   227c8: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   227cc: a94567fa     	ldp	x26, x25, [sp, #0x50]
   227d0: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   227d4: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   227d8: 910243ff     	add	sp, sp, #0x90
   227dc: d50323bf     	autiasp
   227e0: d65f03c0     	ret
   227e4: 94000000     	bl	0x227e4 <syna_spi_probe+0x1124>
		00000000000227e4:  R_AARCH64_CALL26	__stack_chk_fail
