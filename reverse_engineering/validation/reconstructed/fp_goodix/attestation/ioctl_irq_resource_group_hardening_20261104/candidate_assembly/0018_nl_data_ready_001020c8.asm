
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013f4 <nl_data_ready>:
    13f4: d503233f     	paciasp
    13f8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    13fc: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1400: 910003fd     	mov	x29, sp
    1404: 9103b008     	add	x8, x0, #0xec
    1408: 14000026     	b	0x14a0 <nl_data_ready+0xac>
    140c: 52800029     	mov	w9, #0x1                // =1
    1410: b8290109     	ldadd	w9, w9, [x8]
    1414: 34000529     	cbz	w9, 0x14b8 <nl_data_ready+0xc4>
    1418: 1100052a     	add	w10, w9, #0x1
    141c: 2a090149     	orr	w9, w10, w9
    1420: 37f803a9     	tbnz	w9, #0x1f, 0x1494 <nl_data_ready+0xa0>
    1424: b9407008     	ldr	w8, [x0, #0x70]
    1428: 90000014     	adrp	x20, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001428:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    142c: 7100411f     	cmp	w8, #0x10
    1430: 540001e3     	b.lo	0x146c <nl_data_ready+0x78>
    1434: f9407008     	ldr	x8, [x0, #0xe0]
    1438: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
    143c: 91000021     	add	x1, x1, #0x0
		000000000000143c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
    1440: aa0003f3     	mov	x19, x0
    1444: b9400d02     	ldr	w2, [x8, #0xc]
    1448: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf7e
    144c: 91000108     	add	x8, x8, #0x0
		000000000000144c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf7e
    1450: aa0803e0     	mov	x0, x8
    1454: b9000282     	str	w2, [x20]
		0000000000001454:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1458: 94000000     	bl	0x1458 <nl_data_ready+0x64>
		0000000000001458:  R_AARCH64_CALL26	_printk
    145c: aa1f03e0     	mov	x0, xzr
    1460: aa1303e1     	mov	x1, x19
    1464: 52800042     	mov	w2, #0x2                // =2
    1468: 94000000     	bl	0x1468 <nl_data_ready+0x74>
		0000000000001468:  R_AARCH64_CALL26	sk_skb_reason_drop
    146c: b9400282     	ldr	w2, [x20]
		000000000000146c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    1470: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64d
    1474: 91000000     	add	x0, x0, #0x0
		0000000000001474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64d
    1478: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63f
    147c: 91000021     	add	x1, x1, #0x0
		000000000000147c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63f
    1480: 94000000     	bl	0x1480 <nl_data_ready+0x8c>
		0000000000001480:  R_AARCH64_CALL26	_printk
    1484: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1488: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    148c: d50323bf     	autiasp
    1490: d65f03c0     	ret
    1494: aa0003f3     	mov	x19, x0
    1498: 52800021     	mov	w1, #0x1                // =1
    149c: 14000009     	b	0x14c0 <nl_data_ready+0xcc>
    14a0: f9800111     	prfm	pstl1strm, [x8]
    14a4: 885f7d09     	ldxr	w9, [x8]
    14a8: 1100052a     	add	w10, w9, #0x1
    14ac: 880b7d0a     	stxr	w11, w10, [x8]
    14b0: 35ffffab     	cbnz	w11, 0x14a4 <nl_data_ready+0xb0>
    14b4: 35fffb29     	cbnz	w9, 0x1418 <nl_data_ready+0x24>
    14b8: aa0003f3     	mov	x19, x0
    14bc: 52800041     	mov	w1, #0x2                // =2
    14c0: aa0803e0     	mov	x0, x8
    14c4: 94000000     	bl	0x14c4 <nl_data_ready+0xd0>
		00000000000014c4:  R_AARCH64_CALL26	refcount_warn_saturate
    14c8: aa1303e0     	mov	x0, x19
    14cc: 17ffffd6     	b	0x1424 <nl_data_ready+0x30>
