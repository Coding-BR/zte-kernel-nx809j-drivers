
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000016ac <aw22xxx_alloc_name_array>:
    16ac: d503233f     	paciasp
    16b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    16b4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    16b8: a90257f6     	stp	x22, x21, [sp, #0x20]
    16bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    16c0: 910003fd     	mov	x29, sp
    16c4: d503201f     	nop
    16c8: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000016c8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    16cc: 52819801     	mov	w1, #0xcc0              // =3264
    16d0: 52800b02     	mov	w2, #0x58               // =88
    16d4: f9400100     	ldr	x0, [x8]
		00000000000016d4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    16d8: 94000000     	bl	0x16d8 <aw22xxx_alloc_name_array+0x2c>
		00000000000016d8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    16dc: 90000013     	adrp	x19, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000016dc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61c0
    16e0: f9000260     	str	x0, [x19]
		00000000000016e0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    16e4: b4000cc0     	cbz	x0, 0x187c <aw22xxx_alloc_name_array+0x1d0>
    16e8: aa1f03f4     	mov	x20, xzr
    16ec: 90000015     	adrp	x21, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000016ec:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x30
    16f0: 90000017     	adrp	x23, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000016f0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    16f4: 910002f7     	add	x23, x23, #0x0
		00000000000016f4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    16f8: d5384116     	mrs	x22, SP_EL0
    16fc: d503201f     	nop
    1700: f94002a0     	ldr	x0, [x21]
		0000000000001700:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    1704: 52819801     	mov	w1, #0xcc0              // =3264
    1708: 52800802     	mov	w2, #0x40               // =64
    170c: 94000000     	bl	0x170c <aw22xxx_alloc_name_array+0x60>
		000000000000170c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1710: aa0003e8     	mov	x8, x0
    1714: f9400260     	ldr	x0, [x19]
		0000000000001714:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    1718: f8347808     	str	x8, [x0, x20, lsl #3]
    171c: b4000be8     	cbz	x8, 0x1898 <aw22xxx_alloc_name_array+0x1ec>
    1720: 91000694     	add	x20, x20, #0x1
    1724: f1002e9f     	cmp	x20, #0xb
    1728: 54fffea1     	b.ne	0x16fc <aw22xxx_alloc_name_array+0x50>
    172c: 1400000a     	b	0x1754 <aw22xxx_alloc_name_array+0xa8>
    1730: f94002a0     	ldr	x0, [x21]
		0000000000001730:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x30
    1734: f9402ad8     	ldr	x24, [x22, #0x50]
    1738: 52819801     	mov	w1, #0xcc0              // =3264
    173c: 52800802     	mov	w2, #0x40               // =64
    1740: f9002ad7     	str	x23, [x22, #0x50]
    1744: 94000000     	bl	0x1744 <aw22xxx_alloc_name_array+0x98>
		0000000000001744:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1748: aa0003e8     	mov	x8, x0
    174c: f9002ad8     	str	x24, [x22, #0x50]
    1750: 17fffff1     	b	0x1714 <aw22xxx_alloc_name_array+0x68>
    1754: 90000009     	adrp	x9, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ac
    1758: 91000129     	add	x9, x9, #0x0
		0000000000001758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ac
    175c: f9400008     	ldr	x8, [x0]
    1760: f940012a     	ldr	x10, [x9]
    1764: f8406129     	ldur	x9, [x9, #0x6]
    1768: 9000000b     	adrp	x11, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001768:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1537
    176c: 9100016b     	add	x11, x11, #0x0
		000000000000176c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1537
    1770: 9000000d     	adrp	x13, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaca
    1774: 910001ad     	add	x13, x13, #0x0
		0000000000001774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaca
    1778: f900010a     	str	x10, [x8]
    177c: 90000010     	adrp	x16, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000177c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x415
    1780: 91000210     	add	x16, x16, #0x0
		0000000000001780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x415
    1784: f940026a     	ldr	x10, [x19]
		0000000000001784:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    1788: f8006109     	stur	x9, [x8, #0x6]
    178c: f9400168     	ldr	x8, [x11]
    1790: f840716b     	ldur	x11, [x11, #0x7]
    1794: a9400211     	ldp	x17, x0, [x16]
    1798: f9400549     	ldr	x9, [x10, #0x8]
    179c: f840f210     	ldur	x16, [x16, #0xf]
    17a0: f9000128     	str	x8, [x9]
    17a4: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000017a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
    17a8: 91000108     	add	x8, x8, #0x0
		00000000000017a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
    17ac: f800712b     	stur	x11, [x9, #0x7]
    17b0: 9000000b     	adrp	x11, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000017b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd40
    17b4: 9100016b     	add	x11, x11, #0x0
		00000000000017b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd40
    17b8: f9400949     	ldr	x9, [x10, #0x10]
    17bc: a940210a     	ldp	x10, x8, [x8]
    17c0: a9402d6c     	ldp	x12, x11, [x11]
    17c4: a900212a     	stp	x10, x8, [x9]
    17c8: 52800dc8     	mov	w8, #0x6e               // =110
    17cc: f940026a     	ldr	x10, [x19]
		00000000000017cc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    17d0: f9400d49     	ldr	x9, [x10, #0x18]
    17d4: 79002128     	strh	w8, [x9, #0x10]
    17d8: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000017d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x274
    17dc: 91000108     	add	x8, x8, #0x0
		00000000000017dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x274
    17e0: a9002d2c     	stp	x12, x11, [x9]
    17e4: f9400109     	ldr	x9, [x8]
    17e8: f8407108     	ldur	x8, [x8, #0x7]
    17ec: f940114a     	ldr	x10, [x10, #0x20]
    17f0: 9000000b     	adrp	x11, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000017f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16ec
    17f4: 9100016b     	add	x11, x11, #0x0
		00000000000017f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16ec
    17f8: f840e16c     	ldur	x12, [x11, #0xe]
    17fc: f9000149     	str	x9, [x10]
    1800: f9400269     	ldr	x9, [x19]
		0000000000001800:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    1804: f8007148     	stur	x8, [x10, #0x7]
    1808: a940296b     	ldp	x11, x10, [x11]
    180c: f9401528     	ldr	x8, [x9, #0x28]
    1810: a900290b     	stp	x11, x10, [x8]
    1814: f800e10c     	stur	x12, [x8, #0xe]
    1818: f9401928     	ldr	x8, [x9, #0x30]
    181c: a94039a9     	ldp	x9, x14, [x13]
    1820: f94009ad     	ldr	x13, [x13, #0x10]
    1824: a9003909     	stp	x9, x14, [x8]
    1828: f940026f     	ldr	x15, [x19]
		0000000000001828:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    182c: f900090d     	str	x13, [x8, #0x10]
    1830: f9401de8     	ldr	x8, [x15, #0x38]
    1834: a9000111     	stp	x17, x0, [x8]
    1838: f800f110     	stur	x16, [x8, #0xf]
    183c: f94021e8     	ldr	x8, [x15, #0x40]
    1840: a900290b     	stp	x11, x10, [x8]
    1844: f940026a     	ldr	x10, [x19]
		0000000000001844:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    1848: f800e10c     	stur	x12, [x8, #0xe]
    184c: f9402548     	ldr	x8, [x10, #0x48]
    1850: a9003909     	stp	x9, x14, [x8]
    1854: f900090d     	str	x13, [x8, #0x10]
    1858: f9402948     	ldr	x8, [x10, #0x50]
    185c: a9000111     	stp	x17, x0, [x8]
    1860: f800f110     	stur	x16, [x8, #0xf]
    1864: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1868: a94257f6     	ldp	x22, x21, [sp, #0x20]
    186c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1870: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1874: d50323bf     	autiasp
    1878: d65f03c0     	ret
    187c: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000187c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e3
    1880: 91000000     	add	x0, x0, #0x0
		0000000000001880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e3
    1884: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1646
    1888: 91000021     	add	x1, x1, #0x0
		0000000000001888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1646
    188c: 5280d0e2     	mov	w2, #0x687              // =1671
    1890: 94000000     	bl	0x1890 <aw22xxx_alloc_name_array+0x1e4>
		0000000000001890:  R_AARCH64_CALL26	_printk
    1894: 17fffff4     	b	0x1864 <aw22xxx_alloc_name_array+0x1b8>
    1898: b4000154     	cbz	x20, 0x18c0 <aw22xxx_alloc_name_array+0x214>
    189c: 91000694     	add	x20, x20, #0x1
    18a0: f9400268     	ldr	x8, [x19]
		00000000000018a0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    18a4: 51000a89     	sub	w9, w20, #0x2
    18a8: f8695900     	ldr	x0, [x8, w9, uxtw #3]
    18ac: 94000000     	bl	0x18ac <aw22xxx_alloc_name_array+0x200>
		00000000000018ac:  R_AARCH64_CALL26	kfree
    18b0: d1000694     	sub	x20, x20, #0x1
    18b4: f100069f     	cmp	x20, #0x1
    18b8: 54ffff4c     	b.gt	0x18a0 <aw22xxx_alloc_name_array+0x1f4>
    18bc: f9400260     	ldr	x0, [x19]
		00000000000018bc:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x61c0
    18c0: 94000000     	bl	0x18c0 <aw22xxx_alloc_name_array+0x214>
		00000000000018c0:  R_AARCH64_CALL26	kfree
    18c4: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000018c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e3
    18c8: 91000000     	add	x0, x0, #0x0
		00000000000018c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e3
    18cc: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000018cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1646
    18d0: 91000021     	add	x1, x1, #0x0
		00000000000018d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1646
    18d4: 5280d242     	mov	w2, #0x692              // =1682
    18d8: 94000000     	bl	0x18d8 <aw22xxx_alloc_name_array+0x22c>
		00000000000018d8:  R_AARCH64_CALL26	_printk
    18dc: 17ffffe2     	b	0x1864 <aw22xxx_alloc_name_array+0x1b8>
    18e0: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000018e0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x8
    18e4: d5384113     	mrs	x19, SP_EL0
    18e8: f9402a74     	ldr	x20, [x19, #0x50]
    18ec: f9400100     	ldr	x0, [x8]
		00000000000018ec:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x8
    18f0: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    18f4: 91000108     	add	x8, x8, #0x0
		00000000000018f4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    18f8: 52819801     	mov	w1, #0xcc0              // =3264
    18fc: 52800b02     	mov	w2, #0x58               // =88
    1900: f9002a68     	str	x8, [x19, #0x50]
    1904: 94000000     	bl	0x1904 <aw22xxx_alloc_name_array+0x258>
		0000000000001904:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    1908: f9002a74     	str	x20, [x19, #0x50]
    190c: 17ffff74     	b	0x16dc <aw22xxx_alloc_name_array+0x30>
