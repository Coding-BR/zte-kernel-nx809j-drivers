
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000018a8 <nl_data_ready>:
    18a8: d503233f     	paciasp
    18ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    18b0: a9014ff4     	stp	x20, x19, [sp, #0x10]
    18b4: 910003fd     	mov	x29, sp
    18b8: 9103b008     	add	x8, x0, #0xec
    18bc: 14000026     	b	0x1954 <nl_data_ready+0xac>
    18c0: 52800029     	mov	w9, #0x1                // =1
    18c4: b8290109     	ldadd	w9, w9, [x8]
    18c8: 34000529     	cbz	w9, 0x196c <nl_data_ready+0xc4>
    18cc: 1100052a     	add	w10, w9, #0x1
    18d0: 2a090149     	orr	w9, w10, w9
    18d4: 37f803a9     	tbnz	w9, #0x1f, 0x1948 <nl_data_ready+0xa0>
    18d8: b9407008     	ldr	w8, [x0, #0x70]
    18dc: 90000014     	adrp	x20, 0x1000 <gf_probe+0x2cc>
		00000000000018dc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    18e0: 7100411f     	cmp	w8, #0x10
    18e4: 540001e3     	b.lo	0x1920 <nl_data_ready+0x78>
    18e8: f9407008     	ldr	x8, [x0, #0xe0]
    18ec: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		00000000000018ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x714
    18f0: 91000021     	add	x1, x1, #0x0
		00000000000018f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x714
    18f4: aa0003f3     	mov	x19, x0
    18f8: b9400d02     	ldr	w2, [x8, #0xc]
    18fc: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		00000000000018fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x111b
    1900: 91000108     	add	x8, x8, #0x0
		0000000000001900:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x111b
    1904: aa0803e0     	mov	x0, x8
    1908: b9000282     	str	w2, [x20]
		0000000000001908:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    190c: 94000000     	bl	0x190c <nl_data_ready+0x64>
		000000000000190c:  R_AARCH64_CALL26	_printk
    1910: aa1f03e0     	mov	x0, xzr
    1914: aa1303e1     	mov	x1, x19
    1918: 52800042     	mov	w2, #0x2                // =2
    191c: 94000000     	bl	0x191c <nl_data_ready+0x74>
		000000000000191c:  R_AARCH64_CALL26	sk_skb_reason_drop
    1920: b9400282     	ldr	w2, [x20]
		0000000000001920:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1924: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x722
    1928: 91000000     	add	x0, x0, #0x0
		0000000000001928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x722
    192c: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		000000000000192c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x714
    1930: 91000021     	add	x1, x1, #0x0
		0000000000001930:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x714
    1934: 94000000     	bl	0x1934 <nl_data_ready+0x8c>
		0000000000001934:  R_AARCH64_CALL26	_printk
    1938: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    193c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1940: d50323bf     	autiasp
    1944: d65f03c0     	ret
    1948: aa0003f3     	mov	x19, x0
    194c: 52800021     	mov	w1, #0x1                // =1
    1950: 14000009     	b	0x1974 <nl_data_ready+0xcc>
    1954: f9800111     	prfm	pstl1strm, [x8]
    1958: 885f7d09     	ldxr	w9, [x8]
    195c: 1100052a     	add	w10, w9, #0x1
    1960: 880b7d0a     	stxr	w11, w10, [x8]
    1964: 35ffffab     	cbnz	w11, 0x1958 <nl_data_ready+0xb0>
    1968: 35fffb29     	cbnz	w9, 0x18cc <nl_data_ready+0x24>
    196c: aa0003f3     	mov	x19, x0
    1970: 52800041     	mov	w1, #0x2                // =2
    1974: aa0803e0     	mov	x0, x8
    1978: 94000000     	bl	0x1978 <nl_data_ready+0xd0>
		0000000000001978:  R_AARCH64_CALL26	refcount_warn_saturate
    197c: aa1303e0     	mov	x0, x19
    1980: 17ffffd6     	b	0x18d8 <nl_data_ready+0x30>
