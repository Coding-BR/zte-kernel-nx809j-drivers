
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002171c <syna_spi_probe>:
   2171c: d503233f     	paciasp
   21720: d10243ff     	sub	sp, sp, #0x90
   21724: a9037bfd     	stp	x29, x30, [sp, #0x30]
   21728: a9046ffc     	stp	x28, x27, [sp, #0x40]
   2172c: a90567fa     	stp	x26, x25, [sp, #0x50]
   21730: a9065ff8     	stp	x24, x23, [sp, #0x60]
   21734: a90757f6     	stp	x22, x21, [sp, #0x70]
   21738: a9084ff4     	stp	x20, x19, [sp, #0x80]
   2173c: 9100c3fd     	add	x29, sp, #0x30
   21740: d5384108     	mrs	x8, SP_EL0
   21744: aa0003f3     	mov	x19, x0
   21748: 90000000     	adrp	x0, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c0ff
   2174c: 91000000     	add	x0, x0, #0x0
		000000000002174c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c0ff
   21750: f9438908     	ldr	x8, [x8, #0x710]
   21754: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   21758: 91000021     	add	x1, x1, #0x0
		0000000000021758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   2175c: f81f83a8     	stur	x8, [x29, #-0x8]
   21760: 94000000     	bl	0x21760 <syna_spi_probe+0x44>
		0000000000021760:  R_AARCH64_CALL26	_printk
   21764: f9417674     	ldr	x20, [x19, #0x2e8]
   21768: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021768:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   2176c: 12800008     	mov	w8, #-0x1               // =-1
   21770: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab2a
   21774: 91000021     	add	x1, x1, #0x0
		0000000000021774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab2a
   21778: aa1f03e2     	mov	x2, xzr
   2177c: aa1403e0     	mov	x0, x20
   21780: b90023ff     	str	wzr, [sp, #0x20]
   21784: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   21788: b90002a8     	str	w8, [x21]
		0000000000021788:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   2178c: 94000000     	bl	0x2178c <syna_spi_probe+0x70>
		000000000002178c:  R_AARCH64_CALL26	of_find_property
   21790: b4000120     	cbz	x0, 0x217b4 <syna_spi_probe+0x98>
   21794: b9400808     	ldr	w8, [x0, #0x8]
   21798: 340000e8     	cbz	w8, 0x217b4 <syna_spi_probe+0x98>
   2179c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002179c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab2a
   217a0: 91000021     	add	x1, x1, #0x0
		00000000000217a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab2a
   217a4: aa1403e0     	mov	x0, x20
   217a8: 2a1f03e2     	mov	w2, wzr
   217ac: 94000000     	bl	0x217ac <syna_spi_probe+0x90>
		00000000000217ac:  R_AARCH64_CALL26	of_get_named_gpio
   217b0: b90002a0     	str	w0, [x21]
		00000000000217b0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa8
   217b4: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000217b4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xb0
   217b8: 52840108     	mov	w8, #0x2008             // =8200
   217bc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000217bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b892
   217c0: 91000021     	add	x1, x1, #0x0
		00000000000217c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b892
   217c4: aa1403e0     	mov	x0, x20
   217c8: aa1f03e2     	mov	x2, xzr
   217cc: f90002a8     	str	x8, [x21]
		00000000000217cc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   217d0: 94000000     	bl	0x217d0 <syna_spi_probe+0xb4>
		00000000000217d0:  R_AARCH64_CALL26	of_find_property
   217d4: b4000180     	cbz	x0, 0x21804 <syna_spi_probe+0xe8>
   217d8: b9400808     	ldr	w8, [x0, #0x8]
   217dc: 34000148     	cbz	w8, 0x21804 <syna_spi_probe+0xe8>
   217e0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000217e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b892
   217e4: 91000021     	add	x1, x1, #0x0
		00000000000217e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b892
   217e8: 910043e2     	add	x2, sp, #0x10
   217ec: aa1403e0     	mov	x0, x20
   217f0: 52800023     	mov	w3, #0x1                // =1
   217f4: aa1f03e4     	mov	x4, xzr
   217f8: 94000000     	bl	0x217f8 <syna_spi_probe+0xdc>
		00000000000217f8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   217fc: b98013e8     	ldrsw	x8, [sp, #0x10]
   21800: f90002a8     	str	x8, [x21]
		0000000000021800:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0xb0
   21804: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021804:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   21808: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17766
   2180c: 91000021     	add	x1, x1, #0x0
		000000000002180c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17766
   21810: aa1403e0     	mov	x0, x20
   21814: aa1f03e2     	mov	x2, xzr
   21818: b900011f     	str	wzr, [x8]
		0000000000021818:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xac
   2181c: 94000000     	bl	0x2181c <syna_spi_probe+0x100>
		000000000002181c:  R_AARCH64_CALL26	of_find_property
   21820: b4000160     	cbz	x0, 0x2184c <syna_spi_probe+0x130>
   21824: b9400808     	ldr	w8, [x0, #0x8]
   21828: 34000128     	cbz	w8, 0x2184c <syna_spi_probe+0x130>
   2182c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002182c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17766
   21830: 91000021     	add	x1, x1, #0x0
		0000000000021830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17766
   21834: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021834:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xac
   21838: 91000042     	add	x2, x2, #0x0
		0000000000021838:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xac
   2183c: aa1403e0     	mov	x0, x20
   21840: 52800023     	mov	w3, #0x1                // =1
   21844: aa1f03e4     	mov	x4, xzr
   21848: 94000000     	bl	0x21848 <syna_spi_probe+0x12c>
		0000000000021848:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   2184c: 90000019     	adrp	x25, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002184c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   21850: 52800028     	mov	w8, #0x1                // =1
   21854: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198c1
   21858: 91000021     	add	x1, x1, #0x0
		0000000000021858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198c1
   2185c: aa1403e0     	mov	x0, x20
   21860: aa1f03e2     	mov	x2, xzr
   21864: b9000328     	str	w8, [x25]
		0000000000021864:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   21868: 94000000     	bl	0x21868 <syna_spi_probe+0x14c>
		0000000000021868:  R_AARCH64_CALL26	of_find_property
   2186c: b4000160     	cbz	x0, 0x21898 <syna_spi_probe+0x17c>
   21870: b9400808     	ldr	w8, [x0, #0x8]
   21874: 34000128     	cbz	w8, 0x21898 <syna_spi_probe+0x17c>
   21878: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198c1
   2187c: 91000021     	add	x1, x1, #0x0
		000000000002187c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198c1
   21880: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021880:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x150
   21884: 91000042     	add	x2, x2, #0x0
		0000000000021884:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x150
   21888: aa1403e0     	mov	x0, x20
   2188c: 52800023     	mov	w3, #0x1                // =1
   21890: aa1f03e4     	mov	x4, xzr
   21894: 94000000     	bl	0x21894 <syna_spi_probe+0x178>
		0000000000021894:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21898: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021898:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   2189c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002189c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b555
   218a0: 91000021     	add	x1, x1, #0x0
		00000000000218a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b555
   218a4: aa1403e0     	mov	x0, x20
   218a8: aa1f03e2     	mov	x2, xzr
   218ac: b900011f     	str	wzr, [x8]
		00000000000218ac:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x154
   218b0: 94000000     	bl	0x218b0 <syna_spi_probe+0x194>
		00000000000218b0:  R_AARCH64_CALL26	of_find_property
   218b4: b4000160     	cbz	x0, 0x218e0 <syna_spi_probe+0x1c4>
   218b8: b9400808     	ldr	w8, [x0, #0x8]
   218bc: 34000128     	cbz	w8, 0x218e0 <syna_spi_probe+0x1c4>
   218c0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000218c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b555
   218c4: 91000021     	add	x1, x1, #0x0
		00000000000218c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b555
   218c8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000218c8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x154
   218cc: 91000042     	add	x2, x2, #0x0
		00000000000218cc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x154
   218d0: aa1403e0     	mov	x0, x20
   218d4: 52800023     	mov	w3, #0x1                // =1
   218d8: aa1f03e4     	mov	x4, xzr
   218dc: 94000000     	bl	0x218dc <syna_spi_probe+0x1c0>
		00000000000218dc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   218e0: 90000015     	adrp	x21, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000218e0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   218e4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000218e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190d3
   218e8: 91000021     	add	x1, x1, #0x0
		00000000000218e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190d3
   218ec: aa1403e0     	mov	x0, x20
   218f0: aa1f03e2     	mov	x2, xzr
   218f4: b90002bf     	str	wzr, [x21]
		00000000000218f4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   218f8: 94000000     	bl	0x218f8 <syna_spi_probe+0x1dc>
		00000000000218f8:  R_AARCH64_CALL26	of_find_property
   218fc: b4000160     	cbz	x0, 0x21928 <syna_spi_probe+0x20c>
   21900: b9400808     	ldr	w8, [x0, #0x8]
   21904: 34000128     	cbz	w8, 0x21928 <syna_spi_probe+0x20c>
   21908: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x190d3
   2190c: 91000021     	add	x1, x1, #0x0
		000000000002190c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x190d3
   21910: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021910:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x100
   21914: 91000042     	add	x2, x2, #0x0
		0000000000021914:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x100
   21918: aa1403e0     	mov	x0, x20
   2191c: 52800023     	mov	w3, #0x1                // =1
   21920: aa1f03e4     	mov	x4, xzr
   21924: 94000000     	bl	0x21924 <syna_spi_probe+0x208>
		0000000000021924:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21928: 9000001a     	adrp	x26, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021928:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   2192c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		000000000002192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c84
   21930: 91000021     	add	x1, x1, #0x0
		0000000000021930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c84
   21934: aa1403e0     	mov	x0, x20
   21938: aa1f03e2     	mov	x2, xzr
   2193c: f900035f     	str	xzr, [x26]
		000000000002193c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   21940: 94000000     	bl	0x21940 <syna_spi_probe+0x224>
		0000000000021940:  R_AARCH64_CALL26	of_find_property
   21944: b4000120     	cbz	x0, 0x21968 <syna_spi_probe+0x24c>
   21948: b9400808     	ldr	w8, [x0, #0x8]
   2194c: 340000e8     	cbz	w8, 0x21968 <syna_spi_probe+0x24c>
   21950: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c84
   21954: 91000021     	add	x1, x1, #0x0
		0000000000021954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c84
   21958: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021958:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x108
   2195c: 91000042     	add	x2, x2, #0x0
		000000000002195c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x108
   21960: aa1403e0     	mov	x0, x20
   21964: 94000000     	bl	0x21964 <syna_spi_probe+0x248>
		0000000000021964:  R_AARCH64_CALL26	of_property_read_string
   21968: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021968:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   2196c: 12800008     	mov	w8, #-0x1               // =-1
   21970: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a588
   21974: 91000021     	add	x1, x1, #0x0
		0000000000021974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a588
   21978: aa1403e0     	mov	x0, x20
   2197c: aa1f03e2     	mov	x2, xzr
   21980: b9000128     	str	w8, [x9]
		0000000000021980:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   21984: 94000000     	bl	0x21984 <syna_spi_probe+0x268>
		0000000000021984:  R_AARCH64_CALL26	of_find_property
   21988: b4000140     	cbz	x0, 0x219b0 <syna_spi_probe+0x294>
   2198c: b9400808     	ldr	w8, [x0, #0x8]
   21990: 34000108     	cbz	w8, 0x219b0 <syna_spi_probe+0x294>
   21994: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a588
   21998: 91000021     	add	x1, x1, #0x0
		0000000000021998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a588
   2199c: aa1403e0     	mov	x0, x20
   219a0: 2a1f03e2     	mov	w2, wzr
   219a4: 94000000     	bl	0x219a4 <syna_spi_probe+0x288>
		00000000000219a4:  R_AARCH64_CALL26	of_get_named_gpio
   219a8: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219a8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   219ac: b9000100     	str	w0, [x8]
		00000000000219ac:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   219b0: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219b0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   219b4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18360
   219b8: 91000021     	add	x1, x1, #0x0
		00000000000219b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18360
   219bc: aa1403e0     	mov	x0, x20
   219c0: aa1f03e2     	mov	x2, xzr
   219c4: b900011f     	str	wzr, [x8]
		00000000000219c4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x120
   219c8: 94000000     	bl	0x219c8 <syna_spi_probe+0x2ac>
		00000000000219c8:  R_AARCH64_CALL26	of_find_property
   219cc: b4000160     	cbz	x0, 0x219f8 <syna_spi_probe+0x2dc>
   219d0: b9400808     	ldr	w8, [x0, #0x8]
   219d4: 34000128     	cbz	w8, 0x219f8 <syna_spi_probe+0x2dc>
   219d8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18360
   219dc: 91000021     	add	x1, x1, #0x0
		00000000000219dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18360
   219e0: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219e0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x120
   219e4: 91000042     	add	x2, x2, #0x0
		00000000000219e4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x120
   219e8: aa1403e0     	mov	x0, x20
   219ec: 52800023     	mov	w3, #0x1                // =1
   219f0: aa1f03e4     	mov	x4, xzr
   219f4: 94000000     	bl	0x219f4 <syna_spi_probe+0x2d8>
		00000000000219f4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   219f8: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219f8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   219fc: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		00000000000219fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8a6
   21a00: 91000021     	add	x1, x1, #0x0
		0000000000021a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8a6
   21a04: aa1403e0     	mov	x0, x20
   21a08: aa1f03e2     	mov	x2, xzr
   21a0c: b900011f     	str	wzr, [x8]
		0000000000021a0c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x124
   21a10: 94000000     	bl	0x21a10 <syna_spi_probe+0x2f4>
		0000000000021a10:  R_AARCH64_CALL26	of_find_property
   21a14: b4000160     	cbz	x0, 0x21a40 <syna_spi_probe+0x324>
   21a18: b9400808     	ldr	w8, [x0, #0x8]
   21a1c: 34000128     	cbz	w8, 0x21a40 <syna_spi_probe+0x324>
   21a20: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8a6
   21a24: 91000021     	add	x1, x1, #0x0
		0000000000021a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8a6
   21a28: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a28:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x124
   21a2c: 91000042     	add	x2, x2, #0x0
		0000000000021a2c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x124
   21a30: aa1403e0     	mov	x0, x20
   21a34: 52800023     	mov	w3, #0x1                // =1
   21a38: aa1f03e4     	mov	x4, xzr
   21a3c: 94000000     	bl	0x21a3c <syna_spi_probe+0x320>
		0000000000021a3c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21a40: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a40:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   21a44: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0d0
   21a48: 91000021     	add	x1, x1, #0x0
		0000000000021a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0d0
   21a4c: aa1403e0     	mov	x0, x20
   21a50: aa1f03e2     	mov	x2, xzr
   21a54: b900011f     	str	wzr, [x8]
		0000000000021a54:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   21a58: 94000000     	bl	0x21a58 <syna_spi_probe+0x33c>
		0000000000021a58:  R_AARCH64_CALL26	of_find_property
   21a5c: b4000160     	cbz	x0, 0x21a88 <syna_spi_probe+0x36c>
   21a60: b9400808     	ldr	w8, [x0, #0x8]
   21a64: 34000128     	cbz	w8, 0x21a88 <syna_spi_probe+0x36c>
   21a68: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0d0
   21a6c: 91000021     	add	x1, x1, #0x0
		0000000000021a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0d0
   21a70: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a70:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   21a74: 91000042     	add	x2, x2, #0x0
		0000000000021a74:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x128
   21a78: aa1403e0     	mov	x0, x20
   21a7c: 52800023     	mov	w3, #0x1                // =1
   21a80: aa1f03e4     	mov	x4, xzr
   21a84: 94000000     	bl	0x21a84 <syna_spi_probe+0x368>
		0000000000021a84:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21a88: 90000017     	adrp	x23, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a88:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   21a8c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bf4
   21a90: 91000021     	add	x1, x1, #0x0
		0000000000021a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bf4
   21a94: aa1403e0     	mov	x0, x20
   21a98: aa1f03e2     	mov	x2, xzr
   21a9c: f90002ff     	str	xzr, [x23]
		0000000000021a9c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   21aa0: 94000000     	bl	0x21aa0 <syna_spi_probe+0x384>
		0000000000021aa0:  R_AARCH64_CALL26	of_find_property
   21aa4: b4000120     	cbz	x0, 0x21ac8 <syna_spi_probe+0x3ac>
   21aa8: b9400808     	ldr	w8, [x0, #0x8]
   21aac: 340000e8     	cbz	w8, 0x21ac8 <syna_spi_probe+0x3ac>
   21ab0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bf4
   21ab4: 91000021     	add	x1, x1, #0x0
		0000000000021ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bf4
   21ab8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ab8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x130
   21abc: 91000042     	add	x2, x2, #0x0
		0000000000021abc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x130
   21ac0: aa1403e0     	mov	x0, x20
   21ac4: 94000000     	bl	0x21ac4 <syna_spi_probe+0x3a8>
		0000000000021ac4:  R_AARCH64_CALL26	of_property_read_string
   21ac8: 90000009     	adrp	x9, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ac8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   21acc: 12800008     	mov	w8, #-0x1               // =-1
   21ad0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c97
   21ad4: 91000021     	add	x1, x1, #0x0
		0000000000021ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c97
   21ad8: aa1403e0     	mov	x0, x20
   21adc: aa1f03e2     	mov	x2, xzr
   21ae0: b9000128     	str	w8, [x9]
		0000000000021ae0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   21ae4: 94000000     	bl	0x21ae4 <syna_spi_probe+0x3c8>
		0000000000021ae4:  R_AARCH64_CALL26	of_find_property
   21ae8: b4000140     	cbz	x0, 0x21b10 <syna_spi_probe+0x3f4>
   21aec: b9400808     	ldr	w8, [x0, #0x8]
   21af0: 34000108     	cbz	w8, 0x21b10 <syna_spi_probe+0x3f4>
   21af4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c97
   21af8: 91000021     	add	x1, x1, #0x0
		0000000000021af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c97
   21afc: aa1403e0     	mov	x0, x20
   21b00: 2a1f03e2     	mov	w2, wzr
   21b04: 94000000     	bl	0x21b04 <syna_spi_probe+0x3e8>
		0000000000021b04:  R_AARCH64_CALL26	of_get_named_gpio
   21b08: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b08:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   21b0c: b9000100     	str	w0, [x8]
		0000000000021b0c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   21b10: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b10:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   21b14: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb20
   21b18: 91000021     	add	x1, x1, #0x0
		0000000000021b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb20
   21b1c: aa1403e0     	mov	x0, x20
   21b20: aa1f03e2     	mov	x2, xzr
   21b24: b900011f     	str	wzr, [x8]
		0000000000021b24:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x148
   21b28: 94000000     	bl	0x21b28 <syna_spi_probe+0x40c>
		0000000000021b28:  R_AARCH64_CALL26	of_find_property
   21b2c: b4000160     	cbz	x0, 0x21b58 <syna_spi_probe+0x43c>
   21b30: b9400808     	ldr	w8, [x0, #0x8]
   21b34: 34000128     	cbz	w8, 0x21b58 <syna_spi_probe+0x43c>
   21b38: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb20
   21b3c: 91000021     	add	x1, x1, #0x0
		0000000000021b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb20
   21b40: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b40:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x148
   21b44: 91000042     	add	x2, x2, #0x0
		0000000000021b44:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x148
   21b48: aa1403e0     	mov	x0, x20
   21b4c: 52800023     	mov	w3, #0x1                // =1
   21b50: aa1f03e4     	mov	x4, xzr
   21b54: 94000000     	bl	0x21b54 <syna_spi_probe+0x438>
		0000000000021b54:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21b58: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b58:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   21b5c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c913
   21b60: 91000021     	add	x1, x1, #0x0
		0000000000021b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c913
   21b64: aa1403e0     	mov	x0, x20
   21b68: aa1f03e2     	mov	x2, xzr
   21b6c: b900011f     	str	wzr, [x8]
		0000000000021b6c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x14c
   21b70: 94000000     	bl	0x21b70 <syna_spi_probe+0x454>
		0000000000021b70:  R_AARCH64_CALL26	of_find_property
   21b74: b4000160     	cbz	x0, 0x21ba0 <syna_spi_probe+0x484>
   21b78: b9400808     	ldr	w8, [x0, #0x8]
   21b7c: 34000128     	cbz	w8, 0x21ba0 <syna_spi_probe+0x484>
   21b80: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c913
   21b84: 91000021     	add	x1, x1, #0x0
		0000000000021b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c913
   21b88: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021b88:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14c
   21b8c: 91000042     	add	x2, x2, #0x0
		0000000000021b8c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14c
   21b90: aa1403e0     	mov	x0, x20
   21b94: 52800023     	mov	w3, #0x1                // =1
   21b98: aa1f03e4     	mov	x4, xzr
   21b9c: 94000000     	bl	0x21b9c <syna_spi_probe+0x480>
		0000000000021b9c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21ba0: 9000001b     	adrp	x27, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ba0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   21ba4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae65
   21ba8: 91000021     	add	x1, x1, #0x0
		0000000000021ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae65
   21bac: aa1403e0     	mov	x0, x20
   21bb0: aa1f03e2     	mov	x2, xzr
   21bb4: b900037f     	str	wzr, [x27]
		0000000000021bb4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   21bb8: 94000000     	bl	0x21bb8 <syna_spi_probe+0x49c>
		0000000000021bb8:  R_AARCH64_CALL26	of_find_property
   21bbc: b4000160     	cbz	x0, 0x21be8 <syna_spi_probe+0x4cc>
   21bc0: b9400808     	ldr	w8, [x0, #0x8]
   21bc4: 34000128     	cbz	w8, 0x21be8 <syna_spi_probe+0x4cc>
   21bc8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae65
   21bcc: 91000021     	add	x1, x1, #0x0
		0000000000021bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae65
   21bd0: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021bd0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf4
   21bd4: 91000042     	add	x2, x2, #0x0
		0000000000021bd4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf4
   21bd8: aa1403e0     	mov	x0, x20
   21bdc: 52800023     	mov	w3, #0x1                // =1
   21be0: aa1f03e4     	mov	x4, xzr
   21be4: 94000000     	bl	0x21be4 <syna_spi_probe+0x4c8>
		0000000000021be4:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21be8: 9000001c     	adrp	x28, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021be8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf0
   21bec: 12800008     	mov	w8, #-0x1               // =-1
   21bf0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a8a
   21bf4: 91000021     	add	x1, x1, #0x0
		0000000000021bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a8a
   21bf8: aa1403e0     	mov	x0, x20
   21bfc: aa1f03e2     	mov	x2, xzr
   21c00: b9000388     	str	w8, [x28]
		0000000000021c00:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   21c04: 94000000     	bl	0x21c04 <syna_spi_probe+0x4e8>
		0000000000021c04:  R_AARCH64_CALL26	of_find_property
   21c08: b4000120     	cbz	x0, 0x21c2c <syna_spi_probe+0x510>
   21c0c: b9400808     	ldr	w8, [x0, #0x8]
   21c10: 340000e8     	cbz	w8, 0x21c2c <syna_spi_probe+0x510>
   21c14: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a8a
   21c18: 91000021     	add	x1, x1, #0x0
		0000000000021c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a8a
   21c1c: aa1403e0     	mov	x0, x20
   21c20: 2a1f03e2     	mov	w2, wzr
   21c24: 94000000     	bl	0x21c24 <syna_spi_probe+0x508>
		0000000000021c24:  R_AARCH64_CALL26	of_get_named_gpio
   21c28: b9000380     	str	w0, [x28]
		0000000000021c28:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   21c2c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a018
   21c30: 91000021     	add	x1, x1, #0x0
		0000000000021c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a018
   21c34: aa1403e0     	mov	x0, x20
   21c38: aa1f03e2     	mov	x2, xzr
   21c3c: 94000000     	bl	0x21c3c <syna_spi_probe+0x520>
		0000000000021c3c:  R_AARCH64_CALL26	of_find_property
   21c40: b4000160     	cbz	x0, 0x21c6c <syna_spi_probe+0x550>
   21c44: b9400808     	ldr	w8, [x0, #0x8]
   21c48: 34000128     	cbz	w8, 0x21c6c <syna_spi_probe+0x550>
   21c4c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a018
   21c50: 91000021     	add	x1, x1, #0x0
		0000000000021c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a018
   21c54: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c54:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xfc
   21c58: 91000042     	add	x2, x2, #0x0
		0000000000021c58:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xfc
   21c5c: aa1403e0     	mov	x0, x20
   21c60: 52800023     	mov	w3, #0x1                // =1
   21c64: aa1f03e4     	mov	x4, xzr
   21c68: 94000000     	bl	0x21c68 <syna_spi_probe+0x54c>
		0000000000021c68:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21c6c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1806a
   21c70: 91000021     	add	x1, x1, #0x0
		0000000000021c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1806a
   21c74: aa1403e0     	mov	x0, x20
   21c78: aa1f03e2     	mov	x2, xzr
   21c7c: 94000000     	bl	0x21c7c <syna_spi_probe+0x560>
		0000000000021c7c:  R_AARCH64_CALL26	of_find_property
   21c80: b4000160     	cbz	x0, 0x21cac <syna_spi_probe+0x590>
   21c84: b9400808     	ldr	w8, [x0, #0x8]
   21c88: 34000128     	cbz	w8, 0x21cac <syna_spi_probe+0x590>
   21c8c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1806a
   21c90: 91000021     	add	x1, x1, #0x0
		0000000000021c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1806a
   21c94: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021c94:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xf8
   21c98: 91000042     	add	x2, x2, #0x0
		0000000000021c98:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xf8
   21c9c: aa1403e0     	mov	x0, x20
   21ca0: 52800023     	mov	w3, #0x1                // =1
   21ca4: aa1f03e4     	mov	x4, xzr
   21ca8: 94000000     	bl	0x21ca8 <syna_spi_probe+0x58c>
		0000000000021ca8:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21cac: 90000016     	adrp	x22, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021cac:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   21cb0: 12800008     	mov	w8, #-0x1               // =-1
   21cb4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2aa
   21cb8: 91000021     	add	x1, x1, #0x0
		0000000000021cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2aa
   21cbc: aa1403e0     	mov	x0, x20
   21cc0: aa1f03e2     	mov	x2, xzr
   21cc4: b90002c8     	str	w8, [x22]
		0000000000021cc4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   21cc8: 94000000     	bl	0x21cc8 <syna_spi_probe+0x5ac>
		0000000000021cc8:  R_AARCH64_CALL26	of_find_property
   21ccc: b4000120     	cbz	x0, 0x21cf0 <syna_spi_probe+0x5d4>
   21cd0: b9400808     	ldr	w8, [x0, #0x8]
   21cd4: 340000e8     	cbz	w8, 0x21cf0 <syna_spi_probe+0x5d4>
   21cd8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2aa
   21cdc: 91000021     	add	x1, x1, #0x0
		0000000000021cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2aa
   21ce0: aa1403e0     	mov	x0, x20
   21ce4: 2a1f03e2     	mov	w2, wzr
   21ce8: 94000000     	bl	0x21ce8 <syna_spi_probe+0x5cc>
		0000000000021ce8:  R_AARCH64_CALL26	of_get_named_gpio
   21cec: b90002c0     	str	w0, [x22]
		0000000000021cec:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   21cf0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187fa
   21cf4: 91000021     	add	x1, x1, #0x0
		0000000000021cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187fa
   21cf8: aa1403e0     	mov	x0, x20
   21cfc: aa1f03e2     	mov	x2, xzr
   21d00: 94000000     	bl	0x21d00 <syna_spi_probe+0x5e4>
		0000000000021d00:  R_AARCH64_CALL26	of_find_property
   21d04: b4000160     	cbz	x0, 0x21d30 <syna_spi_probe+0x614>
   21d08: b9400808     	ldr	w8, [x0, #0x8]
   21d0c: 34000128     	cbz	w8, 0x21d30 <syna_spi_probe+0x614>
   21d10: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187fa
   21d14: 91000021     	add	x1, x1, #0x0
		0000000000021d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187fa
   21d18: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d18:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   21d1c: 91000042     	add	x2, x2, #0x0
		0000000000021d1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa4
   21d20: aa1403e0     	mov	x0, x20
   21d24: 52800023     	mov	w3, #0x1                // =1
   21d28: aa1f03e4     	mov	x4, xzr
   21d2c: 94000000     	bl	0x21d2c <syna_spi_probe+0x610>
		0000000000021d2c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21d30: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d30:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   21d34: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c33c
   21d38: 91000021     	add	x1, x1, #0x0
		0000000000021d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c33c
   21d3c: aa1403e0     	mov	x0, x20
   21d40: aa1f03e2     	mov	x2, xzr
   21d44: b900011f     	str	wzr, [x8]
		0000000000021d44:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x64
   21d48: 94000000     	bl	0x21d48 <syna_spi_probe+0x62c>
		0000000000021d48:  R_AARCH64_CALL26	of_find_property
   21d4c: b4000160     	cbz	x0, 0x21d78 <syna_spi_probe+0x65c>
   21d50: b9400808     	ldr	w8, [x0, #0x8]
   21d54: 34000128     	cbz	w8, 0x21d78 <syna_spi_probe+0x65c>
   21d58: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c33c
   21d5c: 91000021     	add	x1, x1, #0x0
		0000000000021d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c33c
   21d60: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d60:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x64
   21d64: 91000042     	add	x2, x2, #0x0
		0000000000021d64:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x64
   21d68: aa1403e0     	mov	x0, x20
   21d6c: 52800023     	mov	w3, #0x1                // =1
   21d70: aa1f03e4     	mov	x4, xzr
   21d74: 94000000     	bl	0x21d74 <syna_spi_probe+0x658>
		0000000000021d74:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21d78: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d78:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   21d7c: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e08
   21d80: 91000021     	add	x1, x1, #0x0
		0000000000021d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e08
   21d84: aa1403e0     	mov	x0, x20
   21d88: aa1f03e2     	mov	x2, xzr
   21d8c: b900011f     	str	wzr, [x8]
		0000000000021d8c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x68
   21d90: 94000000     	bl	0x21d90 <syna_spi_probe+0x674>
		0000000000021d90:  R_AARCH64_CALL26	of_find_property
   21d94: b4000160     	cbz	x0, 0x21dc0 <syna_spi_probe+0x6a4>
   21d98: b9400808     	ldr	w8, [x0, #0x8]
   21d9c: 34000128     	cbz	w8, 0x21dc0 <syna_spi_probe+0x6a4>
   21da0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e08
   21da4: 91000021     	add	x1, x1, #0x0
		0000000000021da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e08
   21da8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021da8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x68
   21dac: 91000042     	add	x2, x2, #0x0
		0000000000021dac:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x68
   21db0: aa1403e0     	mov	x0, x20
   21db4: 52800023     	mov	w3, #0x1                // =1
   21db8: aa1f03e4     	mov	x4, xzr
   21dbc: 94000000     	bl	0x21dbc <syna_spi_probe+0x6a0>
		0000000000021dbc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21dc0: 90000008     	adrp	x8, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021dc0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   21dc4: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab3d
   21dc8: 91000021     	add	x1, x1, #0x0
		0000000000021dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab3d
   21dcc: aa1403e0     	mov	x0, x20
   21dd0: aa1f03e2     	mov	x2, xzr
   21dd4: b900011f     	str	wzr, [x8]
		0000000000021dd4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x60
   21dd8: 94000000     	bl	0x21dd8 <syna_spi_probe+0x6bc>
		0000000000021dd8:  R_AARCH64_CALL26	of_find_property
   21ddc: b4000160     	cbz	x0, 0x21e08 <syna_spi_probe+0x6ec>
   21de0: b9400808     	ldr	w8, [x0, #0x8]
   21de4: 34000128     	cbz	w8, 0x21e08 <syna_spi_probe+0x6ec>
   21de8: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab3d
   21dec: 91000021     	add	x1, x1, #0x0
		0000000000021dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab3d
   21df0: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021df0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   21df4: 91000042     	add	x2, x2, #0x0
		0000000000021df4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   21df8: aa1403e0     	mov	x0, x20
   21dfc: 52800023     	mov	w3, #0x1                // =1
   21e00: aa1f03e4     	mov	x4, xzr
   21e04: 94000000     	bl	0x21e04 <syna_spi_probe+0x6e8>
		0000000000021e04:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21e08: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e6
   21e0c: 91000021     	add	x1, x1, #0x0
		0000000000021e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e6
   21e10: aa1403e0     	mov	x0, x20
   21e14: aa1f03e2     	mov	x2, xzr
   21e18: 94000000     	bl	0x21e18 <syna_spi_probe+0x6fc>
		0000000000021e18:  R_AARCH64_CALL26	of_find_property
   21e1c: b40001e0     	cbz	x0, 0x21e58 <syna_spi_probe+0x73c>
   21e20: b9400808     	ldr	w8, [x0, #0x8]
   21e24: 340001a8     	cbz	w8, 0x21e58 <syna_spi_probe+0x73c>
   21e28: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e6
   21e2c: 91000021     	add	x1, x1, #0x0
		0000000000021e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e6
   21e30: 910043e2     	add	x2, sp, #0x10
   21e34: aa1403e0     	mov	x0, x20
   21e38: 52800043     	mov	w3, #0x2                // =2
   21e3c: aa1f03e4     	mov	x4, xzr
   21e40: 94000000     	bl	0x21e40 <syna_spi_probe+0x724>
		0000000000021e40:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21e44: 37f800a0     	tbnz	w0, #0x1f, 0x21e58 <syna_spi_probe+0x73c>
   21e48: 294227e8     	ldp	w8, w9, [sp, #0x10]
   21e4c: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021e4c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x14
   21e50: 9100014a     	add	x10, x10, #0x0
		0000000000021e50:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x14
   21e54: 29002548     	stp	w8, w9, [x10]
   21e58: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19387
   21e5c: 91000021     	add	x1, x1, #0x0
		0000000000021e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19387
   21e60: aa1403e0     	mov	x0, x20
   21e64: aa1f03e2     	mov	x2, xzr
   21e68: 94000000     	bl	0x21e68 <syna_spi_probe+0x74c>
		0000000000021e68:  R_AARCH64_CALL26	of_find_property
   21e6c: b4000220     	cbz	x0, 0x21eb0 <syna_spi_probe+0x794>
   21e70: b9400808     	ldr	w8, [x0, #0x8]
   21e74: 340001e8     	cbz	w8, 0x21eb0 <syna_spi_probe+0x794>
   21e78: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a335
   21e7c: 91000021     	add	x1, x1, #0x0
		0000000000021e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a335
   21e80: 910043e2     	add	x2, sp, #0x10
   21e84: aa1403e0     	mov	x0, x20
   21e88: 52800063     	mov	w3, #0x3                // =3
   21e8c: aa1f03e4     	mov	x4, xzr
   21e90: 94000000     	bl	0x21e90 <syna_spi_probe+0x774>
		0000000000021e90:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21e94: 37f800e0     	tbnz	w0, #0x1f, 0x21eb0 <syna_spi_probe+0x794>
   21e98: f9400be8     	ldr	x8, [sp, #0x10]
   21e9c: b9401be9     	ldr	w9, [sp, #0x18]
   21ea0: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ea0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x170
   21ea4: 9100014a     	add	x10, x10, #0x0
		0000000000021ea4:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x170
   21ea8: f9000148     	str	x8, [x10]
   21eac: b9000949     	str	w9, [x10, #0x8]
   21eb0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1754b
   21eb4: 91000021     	add	x1, x1, #0x0
		0000000000021eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1754b
   21eb8: aa1403e0     	mov	x0, x20
   21ebc: aa1f03e2     	mov	x2, xzr
   21ec0: 94000000     	bl	0x21ec0 <syna_spi_probe+0x7a4>
		0000000000021ec0:  R_AARCH64_CALL26	of_find_property
   21ec4: b4000160     	cbz	x0, 0x21ef0 <syna_spi_probe+0x7d4>
   21ec8: b9400808     	ldr	w8, [x0, #0x8]
   21ecc: 34000128     	cbz	w8, 0x21ef0 <syna_spi_probe+0x7d4>
   21ed0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1754b
   21ed4: 91000021     	add	x1, x1, #0x0
		0000000000021ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1754b
   21ed8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ed8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x158
   21edc: 91000042     	add	x2, x2, #0x0
		0000000000021edc:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x158
   21ee0: aa1403e0     	mov	x0, x20
   21ee4: 52800023     	mov	w3, #0x1                // =1
   21ee8: aa1f03e4     	mov	x4, xzr
   21eec: 94000000     	bl	0x21eec <syna_spi_probe+0x7d0>
		0000000000021eec:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21ef0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c671
   21ef4: 91000021     	add	x1, x1, #0x0
		0000000000021ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c671
   21ef8: aa1403e0     	mov	x0, x20
   21efc: aa1f03e2     	mov	x2, xzr
   21f00: 94000000     	bl	0x21f00 <syna_spi_probe+0x7e4>
		0000000000021f00:  R_AARCH64_CALL26	of_find_property
   21f04: b4000160     	cbz	x0, 0x21f30 <syna_spi_probe+0x814>
   21f08: b9400808     	ldr	w8, [x0, #0x8]
   21f0c: 34000128     	cbz	w8, 0x21f30 <syna_spi_probe+0x814>
   21f10: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c671
   21f14: 91000021     	add	x1, x1, #0x0
		0000000000021f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c671
   21f18: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f18:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x15c
   21f1c: 91000042     	add	x2, x2, #0x0
		0000000000021f1c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x15c
   21f20: aa1403e0     	mov	x0, x20
   21f24: 52800023     	mov	w3, #0x1                // =1
   21f28: aa1f03e4     	mov	x4, xzr
   21f2c: 94000000     	bl	0x21f2c <syna_spi_probe+0x810>
		0000000000021f2c:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21f30: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab50
   21f34: 91000021     	add	x1, x1, #0x0
		0000000000021f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab50
   21f38: aa1403e0     	mov	x0, x20
   21f3c: aa1f03e2     	mov	x2, xzr
   21f40: 94000000     	bl	0x21f40 <syna_spi_probe+0x824>
		0000000000021f40:  R_AARCH64_CALL26	of_find_property
   21f44: b40001e0     	cbz	x0, 0x21f80 <syna_spi_probe+0x864>
   21f48: b9400808     	ldr	w8, [x0, #0x8]
   21f4c: 340001a8     	cbz	w8, 0x21f80 <syna_spi_probe+0x864>
   21f50: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab50
   21f54: 91000021     	add	x1, x1, #0x0
		0000000000021f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab50
   21f58: 910043e2     	add	x2, sp, #0x10
   21f5c: aa1403e0     	mov	x0, x20
   21f60: 52800043     	mov	w3, #0x2                // =2
   21f64: aa1f03e4     	mov	x4, xzr
   21f68: 94000000     	bl	0x21f68 <syna_spi_probe+0x84c>
		0000000000021f68:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21f6c: 37f800a0     	tbnz	w0, #0x1f, 0x21f80 <syna_spi_probe+0x864>
   21f70: 294227e8     	ldp	w8, w9, [sp, #0x10]
   21f74: 9000000a     	adrp	x10, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f74:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x160
   21f78: 9100014a     	add	x10, x10, #0x0
		0000000000021f78:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x160
   21f7c: 29002548     	stp	w8, w9, [x10]
   21f80: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a59b
   21f84: 91000021     	add	x1, x1, #0x0
		0000000000021f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a59b
   21f88: aa1403e0     	mov	x0, x20
   21f8c: aa1f03e2     	mov	x2, xzr
   21f90: 94000000     	bl	0x21f90 <syna_spi_probe+0x874>
		0000000000021f90:  R_AARCH64_CALL26	of_find_property
   21f94: b4000160     	cbz	x0, 0x21fc0 <syna_spi_probe+0x8a4>
   21f98: b9400808     	ldr	w8, [x0, #0x8]
   21f9c: 34000128     	cbz	w8, 0x21fc0 <syna_spi_probe+0x8a4>
   21fa0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a59b
   21fa4: 91000021     	add	x1, x1, #0x0
		0000000000021fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a59b
   21fa8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021fa8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x168
   21fac: 91000042     	add	x2, x2, #0x0
		0000000000021fac:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x168
   21fb0: aa1403e0     	mov	x0, x20
   21fb4: 52800023     	mov	w3, #0x1                // =1
   21fb8: aa1f03e4     	mov	x4, xzr
   21fbc: 94000000     	bl	0x21fbc <syna_spi_probe+0x8a0>
		0000000000021fbc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   21fc0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8fb
   21fc4: 91000021     	add	x1, x1, #0x0
		0000000000021fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8fb
   21fc8: aa1403e0     	mov	x0, x20
   21fcc: aa1f03e2     	mov	x2, xzr
   21fd0: 94000000     	bl	0x21fd0 <syna_spi_probe+0x8b4>
		0000000000021fd0:  R_AARCH64_CALL26	of_find_property
   21fd4: b4000160     	cbz	x0, 0x22000 <syna_spi_probe+0x8e4>
   21fd8: b9400808     	ldr	w8, [x0, #0x8]
   21fdc: 34000128     	cbz	w8, 0x22000 <syna_spi_probe+0x8e4>
   21fe0: 90000001     	adrp	x1, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8fb
   21fe4: 91000021     	add	x1, x1, #0x0
		0000000000021fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8fb
   21fe8: 90000002     	adrp	x2, 0x21000 <syna_cdev_ioctls+0x1a70>
		0000000000021fe8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x16c
   21fec: 91000042     	add	x2, x2, #0x0
		0000000000021fec:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x16c
   21ff0: aa1403e0     	mov	x0, x20
   21ff4: 52800023     	mov	w3, #0x1                // =1
   21ff8: aa1f03e4     	mov	x4, xzr
   21ffc: 94000000     	bl	0x21ffc <syna_spi_probe+0x8e0>
		0000000000021ffc:  R_AARCH64_CALL26	of_property_read_variable_u32_array
   22000: 90000018     	adrp	x24, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022000:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   22004: 91000318     	add	x24, x24, #0x0
		0000000000022004:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if
   22008: 90000014     	adrp	x20, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c11b
   2200c: 91000294     	add	x20, x20, #0x0
		000000000002200c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c11b
   22010: b9412306     	ldr	w6, [x24, #0x120]
   22014: b9412707     	ldr	w7, [x24, #0x124]
   22018: 29428f02     	ldp	w2, w3, [x24, #0x14]
   2201c: 295f1305     	ldp	w5, w4, [x24, #0xf8]
   22020: b9414b08     	ldr	w8, [x24, #0x148]
   22024: b9414f09     	ldr	w9, [x24, #0x14c]
   22028: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x196b7
   2202c: 91000000     	add	x0, x0, #0x0
		000000000002202c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x196b7
   22030: aa1403e1     	mov	x1, x20
   22034: b9000be9     	str	w9, [sp, #0x8]
   22038: b90003e8     	str	w8, [sp]
   2203c: 94000000     	bl	0x2203c <syna_spi_probe+0x920>
		000000000002203c:  R_AARCH64_CALL26	_printk
   22040: b9415b02     	ldr	w2, [x24, #0x158]
   22044: b9416303     	ldr	w3, [x24, #0x160]
   22048: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae7e
   2204c: 91000000     	add	x0, x0, #0x0
		000000000002204c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae7e
   22050: b9416704     	ldr	w4, [x24, #0x164]
   22054: b9416b05     	ldr	w5, [x24, #0x168]
   22058: aa1403e1     	mov	x1, x20
   2205c: 94000000     	bl	0x2205c <syna_spi_probe+0x940>
		000000000002205c:  R_AARCH64_CALL26	_printk
   22060: b9417302     	ldr	w2, [x24, #0x170]
   22064: b9417703     	ldr	w3, [x24, #0x174]
   22068: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c934
   2206c: 91000000     	add	x0, x0, #0x0
		000000000002206c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c934
   22070: b9417b04     	ldr	w4, [x24, #0x178]
   22074: b9416f05     	ldr	w5, [x24, #0x16c]
   22078: aa1403e1     	mov	x1, x20
   2207c: 94000000     	bl	0x2207c <syna_spi_probe+0x960>
		000000000002207c:  R_AARCH64_CALL26	_printk
   22080: aa1303e0     	mov	x0, x19
   22084: 94000000     	bl	0x22084 <syna_spi_probe+0x968>
		0000000000022084:  R_AARCH64_CALL26	syna_ts_check_dt
   22088: 90000014     	adrp	x20, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022088:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   2208c: a9006313     	stp	x19, x24, [x24]
   22090: f9400288     	ldr	x8, [x20]
		0000000000022090:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22094: f9003913     	str	x19, [x8, #0x70]
   22098: f9005118     	str	x24, [x8, #0xa0]
   2209c: b9412b09     	ldr	w9, [x24, #0x128]
   220a0: 340005c9     	cbz	w9, 0x22158 <syna_spi_probe+0xa3c>
   220a4: b94002aa     	ldr	w10, [x21]
		00000000000220a4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   220a8: 3400068a     	cbz	w10, 0x22178 <syna_spi_probe+0xa5c>
   220ac: 7100053f     	cmp	w9, #0x1
   220b0: 540002e1     	b.ne	0x2210c <syna_spi_probe+0x9f0>
   220b4: f94002e1     	ldr	x1, [x23]
		00000000000220b4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   220b8: b4001de1     	cbz	x1, 0x22474 <syna_spi_probe+0xd58>
   220bc: 39400029     	ldrb	w9, [x1]
   220c0: 34001da9     	cbz	w9, 0x22474 <syna_spi_probe+0xd58>
   220c4: 39400029     	ldrb	w9, [x1]
   220c8: 34000669     	cbz	w9, 0x22194 <syna_spi_probe+0xa78>
   220cc: f9403900     	ldr	x0, [x8, #0x70]
   220d0: 94000000     	bl	0x220d0 <syna_spi_probe+0x9b4>
		00000000000220d0:  R_AARCH64_CALL26	devm_regulator_get
   220d4: b13ffc1f     	cmn	x0, #0xfff
   220d8: 54000603     	b.lo	0x22198 <syna_spi_probe+0xa7c>
   220dc: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000220dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c358
   220e0: 91000108     	add	x8, x8, #0x0
		00000000000220e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c358
   220e4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000220e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0f7
   220e8: 91000021     	add	x1, x1, #0x0
		00000000000220e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0f7
   220ec: aa0003f3     	mov	x19, x0
   220f0: aa0803e0     	mov	x0, x8
   220f4: 94000000     	bl	0x220f4 <syna_spi_probe+0x9d8>
		00000000000220f4:  R_AARCH64_CALL26	_printk
   220f8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000220f8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   220fc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000220fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5b6
   22100: 91000000     	add	x0, x0, #0x0
		0000000000022100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5b6
   22104: f9000113     	str	x19, [x8]
		0000000000022104:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   22108: 140000e0     	b	0x22488 <syna_spi_probe+0xd6c>
   2210c: 540004ab     	b.lt	0x221a0 <syna_spi_probe+0xa84>
   22110: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022110:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   22114: b9400100     	ldr	w0, [x8]
		0000000000022114:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   22118: 7100041f     	cmp	w0, #0x1
   2211c: 5400042b     	b.lt	0x221a0 <syna_spi_probe+0xa84>
   22120: b9400328     	ldr	w8, [x25]
		0000000000022120:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   22124: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022124:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6372
   22128: 91000063     	add	x3, x3, #0x0
		0000000000022128:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6372
   2212c: 52800021     	mov	w1, #0x1                // =1
   22130: 7100011f     	cmp	w8, #0x0
   22134: 1a9f17e2     	cset	w2, eq
   22138: 94000000     	bl	0x22138 <syna_spi_probe+0xa1c>
		0000000000022138:  R_AARCH64_CALL26	syna_spi_get_gpio
   2213c: 36f80320     	tbz	w0, #0x1f, 0x221a0 <syna_spi_probe+0xa84>
   22140: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022140:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   22144: 2a0003f3     	mov	w19, w0
   22148: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022148:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a032
   2214c: 91000000     	add	x0, x0, #0x0
		000000000002214c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a032
   22150: b9400102     	ldr	w2, [x8]
		0000000000022150:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   22154: 1400003f     	b	0x22250 <syna_spi_probe+0xb34>
   22158: f94002e9     	ldr	x9, [x23]
		0000000000022158:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x130
   2215c: b4fffa49     	cbz	x9, 0x220a4 <syna_spi_probe+0x988>
   22160: 39400129     	ldrb	w9, [x9]
   22164: 34fffa09     	cbz	w9, 0x220a4 <syna_spi_probe+0x988>
   22168: 52800029     	mov	w9, #0x1                // =1
   2216c: 9000000a     	adrp	x10, 0x22000 <syna_spi_probe+0x8e4>
		000000000002216c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   22170: b9000149     	str	w9, [x10]
		0000000000022170:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   22174: 17ffffcc     	b	0x220a4 <syna_spi_probe+0x988>
   22178: f940034a     	ldr	x10, [x26]
		0000000000022178:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   2217c: b4fff98a     	cbz	x10, 0x220ac <syna_spi_probe+0x990>
   22180: 3940014a     	ldrb	w10, [x10]
   22184: 34fff94a     	cbz	w10, 0x220ac <syna_spi_probe+0x990>
   22188: 5280002a     	mov	w10, #0x1               // =1
   2218c: b90002aa     	str	w10, [x21]
		000000000002218c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22190: 17ffffc7     	b	0x220ac <syna_spi_probe+0x990>
   22194: aa1f03e0     	mov	x0, xzr
   22198: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022198:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   2219c: f9000100     	str	x0, [x8]
		000000000002219c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   221a0: b94002a8     	ldr	w8, [x21]
		00000000000221a0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   221a4: 7100051f     	cmp	w8, #0x1
   221a8: 54000301     	b.ne	0x22208 <syna_spi_probe+0xaec>
   221ac: f9400341     	ldr	x1, [x26]
		00000000000221ac:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x108
   221b0: b4001681     	cbz	x1, 0x22480 <syna_spi_probe+0xd64>
   221b4: 39400028     	ldrb	w8, [x1]
   221b8: 34001648     	cbz	w8, 0x22480 <syna_spi_probe+0xd64>
   221bc: 39400028     	ldrb	w8, [x1]
   221c0: 34000508     	cbz	w8, 0x22260 <syna_spi_probe+0xb44>
   221c4: f9400288     	ldr	x8, [x20]
		00000000000221c4:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   221c8: f9403900     	ldr	x0, [x8, #0x70]
   221cc: 94000000     	bl	0x221cc <syna_spi_probe+0xab0>
		00000000000221cc:  R_AARCH64_CALL26	devm_regulator_get
   221d0: b13ffc1f     	cmn	x0, #0xfff
   221d4: 54000483     	b.lo	0x22264 <syna_spi_probe+0xb48>
   221d8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000221d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c358
   221dc: 91000108     	add	x8, x8, #0x0
		00000000000221dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c358
   221e0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000221e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0f7
   221e4: 91000021     	add	x1, x1, #0x0
		00000000000221e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0f7
   221e8: aa0003f3     	mov	x19, x0
   221ec: aa0803e0     	mov	x0, x8
   221f0: 94000000     	bl	0x221f0 <syna_spi_probe+0xad4>
		00000000000221f0:  R_AARCH64_CALL26	_printk
   221f4: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000221f4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   221f8: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000221f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18814
   221fc: 91000000     	add	x0, x0, #0x0
		00000000000221fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18814
   22200: f9000113     	str	x19, [x8]
		0000000000022200:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22204: 140000a1     	b	0x22488 <syna_spi_probe+0xd6c>
   22208: 5400032b     	b.lt	0x2226c <syna_spi_probe+0xb50>
   2220c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		000000000002220c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   22210: b9400100     	ldr	w0, [x8]
		0000000000022210:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   22214: 7100041f     	cmp	w0, #0x1
   22218: 540002ab     	b.lt	0x2226c <syna_spi_probe+0xb50>
   2221c: b9400328     	ldr	w8, [x25]
		000000000002221c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x150
   22220: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022220:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6392
   22224: 91000063     	add	x3, x3, #0x0
		0000000000022224:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6392
   22228: 52800021     	mov	w1, #0x1                // =1
   2222c: 7100011f     	cmp	w8, #0x0
   22230: 1a9f17e2     	cset	w2, eq
   22234: 94000000     	bl	0x22234 <syna_spi_probe+0xb18>
		0000000000022234:  R_AARCH64_CALL26	syna_spi_get_gpio
   22238: 36f801a0     	tbz	w0, #0x1f, 0x2226c <syna_spi_probe+0xb50>
   2223c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		000000000002223c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   22240: 2a0003f3     	mov	w19, w0
   22244: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e25
   22248: 91000000     	add	x0, x0, #0x0
		0000000000022248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e25
   2224c: b9400102     	ldr	w2, [x8]
		000000000002224c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   22250: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18083
   22254: 91000021     	add	x1, x1, #0x0
		0000000000022254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18083
   22258: 94000000     	bl	0x22258 <syna_spi_probe+0xb3c>
		0000000000022258:  R_AARCH64_CALL26	_printk
   2225c: 1400008f     	b	0x22498 <syna_spi_probe+0xd7c>
   22260: aa1f03e0     	mov	x0, xzr
   22264: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022264:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   22268: f9000100     	str	x0, [x8]
		0000000000022268:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   2226c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		000000000002226c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if
   22270: f9400113     	ldr	x19, [x8]
		0000000000022270:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if
   22274: b40011f3     	cbz	x19, 0x224b0 <syna_spi_probe+0xd94>
   22278: 90000017     	adrp	x23, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022278:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x60
   2227c: 910002f7     	add	x23, x23, #0x0
		000000000002227c:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0x60
   22280: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   22284: 91000021     	add	x1, x1, #0x0
		0000000000022284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   22288: 90000002     	adrp	x2, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022288:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d2
   2228c: 91000042     	add	x2, x2, #0x0
		000000000002228c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d2
   22290: 910042e0     	add	x0, x23, #0x10
   22294: 94000000     	bl	0x22294 <syna_spi_probe+0xb78>
		0000000000022294:  R_AARCH64_CALL26	__mutex_init
   22298: b94002e8     	ldr	w8, [x23]
   2229c: 52800109     	mov	w9, #0x8                // =8
   222a0: 390eb269     	strb	w9, [x19, #0x3ac]
   222a4: 71000d1f     	cmp	w8, #0x3
   222a8: 54000048     	b.hi	0x222b0 <syna_spi_probe+0xb94>
   222ac: b903b268     	str	w8, [x19, #0x3b0]
   222b0: aa1303e0     	mov	x0, x19
   222b4: 94000000     	bl	0x222b4 <syna_spi_probe+0xb98>
		00000000000222b4:  R_AARCH64_CALL26	spi_setup
   222b8: 37f81000     	tbnz	w0, #0x1f, 0x224b8 <syna_spi_probe+0xd9c>
   222bc: d503201f     	nop
   222c0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000222c0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   222c4: 5281b801     	mov	w1, #0xdc0              // =3520
   222c8: 52800102     	mov	w2, #0x8                // =8
   222cc: f9400100     	ldr	x0, [x8]
		00000000000222cc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   222d0: 94000000     	bl	0x222d0 <syna_spi_probe+0xbb4>
		00000000000222d0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   222d4: b4002480     	cbz	x0, 0x22764 <syna_spi_probe+0x1048>
   222d8: b94002c8     	ldr	w8, [x22]
		00000000000222d8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   222dc: 52807fc9     	mov	w9, #0x3fe              // =1022
   222e0: b9000009     	str	w9, [x0]
   222e4: 7100051f     	cmp	w8, #0x1
   222e8: f901e260     	str	x0, [x19, #0x3c0]
   222ec: 5400012b     	b.lt	0x22310 <syna_spi_probe+0xbf4>
   222f0: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		00000000000222f0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa4
   222f4: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x8e4>
		00000000000222f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63b2
   222f8: 91000063     	add	x3, x3, #0x0
		00000000000222f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63b2
   222fc: b9400122     	ldr	w2, [x9]
		00000000000222fc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa4
   22300: 2a0803e0     	mov	w0, w8
   22304: 52800021     	mov	w1, #0x1                // =1
   22308: 94000000     	bl	0x22308 <syna_spi_probe+0xbec>
		0000000000022308:  R_AARCH64_CALL26	syna_spi_get_gpio
   2230c: 37f80e40     	tbnz	w0, #0x1f, 0x224d4 <syna_spi_probe+0xdb8>
   22310: b9400380     	ldr	w0, [x28]
		0000000000022310:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf0
   22314: 7100041f     	cmp	w0, #0x1
   22318: 540000eb     	b.lt	0x22334 <syna_spi_probe+0xc18>
   2231c: b9400362     	ldr	w2, [x27]
		000000000002231c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xf4
   22320: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022320:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d3
   22324: 91000063     	add	x3, x3, #0x0
		0000000000022324:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d3
   22328: 52800021     	mov	w1, #0x1                // =1
   2232c: 94000000     	bl	0x2232c <syna_spi_probe+0xc10>
		000000000002232c:  R_AARCH64_CALL26	syna_spi_get_gpio
   22330: 37f80e20     	tbnz	w0, #0x1f, 0x224f4 <syna_spi_probe+0xdd8>
   22334: 90000017     	adrp	x23, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022334:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa8
   22338: 910002f7     	add	x23, x23, #0x0
		0000000000022338:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa8
   2233c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		000000000002233c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   22340: 91000021     	add	x1, x1, #0x0
		0000000000022340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   22344: 90000002     	adrp	x2, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022344:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63d2
   22348: 91000042     	add	x2, x2, #0x0
		0000000000022348:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63d2
   2234c: 910062e0     	add	x0, x23, #0x18
   22350: 94000000     	bl	0x22350 <syna_spi_probe+0xc34>
		0000000000022350:  R_AARCH64_CALL26	__mutex_init
   22354: b94002e0     	ldr	w0, [x23]
   22358: 7100041f     	cmp	w0, #0x1
   2235c: 5400088b     	b.lt	0x2246c <syna_spi_probe+0xd50>
   22360: 90000003     	adrp	x3, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022360:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x63f3
   22364: 91000063     	add	x3, x3, #0x0
		0000000000022364:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x63f3
   22368: 2a1f03e1     	mov	w1, wzr
   2236c: 2a1f03e2     	mov	w2, wzr
   22370: 94000000     	bl	0x22370 <syna_spi_probe+0xc54>
		0000000000022370:  R_AARCH64_CALL26	syna_spi_get_gpio
   22374: 2a0003e8     	mov	w8, w0
   22378: 2a1f03e0     	mov	w0, wzr
   2237c: 36f82468     	tbz	w8, #0x1f, 0x22808 <syna_spi_probe+0x10ec>
   22380: b94002e2     	ldr	w2, [x23]
   22384: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   22388: 91000000     	add	x0, x0, #0x0
		0000000000022388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   2238c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		000000000002238c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19716
   22390: 91000021     	add	x1, x1, #0x0
		0000000000022390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19716
   22394: 2a0803f3     	mov	w19, w8
   22398: 94000000     	bl	0x22398 <syna_spi_probe+0xc7c>
		0000000000022398:  R_AARCH64_CALL26	_printk
   2239c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		000000000002239c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8e1
   223a0: 91000000     	add	x0, x0, #0x0
		00000000000223a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8e1
   223a4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000223a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   223a8: 91000021     	add	x1, x1, #0x0
		00000000000223a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   223ac: 94000000     	bl	0x223ac <syna_spi_probe+0xc90>
		00000000000223ac:  R_AARCH64_CALL26	_printk
   223b0: b9404ae0     	ldr	w0, [x23, #0x48]
   223b4: 7100041f     	cmp	w0, #0x1
   223b8: 5400004b     	b.lt	0x223c0 <syna_spi_probe+0xca4>
   223bc: 94000000     	bl	0x223bc <syna_spi_probe+0xca0>
		00000000000223bc:  R_AARCH64_CALL26	gpio_free
   223c0: b94002c0     	ldr	w0, [x22]
		00000000000223c0:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   223c4: 7100041f     	cmp	w0, #0x1
   223c8: 5400004b     	b.lt	0x223d0 <syna_spi_probe+0xcb4>
   223cc: 94000000     	bl	0x223cc <syna_spi_probe+0xcb0>
		00000000000223cc:  R_AARCH64_CALL26	gpio_free
   223d0: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		00000000000223d0:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   223d4: f94002c1     	ldr	x1, [x22]
		00000000000223d4:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   223d8: b40000e1     	cbz	x1, 0x223f4 <syna_spi_probe+0xcd8>
   223dc: f9400288     	ldr	x8, [x20]
		00000000000223dc:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   223e0: b4001868     	cbz	x8, 0x226ec <syna_spi_probe+0xfd0>
   223e4: f9403900     	ldr	x0, [x8, #0x70]
   223e8: b4001820     	cbz	x0, 0x226ec <syna_spi_probe+0xfd0>
   223ec: 94000000     	bl	0x223ec <syna_spi_probe+0xcd0>
		00000000000223ec:  R_AARCH64_CALL26	devm_kfree
   223f0: f90002df     	str	xzr, [x22]
		00000000000223f0:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   223f4: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		00000000000223f4:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   223f8: 2a1303e8     	mov	w8, w19
   223fc: f94002c1     	ldr	x1, [x22]
		00000000000223fc:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22400: b4000101     	cbz	x1, 0x22420 <syna_spi_probe+0xd04>
   22404: f9400288     	ldr	x8, [x20]
		0000000000022404:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22408: b40017e8     	cbz	x8, 0x22704 <syna_spi_probe+0xfe8>
   2240c: f9403900     	ldr	x0, [x8, #0x70]
   22410: b40017a0     	cbz	x0, 0x22704 <syna_spi_probe+0xfe8>
   22414: 94000000     	bl	0x22414 <syna_spi_probe+0xcf8>
		0000000000022414:  R_AARCH64_CALL26	devm_kfree
   22418: 2a1303e8     	mov	w8, w19
   2241c: f90002df     	str	xzr, [x22]
		000000000002241c:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22420: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022420:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22424: f94002c1     	ldr	x1, [x22]
		0000000000022424:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   22428: b4000101     	cbz	x1, 0x22448 <syna_spi_probe+0xd2c>
   2242c: f9400288     	ldr	x8, [x20]
		000000000002242c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22430: b4001768     	cbz	x8, 0x2271c <syna_spi_probe+0x1000>
   22434: f9403900     	ldr	x0, [x8, #0x70]
   22438: b4001720     	cbz	x0, 0x2271c <syna_spi_probe+0x1000>
   2243c: 94000000     	bl	0x2243c <syna_spi_probe+0xd20>
		000000000002243c:  R_AARCH64_CALL26	devm_kfree
   22440: 2a1303e8     	mov	w8, w19
   22444: f90002df     	str	xzr, [x22]
		0000000000022444:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   22448: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022448:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   2244c: b9400129     	ldr	w9, [x9]
		000000000002244c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   22450: 7100053f     	cmp	w9, #0x1
   22454: 54000f61     	b.ne	0x22640 <syna_spi_probe+0xf24>
   22458: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022458:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   2245c: f9400120     	ldr	x0, [x9]
		000000000002245c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   22460: b4000fe0     	cbz	x0, 0x2265c <syna_spi_probe+0xf40>
   22464: 94000000     	bl	0x22464 <syna_spi_probe+0xd48>
		0000000000022464:  R_AARCH64_CALL26	devm_regulator_put
   22468: 1400007c     	b	0x22658 <syna_spi_probe+0xf3c>
   2246c: 2a1f03e0     	mov	w0, wzr
   22470: 140000e6     	b	0x22808 <syna_spi_probe+0x10ec>
   22474: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18380
   22478: 91000000     	add	x0, x0, #0x0
		0000000000022478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18380
   2247c: 14000003     	b	0x22488 <syna_spi_probe+0xd6c>
   22480: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ab70
   22484: 91000000     	add	x0, x0, #0x0
		0000000000022484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ab70
   22488: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18083
   2248c: 91000021     	add	x1, x1, #0x0
		000000000002248c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18083
   22490: 94000000     	bl	0x22490 <syna_spi_probe+0xd74>
		0000000000022490:  R_AARCH64_CALL26	_printk
   22494: 128000b3     	mov	w19, #-0x6              // =-6
   22498: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82c
   2249c: 91000000     	add	x0, x0, #0x0
		000000000002249c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82c
   224a0: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   224a4: 91000021     	add	x1, x1, #0x0
		00000000000224a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   224a8: 94000000     	bl	0x224a8 <syna_spi_probe+0xd8c>
		00000000000224a8:  R_AARCH64_CALL26	_printk
   224ac: 140000d6     	b	0x22804 <syna_spi_probe+0x10e8>
   224b0: 128002b3     	mov	w19, #-0x16             // =-22
   224b4: 140000b2     	b	0x2277c <syna_spi_probe+0x1060>
   224b8: 2a0003f3     	mov	w19, w0
   224bc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19caa
   224c0: 91000000     	add	x0, x0, #0x0
		00000000000224c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19caa
   224c4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   224c8: 91000021     	add	x1, x1, #0x0
		00000000000224c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   224cc: 94000000     	bl	0x224cc <syna_spi_probe+0xdb0>
		00000000000224cc:  R_AARCH64_CALL26	_printk
   224d0: 140000ab     	b	0x2277c <syna_spi_probe+0x1060>
   224d4: b94002c2     	ldr	w2, [x22]
		00000000000224d4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0xa0
   224d8: 2a0003f3     	mov	w19, w0
   224dc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e73
   224e0: 91000000     	add	x0, x0, #0x0
		00000000000224e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e73
   224e4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   224e8: 91000021     	add	x1, x1, #0x0
		00000000000224e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   224ec: 94000000     	bl	0x224ec <syna_spi_probe+0xdd0>
		00000000000224ec:  R_AARCH64_CALL26	_printk
   224f0: 140000a3     	b	0x2277c <syna_spi_probe+0x1060>
   224f4: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		00000000000224f4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0xa0
   224f8: 910002d6     	add	x22, x22, #0x0
		00000000000224f8:  R_AARCH64_ADD_ABS_LO12_NC	syna_spi_hw_if+0xa0
   224fc: 2a0003f3     	mov	w19, w0
   22500: b94052c2     	ldr	w2, [x22, #0x50]
   22504: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x180a4
   22508: 91000000     	add	x0, x0, #0x0
		0000000000022508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x180a4
   2250c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		000000000002250c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18845
   22510: 91000021     	add	x1, x1, #0x0
		0000000000022510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18845
   22514: 94000000     	bl	0x22514 <syna_spi_probe+0xdf8>
		0000000000022514:  R_AARCH64_CALL26	_printk
   22518: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b85f
   2251c: 91000000     	add	x0, x0, #0x0
		000000000002251c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b85f
   22520: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   22524: 91000021     	add	x1, x1, #0x0
		0000000000022524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   22528: 94000000     	bl	0x22528 <syna_spi_probe+0xe0c>
		0000000000022528:  R_AARCH64_CALL26	_printk
   2252c: b94002c0     	ldr	w0, [x22]
   22530: 7100041f     	cmp	w0, #0x1
   22534: 5400004b     	b.lt	0x2253c <syna_spi_probe+0xe20>
   22538: 94000000     	bl	0x22538 <syna_spi_probe+0xe1c>
		0000000000022538:  R_AARCH64_CALL26	gpio_free
   2253c: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		000000000002253c:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   22540: 2a1303e0     	mov	w0, w19
   22544: f94002c1     	ldr	x1, [x22]
		0000000000022544:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   22548: b4000101     	cbz	x1, 0x22568 <syna_spi_probe+0xe4c>
   2254c: f9400288     	ldr	x8, [x20]
		000000000002254c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22550: b4000aa8     	cbz	x8, 0x226a4 <syna_spi_probe+0xf88>
   22554: f9403900     	ldr	x0, [x8, #0x70]
   22558: b4000a60     	cbz	x0, 0x226a4 <syna_spi_probe+0xf88>
   2255c: 94000000     	bl	0x2255c <syna_spi_probe+0xe40>
		000000000002255c:  R_AARCH64_CALL26	devm_kfree
   22560: 2a1303e0     	mov	w0, w19
   22564: f90002df     	str	xzr, [x22]
		0000000000022564:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   22568: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022568:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   2256c: f94002c1     	ldr	x1, [x22]
		000000000002256c:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22570: b4000101     	cbz	x1, 0x22590 <syna_spi_probe+0xe74>
   22574: f9400288     	ldr	x8, [x20]
		0000000000022574:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   22578: b4000a28     	cbz	x8, 0x226bc <syna_spi_probe+0xfa0>
   2257c: f9403900     	ldr	x0, [x8, #0x70]
   22580: b40009e0     	cbz	x0, 0x226bc <syna_spi_probe+0xfa0>
   22584: 94000000     	bl	0x22584 <syna_spi_probe+0xe68>
		0000000000022584:  R_AARCH64_CALL26	devm_kfree
   22588: 2a1303e0     	mov	w0, w19
   2258c: f90002df     	str	xzr, [x22]
		000000000002258c:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   22590: 90000016     	adrp	x22, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022590:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   22594: f94002c1     	ldr	x1, [x22]
		0000000000022594:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   22598: b4000101     	cbz	x1, 0x225b8 <syna_spi_probe+0xe9c>
   2259c: f9400288     	ldr	x8, [x20]
		000000000002259c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   225a0: b40009a8     	cbz	x8, 0x226d4 <syna_spi_probe+0xfb8>
   225a4: f9403900     	ldr	x0, [x8, #0x70]
   225a8: b4000960     	cbz	x0, 0x226d4 <syna_spi_probe+0xfb8>
   225ac: 94000000     	bl	0x225ac <syna_spi_probe+0xe90>
		00000000000225ac:  R_AARCH64_CALL26	devm_kfree
   225b0: 2a1303e0     	mov	w0, w19
   225b4: f90002df     	str	xzr, [x22]
		00000000000225b4:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   225b8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000225b8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   225bc: b9400108     	ldr	w8, [x8]
		00000000000225bc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   225c0: 7100051f     	cmp	w8, #0x1
   225c4: 540000e1     	b.ne	0x225e0 <syna_spi_probe+0xec4>
   225c8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000225c8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   225cc: f9400108     	ldr	x8, [x8]
		00000000000225cc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   225d0: b4000188     	cbz	x8, 0x22600 <syna_spi_probe+0xee4>
   225d4: aa0803e0     	mov	x0, x8
   225d8: 94000000     	bl	0x225d8 <syna_spi_probe+0xebc>
		00000000000225d8:  R_AARCH64_CALL26	devm_regulator_put
   225dc: 14000008     	b	0x225fc <syna_spi_probe+0xee0>
   225e0: 5400010b     	b.lt	0x22600 <syna_spi_probe+0xee4>
   225e4: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000225e4:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   225e8: b9400108     	ldr	w8, [x8]
		00000000000225e8:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   225ec: 7100051f     	cmp	w8, #0x1
   225f0: 5400008b     	b.lt	0x22600 <syna_spi_probe+0xee4>
   225f4: 2a0803e0     	mov	w0, w8
   225f8: 94000000     	bl	0x225f8 <syna_spi_probe+0xedc>
		00000000000225f8:  R_AARCH64_CALL26	gpio_free
   225fc: 2a1303e0     	mov	w0, w19
   22600: b94002a8     	ldr	w8, [x21]
		0000000000022600:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22604: 7100051f     	cmp	w8, #0x1
   22608: 540000e1     	b.ne	0x22624 <syna_spi_probe+0xf08>
   2260c: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		000000000002260c:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   22610: f9400108     	ldr	x8, [x8]
		0000000000022610:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22614: b4000fa8     	cbz	x8, 0x22808 <syna_spi_probe+0x10ec>
   22618: aa0803e0     	mov	x0, x8
   2261c: 94000000     	bl	0x2261c <syna_spi_probe+0xf00>
		000000000002261c:  R_AARCH64_CALL26	devm_regulator_put
   22620: 14000079     	b	0x22804 <syna_spi_probe+0x10e8>
   22624: 54000f2b     	b.lt	0x22808 <syna_spi_probe+0x10ec>
   22628: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022628:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   2262c: b9400108     	ldr	w8, [x8]
		000000000002262c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   22630: 7100051f     	cmp	w8, #0x1
   22634: 54000eab     	b.lt	0x22808 <syna_spi_probe+0x10ec>
   22638: 2a0803e0     	mov	w0, w8
   2263c: 14000071     	b	0x22800 <syna_spi_probe+0x10e4>
   22640: 540000eb     	b.lt	0x2265c <syna_spi_probe+0xf40>
   22644: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022644:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   22648: b9400120     	ldr	w0, [x9]
		0000000000022648:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   2264c: 7100041f     	cmp	w0, #0x1
   22650: 5400006b     	b.lt	0x2265c <syna_spi_probe+0xf40>
   22654: 94000000     	bl	0x22654 <syna_spi_probe+0xf38>
		0000000000022654:  R_AARCH64_CALL26	gpio_free
   22658: 2a1303e8     	mov	w8, w19
   2265c: b94002a9     	ldr	w9, [x21]
		000000000002265c:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   22660: 7100053f     	cmp	w9, #0x1
   22664: 540000e1     	b.ne	0x22680 <syna_spi_probe+0xf64>
   22668: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022668:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   2266c: f9400120     	ldr	x0, [x9]
		000000000002266c:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   22670: b4000160     	cbz	x0, 0x2269c <syna_spi_probe+0xf80>
   22674: 2a0803f3     	mov	w19, w8
   22678: 94000000     	bl	0x22678 <syna_spi_probe+0xf5c>
		0000000000022678:  R_AARCH64_CALL26	devm_regulator_put
   2267c: 14000062     	b	0x22804 <syna_spi_probe+0x10e8>
   22680: 540000eb     	b.lt	0x2269c <syna_spi_probe+0xf80>
   22684: 90000009     	adrp	x9, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022684:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   22688: b9400120     	ldr	w0, [x9]
		0000000000022688:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   2268c: 7100041f     	cmp	w0, #0x1
   22690: 5400006b     	b.lt	0x2269c <syna_spi_probe+0xf80>
   22694: 2a0803f3     	mov	w19, w8
   22698: 1400005a     	b	0x22800 <syna_spi_probe+0x10e4>
   2269c: 2a0803e0     	mov	w0, w8
   226a0: 1400005a     	b	0x22808 <syna_spi_probe+0x10ec>
   226a4: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226a8: 91000000     	add	x0, x0, #0x0
		00000000000226a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226ac: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226b0: 91000021     	add	x1, x1, #0x0
		00000000000226b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226b4: 94000000     	bl	0x226b4 <syna_spi_probe+0xf98>
		00000000000226b4:  R_AARCH64_CALL26	_printk
   226b8: 17ffffaa     	b	0x22560 <syna_spi_probe+0xe44>
   226bc: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226c0: 91000000     	add	x0, x0, #0x0
		00000000000226c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226c4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226c8: 91000021     	add	x1, x1, #0x0
		00000000000226c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226cc: 94000000     	bl	0x226cc <syna_spi_probe+0xfb0>
		00000000000226cc:  R_AARCH64_CALL26	_printk
   226d0: 17ffffae     	b	0x22588 <syna_spi_probe+0xe6c>
   226d4: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226d8: 91000000     	add	x0, x0, #0x0
		00000000000226d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226dc: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226e0: 91000021     	add	x1, x1, #0x0
		00000000000226e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226e4: 94000000     	bl	0x226e4 <syna_spi_probe+0xfc8>
		00000000000226e4:  R_AARCH64_CALL26	_printk
   226e8: 17ffffb2     	b	0x225b0 <syna_spi_probe+0xe94>
   226ec: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   226f0: 91000000     	add	x0, x0, #0x0
		00000000000226f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   226f4: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		00000000000226f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   226f8: 91000021     	add	x1, x1, #0x0
		00000000000226f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   226fc: 94000000     	bl	0x226fc <syna_spi_probe+0xfe0>
		00000000000226fc:  R_AARCH64_CALL26	_printk
   22700: 17ffff3c     	b	0x223f0 <syna_spi_probe+0xcd4>
   22704: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   22708: 91000000     	add	x0, x0, #0x0
		0000000000022708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2270c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		000000000002270c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   22710: 91000021     	add	x1, x1, #0x0
		0000000000022710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   22714: 94000000     	bl	0x22714 <syna_spi_probe+0xff8>
		0000000000022714:  R_AARCH64_CALL26	_printk
   22718: 17ffff40     	b	0x22418 <syna_spi_probe+0xcfc>
   2271c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		000000000002271c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   22720: 91000000     	add	x0, x0, #0x0
		0000000000022720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   22724: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   22728: 91000021     	add	x1, x1, #0x0
		0000000000022728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   2272c: 94000000     	bl	0x2272c <syna_spi_probe+0x1010>
		000000000002272c:  R_AARCH64_CALL26	_printk
   22730: 17ffff44     	b	0x22440 <syna_spi_probe+0xd24>
   22734: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022734:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x18
   22738: d5384117     	mrs	x23, SP_EL0
   2273c: f9402af8     	ldr	x24, [x23, #0x50]
   22740: f9400100     	ldr	x0, [x8]
		0000000000022740:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x18
   22744: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022744:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xef0
   22748: 91000108     	add	x8, x8, #0x0
		0000000000022748:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xef0
   2274c: 5281b801     	mov	w1, #0xdc0              // =3520
   22750: 52800102     	mov	w2, #0x8                // =8
   22754: f9002ae8     	str	x8, [x23, #0x50]
   22758: 94000000     	bl	0x22758 <syna_spi_probe+0x103c>
		0000000000022758:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   2275c: f9002af8     	str	x24, [x23, #0x50]
   22760: b5ffdbc0     	cbnz	x0, 0x222d8 <syna_spi_probe+0xbbc>
   22764: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a061
   22768: 91000000     	add	x0, x0, #0x0
		0000000000022768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a061
   2276c: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		000000000002276c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e54
   22770: 91000021     	add	x1, x1, #0x0
		0000000000022770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e54
   22774: 94000000     	bl	0x22774 <syna_spi_probe+0x1058>
		0000000000022774:  R_AARCH64_CALL26	_printk
   22778: 12800173     	mov	w19, #-0xc              // =-12
   2277c: 90000000     	adrp	x0, 0x22000 <syna_spi_probe+0x8e4>
		000000000002277c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c53
   22780: 91000000     	add	x0, x0, #0x0
		0000000000022780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c53
   22784: 90000001     	adrp	x1, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ec
   22788: 91000021     	add	x1, x1, #0x0
		0000000000022788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ec
   2278c: 94000000     	bl	0x2278c <syna_spi_probe+0x1070>
		000000000002278c:  R_AARCH64_CALL26	_printk
   22790: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		0000000000022790:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x128
   22794: b9400108     	ldr	w8, [x8]
		0000000000022794:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x128
   22798: 7100051f     	cmp	w8, #0x1
   2279c: 540000c1     	b.ne	0x227b4 <syna_spi_probe+0x1098>
   227a0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000227a0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x138
   227a4: f9400100     	ldr	x0, [x8]
		00000000000227a4:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x138
   227a8: b4000120     	cbz	x0, 0x227cc <syna_spi_probe+0x10b0>
   227ac: 94000000     	bl	0x227ac <syna_spi_probe+0x1090>
		00000000000227ac:  R_AARCH64_CALL26	devm_regulator_put
   227b0: 14000007     	b	0x227cc <syna_spi_probe+0x10b0>
   227b4: 540000cb     	b.lt	0x227cc <syna_spi_probe+0x10b0>
   227b8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000227b8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x140
   227bc: b9400100     	ldr	w0, [x8]
		00000000000227bc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x140
   227c0: 7100041f     	cmp	w0, #0x1
   227c4: 5400004b     	b.lt	0x227cc <syna_spi_probe+0x10b0>
   227c8: 94000000     	bl	0x227c8 <syna_spi_probe+0x10ac>
		00000000000227c8:  R_AARCH64_CALL26	gpio_free
   227cc: b94002a8     	ldr	w8, [x21]
		00000000000227cc:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x100
   227d0: 7100051f     	cmp	w8, #0x1
   227d4: 540000c1     	b.ne	0x227ec <syna_spi_probe+0x10d0>
   227d8: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000227d8:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x110
   227dc: f9400100     	ldr	x0, [x8]
		00000000000227dc:  R_AARCH64_LDST64_ABS_LO12_NC	syna_spi_hw_if+0x110
   227e0: b4000120     	cbz	x0, 0x22804 <syna_spi_probe+0x10e8>
   227e4: 94000000     	bl	0x227e4 <syna_spi_probe+0x10c8>
		00000000000227e4:  R_AARCH64_CALL26	devm_regulator_put
   227e8: 14000007     	b	0x22804 <syna_spi_probe+0x10e8>
   227ec: 540000cb     	b.lt	0x22804 <syna_spi_probe+0x10e8>
   227f0: 90000008     	adrp	x8, 0x22000 <syna_spi_probe+0x8e4>
		00000000000227f0:  R_AARCH64_ADR_PREL_PG_HI21	syna_spi_hw_if+0x118
   227f4: b9400100     	ldr	w0, [x8]
		00000000000227f4:  R_AARCH64_LDST32_ABS_LO12_NC	syna_spi_hw_if+0x118
   227f8: 7100041f     	cmp	w0, #0x1
   227fc: 5400004b     	b.lt	0x22804 <syna_spi_probe+0x10e8>
   22800: 94000000     	bl	0x22800 <syna_spi_probe+0x10e4>
		0000000000022800:  R_AARCH64_CALL26	gpio_free
   22804: 2a1303e0     	mov	w0, w19
   22808: d5384108     	mrs	x8, SP_EL0
   2280c: f9438908     	ldr	x8, [x8, #0x710]
   22810: f85f83a9     	ldur	x9, [x29, #-0x8]
   22814: eb09011f     	cmp	x8, x9
   22818: 54000141     	b.ne	0x22840 <syna_spi_probe+0x1124>
   2281c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   22820: a94757f6     	ldp	x22, x21, [sp, #0x70]
   22824: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   22828: a94567fa     	ldp	x26, x25, [sp, #0x50]
   2282c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   22830: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   22834: 910243ff     	add	sp, sp, #0x90
   22838: d50323bf     	autiasp
   2283c: d65f03c0     	ret
   22840: 94000000     	bl	0x22840 <syna_spi_probe+0x1124>
		0000000000022840:  R_AARCH64_CALL26	__stack_chk_fail
