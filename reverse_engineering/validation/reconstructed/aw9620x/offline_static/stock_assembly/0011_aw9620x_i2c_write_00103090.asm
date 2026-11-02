
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001810 <aw9620x_i2c_write>:
    1810: d503233f     	paciasp
    1814: d101c3ff     	sub	sp, sp, #0x70
    1818: a9037bfd     	stp	x29, x30, [sp, #0x30]
    181c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    1820: a90557f6     	stp	x22, x21, [sp, #0x50]
    1824: a9064ff4     	stp	x20, x19, [sp, #0x60]
    1828: 9100c3fd     	add	x29, sp, #0x30
    182c: d5384108     	mrs	x8, SP_EL0
    1830: 53187c49     	lsr	w9, w2, #24
    1834: 53107c4a     	lsr	w10, w2, #16
    1838: f9438908     	ldr	x8, [x8, #0x710]
    183c: aa0003f3     	mov	x19, x0
    1840: 2a0203f4     	mov	w20, w2
    1844: 2a0103f5     	mov	w21, w1
    1848: d10043b6     	sub	x22, x29, #0x10
    184c: f81f83a8     	stur	x8, [x29, #-0x8]
    1850: 53087c48     	lsr	w8, w2, #8
    1854: 381f23a9     	sturb	w9, [x29, #-0xe]
    1858: f9401409     	ldr	x9, [x0, #0x28]
    185c: 381f43a8     	sturb	w8, [x29, #-0xc]
    1860: d2c000c8     	mov	x8, #0x600000000        // =25769803776
    1864: 381f33aa     	sturb	w10, [x29, #-0xd]
    1868: 53087c2a     	lsr	w10, w1, #8
    186c: f9400d20     	ldr	x0, [x9, #0x18]
    1870: 381f53a2     	sturb	w2, [x29, #-0xb]
    1874: 52800022     	mov	w2, #0x1                // =1
    1878: f9000be8     	str	x8, [sp, #0x10]
    187c: 79400528     	ldrh	w8, [x9, #0x2]
    1880: 381f13a1     	sturb	w1, [x29, #-0xf]
    1884: 910043e1     	add	x1, sp, #0x10
    1888: 381f03aa     	sturb	w10, [x29, #-0x10]
    188c: 790023e8     	strh	w8, [sp, #0x10]
    1890: f9000ff6     	str	x22, [sp, #0x18]
    1894: 94000000     	bl	0x1894 <aw9620x_i2c_write+0x84>
		0000000000001894:  R_AARCH64_CALL26	i2c_transfer
    1898: 37f801c0     	tbnz	w0, #0x1f, 0x18d0 <aw9620x_i2c_write+0xc0>
    189c: 2a1f03e0     	mov	w0, wzr
    18a0: d5384108     	mrs	x8, SP_EL0
    18a4: f9438908     	ldr	x8, [x8, #0x710]
    18a8: f85f83a9     	ldur	x9, [x29, #-0x8]
    18ac: eb09011f     	cmp	x8, x9
    18b0: 540016e1     	b.ne	0x1b8c <aw9620x_i2c_write+0x37c>
    18b4: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    18b8: a94557f6     	ldp	x22, x21, [sp, #0x50]
    18bc: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    18c0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    18c4: 9101c3ff     	add	sp, sp, #0x70
    18c8: d50323bf     	autiasp
    18cc: d65f03c0     	ret
    18d0: f9401a61     	ldr	x1, [x19, #0x30]
    18d4: 2a0003e7     	mov	w7, w0
    18d8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000018d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    18dc: 91000000     	add	x0, x0, #0x0
		00000000000018dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    18e0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000018e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    18e4: 91000042     	add	x2, x2, #0x0
		00000000000018e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    18e8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000018e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    18ec: 91000063     	add	x3, x3, #0x0
		00000000000018ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    18f0: 528000a8     	mov	w8, #0x5                // =5
    18f4: 12003ea5     	and	w5, w21, #0xffff
    18f8: 52804c64     	mov	w4, #0x263              // =611
    18fc: 2a1403e6     	mov	w6, w20
    1900: b90003e8     	str	w8, [sp]
    1904: 94000000     	bl	0x1904 <aw9620x_i2c_write+0xf4>
		0000000000001904:  R_AARCH64_CALL26	_dev_printk
    1908: 5280fa00     	mov	w0, #0x7d0              // =2000
    190c: 52817701     	mov	w1, #0xbb8              // =3000
    1910: 52800042     	mov	w2, #0x2                // =2
    1914: 94000000     	bl	0x1914 <aw9620x_i2c_write+0x104>
		0000000000001914:  R_AARCH64_CALL26	usleep_range_state
    1918: f9401668     	ldr	x8, [x19, #0x28]
    191c: f9000bff     	str	xzr, [sp, #0x10]
    1920: 528000d7     	mov	w23, #0x6               // =6
    1924: 910043e1     	add	x1, sp, #0x10
    1928: 52800022     	mov	w2, #0x1                // =1
    192c: 79400509     	ldrh	w9, [x8, #0x2]
    1930: f9400d00     	ldr	x0, [x8, #0x18]
    1934: 79002bf7     	strh	w23, [sp, #0x14]
    1938: f9000ff6     	str	x22, [sp, #0x18]
    193c: 790023e9     	strh	w9, [sp, #0x10]
    1940: 94000000     	bl	0x1940 <aw9620x_i2c_write+0x130>
		0000000000001940:  R_AARCH64_CALL26	i2c_transfer
    1944: 36fffac0     	tbz	w0, #0x1f, 0x189c <aw9620x_i2c_write+0x8c>
    1948: f9401a61     	ldr	x1, [x19, #0x30]
    194c: 2a0003e7     	mov	w7, w0
    1950: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1954: 91000000     	add	x0, x0, #0x0
		0000000000001954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1958: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    195c: 91000042     	add	x2, x2, #0x0
		000000000000195c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    1960: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    1964: 91000063     	add	x3, x3, #0x0
		0000000000001964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    1968: 52800088     	mov	w8, #0x4                // =4
    196c: 12003ea5     	and	w5, w21, #0xffff
    1970: 52804c64     	mov	w4, #0x263              // =611
    1974: 2a1403e6     	mov	w6, w20
    1978: b90003e8     	str	w8, [sp]
    197c: 94000000     	bl	0x197c <aw9620x_i2c_write+0x16c>
		000000000000197c:  R_AARCH64_CALL26	_dev_printk
    1980: 5280fa00     	mov	w0, #0x7d0              // =2000
    1984: 52817701     	mov	w1, #0xbb8              // =3000
    1988: 52800042     	mov	w2, #0x2                // =2
    198c: 94000000     	bl	0x198c <aw9620x_i2c_write+0x17c>
		000000000000198c:  R_AARCH64_CALL26	usleep_range_state
    1990: f9401668     	ldr	x8, [x19, #0x28]
    1994: f9000bff     	str	xzr, [sp, #0x10]
    1998: 910043e1     	add	x1, sp, #0x10
    199c: 52800022     	mov	w2, #0x1                // =1
    19a0: 79400509     	ldrh	w9, [x8, #0x2]
    19a4: f9400d00     	ldr	x0, [x8, #0x18]
    19a8: 79002bf7     	strh	w23, [sp, #0x14]
    19ac: f9000ff6     	str	x22, [sp, #0x18]
    19b0: 790023e9     	strh	w9, [sp, #0x10]
    19b4: 94000000     	bl	0x19b4 <aw9620x_i2c_write+0x1a4>
		00000000000019b4:  R_AARCH64_CALL26	i2c_transfer
    19b8: 36fff720     	tbz	w0, #0x1f, 0x189c <aw9620x_i2c_write+0x8c>
    19bc: f9401a61     	ldr	x1, [x19, #0x30]
    19c0: 2a0003e7     	mov	w7, w0
    19c4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000019c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    19c8: 91000000     	add	x0, x0, #0x0
		00000000000019c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    19cc: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000019cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    19d0: 91000042     	add	x2, x2, #0x0
		00000000000019d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    19d4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		00000000000019d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    19d8: 91000063     	add	x3, x3, #0x0
		00000000000019d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    19dc: 52800068     	mov	w8, #0x3                // =3
    19e0: 12003ea5     	and	w5, w21, #0xffff
    19e4: 52804c64     	mov	w4, #0x263              // =611
    19e8: 2a1403e6     	mov	w6, w20
    19ec: b90003e8     	str	w8, [sp]
    19f0: 94000000     	bl	0x19f0 <aw9620x_i2c_write+0x1e0>
		00000000000019f0:  R_AARCH64_CALL26	_dev_printk
    19f4: 5280fa00     	mov	w0, #0x7d0              // =2000
    19f8: 52817701     	mov	w1, #0xbb8              // =3000
    19fc: 52800042     	mov	w2, #0x2                // =2
    1a00: 52800058     	mov	w24, #0x2               // =2
    1a04: 94000000     	bl	0x1a04 <aw9620x_i2c_write+0x1f4>
		0000000000001a04:  R_AARCH64_CALL26	usleep_range_state
    1a08: f9401668     	ldr	x8, [x19, #0x28]
    1a0c: f9000bff     	str	xzr, [sp, #0x10]
    1a10: 910043e1     	add	x1, sp, #0x10
    1a14: 52800022     	mov	w2, #0x1                // =1
    1a18: 79400509     	ldrh	w9, [x8, #0x2]
    1a1c: f9400d00     	ldr	x0, [x8, #0x18]
    1a20: 79002bf7     	strh	w23, [sp, #0x14]
    1a24: f9000ff6     	str	x22, [sp, #0x18]
    1a28: 790023e9     	strh	w9, [sp, #0x10]
    1a2c: 94000000     	bl	0x1a2c <aw9620x_i2c_write+0x21c>
		0000000000001a2c:  R_AARCH64_CALL26	i2c_transfer
    1a30: 36fff360     	tbz	w0, #0x1f, 0x189c <aw9620x_i2c_write+0x8c>
    1a34: f9401a61     	ldr	x1, [x19, #0x30]
    1a38: 2a0003e7     	mov	w7, w0
    1a3c: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1a40: 91000000     	add	x0, x0, #0x0
		0000000000001a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1a44: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    1a48: 91000042     	add	x2, x2, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    1a4c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    1a50: 91000063     	add	x3, x3, #0x0
		0000000000001a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    1a54: 12003ea5     	and	w5, w21, #0xffff
    1a58: 52804c64     	mov	w4, #0x263              // =611
    1a5c: 2a1403e6     	mov	w6, w20
    1a60: b90003f8     	str	w24, [sp]
    1a64: 94000000     	bl	0x1a64 <aw9620x_i2c_write+0x254>
		0000000000001a64:  R_AARCH64_CALL26	_dev_printk
    1a68: 5280fa00     	mov	w0, #0x7d0              // =2000
    1a6c: 52817701     	mov	w1, #0xbb8              // =3000
    1a70: 52800042     	mov	w2, #0x2                // =2
    1a74: 94000000     	bl	0x1a74 <aw9620x_i2c_write+0x264>
		0000000000001a74:  R_AARCH64_CALL26	usleep_range_state
    1a78: f9401668     	ldr	x8, [x19, #0x28]
    1a7c: f9000bff     	str	xzr, [sp, #0x10]
    1a80: 910043e1     	add	x1, sp, #0x10
    1a84: 52800022     	mov	w2, #0x1                // =1
    1a88: 79400509     	ldrh	w9, [x8, #0x2]
    1a8c: f9400d00     	ldr	x0, [x8, #0x18]
    1a90: 79002bf7     	strh	w23, [sp, #0x14]
    1a94: f9000ff6     	str	x22, [sp, #0x18]
    1a98: 52800037     	mov	w23, #0x1               // =1
    1a9c: 790023e9     	strh	w9, [sp, #0x10]
    1aa0: 94000000     	bl	0x1aa0 <aw9620x_i2c_write+0x290>
		0000000000001aa0:  R_AARCH64_CALL26	i2c_transfer
    1aa4: 36ffefc0     	tbz	w0, #0x1f, 0x189c <aw9620x_i2c_write+0x8c>
    1aa8: f9401a61     	ldr	x1, [x19, #0x30]
    1aac: 2a0003e7     	mov	w7, w0
    1ab0: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1ab4: 91000000     	add	x0, x0, #0x0
		0000000000001ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1ab8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    1abc: 91000042     	add	x2, x2, #0x0
		0000000000001abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    1ac0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    1ac4: 91000063     	add	x3, x3, #0x0
		0000000000001ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    1ac8: 12003ea5     	and	w5, w21, #0xffff
    1acc: 52804c64     	mov	w4, #0x263              // =611
    1ad0: 2a1403e6     	mov	w6, w20
    1ad4: b90003f7     	str	w23, [sp]
    1ad8: 94000000     	bl	0x1ad8 <aw9620x_i2c_write+0x2c8>
		0000000000001ad8:  R_AARCH64_CALL26	_dev_printk
    1adc: 5280fa00     	mov	w0, #0x7d0              // =2000
    1ae0: 52817701     	mov	w1, #0xbb8              // =3000
    1ae4: 52800042     	mov	w2, #0x2                // =2
    1ae8: 94000000     	bl	0x1ae8 <aw9620x_i2c_write+0x2d8>
		0000000000001ae8:  R_AARCH64_CALL26	usleep_range_state
    1aec: f9401668     	ldr	x8, [x19, #0x28]
    1af0: f9000bff     	str	xzr, [sp, #0x10]
    1af4: 528000c9     	mov	w9, #0x6                // =6
    1af8: 910043e1     	add	x1, sp, #0x10
    1afc: 52800022     	mov	w2, #0x1                // =1
    1b00: 7940050a     	ldrh	w10, [x8, #0x2]
    1b04: f9400d00     	ldr	x0, [x8, #0x18]
    1b08: 79002be9     	strh	w9, [sp, #0x14]
    1b0c: f9000ff6     	str	x22, [sp, #0x18]
    1b10: 790023ea     	strh	w10, [sp, #0x10]
    1b14: 94000000     	bl	0x1b14 <aw9620x_i2c_write+0x304>
		0000000000001b14:  R_AARCH64_CALL26	i2c_transfer
    1b18: 36ffec20     	tbz	w0, #0x1f, 0x189c <aw9620x_i2c_write+0x8c>
    1b1c: f9401a61     	ldr	x1, [x19, #0x30]
    1b20: 90000016     	adrp	x22, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    1b24: 910002d6     	add	x22, x22, #0x0
		0000000000001b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    1b28: 90000017     	adrp	x23, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x338e
    1b2c: 910002f7     	add	x23, x23, #0x0
		0000000000001b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x338e
    1b30: 2a0003e7     	mov	w7, w0
    1b34: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3796
    1b38: 91000042     	add	x2, x2, #0x0
		0000000000001b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3796
    1b3c: 12003ea5     	and	w5, w21, #0xffff
    1b40: aa1603e0     	mov	x0, x22
    1b44: aa1703e3     	mov	x3, x23
    1b48: 52804c64     	mov	w4, #0x263              // =611
    1b4c: 2a1403e6     	mov	w6, w20
    1b50: b90003ff     	str	wzr, [sp]
    1b54: 94000000     	bl	0x1b54 <aw9620x_i2c_write+0x344>
		0000000000001b54:  R_AARCH64_CALL26	_dev_printk
    1b58: 5280fa00     	mov	w0, #0x7d0              // =2000
    1b5c: 52817701     	mov	w1, #0xbb8              // =3000
    1b60: 52800042     	mov	w2, #0x2                // =2
    1b64: 94000000     	bl	0x1b64 <aw9620x_i2c_write+0x354>
		0000000000001b64:  R_AARCH64_CALL26	usleep_range_state
    1b68: f9401a61     	ldr	x1, [x19, #0x30]
    1b6c: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5e
    1b70: 91000042     	add	x2, x2, #0x0
		0000000000001b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5e
    1b74: aa1603e0     	mov	x0, x22
    1b78: aa1703e3     	mov	x3, x23
    1b7c: 52804d64     	mov	w4, #0x26b              // =619
    1b80: 94000000     	bl	0x1b80 <aw9620x_i2c_write+0x370>
		0000000000001b80:  R_AARCH64_CALL26	_dev_printk
    1b84: 12800000     	mov	w0, #-0x1               // =-1
    1b88: 17ffff46     	b	0x18a0 <aw9620x_i2c_write+0x90>
    1b8c: 94000000     	bl	0x1b8c <aw9620x_i2c_write+0x37c>
		0000000000001b8c:  R_AARCH64_CALL26	__stack_chk_fail
