
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000688 <aw22xxx_i2c_probe>:
     688: d503233f     	paciasp
     68c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     690: a90167fa     	stp	x26, x25, [sp, #0x10]
     694: a9025ff8     	stp	x24, x23, [sp, #0x20]
     698: a90357f6     	stp	x22, x21, [sp, #0x30]
     69c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     6a0: 910003fd     	mov	x29, sp
     6a4: aa0003f5     	mov	x21, x0
     6a8: f9418416     	ldr	x22, [x0, #0x308]
     6ac: 91008014     	add	x20, x0, #0x20
     6b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebf
     6b4: 91000000     	add	x0, x0, #0x0
		00000000000006b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebf
     6b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     6bc: 91000021     	add	x1, x1, #0x0
		00000000000006bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     6c0: 52813b22     	mov	w2, #0x9d9              // =2521
     6c4: 94000000     	bl	0x6c4 <aw22xxx_i2c_probe+0x3c>
		00000000000006c4:  R_AARCH64_CALL26	_printk
     6c8: f9400ea0     	ldr	x0, [x21, #0x18]
     6cc: f9400808     	ldr	x8, [x0, #0x10]
     6d0: f9401108     	ldr	x8, [x8, #0x20]
     6d4: b85fc110     	ldur	w16, [x8, #-0x4]
     6d8: 729d62d1     	movk	w17, #0xeb16
     6dc: 72af9851     	movk	w17, #0x7cc2, lsl #16
     6e0: 6b11021f     	cmp	w16, w17
     6e4: 54000040     	b.eq	0x6ec <aw22xxx_i2c_probe+0x64>
     6e8: d4304500     	brk	#0x8228
     6ec: d63f0100     	blr	x8
     6f0: 360008e0     	tbz	w0, #0x0, 0x80c <aw22xxx_i2c_probe+0x184>
     6f4: aa1403e0     	mov	x0, x20
     6f8: 52806b01     	mov	w1, #0x358              // =856
     6fc: 5281b802     	mov	w2, #0xdc0              // =3520
     700: 94000000     	bl	0x700 <aw22xxx_i2c_probe+0x78>
		0000000000000700:  R_AARCH64_CALL26	devm_kmalloc
     704: b40006c0     	cbz	x0, 0x7dc <aw22xxx_i2c_probe+0x154>
     708: aa0003f3     	mov	x19, x0
     70c: a9005015     	stp	x21, x20, [x0]
     710: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1830
     714: 91000021     	add	x1, x1, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1830
     718: f9005ea0     	str	x0, [x21, #0xb8]
     71c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000071c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d0
     720: 91000042     	add	x2, x2, #0x0
		0000000000000720:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d0
     724: 910ac000     	add	x0, x0, #0x2b0
     728: 94000000     	bl	0x728 <aw22xxx_i2c_probe+0xa0>
		0000000000000728:  R_AARCH64_CALL26	__mutex_init
     72c: 52800028     	mov	w8, #0x1                // =1
     730: aa1403e0     	mov	x0, x20
     734: 390c1268     	strb	w8, [x19, #0x304]
     738: 94000000     	bl	0x738 <aw22xxx_i2c_probe+0xb0>
		0000000000000738:  R_AARCH64_CALL26	devm_pinctrl_get
     73c: aa0003e8     	mov	x8, x0
     740: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd9
     744: 91000000     	add	x0, x0, #0x0
		0000000000000744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd9
     748: f9019a68     	str	x8, [x19, #0x330]
     74c: b40004c8     	cbz	x8, 0x7e4 <aw22xxx_i2c_probe+0x15c>
     750: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     754: 54000488     	b.hi	0x7e4 <aw22xxx_i2c_probe+0x15c>
     758: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbb
     75c: 91000021     	add	x1, x1, #0x0
		000000000000075c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbb
     760: aa0803e0     	mov	x0, x8
     764: 94000000     	bl	0x764 <aw22xxx_i2c_probe+0xdc>
		0000000000000764:  R_AARCH64_CALL26	pinctrl_lookup_state
     768: aa0003e8     	mov	x8, x0
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcae
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcae
     774: f9019e68     	str	x8, [x19, #0x338]
     778: b4000368     	cbz	x8, 0x7e4 <aw22xxx_i2c_probe+0x15c>
     77c: b140051f     	cmn	x8, #0x1, lsl #12       // =0x1000
     780: 54000328     	b.hi	0x7e4 <aw22xxx_i2c_probe+0x15c>
     784: f9419a60     	ldr	x0, [x19, #0x330]
     788: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb06
     78c: 91000021     	add	x1, x1, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb06
     790: 94000000     	bl	0x790 <aw22xxx_i2c_probe+0x108>
		0000000000000790:  R_AARCH64_CALL26	pinctrl_lookup_state
     794: aa0003e8     	mov	x8, x0
     798: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a3
     79c: 91000000     	add	x0, x0, #0x0
		000000000000079c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a3
     7a0: f901a268     	str	x8, [x19, #0x340]
     7a4: b4000208     	cbz	x8, 0x7e4 <aw22xxx_i2c_probe+0x15c>
     7a8: b13ffd1f     	cmn	x8, #0xfff
     7ac: 540001c2     	b.hs	0x7e4 <aw22xxx_i2c_probe+0x15c>
     7b0: f9419a60     	ldr	x0, [x19, #0x330]
     7b4: b4000380     	cbz	x0, 0x824 <aw22xxx_i2c_probe+0x19c>
     7b8: f9419e61     	ldr	x1, [x19, #0x338]
     7bc: b4000341     	cbz	x1, 0x824 <aw22xxx_i2c_probe+0x19c>
     7c0: 94000000     	bl	0x7c0 <aw22xxx_i2c_probe+0x138>
		00000000000007c0:  R_AARCH64_CALL26	pinctrl_select_state
     7c4: 350003e0     	cbnz	w0, 0x840 <aw22xxx_i2c_probe+0x1b8>
     7c8: b5000656     	cbnz	x22, 0x890 <aw22xxx_i2c_probe+0x208>
     7cc: 92800008     	mov	x8, #-0x1               // =-1
     7d0: 2a1f03f7     	mov	w23, wzr
     7d4: f9017268     	str	x8, [x19, #0x2e0]
     7d8: 14000023     	b	0x864 <aw22xxx_i2c_probe+0x1dc>
     7dc: 12800177     	mov	w23, #-0xc              // =-12
     7e0: 14000024     	b	0x870 <aw22xxx_i2c_probe+0x1e8>
     7e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf1e
     7e8: 91000021     	add	x1, x1, #0x0
		00000000000007e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf1e
     7ec: 94000000     	bl	0x7ec <aw22xxx_i2c_probe+0x164>
		00000000000007ec:  R_AARCH64_CALL26	_printk
     7f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     7f4: 91000000     	add	x0, x0, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     7f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     7fc: 91000021     	add	x1, x1, #0x0
		00000000000007fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     800: 94000000     	bl	0x800 <aw22xxx_i2c_probe+0x178>
		0000000000000800:  R_AARCH64_CALL26	_printk
     804: 128002b7     	mov	w23, #-0x16             // =-22
     808: 14000016     	b	0x860 <aw22xxx_i2c_probe+0x1d8>
     80c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73c
     810: 91000021     	add	x1, x1, #0x0
		0000000000000810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73c
     814: aa1403e0     	mov	x0, x20
     818: 94000000     	bl	0x818 <aw22xxx_i2c_probe+0x190>
		0000000000000818:  R_AARCH64_CALL26	_dev_err
     81c: 12800097     	mov	w23, #-0x5              // =-5
     820: 14000014     	b	0x870 <aw22xxx_i2c_probe+0x1e8>
     824: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118a
     828: 91000000     	add	x0, x0, #0x0
		0000000000000828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118a
     82c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000082c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcf
     830: 91000021     	add	x1, x1, #0x0
		0000000000000830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcf
     834: 94000000     	bl	0x834 <aw22xxx_i2c_probe+0x1ac>
		0000000000000834:  R_AARCH64_CALL26	_printk
     838: 128002b7     	mov	w23, #-0x16             // =-22
     83c: 14000002     	b	0x844 <aw22xxx_i2c_probe+0x1bc>
     840: 2a0003f7     	mov	w23, w0
     844: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x758
     848: 91000000     	add	x0, x0, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x758
     84c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     850: 91000021     	add	x1, x1, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     854: 94000000     	bl	0x854 <aw22xxx_i2c_probe+0x1cc>
		0000000000000854:  R_AARCH64_CALL26	_printk
     858: f9419a60     	ldr	x0, [x19, #0x330]
     85c: 94000000     	bl	0x85c <aw22xxx_i2c_probe+0x1d4>
		000000000000085c:  R_AARCH64_CALL26	devm_pinctrl_put
     860: f9019a7f     	str	xzr, [x19, #0x330]
     864: aa1403e0     	mov	x0, x20
     868: aa1303e1     	mov	x1, x19
     86c: 94000000     	bl	0x86c <aw22xxx_i2c_probe+0x1e4>
		000000000000086c:  R_AARCH64_CALL26	devm_kfree
     870: 2a1703e0     	mov	w0, w23
     874: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     878: a94357f6     	ldp	x22, x21, [sp, #0x30]
     87c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     880: a94167fa     	ldp	x26, x25, [sp, #0x10]
     884: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     888: d50323bf     	autiasp
     88c: d65f03c0     	ret
     890: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x167a
     894: 91000021     	add	x1, x1, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x167a
     898: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x370
     89c: 91000042     	add	x2, x2, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x370
     8a0: aa1603e0     	mov	x0, x22
     8a4: 52800023     	mov	w3, #0x1                // =1
     8a8: aa1f03e4     	mov	x4, xzr
     8ac: 94000000     	bl	0x8ac <aw22xxx_i2c_probe+0x224>
		00000000000008ac:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     8b0: 90000018     	adrp	x24, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x370
     8b4: 37f80060     	tbnz	w0, #0x1f, 0x8c0 <aw22xxx_i2c_probe+0x238>
     8b8: b9400303     	ldr	w3, [x24]
		00000000000008b8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x370
     8bc: 14000003     	b	0x8c8 <aw22xxx_i2c_probe+0x240>
     8c0: 52800163     	mov	w3, #0xb                // =11
     8c4: b9000303     	str	w3, [x24]
		00000000000008c4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x370
     8c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x192f
     8cc: 91000021     	add	x1, x1, #0x0
		00000000000008cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x192f
     8d0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     8d4: 91000042     	add	x2, x2, #0x0
		00000000000008d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     8d8: aa1403e0     	mov	x0, x20
     8dc: 94000000     	bl	0x8dc <aw22xxx_i2c_probe+0x254>
		00000000000008dc:  R_AARCH64_CALL26	_dev_info
     8e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd8
     8e4: 91000021     	add	x1, x1, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd8
     8e8: aa1603e0     	mov	x0, x22
     8ec: 2a1f03e2     	mov	w2, wzr
     8f0: 94000000     	bl	0x8f0 <aw22xxx_i2c_probe+0x268>
		00000000000008f0:  R_AARCH64_CALL26	of_get_named_gpio
     8f4: b902e260     	str	w0, [x19, #0x2e0]
     8f8: 36f80080     	tbz	w0, #0x1f, 0x908 <aw22xxx_i2c_probe+0x280>
     8fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f6
     900: 91000021     	add	x1, x1, #0x0
		0000000000000900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f6
     904: 1400001c     	b	0x974 <aw22xxx_i2c_probe+0x2ec>
     908: 94000000     	bl	0x908 <aw22xxx_i2c_probe+0x280>
		0000000000000908:  R_AARCH64_CALL26	gpio_to_desc
     90c: 52800021     	mov	w1, #0x1                // =1
     910: 94000000     	bl	0x910 <aw22xxx_i2c_probe+0x288>
		0000000000000910:  R_AARCH64_CALL26	gpiod_direction_output_raw
     914: 35000100     	cbnz	w0, 0x934 <aw22xxx_i2c_probe+0x2ac>
     918: b942e263     	ldr	w3, [x19, #0x2e0]
     91c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000091c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd4
     920: 91000021     	add	x1, x1, #0x0
		0000000000000920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd4
     924: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     928: 91000042     	add	x2, x2, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     92c: aa1403e0     	mov	x0, x20
     930: 94000000     	bl	0x930 <aw22xxx_i2c_probe+0x2a8>
		0000000000000930:  R_AARCH64_CALL26	_dev_info
     934: b942e263     	ldr	w3, [x19, #0x2e0]
     938: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa68
     93c: 91000021     	add	x1, x1, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa68
     940: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     944: 91000042     	add	x2, x2, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     948: aa1403e0     	mov	x0, x20
     94c: 94000000     	bl	0x94c <aw22xxx_i2c_probe+0x2c4>
		000000000000094c:  R_AARCH64_CALL26	_dev_info
     950: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15cd
     954: 91000021     	add	x1, x1, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15cd
     958: aa1603e0     	mov	x0, x22
     95c: 2a1f03e2     	mov	w2, wzr
     960: 94000000     	bl	0x960 <aw22xxx_i2c_probe+0x2d8>
		0000000000000960:  R_AARCH64_CALL26	of_get_named_gpio
     964: b902e660     	str	w0, [x19, #0x2e4]
     968: 36f801e0     	tbz	w0, #0x1f, 0x9a4 <aw22xxx_i2c_probe+0x31c>
     96c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ab
     970: 91000021     	add	x1, x1, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ab
     974: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     978: 91000042     	add	x2, x2, #0x0
		0000000000000978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     97c: aa1403e0     	mov	x0, x20
     980: 94000000     	bl	0x980 <aw22xxx_i2c_probe+0x2f8>
		0000000000000980:  R_AARCH64_CALL26	_dev_err
     984: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12fa
     988: 91000021     	add	x1, x1, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12fa
     98c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     990: 91000042     	add	x2, x2, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     994: aa1403e0     	mov	x0, x20
     998: 94000000     	bl	0x998 <aw22xxx_i2c_probe+0x310>
		0000000000000998:  R_AARCH64_CALL26	_dev_err
     99c: 128002b7     	mov	w23, #-0x16             // =-22
     9a0: 17ffffb1     	b	0x864 <aw22xxx_i2c_probe+0x1dc>
     9a4: 2a0003e3     	mov	w3, w0
     9a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x781
     9ac: 91000021     	add	x1, x1, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x781
     9b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     9b4: 91000042     	add	x2, x2, #0x0
		00000000000009b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     9b8: aa1403e0     	mov	x0, x20
     9bc: 94000000     	bl	0x9bc <aw22xxx_i2c_probe+0x334>
		00000000000009bc:  R_AARCH64_CALL26	_dev_info
     9c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ce
     9c4: 91000021     	add	x1, x1, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ce
     9c8: aa1603e0     	mov	x0, x22
     9cc: 2a1f03e2     	mov	w2, wzr
     9d0: 94000000     	bl	0x9d0 <aw22xxx_i2c_probe+0x348>
		00000000000009d0:  R_AARCH64_CALL26	of_get_named_gpio
     9d4: b902ea60     	str	w0, [x19, #0x2e8]
     9d8: 37f80120     	tbnz	w0, #0x1f, 0x9fc <aw22xxx_i2c_probe+0x374>
     9dc: 2a0003e3     	mov	w3, w0
     9e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x101
     9e4: 91000021     	add	x1, x1, #0x0
		00000000000009e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x101
     9e8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     9ec: 91000042     	add	x2, x2, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     9f0: aa1403e0     	mov	x0, x20
     9f4: 94000000     	bl	0x9f4 <aw22xxx_i2c_probe+0x36c>
		00000000000009f4:  R_AARCH64_CALL26	_dev_info
     9f8: 14000007     	b	0xa14 <aw22xxx_i2c_probe+0x38c>
     9fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x171d
     a00: 91000021     	add	x1, x1, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x171d
     a04: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x822
     a08: 91000042     	add	x2, x2, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x822
     a0c: aa1403e0     	mov	x0, x20
     a10: 94000000     	bl	0xa10 <aw22xxx_i2c_probe+0x388>
		0000000000000a10:  R_AARCH64_CALL26	_dev_info
     a14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9c
     a18: 91000021     	add	x1, x1, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9c
     a1c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d4
     a20: 91000042     	add	x2, x2, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d4
     a24: aa1603e0     	mov	x0, x22
     a28: 52800023     	mov	w3, #0x1                // =1
     a2c: aa1f03e4     	mov	x4, xzr
     a30: 94000000     	bl	0xa30 <aw22xxx_i2c_probe+0x3a8>
		0000000000000a30:  R_AARCH64_CALL26	of_property_read_variable_u32_array
     a34: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000a34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d4
     a38: 36f80040     	tbz	w0, #0x1f, 0xa40 <aw22xxx_i2c_probe+0x3b8>
     a3c: b900033f     	str	wzr, [x25]
		0000000000000a3c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61d4
     a40: b942e261     	ldr	w1, [x19, #0x2e0]
     a44: 37f800e1     	tbnz	w1, #0x1f, 0xa60 <aw22xxx_i2c_probe+0x3d8>
     a48: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5c
     a4c: 91000063     	add	x3, x3, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5c
     a50: aa1403e0     	mov	x0, x20
     a54: aa1f03e2     	mov	x2, xzr
     a58: 94000000     	bl	0xa58 <aw22xxx_i2c_probe+0x3d0>
		0000000000000a58:  R_AARCH64_CALL26	devm_gpio_request_one
     a5c: 35000560     	cbnz	w0, 0xb08 <aw22xxx_i2c_probe+0x480>
     a60: b942e661     	ldr	w1, [x19, #0x2e4]
     a64: 37f800e1     	tbnz	w1, #0x1f, 0xa80 <aw22xxx_i2c_probe+0x3f8>
     a68: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
     a6c: 91000063     	add	x3, x3, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
     a70: aa1403e0     	mov	x0, x20
     a74: 52800022     	mov	w2, #0x1                // =1
     a78: 94000000     	bl	0xa78 <aw22xxx_i2c_probe+0x3f0>
		0000000000000a78:  R_AARCH64_CALL26	devm_gpio_request_one
     a7c: 350004e0     	cbnz	w0, 0xb18 <aw22xxx_i2c_probe+0x490>
     a80: aa1303e0     	mov	x0, x19
     a84: 940000d9     	bl	0xde8 <aw22xxx_hw_reset>
     a88: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	multicolor_led
     a8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18cd
     a90: 91000000     	add	x0, x0, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18cd
     a94: b9400343     	ldr	w3, [x26]
		0000000000000a94:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     a98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     a9c: 91000021     	add	x1, x1, #0x0
		0000000000000a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     aa0: 52814362     	mov	w2, #0xa1b              // =2587
     aa4: 94000000     	bl	0xaa4 <aw22xxx_i2c_probe+0x41c>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: b9400348     	ldr	w8, [x26]
		0000000000000aa8:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     aac: 51000508     	sub	w8, w8, #0x1
     ab0: 7100091f     	cmp	w8, #0x2
     ab4: 54000422     	b.hs	0xb38 <aw22xxx_i2c_probe+0x4b0>
     ab8: b942e260     	ldr	w0, [x19, #0x2e0]
     abc: 94000000     	bl	0xabc <aw22xxx_i2c_probe+0x434>
		0000000000000abc:  R_AARCH64_CALL26	gpio_to_desc
     ac0: 2a1f03e1     	mov	w1, wzr
     ac4: 94000000     	bl	0xac4 <aw22xxx_i2c_probe+0x43c>
		0000000000000ac4:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
     ac8: b942e661     	ldr	w1, [x19, #0x2e4]
     acc: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
     ad0: 91000063     	add	x3, x3, #0x0
		0000000000000ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
     ad4: aa1403e0     	mov	x0, x20
     ad8: aa1f03e2     	mov	x2, xzr
     adc: 94000000     	bl	0xadc <aw22xxx_i2c_probe+0x454>
		0000000000000adc:  R_AARCH64_CALL26	devm_gpio_request_one
     ae0: b9400328     	ldr	w8, [x25]
		0000000000000ae0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61d4
     ae4: 52800169     	mov	w9, #0xb                // =11
     ae8: 5282328a     	mov	w10, #0x1194            // =4500
     aec: 2a1f03f7     	mov	w23, wzr
     af0: b900035f     	str	wzr, [x26]
		0000000000000af0:  R_AARCH64_LDST32_ABS_LO12_NC	multicolor_led
     af4: 7100011f     	cmp	w8, #0x0
     af8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000af8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6268
     afc: 1a890149     	csel	w9, w10, w9, eq
     b00: b9000109     	str	w9, [x8]
		0000000000000b00:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6268
     b04: 17ffff5b     	b	0x870 <aw22xxx_i2c_probe+0x1e8>
     b08: 2a0003f7     	mov	w23, w0
     b0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10d8
     b10: 91000021     	add	x1, x1, #0x0
		0000000000000b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10d8
     b14: 14000004     	b	0xb24 <aw22xxx_i2c_probe+0x49c>
     b18: 2a0003f7     	mov	w23, w0
     b1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     b20: 91000021     	add	x1, x1, #0x0
		0000000000000b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     b24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     b28: 91000042     	add	x2, x2, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     b2c: aa1403e0     	mov	x0, x20
     b30: 94000000     	bl	0xb30 <aw22xxx_i2c_probe+0x4a8>
		0000000000000b30:  R_AARCH64_CALL26	_dev_err
     b34: 17ffff4c     	b	0x864 <aw22xxx_i2c_probe+0x1dc>
     b38: aa1303e0     	mov	x0, x19
     b3c: 940000d2     	bl	0xe84 <aw22xxx_read_chipid>
     b40: 36f80140     	tbz	w0, #0x1f, 0xb68 <aw22xxx_i2c_probe+0x4e0>
     b44: 2a0003f7     	mov	w23, w0
     b48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf
     b4c: 91000021     	add	x1, x1, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf
     b50: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     b54: 91000042     	add	x2, x2, #0x0
		0000000000000b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     b58: aa1403e0     	mov	x0, x20
     b5c: 2a1703e3     	mov	w3, w23
     b60: 94000000     	bl	0xb60 <aw22xxx_i2c_probe+0x4d8>
		0000000000000b60:  R_AARCH64_CALL26	_dev_err
     b64: 17ffff3d     	b	0x858 <aw22xxx_i2c_probe+0x1d0>
     b68: b942e669     	ldr	w9, [x19, #0x2e4]
     b6c: 394bb268     	ldrb	w8, [x19, #0x2ec]
     b70: 37f801a9     	tbnz	w9, #0x1f, 0xba4 <aw22xxx_i2c_probe+0x51c>
     b74: 37000188     	tbnz	w8, #0x0, 0xba4 <aw22xxx_i2c_probe+0x51c>
     b78: aa1303e0     	mov	x0, x19
     b7c: 94000135     	bl	0x1050 <aw22xxx_interrupt_setup>
     b80: b9400301     	ldr	w1, [x24]
		0000000000000b80:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x370
     b84: 7100303f     	cmp	w1, #0xc
     b88: 54000143     	b.lo	0xbb0 <aw22xxx_i2c_probe+0x528>
     b8c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0
     b90: 91000000     	add	x0, x0, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0
     b94: 94000000     	bl	0xb94 <aw22xxx_i2c_probe+0x50c>
		0000000000000b94:  R_AARCH64_CALL26	_printk
     b98: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1158
     b9c: 910002f7     	add	x23, x23, #0x0
		0000000000000b9c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1158
     ba0: 14000006     	b	0xbb8 <aw22xxx_i2c_probe+0x530>
     ba4: 32000108     	orr	w8, w8, #0x1
     ba8: 390bb268     	strb	w8, [x19, #0x2ec]
     bac: 14000010     	b	0xbec <aw22xxx_i2c_probe+0x564>
     bb0: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13a0
     bb4: 910002f7     	add	x23, x23, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13a0
     bb8: b942e660     	ldr	w0, [x19, #0x2e4]
     bbc: 94000000     	bl	0xbbc <aw22xxx_i2c_probe+0x534>
		0000000000000bbc:  R_AARCH64_CALL26	gpio_to_desc
     bc0: 94000000     	bl	0xbc0 <aw22xxx_i2c_probe+0x538>
		0000000000000bc0:  R_AARCH64_CALL26	gpiod_to_irq
     bc4: 2a0003e1     	mov	w1, w0
     bc8: 90000005     	adrp	x5, 0x0 <.text>
		0000000000000bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d0
     bcc: 910000a5     	add	x5, x5, #0x0
		0000000000000bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d0
     bd0: aa1403e0     	mov	x0, x20
     bd4: aa1f03e2     	mov	x2, xzr
     bd8: aa1703e3     	mov	x3, x23
     bdc: 52840044     	mov	w4, #0x2002             // =8194
     be0: aa1303e6     	mov	x6, x19
     be4: 94000000     	bl	0xbe4 <aw22xxx_i2c_probe+0x55c>
		0000000000000be4:  R_AARCH64_CALL26	devm_request_threaded_irq
     be8: 35000640     	cbnz	w0, 0xcb0 <aw22xxx_i2c_probe+0x628>
     bec: aa1303e0     	mov	x0, x19
     bf0: aa1603e1     	mov	x1, x22
     bf4: f9005eb3     	str	x19, [x21, #0xb8]
     bf8: 9400022b     	bl	0x14a4 <aw22xxx_parse_led_cdev>
     bfc: 940002ac     	bl	0x16ac <aw22xxx_alloc_name_array>
     c00: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd93
     c04: 91000108     	add	x8, x8, #0x0
		0000000000000c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd93
     c08: b942ea63     	ldr	w3, [x19, #0x2e8]
     c0c: f9400109     	ldr	x9, [x8]
     c10: f8407108     	ldur	x8, [x8, #0x7]
     c14: 90000005     	adrp	x5, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61d8
     c18: 910000a5     	add	x5, x5, #0x0
		0000000000000c18:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x61d8
     c1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f5
     c20: 91000000     	add	x0, x0, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f5
     c24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87b
     c28: 91000021     	add	x1, x1, #0x0
		0000000000000c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87b
     c2c: 5280bbc2     	mov	w2, #0x5de              // =1502
     c30: 2a1f03e4     	mov	w4, wzr
     c34: 3900fcbf     	strb	wzr, [x5, #0x3f]
     c38: f80370bf     	stur	xzr, [x5, #0x37]
     c3c: f802f0bf     	stur	xzr, [x5, #0x2f]
     c40: f80270bf     	stur	xzr, [x5, #0x27]
     c44: f801f0bf     	stur	xzr, [x5, #0x1f]
     c48: f80170bf     	stur	xzr, [x5, #0x17]
     c4c: f800f0bf     	stur	xzr, [x5, #0xf]
     c50: f90000a9     	str	x9, [x5]
     c54: f80070a8     	stur	x8, [x5, #0x7]
     c58: 94000000     	bl	0xc58 <aw22xxx_i2c_probe+0x5d0>
		0000000000000c58:  R_AARCH64_CALL26	_printk
     c5c: aa1303e0     	mov	x0, x19
     c60: 9400032c     	bl	0x1910 <aw22xxx_fw_init>
     c64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fc
     c68: 91000000     	add	x0, x0, #0x0
		0000000000000c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fc
     c6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     c70: 91000021     	add	x1, x1, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     c74: 52814ac2     	mov	w2, #0xa56              // =2646
     c78: 94000000     	bl	0xc78 <aw22xxx_i2c_probe+0x5f0>
		0000000000000c78:  R_AARCH64_CALL26	_printk
     c7c: b942e260     	ldr	w0, [x19, #0x2e0]
     c80: 94000000     	bl	0xc80 <aw22xxx_i2c_probe+0x5f8>
		0000000000000c80:  R_AARCH64_CALL26	gpio_to_desc
     c84: 2a1f03e1     	mov	w1, wzr
     c88: 94000000     	bl	0xc88 <aw22xxx_i2c_probe+0x600>
		0000000000000c88:  R_AARCH64_CALL26	gpiod_direction_output_raw
     c8c: 350002c0     	cbnz	w0, 0xce4 <aw22xxx_i2c_probe+0x65c>
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	zlog_aw22xxx_dev
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	zlog_aw22xxx_dev
     c98: 94000000     	bl	0xc98 <aw22xxx_i2c_probe+0x610>
		0000000000000c98:  R_AARCH64_CALL26	zlog_register_client
     c9c: f901aa60     	str	x0, [x19, #0x350]
     ca0: b4000300     	cbz	x0, 0xd00 <aw22xxx_i2c_probe+0x678>
     ca4: 94000350     	bl	0x19e4 <aw22xxx_create_proc_entry>
     ca8: 2a1f03f7     	mov	w23, wzr
     cac: 17fffef1     	b	0x870 <aw22xxx_i2c_probe+0x1e8>
     cb0: 2a0003f7     	mov	w23, w0
     cb4: b942e660     	ldr	w0, [x19, #0x2e4]
     cb8: 94000000     	bl	0xcb8 <aw22xxx_i2c_probe+0x630>
		0000000000000cb8:  R_AARCH64_CALL26	gpio_to_desc
     cbc: 94000000     	bl	0xcbc <aw22xxx_i2c_probe+0x634>
		0000000000000cbc:  R_AARCH64_CALL26	gpiod_to_irq
     cc0: 2a0003e3     	mov	w3, w0
     cc4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd52
     cc8: 91000021     	add	x1, x1, #0x0
		0000000000000cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd52
     ccc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     cd0: 91000042     	add	x2, x2, #0x0
		0000000000000cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     cd4: aa1403e0     	mov	x0, x20
     cd8: 2a1703e4     	mov	w4, w23
     cdc: 94000000     	bl	0xcdc <aw22xxx_i2c_probe+0x654>
		0000000000000cdc:  R_AARCH64_CALL26	_dev_err
     ce0: 17fffede     	b	0x858 <aw22xxx_i2c_probe+0x1d0>
     ce4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49b
     ce8: 91000000     	add	x0, x0, #0x0
		0000000000000ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49b
     cec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     cf0: 91000021     	add	x1, x1, #0x0
		0000000000000cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     cf4: 52814b62     	mov	w2, #0xa5b              // =2651
     cf8: 94000000     	bl	0xcf8 <aw22xxx_i2c_probe+0x670>
		0000000000000cf8:  R_AARCH64_CALL26	_printk
     cfc: 17ffffe5     	b	0xc90 <aw22xxx_i2c_probe+0x608>
     d00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd
     d04: 91000021     	add	x1, x1, #0x0
		0000000000000d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd
     d08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
     d0c: 91000000     	add	x0, x0, #0x0
		0000000000000d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
     d10: 52814c22     	mov	w2, #0xa61              // =2657
     d14: aa0103e3     	mov	x3, x1
     d18: 94000000     	bl	0xd18 <aw22xxx_i2c_probe+0x690>
		0000000000000d18:  R_AARCH64_CALL26	_printk
     d1c: 17ffffe2     	b	0xca4 <aw22xxx_i2c_probe+0x61c>
