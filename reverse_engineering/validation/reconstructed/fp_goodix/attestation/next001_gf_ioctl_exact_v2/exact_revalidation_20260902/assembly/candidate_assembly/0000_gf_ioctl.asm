
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001714 <gf_ioctl>:
    1714: d503233f     	paciasp
    1718: d10143ff     	sub	sp, sp, #0x50
    171c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1720: f9001bf5     	str	x21, [sp, #0x30]
    1724: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1728: 910083fd     	add	x29, sp, #0x20
    172c: d5384108     	mrs	x8, SP_EL0
    1730: 528ce009     	mov	w9, #0x6700             // =26368
    1734: 12181c2a     	and	w10, w1, #0xff00
    1738: f9438908     	ldr	x8, [x8, #0x710]
    173c: 6b09015f     	cmp	w10, w9
    1740: f81f83a8     	stur	x8, [x29, #-0x8]
    1744: 52800328     	mov	w8, #0x19               // =25
    1748: b90007ff     	str	wzr, [sp, #0x4]
    174c: 390003e8     	strb	w8, [sp]
    1750: 54001881     	b.ne	0x1a60 <gf_ioctl+0x34c>
    1754: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1758: 37f800a1     	tbnz	w1, #0x1f, 0x176c <gf_ioctl+0x58>
    175c: 531e7c28     	lsr	w8, w1, #30
    1760: 34000248     	cbz	w8, 0x17a8 <gf_ioctl+0x94>
    1764: d5384109     	mrs	x9, SP_EL0
    1768: 14000002     	b	0x1770 <gf_ioctl+0x5c>
    176c: d5384109     	mrs	x9, SP_EL0
    1770: 3941192a     	ldrb	w10, [x9, #0x46]
    1774: 53107428     	ubfx	w8, w1, #16, #14
    1778: 3728008a     	tbnz	w10, #0x5, 0x1788 <gf_ioctl+0x74>
    177c: f940012a     	ldr	x10, [x9]
    1780: aa0203e9     	mov	x9, x2
    1784: 36d0006a     	tbz	w10, #0x1a, 0x1790 <gf_ioctl+0x7c>
    1788: d378dc49     	lsl	x9, x2, #8
    178c: 8a892049     	and	x9, x2, x9, asr #8
    1790: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1794: cb080148     	sub	x8, x10, x8
    1798: eb09011f     	cmp	x8, x9
    179c: 54000062     	b.hs	0x17a8 <gf_ioctl+0x94>
    17a0: 928001a0     	mov	x0, #-0xe               // =-14
    17a4: 140000b0     	b	0x1a64 <gf_ioctl+0x350>
    17a8: 90000013     	adrp	x19, 0x1000 <sendnlmsg+0x40>
		00000000000017a8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x70
    17ac: 39400268     	ldrb	w8, [x19]
		00000000000017ac:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    17b0: 34000fc8     	cbz	w8, 0x19a8 <gf_ioctl+0x294>
    17b4: 528ce0c8     	mov	w8, #0x6706             // =26374
    17b8: aa1f03e0     	mov	x0, xzr
    17bc: 6b08003f     	cmp	w1, w8
    17c0: 540001cd     	b.le	0x17f8 <gf_ioctl+0xe4>
    17c4: 528ce088     	mov	w8, #0x6704             // =26372
    17c8: 72a80088     	movk	w8, #0x4004, lsl #16
    17cc: 6b08003f     	cmp	w1, w8
    17d0: 540005ad     	b.le	0x1884 <gf_ioctl+0x170>
    17d4: 528ce1a8     	mov	w8, #0x670d             // =26381
    17d8: 72a80088     	movk	w8, #0x4004, lsl #16
    17dc: 6b08003f     	cmp	w1, w8
    17e0: 540009ec     	b.gt	0x191c <gf_ioctl+0x208>
    17e4: 528ce0a8     	mov	w8, #0x6705             // =26373
    17e8: 72a80088     	movk	w8, #0x4004, lsl #16
    17ec: 6b08003f     	cmp	w1, w8
    17f0: 540013a0     	b.eq	0x1a64 <gf_ioctl+0x350>
    17f4: 140000a7     	b	0x1a90 <gf_ioctl+0x37c>
    17f8: 528ce048     	mov	w8, #0x6702             // =26370
    17fc: 6b08003f     	cmp	w1, w8
    1800: 5400026d     	b.le	0x184c <gf_ioctl+0x138>
    1804: 528ce0c8     	mov	w8, #0x6706             // =26374
    1808: 6b08003f     	cmp	w1, w8
    180c: 540012c0     	b.eq	0x1a64 <gf_ioctl+0x350>
    1810: 528ce068     	mov	w8, #0x6703             // =26371
    1814: 6b08003f     	cmp	w1, w8
    1818: 54001a80     	b.eq	0x1b68 <gf_ioctl+0x454>
    181c: 528ce088     	mov	w8, #0x6704             // =26372
    1820: 6b08003f     	cmp	w1, w8
    1824: 54001361     	b.ne	0x1a90 <gf_ioctl+0x37c>
    1828: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001828:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0bba
    182c: 91000000     	add	x0, x0, #0x0
		000000000000182c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0bba
    1830: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001830:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1834: 91000021     	add	x1, x1, #0x0
		0000000000001834:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1838: 94000000     	bl	0x1838 <gf_ioctl+0x124>
		0000000000001838:  R_AARCH64_CALL26	_printk
    183c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000183c:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1840: 91000000     	add	x0, x0, #0x0
		0000000000001840:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1844: 940001e1     	bl	0x1fc8 <gf_parse_dts+0x314>
		0000000000001844:  R_AARCH64_CALL26	gf_disable_irq
    1848: 140000aa     	b	0x1af0 <gf_ioctl+0x3dc>
    184c: 528ce008     	mov	w8, #0x6700             // =26368
    1850: 6b08003f     	cmp	w1, w8
    1854: 5400044c     	b.gt	0x18dc <gf_ioctl+0x1c8>
    1858: 528ce008     	mov	w8, #0x6700             // =26368
    185c: 72b00028     	movk	w8, #0x8001, lsl #16
    1860: 6b08003f     	cmp	w1, w8
    1864: 54000d80     	b.eq	0x1a14 <gf_ioctl+0x300>
    1868: 528ce168     	mov	w8, #0x670b             // =26379
    186c: 72b00028     	movk	w8, #0x8001, lsl #16
    1870: 6b08003f     	cmp	w1, w8
    1874: 540010e1     	b.ne	0x1a90 <gf_ioctl+0x37c>
    1878: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001878:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_04b3
    187c: 91000000     	add	x0, x0, #0x0
		000000000000187c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_04b3
    1880: 14000099     	b	0x1ae4 <gf_ioctl+0x3d0>
    1884: 528ce128     	mov	w8, #0x6709             // =26377
    1888: 6b08003f     	cmp	w1, w8
    188c: 54000a6c     	b.gt	0x19d8 <gf_ioctl+0x2c4>
    1890: 528ce0e8     	mov	w8, #0x6707             // =26375
    1894: 6b08003f     	cmp	w1, w8
    1898: 54001040     	b.eq	0x1aa0 <gf_ioctl+0x38c>
    189c: 528ce108     	mov	w8, #0x6708             // =26376
    18a0: 6b08003f     	cmp	w1, w8
    18a4: 54000f61     	b.ne	0x1a90 <gf_ioctl+0x37c>
    18a8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000018a8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0167
    18ac: 91000000     	add	x0, x0, #0x0
		00000000000018ac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0167
    18b0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000018b0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    18b4: 91000021     	add	x1, x1, #0x0
		00000000000018b4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    18b8: 94000000     	bl	0x18b8 <gf_ioctl+0x1a4>
		00000000000018b8:  R_AARCH64_CALL26	_printk
    18bc: 39400268     	ldrb	w8, [x19]
		00000000000018bc:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    18c0: 34001e88     	cbz	w8, 0x1c90 <gf_ioctl+0x57c>
    18c4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	gf
    18c8: 91000000     	add	x0, x0, #0x0
		00000000000018c8:  R_AARCH64_ADD_ABS_LO12_NC	gf
    18cc: 94000000     	bl	0x18cc <gf_ioctl+0x1b8>
		00000000000018cc:  R_AARCH64_CALL26	gf_power_off
    18d0: aa1f03e0     	mov	x0, xzr
    18d4: 3900027f     	strb	wzr, [x19]
		00000000000018d4:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    18d8: 14000063     	b	0x1a64 <gf_ioctl+0x350>
    18dc: 528ce028     	mov	w8, #0x6701             // =26369
    18e0: 6b08003f     	cmp	w1, w8
    18e4: 54000b20     	b.eq	0x1a48 <gf_ioctl+0x334>
    18e8: 528ce048     	mov	w8, #0x6702             // =26370
    18ec: 6b08003f     	cmp	w1, w8
    18f0: 54000d01     	b.ne	0x1a90 <gf_ioctl+0x37c>
    18f4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000018f4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0149
    18f8: 91000000     	add	x0, x0, #0x0
		00000000000018f8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0149
    18fc: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1900: 91000021     	add	x1, x1, #0x0
		0000000000001900:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1904: 94000000     	bl	0x1904 <gf_ioctl+0x1f0>
		0000000000001904:  R_AARCH64_CALL26	_printk
    1908: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001908:  R_AARCH64_ADR_PREL_PG_HI21	gf
    190c: 91000000     	add	x0, x0, #0x0
		000000000000190c:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1910: 528000a1     	mov	w1, #0x5                // =5
    1914: 94000000     	bl	0x1914 <gf_ioctl+0x200>
		0000000000001914:  R_AARCH64_CALL26	gf_hw_reset
    1918: 14000076     	b	0x1af0 <gf_ioctl+0x3dc>
    191c: 528ce1c8     	mov	w8, #0x670e             // =26382
    1920: 72a80088     	movk	w8, #0x4004, lsl #16
    1924: 6b08003f     	cmp	w1, w8
    1928: 54001040     	b.eq	0x1b30 <gf_ioctl+0x41c>
    192c: 528ce128     	mov	w8, #0x6709             // =26377
    1930: 72a80108     	movk	w8, #0x4008, lsl #16
    1934: 6b08003f     	cmp	w1, w8
    1938: 54000e00     	b.eq	0x1af8 <gf_ioctl+0x3e4>
    193c: 528ce1a8     	mov	w8, #0x670d             // =26381
    1940: 72a80108     	movk	w8, #0x4008, lsl #16
    1944: 6b08003f     	cmp	w1, w8
    1948: 54000a41     	b.ne	0x1a90 <gf_ioctl+0x37c>
    194c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000194c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fcc
    1950: 91000000     	add	x0, x0, #0x0
		0000000000001950:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fcc
    1954: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1958: 91000021     	add	x1, x1, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    195c: aa0203f3     	mov	x19, x2
    1960: 94000000     	bl	0x1960 <gf_ioctl+0x24c>
		0000000000001960:  R_AARCH64_CALL26	_printk
    1964: 910043e0     	add	x0, sp, #0x10
    1968: aa1303e1     	mov	x1, x19
    196c: 52800102     	mov	w2, #0x8                // =8
    1970: 9400025a     	bl	0x22d8 <_inline_copy_from_user+0x23c>
		0000000000001970:  R_AARCH64_CALL26	_inline_copy_from_user
    1974: b5fff160     	cbnz	x0, 0x17a0 <gf_ioctl+0x8c>
    1978: 394043e1     	ldrb	w1, [sp, #0x10]
    197c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000197c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_018d
    1980: 91000000     	add	x0, x0, #0x0
		0000000000001980:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_018d
    1984: 94000000     	bl	0x1984 <gf_ioctl+0x270>
		0000000000001984:  R_AARCH64_CALL26	_printk
    1988: 394047e1     	ldrb	w1, [sp, #0x11]
    198c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000198c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e07
    1990: 91000000     	add	x0, x0, #0x0
		0000000000001990:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e07
    1994: 94000000     	bl	0x1994 <gf_ioctl+0x280>
		0000000000001994:  R_AARCH64_CALL26	_printk
    1998: 39404be1     	ldrb	w1, [sp, #0x12]
    199c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		000000000000199c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09e4
    19a0: 91000000     	add	x0, x0, #0x0
		00000000000019a0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09e4
    19a4: 1400003d     	b	0x1a98 <gf_ioctl+0x384>
    19a8: 128ce0c8     	mov	w8, #-0x6707            // =-26375
    19ac: 0b080028     	add	w8, w1, w8
    19b0: 7100051f     	cmp	w8, #0x1
    19b4: 54000508     	b.hi	0x1a54 <gf_ioctl+0x340>
    19b8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000019b8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0131
    19bc: 91000000     	add	x0, x0, #0x0
		00000000000019bc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0131
    19c0: 2a0103f4     	mov	w20, w1
    19c4: aa0203f5     	mov	x21, x2
    19c8: 94000000     	bl	0x19c8 <gf_ioctl+0x2b4>
		00000000000019c8:  R_AARCH64_CALL26	_printk
    19cc: aa1503e2     	mov	x2, x21
    19d0: 2a1403e1     	mov	w1, w20
    19d4: 17ffff78     	b	0x17b4 <gf_ioctl+0xa0>
    19d8: 528ce148     	mov	w8, #0x670a             // =26378
    19dc: 6b08003f     	cmp	w1, w8
    19e0: 540007e0     	b.eq	0x1adc <gf_ioctl+0x3c8>
    19e4: 528ce188     	mov	w8, #0x670c             // =26380
    19e8: 6b08003f     	cmp	w1, w8
    19ec: 54000521     	b.ne	0x1a90 <gf_ioctl+0x37c>
    19f0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00c2
    19f4: 91000000     	add	x0, x0, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00c2
    19f8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    19fc: 91000021     	add	x1, x1, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1a00: 94000000     	bl	0x1a00 <gf_ioctl+0x2ec>
		0000000000001a00:  R_AARCH64_CALL26	_printk
    1a04: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001a04:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1a08: 91000000     	add	x0, x0, #0x0
		0000000000001a08:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1a0c: 94000000     	bl	0x1a0c <gf_ioctl+0x2f8>
		0000000000001a0c:  R_AARCH64_CALL26	gf_cleanup
    1a10: 14000038     	b	0x1af0 <gf_ioctl+0x3dc>
    1a14: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001a14:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_00a5
    1a18: 91000000     	add	x0, x0, #0x0
		0000000000001a18:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_00a5
    1a1c: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001a1c:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1a20: 91000021     	add	x1, x1, #0x0
		0000000000001a20:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1a24: aa0203f3     	mov	x19, x2
    1a28: 94000000     	bl	0x1a28 <gf_ioctl+0x314>
		0000000000001a28:  R_AARCH64_CALL26	_printk
    1a2c: 910003e1     	mov	x1, sp
    1a30: aa1303e0     	mov	x0, x19
    1a34: 940001fe     	bl	0x222c <_inline_copy_from_user+0x190>
		0000000000001a34:  R_AARCH64_CALL26	_inline_copy_to_user
    1a38: 928001a8     	mov	x8, #-0xe               // =-14
    1a3c: f100001f     	cmp	x0, #0x0
    1a40: 9a8803e0     	csel	x0, xzr, x8, eq
    1a44: 14000008     	b	0x1a64 <gf_ioctl+0x350>
    1a48: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001a48:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_09c7
    1a4c: 91000000     	add	x0, x0, #0x0
		0000000000001a4c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_09c7
    1a50: 14000025     	b	0x1ae4 <gf_ioctl+0x3d0>
    1a54: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001a54:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0078
    1a58: 91000000     	add	x0, x0, #0x0
		0000000000001a58:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0078
    1a5c: 94000000     	bl	0x1a5c <gf_ioctl+0x348>
		0000000000001a5c:  R_AARCH64_CALL26	_printk
    1a60: 92800240     	mov	x0, #-0x13              // =-19
    1a64: d5384108     	mrs	x8, SP_EL0
    1a68: f9438908     	ldr	x8, [x8, #0x710]
    1a6c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1a70: eb09011f     	cmp	x8, x9
    1a74: 540011c1     	b.ne	0x1cac <gf_ioctl+0x598>
    1a78: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1a7c: f9401bf5     	ldr	x21, [sp, #0x30]
    1a80: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1a84: 910143ff     	add	sp, sp, #0x50
    1a88: d50323bf     	autiasp
    1a8c: d65f03c0     	ret
    1a90: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0e21
    1a94: 91000000     	add	x0, x0, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0e21
    1a98: 94000000     	bl	0x1a98 <gf_ioctl+0x384>
		0000000000001a98:  R_AARCH64_CALL26	_printk
    1a9c: 14000015     	b	0x1af0 <gf_ioctl+0x3dc>
    1aa0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001aa0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_037c
    1aa4: 91000000     	add	x0, x0, #0x0
		0000000000001aa4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_037c
    1aa8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001aa8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1aac: 91000021     	add	x1, x1, #0x0
		0000000000001aac:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1ab0: 94000000     	bl	0x1ab0 <gf_ioctl+0x39c>
		0000000000001ab0:  R_AARCH64_CALL26	_printk
    1ab4: 39400268     	ldrb	w8, [x19]
		0000000000001ab4:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1ab8: 7100051f     	cmp	w8, #0x1
    1abc: 54000e20     	b.eq	0x1c80 <gf_ioctl+0x56c>
    1ac0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001ac0:  R_AARCH64_ADR_PREL_PG_HI21	gf
    1ac4: 91000000     	add	x0, x0, #0x0
		0000000000001ac4:  R_AARCH64_ADD_ABS_LO12_NC	gf
    1ac8: 94000000     	bl	0x1ac8 <gf_ioctl+0x3b4>
		0000000000001ac8:  R_AARCH64_CALL26	gf_power_on
    1acc: 52800028     	mov	w8, #0x1                // =1
    1ad0: aa1f03e0     	mov	x0, xzr
    1ad4: 39000268     	strb	w8, [x19]
		0000000000001ad4:  R_AARCH64_LDST8_ABS_LO12_NC	gf+0x70
    1ad8: 17ffffe3     	b	0x1a64 <gf_ioctl+0x350>
    1adc: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001adc:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_048a
    1ae0: 91000000     	add	x0, x0, #0x0
		0000000000001ae0:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_048a
    1ae4: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001ae4:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1ae8: 91000021     	add	x1, x1, #0x0
		0000000000001ae8:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1aec: 94000000     	bl	0x1aec <gf_ioctl+0x3d8>
		0000000000001aec:  R_AARCH64_CALL26	_printk
    1af0: aa1f03e0     	mov	x0, xzr
    1af4: 17ffffdc     	b	0x1a64 <gf_ioctl+0x350>
    1af8: 910023e0     	add	x0, sp, #0x8
    1afc: aa0203e1     	mov	x1, x2
    1b00: 52800102     	mov	w2, #0x8                // =8
    1b04: 940001f5     	bl	0x22d8 <_inline_copy_from_user+0x23c>
		0000000000001b04:  R_AARCH64_CALL26	_inline_copy_from_user
    1b08: b50003e0     	cbnz	x0, 0x1b84 <gf_ioctl+0x470>
    1b0c: b9400be3     	ldr	w3, [sp, #0x8]
    1b10: 7100047f     	cmp	w3, #0x1
    1b14: 54000460     	b.eq	0x1ba0 <gf_ioctl+0x48c>
    1b18: 7100147f     	cmp	w3, #0x5
    1b1c: 540003e0     	b.eq	0x1b98 <gf_ioctl+0x484>
    1b20: 7100087f     	cmp	w3, #0x2
    1b24: 54000421     	b.ne	0x1ba8 <gf_ioctl+0x494>
    1b28: 52800e93     	mov	w19, #0x74              // =116
    1b2c: 14000020     	b	0x1bac <gf_ioctl+0x498>
    1b30: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001b30:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0468
    1b34: 91000000     	add	x0, x0, #0x0
		0000000000001b34:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0468
    1b38: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001b38:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1b3c: 91000021     	add	x1, x1, #0x0
		0000000000001b3c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1b40: aa0203f3     	mov	x19, x2
    1b44: 94000000     	bl	0x1b44 <gf_ioctl+0x430>
		0000000000001b44:  R_AARCH64_CALL26	_printk
    1b48: 910013e0     	add	x0, sp, #0x4
    1b4c: aa1303e1     	mov	x1, x19
    1b50: 52800082     	mov	w2, #0x4                // =4
    1b54: 940001e1     	bl	0x22d8 <_inline_copy_from_user+0x23c>
		0000000000001b54:  R_AARCH64_CALL26	_inline_copy_from_user
    1b58: b5000a40     	cbnz	x0, 0x1ca0 <gf_ioctl+0x58c>
    1b5c: b94007e0     	ldr	w0, [sp, #0x4]
    1b60: 9400013f     	bl	0x205c <_inline_copy_to_user+0x6c>
		0000000000001b60:  R_AARCH64_CALL26	nav_event_input
    1b64: 17ffffe3     	b	0x1af0 <gf_ioctl+0x3dc>
    1b68: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001b68:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0c97
    1b6c: 91000000     	add	x0, x0, #0x0
		0000000000001b6c:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0c97
    1b70: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001b70:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0fc3
    1b74: 91000021     	add	x1, x1, #0x0
		0000000000001b74:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0fc3
    1b78: 94000000     	bl	0x1b78 <gf_ioctl+0x464>
		0000000000001b78:  R_AARCH64_CALL26	_printk
    1b7c: 94000123     	bl	0x2008 <_inline_copy_to_user+0x18>
		0000000000001b7c:  R_AARCH64_CALL26	gf_enable_irq
    1b80: 17ffffdc     	b	0x1af0 <gf_ioctl+0x3dc>
    1b84: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001b84:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_10a9
    1b88: 91000000     	add	x0, x0, #0x0
		0000000000001b88:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_10a9
    1b8c: 94000000     	bl	0x1b8c <gf_ioctl+0x478>
		0000000000001b8c:  R_AARCH64_CALL26	_printk
    1b90: 928001a0     	mov	x0, #-0xe               // =-14
    1b94: 17ffffb4     	b	0x1a64 <gf_ioctl+0x350>
    1b98: 52801a93     	mov	w19, #0xd4              // =212
    1b9c: 14000004     	b	0x1bac <gf_ioctl+0x498>
    1ba0: 52800cd3     	mov	w19, #0x66              // =102
    1ba4: 14000002     	b	0x1bac <gf_ioctl+0x498>
    1ba8: 2a0303f3     	mov	w19, w3
    1bac: b9400fe4     	ldr	w4, [sp, #0xc]
    1bb0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001bb0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_023e
    1bb4: 91000000     	add	x0, x0, #0x0
		0000000000001bb4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_023e
    1bb8: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		0000000000001bb8:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_070a
    1bbc: 91000021     	add	x1, x1, #0x0
		0000000000001bbc:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_070a
    1bc0: 2a1303e2     	mov	w2, w19
    1bc4: 94000000     	bl	0x1bc4 <gf_ioctl+0x4b0>
		0000000000001bc4:  R_AARCH64_CALL26	_printk
    1bc8: b9400be8     	ldr	w8, [sp, #0x8]
    1bcc: 7100151f     	cmp	w8, #0x5
    1bd0: 54000060     	b.eq	0x1bdc <gf_ioctl+0x4c8>
    1bd4: 7100091f     	cmp	w8, #0x2
    1bd8: 54000341     	b.ne	0x1c40 <gf_ioctl+0x52c>
    1bdc: b9400fe8     	ldr	w8, [sp, #0xc]
    1be0: 7100051f     	cmp	w8, #0x1
    1be4: 54fff861     	b.ne	0x1af0 <gf_ioctl+0x3dc>
    1be8: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x40>
		0000000000001be8:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1bec: 52800021     	mov	w1, #0x1                // =1
    1bf0: 2a1303e2     	mov	w2, w19
    1bf4: f9400280     	ldr	x0, [x20]
		0000000000001bf4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1bf8: 52800023     	mov	w3, #0x1                // =1
    1bfc: 94000000     	bl	0x1bfc <gf_ioctl+0x4e8>
		0000000000001bfc:  R_AARCH64_CALL26	input_event
    1c00: f9400280     	ldr	x0, [x20]
		0000000000001c00:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c04: 2a1f03e1     	mov	w1, wzr
    1c08: 2a1f03e2     	mov	w2, wzr
    1c0c: 2a1f03e3     	mov	w3, wzr
    1c10: 94000000     	bl	0x1c10 <gf_ioctl+0x4fc>
		0000000000001c10:  R_AARCH64_CALL26	input_event
    1c14: f9400280     	ldr	x0, [x20]
		0000000000001c14:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c18: 52800021     	mov	w1, #0x1                // =1
    1c1c: 2a1303e2     	mov	w2, w19
    1c20: 2a1f03e3     	mov	w3, wzr
    1c24: 94000000     	bl	0x1c24 <gf_ioctl+0x510>
		0000000000001c24:  R_AARCH64_CALL26	input_event
    1c28: f9400280     	ldr	x0, [x20]
		0000000000001c28:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c2c: 2a1f03e1     	mov	w1, wzr
    1c30: 2a1f03e2     	mov	w2, wzr
    1c34: 2a1f03e3     	mov	w3, wzr
    1c38: 94000000     	bl	0x1c38 <gf_ioctl+0x524>
		0000000000001c38:  R_AARCH64_CALL26	input_event
    1c3c: b9400be8     	ldr	w8, [sp, #0x8]
    1c40: 7100051f     	cmp	w8, #0x1
    1c44: 54fff561     	b.ne	0x1af0 <gf_ioctl+0x3dc>
    1c48: b9400fe8     	ldr	w8, [sp, #0xc]
    1c4c: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x40>
		0000000000001c4c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
    1c50: 52800021     	mov	w1, #0x1                // =1
    1c54: f9400280     	ldr	x0, [x20]
		0000000000001c54:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c58: 2a1303e2     	mov	w2, w19
    1c5c: 7100011f     	cmp	w8, #0x0
    1c60: 1a9f07e3     	cset	w3, ne
    1c64: 94000000     	bl	0x1c64 <gf_ioctl+0x550>
		0000000000001c64:  R_AARCH64_CALL26	input_event
    1c68: f9400280     	ldr	x0, [x20]
		0000000000001c68:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
    1c6c: 2a1f03e1     	mov	w1, wzr
    1c70: 2a1f03e2     	mov	w2, wzr
    1c74: 2a1f03e3     	mov	w3, wzr
    1c78: 94000000     	bl	0x1c78 <gf_ioctl+0x564>
		0000000000001c78:  R_AARCH64_CALL26	input_event
    1c7c: 17ffff9d     	b	0x1af0 <gf_ioctl+0x3dc>
    1c80: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001c80:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_06dd
    1c84: 91000000     	add	x0, x0, #0x0
		0000000000001c84:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_06dd
    1c88: 94000000     	bl	0x1c88 <gf_ioctl+0x574>
		0000000000001c88:  R_AARCH64_CALL26	_printk
    1c8c: 17ffff90     	b	0x1acc <gf_ioctl+0x3b8>
    1c90: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001c90:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0000
    1c94: 91000000     	add	x0, x0, #0x0
		0000000000001c94:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0000
    1c98: 94000000     	bl	0x1c98 <gf_ioctl+0x584>
		0000000000001c98:  R_AARCH64_CALL26	_printk
    1c9c: 17ffff0d     	b	0x18d0 <gf_ioctl+0x1bc>
    1ca0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	fp_goodix_exact_rodata_0dcc
    1ca4: 91000000     	add	x0, x0, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	fp_goodix_exact_rodata_0dcc
    1ca8: 17ffffb9     	b	0x1b8c <gf_ioctl+0x478>
    1cac: 94000000     	bl	0x1cac <gf_ioctl+0x598>
		0000000000001cac:  R_AARCH64_CALL26	__stack_chk_fail
