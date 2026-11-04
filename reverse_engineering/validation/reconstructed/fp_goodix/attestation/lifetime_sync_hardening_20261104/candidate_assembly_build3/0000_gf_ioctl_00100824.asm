
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001710 <gf_ioctl>:
    1710: d503233f     	paciasp
    1714: d10143ff     	sub	sp, sp, #0x50
    1718: a9027bfd     	stp	x29, x30, [sp, #0x20]
    171c: f9001bf5     	str	x21, [sp, #0x30]
    1720: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1724: 910083fd     	add	x29, sp, #0x20
    1728: d5384108     	mrs	x8, SP_EL0
    172c: 528ce009     	mov	w9, #0x6700             // =26368
    1730: 12181c2a     	and	w10, w1, #0xff00
    1734: f9438908     	ldr	x8, [x8, #0x710]
    1738: 6b09015f     	cmp	w10, w9
    173c: f81f83a8     	stur	x8, [x29, #-0x8]
    1740: 52800328     	mov	w8, #0x19               // =25
    1744: b90007ff     	str	wzr, [sp, #0x4]
    1748: 390003e8     	strb	w8, [sp]
    174c: 54001881     	b.ne	0x1a5c <gf_ioctl+0x34c>
    1750: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1754: 37f800a1     	tbnz	w1, #0x1f, 0x1768 <gf_ioctl+0x58>
    1758: 531e7c28     	lsr	w8, w1, #30
    175c: 34000248     	cbz	w8, 0x17a4 <gf_ioctl+0x94>
    1760: d5384109     	mrs	x9, SP_EL0
    1764: 14000002     	b	0x176c <gf_ioctl+0x5c>
    1768: d5384109     	mrs	x9, SP_EL0
    176c: 3941192a     	ldrb	w10, [x9, #0x46]
    1770: 53107428     	ubfx	w8, w1, #16, #14
    1774: 3728008a     	tbnz	w10, #0x5, 0x1784 <gf_ioctl+0x74>
    1778: f940012a     	ldr	x10, [x9]
    177c: aa0203e9     	mov	x9, x2
    1780: 36d0006a     	tbz	w10, #0x1a, 0x178c <gf_ioctl+0x7c>
    1784: d378dc49     	lsl	x9, x2, #8
    1788: 8a892049     	and	x9, x2, x9, asr #8
    178c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1790: cb080148     	sub	x8, x10, x8
    1794: eb09011f     	cmp	x8, x9
    1798: 54000062     	b.hs	0x17a4 <gf_ioctl+0x94>
    179c: 928001a0     	mov	x0, #-0xe               // =-14
    17a0: 140000b0     	b	0x1a60 <gf_ioctl+0x350>
    17a4: 90000013     	adrp	x19, 0x1000 <sendnlmsg+0x44>
		00000000000017a4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x70
    17a8: 39400268     	ldrb	w8, [x19]
		00000000000017a8:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    17ac: 34000fc8     	cbz	w8, 0x19a4 <gf_ioctl+0x294>
    17b0: 528ce0c8     	mov	w8, #0x6706             // =26374
    17b4: aa1f03e0     	mov	x0, xzr
    17b8: 6b08003f     	cmp	w1, w8
    17bc: 540001cd     	b.le	0x17f4 <gf_ioctl+0xe4>
    17c0: 528ce088     	mov	w8, #0x6704             // =26372
    17c4: 72a80088     	movk	w8, #0x4004, lsl #16
    17c8: 6b08003f     	cmp	w1, w8
    17cc: 540005ad     	b.le	0x1880 <gf_ioctl+0x170>
    17d0: 528ce1a8     	mov	w8, #0x670d             // =26381
    17d4: 72a80088     	movk	w8, #0x4004, lsl #16
    17d8: 6b08003f     	cmp	w1, w8
    17dc: 540009ec     	b.gt	0x1918 <gf_ioctl+0x208>
    17e0: 528ce0a8     	mov	w8, #0x6705             // =26373
    17e4: 72a80088     	movk	w8, #0x4004, lsl #16
    17e8: 6b08003f     	cmp	w1, w8
    17ec: 540013a0     	b.eq	0x1a60 <gf_ioctl+0x350>
    17f0: 140000a7     	b	0x1a8c <gf_ioctl+0x37c>
    17f4: 528ce048     	mov	w8, #0x6702             // =26370
    17f8: 6b08003f     	cmp	w1, w8
    17fc: 5400026d     	b.le	0x1848 <gf_ioctl+0x138>
    1800: 528ce0c8     	mov	w8, #0x6706             // =26374
    1804: 6b08003f     	cmp	w1, w8
    1808: 540012c0     	b.eq	0x1a60 <gf_ioctl+0x350>
    180c: 528ce068     	mov	w8, #0x6703             // =26371
    1810: 6b08003f     	cmp	w1, w8
    1814: 54001a80     	b.eq	0x1b64 <gf_ioctl+0x454>
    1818: 528ce088     	mov	w8, #0x6704             // =26372
    181c: 6b08003f     	cmp	w1, w8
    1820: 54001361     	b.ne	0x1a8c <gf_ioctl+0x37c>
    1824: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001824:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0bba
    1828: 91000000     	add	x0, x0, #0x0
		0000000000001828:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0bba
    182c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		000000000000182c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1830: 91000021     	add	x1, x1, #0x0
		0000000000001830:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1834: 94000000     	bl	0x1834 <gf_ioctl+0x124>
		0000000000001834:  R_AARCH64_CALL26	_printk
    1838: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001838:  R_AARCH64_ADR_PREL_PG_HI21	gf
    183c: 91000000     	add	x0, x0, #0x0
		000000000000183c:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1840: 940001e1     	bl	0x1fc4 <gf_parse_dts+0x314>
		0000000000001840:  R_AARCH64_CALL26	gf_disable_irq
    1844: 140000aa     	b	0x1aec <gf_ioctl+0x3dc>
    1848: 528ce008     	mov	w8, #0x6700             // =26368
    184c: 6b08003f     	cmp	w1, w8
    1850: 5400044c     	b.gt	0x18d8 <gf_ioctl+0x1c8>
    1854: 528ce008     	mov	w8, #0x6700             // =26368
    1858: 72b00028     	movk	w8, #0x8001, lsl #16
    185c: 6b08003f     	cmp	w1, w8
    1860: 54000d80     	b.eq	0x1a10 <gf_ioctl+0x300>
    1864: 528ce168     	mov	w8, #0x670b             // =26379
    1868: 72b00028     	movk	w8, #0x8001, lsl #16
    186c: 6b08003f     	cmp	w1, w8
    1870: 540010e1     	b.ne	0x1a8c <gf_ioctl+0x37c>
    1874: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001874:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_04b3
    1878: 91000000     	add	x0, x0, #0x0
		0000000000001878:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_04b3
    187c: 14000099     	b	0x1ae0 <gf_ioctl+0x3d0>
    1880: 528ce128     	mov	w8, #0x6709             // =26377
    1884: 6b08003f     	cmp	w1, w8
    1888: 54000a6c     	b.gt	0x19d4 <gf_ioctl+0x2c4>
    188c: 528ce0e8     	mov	w8, #0x6707             // =26375
    1890: 6b08003f     	cmp	w1, w8
    1894: 54001040     	b.eq	0x1a9c <gf_ioctl+0x38c>
    1898: 528ce108     	mov	w8, #0x6708             // =26376
    189c: 6b08003f     	cmp	w1, w8
    18a0: 54000f61     	b.ne	0x1a8c <gf_ioctl+0x37c>
    18a4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000018a4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0167
    18a8: 91000000     	add	x0, x0, #0x0
		00000000000018a8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0167
    18ac: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000018ac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    18b0: 91000021     	add	x1, x1, #0x0
		00000000000018b0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    18b4: 94000000     	bl	0x18b4 <gf_ioctl+0x1a4>
		00000000000018b4:  R_AARCH64_CALL26	_printk
    18b8: 39400268     	ldrb	w8, [x19]
		00000000000018b8:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    18bc: 34001e88     	cbz	w8, 0x1c8c <gf_ioctl+0x57c>
    18c0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000018c0:  R_AARCH64_ADR_PREL_PG_HI21	gf
    18c4: 91000000     	add	x0, x0, #0x0
		00000000000018c4:  R_AARCH64_ADD_ABS_LO12_NC	gf
    18c8: 94000000     	bl	0x18c8 <gf_ioctl+0x1b8>
		00000000000018c8:  R_AARCH64_CALL26	gf_power_off
    18cc: aa1f03e0     	mov	x0, xzr
    18d0: 3900027f     	strb	wzr, [x19]
		00000000000018d0:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    18d4: 14000063     	b	0x1a60 <gf_ioctl+0x350>
    18d8: 528ce028     	mov	w8, #0x6701             // =26369
    18dc: 6b08003f     	cmp	w1, w8
    18e0: 54000b20     	b.eq	0x1a44 <gf_ioctl+0x334>
    18e4: 528ce048     	mov	w8, #0x6702             // =26370
    18e8: 6b08003f     	cmp	w1, w8
    18ec: 54000d01     	b.ne	0x1a8c <gf_ioctl+0x37c>
    18f0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0149
    18f4: 91000000     	add	x0, x0, #0x0
		00000000000018f4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0149
    18f8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000018f8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    18fc: 91000021     	add	x1, x1, #0x0
		00000000000018fc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1900: 94000000     	bl	0x1900 <gf_ioctl+0x1f0>
		0000000000001900:  R_AARCH64_CALL26	_printk
    1904: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001904:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1908: 91000000     	add	x0, x0, #0x0
		0000000000001908:  R_AARCH64_ADD_ABS_LO12_NC	gf
    190c: 528000a1     	mov	w1, #0x5                // =5
    1910: 94000000     	bl	0x1910 <gf_ioctl+0x200>
		0000000000001910:  R_AARCH64_CALL26	gf_hw_reset
    1914: 14000076     	b	0x1aec <gf_ioctl+0x3dc>
    1918: 528ce1c8     	mov	w8, #0x670e             // =26382
    191c: 72a80088     	movk	w8, #0x4004, lsl #16
    1920: 6b08003f     	cmp	w1, w8
    1924: 54001040     	b.eq	0x1b2c <gf_ioctl+0x41c>
    1928: 528ce128     	mov	w8, #0x6709             // =26377
    192c: 72a80108     	movk	w8, #0x4008, lsl #16
    1930: 6b08003f     	cmp	w1, w8
    1934: 54000e00     	b.eq	0x1af4 <gf_ioctl+0x3e4>
    1938: 528ce1a8     	mov	w8, #0x670d             // =26381
    193c: 72a80108     	movk	w8, #0x4008, lsl #16
    1940: 6b08003f     	cmp	w1, w8
    1944: 54000a41     	b.ne	0x1a8c <gf_ioctl+0x37c>
    1948: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001948:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fcc
    194c: 91000000     	add	x0, x0, #0x0
		000000000000194c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fcc
    1950: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001950:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1954: 91000021     	add	x1, x1, #0x0
		0000000000001954:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1958: aa0203f3     	mov	x19, x2
    195c: 94000000     	bl	0x195c <gf_ioctl+0x24c>
		000000000000195c:  R_AARCH64_CALL26	_printk
    1960: 910043e0     	add	x0, sp, #0x10
    1964: aa1303e1     	mov	x1, x19
    1968: 52800102     	mov	w2, #0x8                // =8
    196c: 9400025a     	bl	0x22d4 <_inline_copy_from_user+0x23c>
		000000000000196c:  R_AARCH64_CALL26	_inline_copy_from_user
    1970: b5fff160     	cbnz	x0, 0x179c <gf_ioctl+0x8c>
    1974: 394043e1     	ldrb	w1, [sp, #0x10]
    1978: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001978:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_018d
    197c: 91000000     	add	x0, x0, #0x0
		000000000000197c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_018d
    1980: 94000000     	bl	0x1980 <gf_ioctl+0x270>
		0000000000001980:  R_AARCH64_CALL26	_printk
    1984: 394047e1     	ldrb	w1, [sp, #0x11]
    1988: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001988:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e07
    198c: 91000000     	add	x0, x0, #0x0
		000000000000198c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e07
    1990: 94000000     	bl	0x1990 <gf_ioctl+0x280>
		0000000000001990:  R_AARCH64_CALL26	_printk
    1994: 39404be1     	ldrb	w1, [sp, #0x12]
    1998: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09e4
    199c: 91000000     	add	x0, x0, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09e4
    19a0: 1400003d     	b	0x1a94 <gf_ioctl+0x384>
    19a4: 128ce0c8     	mov	w8, #-0x6707            // =-26375
    19a8: 0b080028     	add	w8, w1, w8
    19ac: 7100051f     	cmp	w8, #0x1
    19b0: 54000508     	b.hi	0x1a50 <gf_ioctl+0x340>
    19b4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000019b4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0131
    19b8: 91000000     	add	x0, x0, #0x0
		00000000000019b8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0131
    19bc: 2a0103f4     	mov	w20, w1
    19c0: aa0203f5     	mov	x21, x2
    19c4: 94000000     	bl	0x19c4 <gf_ioctl+0x2b4>
		00000000000019c4:  R_AARCH64_CALL26	_printk
    19c8: aa1503e2     	mov	x2, x21
    19cc: 2a1403e1     	mov	w1, w20
    19d0: 17ffff78     	b	0x17b0 <gf_ioctl+0xa0>
    19d4: 528ce148     	mov	w8, #0x670a             // =26378
    19d8: 6b08003f     	cmp	w1, w8
    19dc: 540007e0     	b.eq	0x1ad8 <gf_ioctl+0x3c8>
    19e0: 528ce188     	mov	w8, #0x670c             // =26380
    19e4: 6b08003f     	cmp	w1, w8
    19e8: 54000521     	b.ne	0x1a8c <gf_ioctl+0x37c>
    19ec: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000019ec:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00c2
    19f0: 91000000     	add	x0, x0, #0x0
		00000000000019f0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00c2
    19f4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000019f4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    19f8: 91000021     	add	x1, x1, #0x0
		00000000000019f8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    19fc: 94000000     	bl	0x19fc <gf_ioctl+0x2ec>
		00000000000019fc:  R_AARCH64_CALL26	_printk
    1a00: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a00:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1a04: 91000000     	add	x0, x0, #0x0
		0000000000001a04:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1a08: 94000000     	bl	0x1a08 <gf_ioctl+0x2f8>
		0000000000001a08:  R_AARCH64_CALL26	gf_cleanup
    1a0c: 14000038     	b	0x1aec <gf_ioctl+0x3dc>
    1a10: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a10:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00a5
    1a14: 91000000     	add	x0, x0, #0x0
		0000000000001a14:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00a5
    1a18: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001a18:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1a1c: 91000021     	add	x1, x1, #0x0
		0000000000001a1c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1a20: aa0203f3     	mov	x19, x2
    1a24: 94000000     	bl	0x1a24 <gf_ioctl+0x314>
		0000000000001a24:  R_AARCH64_CALL26	_printk
    1a28: 910003e1     	mov	x1, sp
    1a2c: aa1303e0     	mov	x0, x19
    1a30: 940001fe     	bl	0x2228 <_inline_copy_from_user+0x190>
		0000000000001a30:  R_AARCH64_CALL26	_inline_copy_to_user
    1a34: 928001a8     	mov	x8, #-0xe               // =-14
    1a38: f100001f     	cmp	x0, #0x0
    1a3c: 9a8803e0     	csel	x0, xzr, x8, eq
    1a40: 14000008     	b	0x1a60 <gf_ioctl+0x350>
    1a44: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09c7
    1a48: 91000000     	add	x0, x0, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09c7
    1a4c: 14000025     	b	0x1ae0 <gf_ioctl+0x3d0>
    1a50: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0078
    1a54: 91000000     	add	x0, x0, #0x0
		0000000000001a54:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0078
    1a58: 94000000     	bl	0x1a58 <gf_ioctl+0x348>
		0000000000001a58:  R_AARCH64_CALL26	_printk
    1a5c: 92800240     	mov	x0, #-0x13              // =-19
    1a60: d5384108     	mrs	x8, SP_EL0
    1a64: f9438908     	ldr	x8, [x8, #0x710]
    1a68: f85f83a9     	ldur	x9, [x29, #-0x8]
    1a6c: eb09011f     	cmp	x8, x9
    1a70: 540011c1     	b.ne	0x1ca8 <gf_ioctl+0x598>
    1a74: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1a78: f9401bf5     	ldr	x21, [sp, #0x30]
    1a7c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1a80: 910143ff     	add	sp, sp, #0x50
    1a84: d50323bf     	autiasp
    1a88: d65f03c0     	ret
    1a8c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a8c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e21
    1a90: 91000000     	add	x0, x0, #0x0
		0000000000001a90:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e21
    1a94: 94000000     	bl	0x1a94 <gf_ioctl+0x384>
		0000000000001a94:  R_AARCH64_CALL26	_printk
    1a98: 14000015     	b	0x1aec <gf_ioctl+0x3dc>
    1a9c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001a9c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_037c
    1aa0: 91000000     	add	x0, x0, #0x0
		0000000000001aa0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_037c
    1aa4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001aa4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1aa8: 91000021     	add	x1, x1, #0x0
		0000000000001aa8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1aac: 94000000     	bl	0x1aac <gf_ioctl+0x39c>
		0000000000001aac:  R_AARCH64_CALL26	_printk
    1ab0: 39400268     	ldrb	w8, [x19]
		0000000000001ab0:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1ab4: 7100051f     	cmp	w8, #0x1
    1ab8: 54000e20     	b.eq	0x1c7c <gf_ioctl+0x56c>
    1abc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001abc:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1ac0: 91000000     	add	x0, x0, #0x0
		0000000000001ac0:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1ac4: 94000000     	bl	0x1ac4 <gf_ioctl+0x3b4>
		0000000000001ac4:  R_AARCH64_CALL26	gf_power_on
    1ac8: 52800028     	mov	w8, #0x1                // =1
    1acc: aa1f03e0     	mov	x0, xzr
    1ad0: 39000268     	strb	w8, [x19]
		0000000000001ad0:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1ad4: 17ffffe3     	b	0x1a60 <gf_ioctl+0x350>
    1ad8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001ad8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_048a
    1adc: 91000000     	add	x0, x0, #0x0
		0000000000001adc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_048a
    1ae0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001ae0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1ae4: 91000021     	add	x1, x1, #0x0
		0000000000001ae4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1ae8: 94000000     	bl	0x1ae8 <gf_ioctl+0x3d8>
		0000000000001ae8:  R_AARCH64_CALL26	_printk
    1aec: aa1f03e0     	mov	x0, xzr
    1af0: 17ffffdc     	b	0x1a60 <gf_ioctl+0x350>
    1af4: 910023e0     	add	x0, sp, #0x8
    1af8: aa0203e1     	mov	x1, x2
    1afc: 52800102     	mov	w2, #0x8                // =8
    1b00: 940001f5     	bl	0x22d4 <_inline_copy_from_user+0x23c>
		0000000000001b00:  R_AARCH64_CALL26	_inline_copy_from_user
    1b04: b50003e0     	cbnz	x0, 0x1b80 <gf_ioctl+0x470>
    1b08: b9400be3     	ldr	w3, [sp, #0x8]
    1b0c: 7100047f     	cmp	w3, #0x1
    1b10: 54000460     	b.eq	0x1b9c <gf_ioctl+0x48c>
    1b14: 7100147f     	cmp	w3, #0x5
    1b18: 540003e0     	b.eq	0x1b94 <gf_ioctl+0x484>
    1b1c: 7100087f     	cmp	w3, #0x2
    1b20: 54000421     	b.ne	0x1ba4 <gf_ioctl+0x494>
    1b24: 52800e93     	mov	w19, #0x74              // =116
    1b28: 14000020     	b	0x1ba8 <gf_ioctl+0x498>
    1b2c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001b2c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0468
    1b30: 91000000     	add	x0, x0, #0x0
		0000000000001b30:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0468
    1b34: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001b34:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1b38: 91000021     	add	x1, x1, #0x0
		0000000000001b38:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1b3c: aa0203f3     	mov	x19, x2
    1b40: 94000000     	bl	0x1b40 <gf_ioctl+0x430>
		0000000000001b40:  R_AARCH64_CALL26	_printk
    1b44: 910013e0     	add	x0, sp, #0x4
    1b48: aa1303e1     	mov	x1, x19
    1b4c: 52800082     	mov	w2, #0x4                // =4
    1b50: 940001e1     	bl	0x22d4 <_inline_copy_from_user+0x23c>
		0000000000001b50:  R_AARCH64_CALL26	_inline_copy_from_user
    1b54: b5000a40     	cbnz	x0, 0x1c9c <gf_ioctl+0x58c>
    1b58: b94007e0     	ldr	w0, [sp, #0x4]
    1b5c: 9400013f     	bl	0x2058 <_inline_copy_to_user+0x6c>
		0000000000001b5c:  R_AARCH64_CALL26	nav_event_input
    1b60: 17ffffe3     	b	0x1aec <gf_ioctl+0x3dc>
    1b64: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001b64:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0c97
    1b68: 91000000     	add	x0, x0, #0x0
		0000000000001b68:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0c97
    1b6c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001b6c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1b70: 91000021     	add	x1, x1, #0x0
		0000000000001b70:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1b74: 94000000     	bl	0x1b74 <gf_ioctl+0x464>
		0000000000001b74:  R_AARCH64_CALL26	_printk
    1b78: 94000123     	bl	0x2004 <_inline_copy_to_user+0x18>
		0000000000001b78:  R_AARCH64_CALL26	gf_enable_irq
    1b7c: 17ffffdc     	b	0x1aec <gf_ioctl+0x3dc>
    1b80: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001b80:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_10a9
    1b84: 91000000     	add	x0, x0, #0x0
		0000000000001b84:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_10a9
    1b88: 94000000     	bl	0x1b88 <gf_ioctl+0x478>
		0000000000001b88:  R_AARCH64_CALL26	_printk
    1b8c: 928001a0     	mov	x0, #-0xe               // =-14
    1b90: 17ffffb4     	b	0x1a60 <gf_ioctl+0x350>
    1b94: 52801a93     	mov	w19, #0xd4              // =212
    1b98: 14000004     	b	0x1ba8 <gf_ioctl+0x498>
    1b9c: 52800cd3     	mov	w19, #0x66              // =102
    1ba0: 14000002     	b	0x1ba8 <gf_ioctl+0x498>
    1ba4: 2a0303f3     	mov	w19, w3
    1ba8: b9400fe4     	ldr	w4, [sp, #0xc]
    1bac: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001bac:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_023e
    1bb0: 91000000     	add	x0, x0, #0x0
		0000000000001bb0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_023e
    1bb4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		0000000000001bb4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_070a
    1bb8: 91000021     	add	x1, x1, #0x0
		0000000000001bb8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_070a
    1bbc: 2a1303e2     	mov	w2, w19
    1bc0: 94000000     	bl	0x1bc0 <gf_ioctl+0x4b0>
		0000000000001bc0:  R_AARCH64_CALL26	_printk
    1bc4: b9400be8     	ldr	w8, [sp, #0x8]
    1bc8: 7100151f     	cmp	w8, #0x5
    1bcc: 54000060     	b.eq	0x1bd8 <gf_ioctl+0x4c8>
    1bd0: 7100091f     	cmp	w8, #0x2
    1bd4: 54000341     	b.ne	0x1c3c <gf_ioctl+0x52c>
    1bd8: b9400fe8     	ldr	w8, [sp, #0xc]
    1bdc: 7100051f     	cmp	w8, #0x1
    1be0: 54fff861     	b.ne	0x1aec <gf_ioctl+0x3dc>
    1be4: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x44>
		0000000000001be4:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1be8: 52800021     	mov	w1, #0x1                // =1
    1bec: 2a1303e2     	mov	w2, w19
    1bf0: f9400280     	ldr	x0, [x20]
		0000000000001bf0:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1bf4: 52800023     	mov	w3, #0x1                // =1
    1bf8: 94000000     	bl	0x1bf8 <gf_ioctl+0x4e8>
		0000000000001bf8:  R_AARCH64_CALL26	input_event
    1bfc: f9400280     	ldr	x0, [x20]
		0000000000001bfc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c00: 2a1f03e1     	mov	w1, wzr
    1c04: 2a1f03e2     	mov	w2, wzr
    1c08: 2a1f03e3     	mov	w3, wzr
    1c0c: 94000000     	bl	0x1c0c <gf_ioctl+0x4fc>
		0000000000001c0c:  R_AARCH64_CALL26	input_event
    1c10: f9400280     	ldr	x0, [x20]
		0000000000001c10:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c14: 52800021     	mov	w1, #0x1                // =1
    1c18: 2a1303e2     	mov	w2, w19
    1c1c: 2a1f03e3     	mov	w3, wzr
    1c20: 94000000     	bl	0x1c20 <gf_ioctl+0x510>
		0000000000001c20:  R_AARCH64_CALL26	input_event
    1c24: f9400280     	ldr	x0, [x20]
		0000000000001c24:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c28: 2a1f03e1     	mov	w1, wzr
    1c2c: 2a1f03e2     	mov	w2, wzr
    1c30: 2a1f03e3     	mov	w3, wzr
    1c34: 94000000     	bl	0x1c34 <gf_ioctl+0x524>
		0000000000001c34:  R_AARCH64_CALL26	input_event
    1c38: b9400be8     	ldr	w8, [sp, #0x8]
    1c3c: 7100051f     	cmp	w8, #0x1
    1c40: 54fff561     	b.ne	0x1aec <gf_ioctl+0x3dc>
    1c44: b9400fe8     	ldr	w8, [sp, #0xc]
    1c48: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x44>
		0000000000001c48:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1c4c: 52800021     	mov	w1, #0x1                // =1
    1c50: f9400280     	ldr	x0, [x20]
		0000000000001c50:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c54: 2a1303e2     	mov	w2, w19
    1c58: 7100011f     	cmp	w8, #0x0
    1c5c: 1a9f07e3     	cset	w3, ne
    1c60: 94000000     	bl	0x1c60 <gf_ioctl+0x550>
		0000000000001c60:  R_AARCH64_CALL26	input_event
    1c64: f9400280     	ldr	x0, [x20]
		0000000000001c64:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c68: 2a1f03e1     	mov	w1, wzr
    1c6c: 2a1f03e2     	mov	w2, wzr
    1c70: 2a1f03e3     	mov	w3, wzr
    1c74: 94000000     	bl	0x1c74 <gf_ioctl+0x564>
		0000000000001c74:  R_AARCH64_CALL26	input_event
    1c78: 17ffff9d     	b	0x1aec <gf_ioctl+0x3dc>
    1c7c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001c7c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06dd
    1c80: 91000000     	add	x0, x0, #0x0
		0000000000001c80:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06dd
    1c84: 94000000     	bl	0x1c84 <gf_ioctl+0x574>
		0000000000001c84:  R_AARCH64_CALL26	_printk
    1c88: 17ffff90     	b	0x1ac8 <gf_ioctl+0x3b8>
    1c8c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001c8c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0000
    1c90: 91000000     	add	x0, x0, #0x0
		0000000000001c90:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0000
    1c94: 94000000     	bl	0x1c94 <gf_ioctl+0x584>
		0000000000001c94:  R_AARCH64_CALL26	_printk
    1c98: 17ffff0d     	b	0x18cc <gf_ioctl+0x1bc>
    1c9c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		0000000000001c9c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0dcc
    1ca0: 91000000     	add	x0, x0, #0x0
		0000000000001ca0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0dcc
    1ca4: 17ffffb9     	b	0x1b88 <gf_ioctl+0x478>
    1ca8: 94000000     	bl	0x1ca8 <gf_ioctl+0x598>
		0000000000001ca8:  R_AARCH64_CALL26	__stack_chk_fail
