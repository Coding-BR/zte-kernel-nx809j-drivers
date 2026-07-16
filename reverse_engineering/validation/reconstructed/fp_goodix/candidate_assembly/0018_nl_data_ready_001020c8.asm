
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000189c <nl_data_ready>:
    189c: d503233f     	paciasp
    18a0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    18a4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    18a8: 910003fd     	mov	x29, sp
    18ac: 9103b008     	add	x8, x0, #0xec
    18b0: 14000026     	b	0x1948 <nl_data_ready+0xac>
    18b4: 52800029     	mov	w9, #0x1                // =1
    18b8: b8290109     	ldadd	w9, w9, [x8]
    18bc: 34000529     	cbz	w9, 0x1960 <nl_data_ready+0xc4>
    18c0: 1100052a     	add	w10, w9, #0x1
    18c4: 2a090149     	orr	w9, w10, w9
    18c8: 37f803a9     	tbnz	w9, #0x1f, 0x193c <nl_data_ready+0xa0>
    18cc: b9407008     	ldr	w8, [x0, #0x70]
    18d0: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2d8>
		00000000000018d0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    18d4: 7100411f     	cmp	w8, #0x10
    18d8: 540001e3     	b.lo	0x1914 <nl_data_ready+0x78>
    18dc: f9407008     	ldr	x8, [x0, #0xe0]
    18e0: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000018e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    18e4: 91000021     	add	x1, x1, #0x0
		00000000000018e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    18e8: aa0003f3     	mov	x19, x0
    18ec: b9400d02     	ldr	w2, [x8, #0xc]
    18f0: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		00000000000018f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1012
    18f4: 91000108     	add	x8, x8, #0x0
		00000000000018f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1012
    18f8: aa0803e0     	mov	x0, x8
    18fc: b9000282     	str	w2, [x20]
		00000000000018fc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1900: 94000000     	bl	0x1900 <nl_data_ready+0x64>
		0000000000001900:  R_AARCH64_CALL26	_printk
    1904: aa1f03e0     	mov	x0, xzr
    1908: aa1303e1     	mov	x1, x19
    190c: 52800042     	mov	w2, #0x2                // =2
    1910: 94000000     	bl	0x1910 <nl_data_ready+0x74>
		0000000000001910:  R_AARCH64_CALL26	sk_skb_reason_drop
    1914: b9400282     	ldr	w2, [x20]
		0000000000001914:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1918: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    191c: 91000000     	add	x0, x0, #0x0
		000000000000191c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    1920: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		0000000000001920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    1924: 91000021     	add	x1, x1, #0x0
		0000000000001924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    1928: 94000000     	bl	0x1928 <nl_data_ready+0x8c>
		0000000000001928:  R_AARCH64_CALL26	_printk
    192c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1930: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1934: d50323bf     	autiasp
    1938: d65f03c0     	ret
    193c: aa0003f3     	mov	x19, x0
    1940: 52800021     	mov	w1, #0x1                // =1
    1944: 14000009     	b	0x1968 <nl_data_ready+0xcc>
    1948: f9800111     	prfm	pstl1strm, [x8]
    194c: 885f7d09     	ldxr	w9, [x8]
    1950: 1100052a     	add	w10, w9, #0x1
    1954: 880b7d0a     	stxr	w11, w10, [x8]
    1958: 35ffffab     	cbnz	w11, 0x194c <nl_data_ready+0xb0>
    195c: 35fffb29     	cbnz	w9, 0x18c0 <nl_data_ready+0x24>
    1960: aa0003f3     	mov	x19, x0
    1964: 52800041     	mov	w1, #0x2                // =2
    1968: aa0803e0     	mov	x0, x8
    196c: 94000000     	bl	0x196c <nl_data_ready+0xd0>
		000000000000196c:  R_AARCH64_CALL26	refcount_warn_saturate
    1970: aa1303e0     	mov	x0, x19
    1974: 17ffffd6     	b	0x18cc <nl_data_ready+0x30>
