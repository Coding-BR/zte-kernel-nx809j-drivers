
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000135f4 <syna_spi_power_on>:
   135f4: d503233f     	paciasp
   135f8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   135fc: f9000bf5     	str	x21, [sp, #0x10]
   13600: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13604: 910003fd     	mov	x29, sp
   13608: 90000008     	adrp	x8, 0x13000 <syna_spi_read+0x88>
		0000000000013608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0ad
   1360c: 91000108     	add	x8, x8, #0x0
		000000000001360c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0ad
   13610: 7200003f     	tst	w1, #0x1
   13614: 90000009     	adrp	x9, 0x13000 <syna_spi_read+0x88>
		0000000000013614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbad6
   13618: 91000129     	add	x9, x9, #0x0
		0000000000013618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbad6
   1361c: 2a0103f4     	mov	w20, w1
   13620: aa0003f3     	mov	x19, x0
   13624: 9a881122     	csel	x2, x9, x8, ne
   13628: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2764
   1362c: 91000000     	add	x0, x0, #0x0
		000000000001362c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2764
   13630: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013630:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a1
   13634: 91000021     	add	x1, x1, #0x0
		0000000000013634:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a1
   13638: 94000000     	bl	0x13638 <syna_spi_power_on+0x44>
		0000000000013638:  R_AARCH64_CALL26	_printk
   1363c: 360001f4     	tbz	w20, #0x0, 0x13678 <syna_spi_power_on+0x84>
   13640: b9412a68     	ldr	w8, [x19, #0x128]
   13644: 7100051f     	cmp	w8, #0x1
   13648: 5400026b     	b.lt	0x13694 <syna_spi_power_on+0xa0>
   1364c: 54000281     	b.ne	0x1369c <syna_spi_power_on+0xa8>
   13650: f9409e60     	ldr	x0, [x19, #0x138]
   13654: b13ffc1f     	cmn	x0, #0xfff
   13658: 54000c23     	b.lo	0x137dc <syna_spi_power_on+0x1e8>
   1365c: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		000000000001365c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe1
   13660: 91000000     	add	x0, x0, #0x0
		0000000000013660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe1
   13664: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a1
   13668: 91000021     	add	x1, x1, #0x0
		0000000000013668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a1
   1366c: 94000000     	bl	0x1366c <syna_spi_power_on+0x78>
		000000000001366c:  R_AARCH64_CALL26	_printk
   13670: 2a1f03f4     	mov	w20, wzr
   13674: 14000074     	b	0x13844 <syna_spi_power_on+0x250>
   13678: b9410268     	ldr	w8, [x19, #0x100]
   1367c: 7100051f     	cmp	w8, #0x1
   13680: 5400054b     	b.lt	0x13728 <syna_spi_power_on+0x134>
   13684: 54000381     	b.ne	0x136f4 <syna_spi_power_on+0x100>
   13688: f9408a60     	ldr	x0, [x19, #0x110]
   1368c: 94000000     	bl	0x1368c <syna_spi_power_on+0x98>
		000000000001368c:  R_AARCH64_CALL26	regulator_disable
   13690: 14000022     	b	0x13718 <syna_spi_power_on+0x124>
   13694: 2a1f03f4     	mov	w20, wzr
   13698: 1400000d     	b	0x136cc <syna_spi_power_on+0xd8>
   1369c: b9414260     	ldr	w0, [x19, #0x140]
   136a0: 7100041f     	cmp	w0, #0x1
   136a4: 540000ab     	b.lt	0x136b8 <syna_spi_power_on+0xc4>
   136a8: b9415274     	ldr	w20, [x19, #0x150]
   136ac: 94000000     	bl	0x136ac <syna_spi_power_on+0xb8>
		00000000000136ac:  R_AARCH64_CALL26	gpio_to_desc
   136b0: 2a1403e1     	mov	w1, w20
   136b4: 94000000     	bl	0x136b4 <syna_spi_power_on+0xc0>
		00000000000136b4:  R_AARCH64_CALL26	gpiod_set_raw_value
   136b8: 2a1f03f4     	mov	w20, wzr
   136bc: b9414a60     	ldr	w0, [x19, #0x148]
   136c0: 7100041f     	cmp	w0, #0x1
   136c4: 5400004b     	b.lt	0x136cc <syna_spi_power_on+0xd8>
   136c8: 94000000     	bl	0x136c8 <syna_spi_power_on+0xd4>
		00000000000136c8:  R_AARCH64_CALL26	msleep
   136cc: b9410268     	ldr	w8, [x19, #0x100]
   136d0: 7100051f     	cmp	w8, #0x1
   136d4: 54000aab     	b.lt	0x13828 <syna_spi_power_on+0x234>
   136d8: 54000721     	b.ne	0x137bc <syna_spi_power_on+0x1c8>
   136dc: f9408a60     	ldr	x0, [x19, #0x110]
   136e0: b13ffc1f     	cmn	x0, #0xfff
   136e4: 54000883     	b.lo	0x137f4 <syna_spi_power_on+0x200>
   136e8: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000136e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9257
   136ec: 91000000     	add	x0, x0, #0x0
		00000000000136ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9257
   136f0: 14000046     	b	0x13808 <syna_spi_power_on+0x214>
   136f4: b9411a60     	ldr	w0, [x19, #0x118]
   136f8: 7100041f     	cmp	w0, #0x1
   136fc: 540000eb     	b.lt	0x13718 <syna_spi_power_on+0x124>
   13700: b9415268     	ldr	w8, [x19, #0x150]
   13704: 7100011f     	cmp	w8, #0x0
   13708: 1a9f17f4     	cset	w20, eq
   1370c: 94000000     	bl	0x1370c <syna_spi_power_on+0x118>
		000000000001370c:  R_AARCH64_CALL26	gpio_to_desc
   13710: 2a1403e1     	mov	w1, w20
   13714: 94000000     	bl	0x13714 <syna_spi_power_on+0x120>
		0000000000013714:  R_AARCH64_CALL26	gpiod_set_raw_value
   13718: b9412660     	ldr	w0, [x19, #0x124]
   1371c: 7100041f     	cmp	w0, #0x1
   13720: 5400004b     	b.lt	0x13728 <syna_spi_power_on+0x134>
   13724: 94000000     	bl	0x13724 <syna_spi_power_on+0x130>
		0000000000013724:  R_AARCH64_CALL26	msleep
   13728: b9412a68     	ldr	w8, [x19, #0x128]
   1372c: 7100051f     	cmp	w8, #0x1
   13730: 5400024b     	b.lt	0x13778 <syna_spi_power_on+0x184>
   13734: 54000081     	b.ne	0x13744 <syna_spi_power_on+0x150>
   13738: f9409e60     	ldr	x0, [x19, #0x138]
   1373c: 94000000     	bl	0x1373c <syna_spi_power_on+0x148>
		000000000001373c:  R_AARCH64_CALL26	regulator_disable
   13740: 1400000a     	b	0x13768 <syna_spi_power_on+0x174>
   13744: b9414260     	ldr	w0, [x19, #0x140]
   13748: 7100041f     	cmp	w0, #0x1
   1374c: 540000eb     	b.lt	0x13768 <syna_spi_power_on+0x174>
   13750: b9415268     	ldr	w8, [x19, #0x150]
   13754: 7100011f     	cmp	w8, #0x0
   13758: 1a9f17f4     	cset	w20, eq
   1375c: 94000000     	bl	0x1375c <syna_spi_power_on+0x168>
		000000000001375c:  R_AARCH64_CALL26	gpio_to_desc
   13760: 2a1403e1     	mov	w1, w20
   13764: 94000000     	bl	0x13764 <syna_spi_power_on+0x170>
		0000000000013764:  R_AARCH64_CALL26	gpiod_set_raw_value
   13768: b9414e60     	ldr	w0, [x19, #0x14c]
   1376c: 7100041f     	cmp	w0, #0x1
   13770: 5400004b     	b.lt	0x13778 <syna_spi_power_on+0x184>
   13774: 94000000     	bl	0x13774 <syna_spi_power_on+0x180>
		0000000000013774:  R_AARCH64_CALL26	msleep
   13778: b940f260     	ldr	w0, [x19, #0xf0]
   1377c: 94000000     	bl	0x1377c <syna_spi_power_on+0x188>
		000000000001377c:  R_AARCH64_CALL26	gpio_to_desc
   13780: 2a1f03e1     	mov	w1, wzr
   13784: 94000000     	bl	0x13784 <syna_spi_power_on+0x190>
		0000000000013784:  R_AARCH64_CALL26	gpiod_direction_output_raw
   13788: 5284e200     	mov	w0, #0x2710             // =10000
   1378c: 52855f01     	mov	w1, #0x2af8             // =11000
   13790: 52800042     	mov	w2, #0x2                // =2
   13794: 94000000     	bl	0x13794 <syna_spi_power_on+0x1a0>
		0000000000013794:  R_AARCH64_CALL26	usleep_range_state
   13798: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c0b
   1379c: 91000000     	add	x0, x0, #0x0
		000000000001379c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c0b
   137a0: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		00000000000137a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a1
   137a4: 91000021     	add	x1, x1, #0x0
		00000000000137a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a1
   137a8: 94000000     	bl	0x137a8 <syna_spi_power_on+0x1b4>
		00000000000137a8:  R_AARCH64_CALL26	_printk
   137ac: 2a1f03f4     	mov	w20, wzr
   137b0: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		00000000000137b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bed
   137b4: 91000042     	add	x2, x2, #0x0
		00000000000137b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bed
   137b8: 1400001e     	b	0x13830 <syna_spi_power_on+0x23c>
   137bc: b9411a60     	ldr	w0, [x19, #0x118]
   137c0: 7100041f     	cmp	w0, #0x1
   137c4: 540002ab     	b.lt	0x13818 <syna_spi_power_on+0x224>
   137c8: b9415275     	ldr	w21, [x19, #0x150]
   137cc: 94000000     	bl	0x137cc <syna_spi_power_on+0x1d8>
		00000000000137cc:  R_AARCH64_CALL26	gpio_to_desc
   137d0: 2a1503e1     	mov	w1, w21
   137d4: 94000000     	bl	0x137d4 <syna_spi_power_on+0x1e0>
		00000000000137d4:  R_AARCH64_CALL26	gpiod_set_raw_value
   137d8: 14000010     	b	0x13818 <syna_spi_power_on+0x224>
   137dc: 94000000     	bl	0x137dc <syna_spi_power_on+0x1e8>
		00000000000137dc:  R_AARCH64_CALL26	regulator_enable
   137e0: 2a0003f4     	mov	w20, w0
   137e4: 36fff6c0     	tbz	w0, #0x1f, 0x136bc <syna_spi_power_on+0xc8>
   137e8: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		00000000000137e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
   137ec: 91000000     	add	x0, x0, #0x0
		00000000000137ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
   137f0: 14000006     	b	0x13808 <syna_spi_power_on+0x214>
   137f4: 94000000     	bl	0x137f4 <syna_spi_power_on+0x200>
		00000000000137f4:  R_AARCH64_CALL26	regulator_enable
   137f8: 2a0003f4     	mov	w20, w0
   137fc: 36f800e0     	tbz	w0, #0x1f, 0x13818 <syna_spi_power_on+0x224>
   13800: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8791
   13804: 91000000     	add	x0, x0, #0x0
		0000000000013804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8791
   13808: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a1
   1380c: 91000021     	add	x1, x1, #0x0
		000000000001380c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a1
   13810: 94000000     	bl	0x13810 <syna_spi_power_on+0x21c>
		0000000000013810:  R_AARCH64_CALL26	_printk
   13814: 1400000c     	b	0x13844 <syna_spi_power_on+0x250>
   13818: b9412260     	ldr	w0, [x19, #0x120]
   1381c: 7100041f     	cmp	w0, #0x1
   13820: 5400004b     	b.lt	0x13828 <syna_spi_power_on+0x234>
   13824: 94000000     	bl	0x13824 <syna_spi_power_on+0x230>
		0000000000013824:  R_AARCH64_CALL26	msleep
   13828: 90000002     	adrp	x2, 0x13000 <syna_spi_read+0x88>
		0000000000013828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d08
   1382c: 91000042     	add	x2, x2, #0x0
		000000000001382c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d08
   13830: 90000000     	adrp	x0, 0x13000 <syna_spi_read+0x88>
		0000000000013830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e3a
   13834: 91000000     	add	x0, x0, #0x0
		0000000000013834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e3a
   13838: 90000001     	adrp	x1, 0x13000 <syna_spi_read+0x88>
		0000000000013838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52a1
   1383c: 91000021     	add	x1, x1, #0x0
		000000000001383c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52a1
   13840: 94000000     	bl	0x13840 <syna_spi_power_on+0x24c>
		0000000000013840:  R_AARCH64_CALL26	_printk
   13844: 2a1403e0     	mov	w0, w20
   13848: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1384c: f9400bf5     	ldr	x21, [sp, #0x10]
   13850: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13854: d50323bf     	autiasp
   13858: d65f03c0     	ret
