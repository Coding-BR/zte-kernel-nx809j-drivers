
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001814 <syna_tcm_read_flash_mtp_config>:
    1814: d503233f     	paciasp
    1818: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    181c: f9000bf9     	str	x25, [sp, #0x10]
    1820: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1824: a90357f6     	stp	x22, x21, [sp, #0x30]
    1828: a9044ff4     	stp	x20, x19, [sp, #0x40]
    182c: 910003fd     	mov	x29, sp
    1830: b4000721     	cbz	x1, 0x1914 <syna_tcm_read_flash_mtp_config+0x100>
    1834: aa0203f3     	mov	x19, x2
    1838: b4000742     	cbz	x2, 0x1920 <syna_tcm_read_flash_mtp_config+0x10c>
    183c: 39402408     	ldrb	w8, [x0, #0x9]
    1840: aa0003f7     	mov	x23, x0
    1844: 7100051f     	cmp	w8, #0x1
    1848: 540007a0     	b.eq	0x193c <syna_tcm_read_flash_mtp_config+0x128>
    184c: 2a0503f6     	mov	w22, w5
    1850: 2a0403f5     	mov	w21, w4
    1854: 2a0303f4     	mov	w20, w3
    1858: 35000043     	cbnz	w3, 0x1860 <syna_tcm_read_flash_mtp_config+0x4c>
    185c: b9402834     	ldr	w20, [x1, #0x28]
    1860: f9401028     	ldr	x8, [x1, #0x20]
    1864: 39400102     	ldrb	w2, [x8]
    1868: 71000c5f     	cmp	w2, #0x3
    186c: 54000741     	b.ne	0x1954 <syna_tcm_read_flash_mtp_config+0x140>
    1870: b9400a78     	ldr	w24, [x19, #0x8]
    1874: b9403c39     	ldr	w25, [x1, #0x3c]
    1878: f9400260     	ldr	x0, [x19]
    187c: 6b14031f     	cmp	w24, w20
    1880: 54000242     	b.hs	0x18c8 <syna_tcm_read_flash_mtp_config+0xb4>
    1884: b40000c0     	cbz	x0, 0x189c <syna_tcm_read_flash_mtp_config+0x88>
    1888: aa0003f8     	mov	x24, x0
    188c: 94000000     	bl	0x188c <syna_tcm_read_flash_mtp_config+0x78>
		000000000000188c:  R_AARCH64_CALL26	syna_request_managed_device
    1890: b40008a0     	cbz	x0, 0x19a4 <syna_tcm_read_flash_mtp_config+0x190>
    1894: aa1803e1     	mov	x1, x24
    1898: 94000000     	bl	0x1898 <syna_tcm_read_flash_mtp_config+0x84>
		0000000000001898:  R_AARCH64_CALL26	devm_kfree
    189c: 94000000     	bl	0x189c <syna_tcm_read_flash_mtp_config+0x88>
		000000000000189c:  R_AARCH64_CALL26	syna_request_managed_device
    18a0: b4000900     	cbz	x0, 0x19c0 <syna_tcm_read_flash_mtp_config+0x1ac>
    18a4: 7100029f     	cmp	w20, #0x0
    18a8: 5400078d     	b.le	0x1998 <syna_tcm_read_flash_mtp_config+0x184>
    18ac: 2a1403f8     	mov	w24, w20
    18b0: 5281b802     	mov	w2, #0xdc0              // =3520
    18b4: aa1803e1     	mov	x1, x24
    18b8: 94000000     	bl	0x18b8 <syna_tcm_read_flash_mtp_config+0xa4>
		00000000000018b8:  R_AARCH64_CALL26	devm_kmalloc
    18bc: f9000260     	str	x0, [x19]
    18c0: b40008c0     	cbz	x0, 0x19d8 <syna_tcm_read_flash_mtp_config+0x1c4>
    18c4: b9000a74     	str	w20, [x19, #0x8]
    18c8: 2a1f03e1     	mov	w1, wzr
    18cc: aa1803e2     	mov	x2, x24
    18d0: 94000000     	bl	0x18d0 <syna_tcm_read_flash_mtp_config+0xbc>
		00000000000018d0:  R_AARCH64_CALL26	memset
    18d4: f9400262     	ldr	x2, [x19]
    18d8: 0b150321     	add	w1, w25, w21
    18dc: aa1703e0     	mov	x0, x23
    18e0: 2a1403e3     	mov	w3, w20
    18e4: 2a1603e4     	mov	w4, w22
    18e8: b9000e7f     	str	wzr, [x19, #0xc]
    18ec: 97fffb36     	bl	0x5c4 <syna_tcm_read_flash>
    18f0: 37f80400     	tbnz	w0, #0x1f, 0x1970 <syna_tcm_read_flash_mtp_config+0x15c>
    18f4: b9000e74     	str	w20, [x19, #0xc]
    18f8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    18fc: f9400bf9     	ldr	x25, [sp, #0x10]
    1900: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1904: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1908: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    190c: d50323bf     	autiasp
    1910: d65f03c0     	ret
    1914: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001914:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29ae
    1918: 91000000     	add	x0, x0, #0x0
		0000000000001918:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29ae
    191c: 14000003     	b	0x1928 <syna_tcm_read_flash_mtp_config+0x114>
    1920: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ce6
    1924: 91000000     	add	x0, x0, #0x0
		0000000000001924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ce6
    1928: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a22
    192c: 91000021     	add	x1, x1, #0x0
		000000000000192c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a22
    1930: 94000000     	bl	0x1930 <syna_tcm_read_flash_mtp_config+0x11c>
		0000000000001930:  R_AARCH64_CALL26	_printk
    1934: 12801e00     	mov	w0, #-0xf1              // =-241
    1938: 17fffff0     	b	0x18f8 <syna_tcm_read_flash_mtp_config+0xe4>
    193c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000193c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f3e
    1940: 91000000     	add	x0, x0, #0x0
		0000000000001940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f3e
    1944: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a22
    1948: 91000021     	add	x1, x1, #0x0
		0000000000001948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a22
    194c: 52800022     	mov	w2, #0x1                // =1
    1950: 14000005     	b	0x1964 <syna_tcm_read_flash_mtp_config+0x150>
    1954: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb350
    1958: 91000000     	add	x0, x0, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb350
    195c: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		000000000000195c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a22
    1960: 91000021     	add	x1, x1, #0x0
		0000000000001960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a22
    1964: 94000000     	bl	0x1964 <syna_tcm_read_flash_mtp_config+0x150>
		0000000000001964:  R_AARCH64_CALL26	_printk
    1968: 12801e00     	mov	w0, #-0xf1              // =-241
    196c: 17ffffe3     	b	0x18f8 <syna_tcm_read_flash_mtp_config+0xe4>
    1970: 90000008     	adrp	x8, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x438c
    1974: 91000108     	add	x8, x8, #0x0
		0000000000001974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x438c
    1978: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a22
    197c: 91000021     	add	x1, x1, #0x0
		000000000000197c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a22
    1980: 0b150322     	add	w2, w25, w21
    1984: 2a0003f3     	mov	w19, w0
    1988: aa0803e0     	mov	x0, x8
    198c: 94000000     	bl	0x198c <syna_tcm_read_flash_mtp_config+0x178>
		000000000000198c:  R_AARCH64_CALL26	_printk
    1990: 2a1303e0     	mov	w0, w19
    1994: 17ffffd9     	b	0x18f8 <syna_tcm_read_flash_mtp_config+0xe4>
    1998: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
    199c: 91000000     	add	x0, x0, #0x0
		000000000000199c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
    19a0: 1400000a     	b	0x19c8 <syna_tcm_read_flash_mtp_config+0x1b4>
    19a4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    19a8: 91000000     	add	x0, x0, #0x0
		00000000000019a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    19ac: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    19b0: 91000021     	add	x1, x1, #0x0
		00000000000019b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    19b4: 94000000     	bl	0x19b4 <syna_tcm_read_flash_mtp_config+0x1a0>
		00000000000019b4:  R_AARCH64_CALL26	_printk
    19b8: 94000000     	bl	0x19b8 <syna_tcm_read_flash_mtp_config+0x1a4>
		00000000000019b8:  R_AARCH64_CALL26	syna_request_managed_device
    19bc: b5fff740     	cbnz	x0, 0x18a4 <syna_tcm_read_flash_mtp_config+0x90>
    19c0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    19c4: 91000000     	add	x0, x0, #0x0
		00000000000019c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    19c8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    19cc: 91000021     	add	x1, x1, #0x0
		00000000000019cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    19d0: 94000000     	bl	0x19d0 <syna_tcm_read_flash_mtp_config+0x1bc>
		00000000000019d0:  R_AARCH64_CALL26	_printk
    19d4: f900027f     	str	xzr, [x19]
    19d8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d72
    19dc: 91000000     	add	x0, x0, #0x0
		00000000000019dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d72
    19e0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d4
    19e4: 91000021     	add	x1, x1, #0x0
		00000000000019e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d4
    19e8: 2a1403e2     	mov	w2, w20
    19ec: 94000000     	bl	0x19ec <syna_tcm_read_flash_mtp_config+0x1d8>
		00000000000019ec:  R_AARCH64_CALL26	_printk
    19f0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2904
    19f4: 91000000     	add	x0, x0, #0x0
		00000000000019f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2904
    19f8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		00000000000019f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a22
    19fc: 91000021     	add	x1, x1, #0x0
		00000000000019fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a22
    1a00: f900067f     	str	xzr, [x19, #0x8]
    1a04: 94000000     	bl	0x1a04 <syna_tcm_read_flash_mtp_config+0x1f0>
		0000000000001a04:  R_AARCH64_CALL26	_printk
    1a08: 12801e40     	mov	w0, #-0xf3              // =-243
    1a0c: 17ffffbb     	b	0x18f8 <syna_tcm_read_flash_mtp_config+0xe4>
