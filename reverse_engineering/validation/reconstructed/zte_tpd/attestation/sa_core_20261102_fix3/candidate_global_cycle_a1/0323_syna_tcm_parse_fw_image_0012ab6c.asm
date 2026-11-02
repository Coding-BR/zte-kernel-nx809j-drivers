
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a8f8 <syna_tcm_parse_fw_image>:
   1a8f8: d503233f     	paciasp
   1a8fc: d10203ff     	sub	sp, sp, #0x80
   1a900: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1a904: a9036ffc     	stp	x28, x27, [sp, #0x30]
   1a908: a90467fa     	stp	x26, x25, [sp, #0x40]
   1a90c: a9055ff8     	stp	x24, x23, [sp, #0x50]
   1a910: a90657f6     	stp	x22, x21, [sp, #0x60]
   1a914: a9074ff4     	stp	x20, x19, [sp, #0x70]
   1a918: 910083fd     	add	x29, sp, #0x20
   1a91c: b40015c0     	cbz	x0, 0x1abd4 <syna_tcm_parse_fw_image+0x2dc>
   1a920: aa0203f9     	mov	x25, x2
   1a924: b40015e2     	cbz	x2, 0x1abe0 <syna_tcm_parse_fw_image+0x2e8>
   1a928: 2a0103f4     	mov	w20, w1
   1a92c: 34001601     	cbz	w1, 0x1abec <syna_tcm_parse_fw_image+0x2f4>
   1a930: aa0003f3     	mov	x19, x0
   1a934: 91001320     	add	x0, x25, #0x4
   1a938: 2a1f03e1     	mov	w1, wzr
   1a93c: 52806182     	mov	w2, #0x30c              // =780
   1a940: 94000000     	bl	0x1a940 <syna_tcm_parse_fw_image+0x48>
		000000000001a940:  R_AARCH64_CALL26	memset
   1a944: f9000733     	str	x19, [x25, #0x8]
   1a948: 5288e569     	mov	w9, #0x472b             // =18219
   1a94c: b9000334     	str	w20, [x25]
   1a950: 72a90309     	movk	w9, #0x4818, lsl #16
   1a954: b9400268     	ldr	w8, [x19]
   1a958: 6b09011f     	cmp	w8, w9
   1a95c: 540014e1     	b.ne	0x1abf8 <syna_tcm_parse_fw_image+0x300>
   1a960: b9400668     	ldr	w8, [x19, #0x4]
   1a964: b81fc3a8     	stur	w8, [x29, #-0x4]
   1a968: 34001328     	cbz	w8, 0x1abcc <syna_tcm_parse_fw_image+0x2d4>
   1a96c: 2a1f03f5     	mov	w21, wzr
   1a970: 90000016     	adrp	x22, 0x1a000 <edge_long_press_up+0x230>
		000000000001a970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x112c
   1a974: 910002d6     	add	x22, x22, #0x0
		000000000001a974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x112c
   1a978: 90000017     	adrp	x23, 0x1a000 <edge_long_press_up+0x230>
		000000000001a978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x18798
   1a97c: 910002f7     	add	x23, x23, #0x0
		000000000001a97c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x18798
   1a980: 9000001b     	adrp	x27, 0x1a000 <edge_long_press_up+0x230>
		000000000001a980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x18850
   1a984: 9100037b     	add	x27, x27, #0x0
		000000000001a984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x18850
   1a988: 91004328     	add	x8, x25, #0x10
   1a98c: 52800118     	mov	w24, #0x8               // =8
   1a990: f9000be8     	str	x8, [sp, #0x10]
   1a994: 1400000a     	b	0x1a9bc <syna_tcm_parse_fw_image+0xc4>
   1a998: 52883b09     	mov	w9, #0x41d8             // =16856
   1a99c: 72b83f69     	movk	w9, #0xc1fb, lsl #16
   1a9a0: 6b09011f     	cmp	w8, w9
   1a9a4: 54000600     	b.eq	0x1aa64 <syna_tcm_parse_fw_image+0x16c>
   1a9a8: b85fc3a8     	ldur	w8, [x29, #-0x4]
   1a9ac: 110006b5     	add	w21, w21, #0x1
   1a9b0: 11001318     	add	w24, w24, #0x4
   1a9b4: 6b0802bf     	cmp	w21, w8
   1a9b8: 540010a0     	b.eq	0x1abcc <syna_tcm_parse_fw_image+0x2d4>
   1a9bc: b8784a68     	ldr	w8, [x19, w24, uxtw]
   1a9c0: 529ca2c9     	mov	w9, #0xe516             // =58646
   1a9c4: 72af80a9     	movk	w9, #0x7c05, lsl #16
   1a9c8: 8b08027c     	add	x28, x19, x8
   1a9cc: b9400388     	ldr	w8, [x28]
   1a9d0: 6b09011f     	cmp	w8, w9
   1a9d4: 54fffe21     	b.ne	0x1a998 <syna_tcm_parse_fw_image+0xa0>
   1a9d8: 528002d4     	mov	w20, #0x16              // =22
   1a9dc: 71005a9f     	cmp	w20, #0x16
   1a9e0: 54000088     	b.hi	0x1a9f0 <syna_tcm_parse_fw_image+0xf8>
   1a9e4: f8745af9     	ldr	x25, [x23, w20, uxtw #3]
   1a9e8: f8745b7a     	ldr	x26, [x27, w20, uxtw #3]
   1a9ec: 14000003     	b	0x1a9f8 <syna_tcm_parse_fw_image+0x100>
   1a9f0: 52800059     	mov	w25, #0x2               // =2
   1a9f4: aa1603fa     	mov	x26, x22
   1a9f8: aa1a03e0     	mov	x0, x26
   1a9fc: aa1903e1     	mov	x1, x25
   1aa00: 94000000     	bl	0x1aa00 <syna_tcm_parse_fw_image+0x108>
		000000000001aa00:  R_AARCH64_CALL26	strnlen
   1aa04: aa0003e2     	mov	x2, x0
   1aa08: eb19001f     	cmp	x0, x25
   1aa0c: 540011c8     	b.hi	0x1ac44 <syna_tcm_parse_fw_image+0x34c>
   1aa10: 54001122     	b.hs	0x1ac34 <syna_tcm_parse_fw_image+0x33c>
   1aa14: 91001380     	add	x0, x28, #0x4
   1aa18: aa1a03e1     	mov	x1, x26
   1aa1c: 94000000     	bl	0x1aa1c <syna_tcm_parse_fw_image+0x124>
		000000000001aa1c:  R_AARCH64_CALL26	strncmp
   1aa20: 34000160     	cbz	w0, 0x1aa4c <syna_tcm_parse_fw_image+0x154>
   1aa24: 51000694     	sub	w20, w20, #0x1
   1aa28: 31000a9f     	cmn	w20, #0x2
   1aa2c: 54fffd81     	b.ne	0x1a9dc <syna_tcm_parse_fw_image+0xe4>
   1aa30: 91001382     	add	x2, x28, #0x4
   1aa34: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001aa34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e48
   1aa38: 91000000     	add	x0, x0, #0x0
		000000000001aa38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e48
   1aa3c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001aa3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff0
   1aa40: 91000021     	add	x1, x1, #0x0
		000000000001aa40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff0
   1aa44: 94000000     	bl	0x1aa44 <syna_tcm_parse_fw_image+0x14c>
		000000000001aa44:  R_AARCH64_CALL26	_printk
   1aa48: 17ffffd8     	b	0x1a9a8 <syna_tcm_parse_fw_image+0xb0>
   1aa4c: 71005e9f     	cmp	w20, #0x17
   1aa50: 54fffac2     	b.hs	0x1a9a8 <syna_tcm_parse_fw_image+0xb0>
   1aa54: 1100069a     	add	w26, w20, #0x1
   1aa58: 52800389     	mov	w9, #0x1c               // =28
   1aa5c: 52800488     	mov	w8, #0x24               // =36
   1aa60: 14000004     	b	0x1aa70 <syna_tcm_parse_fw_image+0x178>
   1aa64: 5280029a     	mov	w26, #0x14              // =20
   1aa68: 52800089     	mov	w9, #0x4                // =4
   1aa6c: 52800108     	mov	w8, #0x8                // =8
   1aa70: f9400beb     	ldr	x11, [sp, #0x10]
   1aa74: 2a1a03ea     	mov	w10, w26
   1aa78: ab0a1579     	adds	x25, x11, x10, lsl #5
   1aa7c: 54000081     	b.ne	0x1aa8c <syna_tcm_parse_fw_image+0x194>
   1aa80: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001aa80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d78
   1aa84: 91000000     	add	x0, x0, #0x0
		000000000001aa84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d78
   1aa88: 14000004     	b	0x1aa98 <syna_tcm_parse_fw_image+0x1a0>
   1aa8c: b50000fc     	cbnz	x28, 0x1aaa8 <syna_tcm_parse_fw_image+0x1b0>
   1aa90: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001aa90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6f0
   1aa94: 91000000     	add	x0, x0, #0x0
		000000000001aa94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6f0
   1aa98: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001aa98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad9c
   1aa9c: 91000021     	add	x1, x1, #0x0
		000000000001aa9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad9c
   1aaa0: 94000000     	bl	0x1aaa0 <syna_tcm_parse_fw_image+0x1a8>
		000000000001aaa0:  R_AARCH64_CALL26	_printk
   1aaa4: 17ffffc1     	b	0x1a9a8 <syna_tcm_parse_fw_image+0xb0>
   1aaa8: b8696b94     	ldr	w20, [x28, x9]
   1aaac: 7100535f     	cmp	w26, #0x14
   1aab0: 8b080381     	add	x1, x28, x8
   1aab4: 540001c1     	b.ne	0x1aaec <syna_tcm_parse_fw_image+0x1f4>
   1aab8: 52800288     	mov	w8, #0x14               // =20
   1aabc: f9000721     	str	x1, [x25, #0x8]
   1aac0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001aac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9032
   1aac4: 91000000     	add	x0, x0, #0x0
		000000000001aac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9032
   1aac8: 39006328     	strb	w8, [x25, #0x18]
   1aacc: 52800028     	mov	w8, #0x1                // =1
   1aad0: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001aad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad9c
   1aad4: 91000021     	add	x1, x1, #0x0
		000000000001aad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad9c
   1aad8: 2a1403e2     	mov	w2, w20
   1aadc: 29027f34     	stp	w20, wzr, [x25, #0x10]
   1aae0: 39000328     	strb	w8, [x25]
   1aae4: 94000000     	bl	0x1aae4 <syna_tcm_parse_fw_image+0x1ec>
		000000000001aae4:  R_AARCH64_CALL26	_printk
   1aae8: 14000022     	b	0x1ab70 <syna_tcm_parse_fw_image+0x278>
   1aaec: b9402388     	ldr	w8, [x28, #0x20]
   1aaf0: 12800000     	mov	w0, #-0x1               // =-1
   1aaf4: aa1403e2     	mov	x2, x20
   1aaf8: f90003e1     	str	x1, [sp]
   1aafc: b9000fe8     	str	w8, [sp, #0xc]
   1ab00: 94000000     	bl	0x1ab00 <syna_tcm_parse_fw_image+0x208>
		000000000001ab00:  R_AARCH64_CALL26	crc32_le
   1ab04: b9400fea     	ldr	w10, [sp, #0xc]
   1ab08: 2a2003e4     	mvn	w4, w0
   1ab0c: 6b04015f     	cmp	w10, w4
   1ab10: 54000421     	b.ne	0x1ab94 <syna_tcm_parse_fw_image+0x29c>
   1ab14: b9401b88     	ldr	w8, [x28, #0x18]
   1ab18: f94003e9     	ldr	x9, [sp]
   1ab1c: aa1603e2     	mov	x2, x22
   1ab20: 3900633a     	strb	w26, [x25, #0x18]
   1ab24: 531f7903     	lsl	w3, w8, #1
   1ab28: 51000748     	sub	w8, w26, #0x1
   1ab2c: f9000729     	str	x9, [x25, #0x8]
   1ab30: 52800029     	mov	w9, #0x1                // =1
   1ab34: 7100591f     	cmp	w8, #0x16
   1ab38: b9001f2a     	str	w10, [x25, #0x1c]
   1ab3c: 39000329     	strb	w9, [x25]
   1ab40: 29020f34     	stp	w20, w3, [x25, #0x10]
   1ab44: 54000088     	b.hi	0x1ab54 <syna_tcm_parse_fw_image+0x25c>
   1ab48: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001ab48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x18908
   1ab4c: 91000129     	add	x9, x9, #0x0
		000000000001ab4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x18908
   1ab50: f8685922     	ldr	x2, [x9, w8, uxtw #3]
   1ab54: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001ab54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a50
   1ab58: 91000000     	add	x0, x0, #0x0
		000000000001ab58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a50
   1ab5c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ab5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad9c
   1ab60: 91000021     	add	x1, x1, #0x0
		000000000001ab60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad9c
   1ab64: 2a0303e4     	mov	w4, w3
   1ab68: 2a1403e5     	mov	w5, w20
   1ab6c: 94000000     	bl	0x1ab6c <syna_tcm_parse_fw_image+0x274>
		000000000001ab6c:  R_AARCH64_CALL26	_printk
   1ab70: b9401324     	ldr	w4, [x25, #0x10]
   1ab74: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001ab74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a82
   1ab78: 91000000     	add	x0, x0, #0x0
		000000000001ab78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a82
   1ab7c: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ab7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x112e
   1ab80: 91000021     	add	x1, x1, #0x0
		000000000001ab80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x112e
   1ab84: 2a1a03e2     	mov	w2, w26
   1ab88: aa1903e3     	mov	x3, x25
   1ab8c: 94000000     	bl	0x1ab8c <syna_tcm_parse_fw_image+0x294>
		000000000001ab8c:  R_AARCH64_CALL26	_printk
   1ab90: 17ffff86     	b	0x1a9a8 <syna_tcm_parse_fw_image+0xb0>
   1ab94: 51000748     	sub	w8, w26, #0x1
   1ab98: aa1603e2     	mov	x2, x22
   1ab9c: 7100591f     	cmp	w8, #0x16
   1aba0: 54000088     	b.hi	0x1abb0 <syna_tcm_parse_fw_image+0x2b8>
   1aba4: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001aba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x18908
   1aba8: 91000129     	add	x9, x9, #0x0
		000000000001aba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x18908
   1abac: f8685922     	ldr	x2, [x9, w8, uxtw #3]
   1abb0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001abb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb49a
   1abb4: 91000000     	add	x0, x0, #0x0
		000000000001abb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb49a
   1abb8: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001abb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad9c
   1abbc: 91000021     	add	x1, x1, #0x0
		000000000001abbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad9c
   1abc0: 2a0a03e3     	mov	w3, w10
   1abc4: 94000000     	bl	0x1abc4 <syna_tcm_parse_fw_image+0x2cc>
		000000000001abc4:  R_AARCH64_CALL26	_printk
   1abc8: 17ffff78     	b	0x1a9a8 <syna_tcm_parse_fw_image+0xb0>
   1abcc: 2a1f03e0     	mov	w0, wzr
   1abd0: 14000010     	b	0x1ac10 <syna_tcm_parse_fw_image+0x318>
   1abd4: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001abd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bf8
   1abd8: 91000000     	add	x0, x0, #0x0
		000000000001abd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bf8
   1abdc: 14000009     	b	0x1ac00 <syna_tcm_parse_fw_image+0x308>
   1abe0: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001abe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ff6
   1abe4: 91000000     	add	x0, x0, #0x0
		000000000001abe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ff6
   1abe8: 14000006     	b	0x1ac00 <syna_tcm_parse_fw_image+0x308>
   1abec: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001abec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d9e
   1abf0: 91000000     	add	x0, x0, #0x0
		000000000001abf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d9e
   1abf4: 14000003     	b	0x1ac00 <syna_tcm_parse_fw_image+0x308>
   1abf8: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001abf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1686
   1abfc: 91000000     	add	x0, x0, #0x0
		000000000001abfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1686
   1ac00: 90000001     	adrp	x1, 0x1a000 <edge_long_press_up+0x230>
		000000000001ac00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x112e
   1ac04: 91000021     	add	x1, x1, #0x0
		000000000001ac04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x112e
   1ac08: 94000000     	bl	0x1ac08 <syna_tcm_parse_fw_image+0x310>
		000000000001ac08:  R_AARCH64_CALL26	_printk
   1ac0c: 12801e00     	mov	w0, #-0xf1              // =-241
   1ac10: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   1ac14: a94657f6     	ldp	x22, x21, [sp, #0x60]
   1ac18: a9455ff8     	ldp	x24, x23, [sp, #0x50]
   1ac1c: a94467fa     	ldp	x26, x25, [sp, #0x40]
   1ac20: a9436ffc     	ldp	x28, x27, [sp, #0x30]
   1ac24: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1ac28: 910203ff     	add	sp, sp, #0x80
   1ac2c: d50323bf     	autiasp
   1ac30: d65f03c0     	ret
   1ac34: 91000442     	add	x2, x2, #0x1
   1ac38: 52800080     	mov	w0, #0x4                // =4
   1ac3c: aa1903e1     	mov	x1, x25
   1ac40: 94000000     	bl	0x1ac40 <syna_tcm_parse_fw_image+0x348>
		000000000001ac40:  R_AARCH64_CALL26	__fortify_panic
   1ac44: 91000442     	add	x2, x2, #0x1
   1ac48: 52800040     	mov	w0, #0x2                // =2
   1ac4c: aa1903e1     	mov	x1, x25
   1ac50: 94000000     	bl	0x1ac50 <syna_tcm_parse_fw_image+0x358>
		000000000001ac50:  R_AARCH64_CALL26	__fortify_panic
