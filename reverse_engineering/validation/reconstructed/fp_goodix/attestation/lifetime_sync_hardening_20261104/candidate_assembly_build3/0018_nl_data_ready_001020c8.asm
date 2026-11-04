
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001168 <nl_data_ready>:
    1168: d503233f     	paciasp
    116c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1170: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1174: 910003fd     	mov	x29, sp
    1178: 9103b008     	add	x8, x0, #0xec
    117c: 14000026     	b	0x1214 <nl_data_ready+0xac>
    1180: 52800029     	mov	w9, #0x1                // =1
    1184: b8290109     	ldadd	w9, w9, [x8]
    1188: 34000529     	cbz	w9, 0x122c <nl_data_ready+0xc4>
    118c: 1100052a     	add	w10, w9, #0x1
    1190: 2a090149     	orr	w9, w10, w9
    1194: 37f803a9     	tbnz	w9, #0x1f, 0x1208 <nl_data_ready+0xa0>
    1198: b9407008     	ldr	w8, [x0, #0x70]
    119c: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x44>
		000000000000119c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    11a0: 7100411f     	cmp	w8, #0x10
    11a4: 540001e3     	b.lo	0x11e0 <nl_data_ready+0x78>
    11a8: f9407008     	ldr	x8, [x0, #0xe0]
    11ac: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000011ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    11b0: 91000021     	add	x1, x1, #0x0
		00000000000011b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    11b4: aa0003f3     	mov	x19, x0
    11b8: b9400d02     	ldr	w2, [x8, #0xc]
    11bc: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		00000000000011bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe7
    11c0: 91000108     	add	x8, x8, #0x0
		00000000000011c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe7
    11c4: aa0803e0     	mov	x0, x8
    11c8: b9000282     	str	w2, [x20]
		00000000000011c8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    11cc: 94000000     	bl	0x11cc <nl_data_ready+0x64>
		00000000000011cc:  R_AARCH64_CALL26	_printk
    11d0: aa1f03e0     	mov	x0, xzr
    11d4: aa1303e1     	mov	x1, x19
    11d8: 52800042     	mov	w2, #0x2                // =2
    11dc: 94000000     	bl	0x11dc <nl_data_ready+0x74>
		00000000000011dc:  R_AARCH64_CALL26	sk_skb_reason_drop
    11e0: b9400282     	ldr	w2, [x20]
		00000000000011e0:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    11e4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000011e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    11e8: 91000000     	add	x0, x0, #0x0
		00000000000011e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    11ec: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x44>
		00000000000011ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    11f0: 91000021     	add	x1, x1, #0x0
		00000000000011f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    11f4: 94000000     	bl	0x11f4 <nl_data_ready+0x8c>
		00000000000011f4:  R_AARCH64_CALL26	_printk
    11f8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    11fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1200: d50323bf     	autiasp
    1204: d65f03c0     	ret
    1208: aa0003f3     	mov	x19, x0
    120c: 52800021     	mov	w1, #0x1                // =1
    1210: 14000009     	b	0x1234 <nl_data_ready+0xcc>
    1214: f9800111     	prfm	pstl1strm, [x8]
    1218: 885f7d09     	ldxr	w9, [x8]
    121c: 1100052a     	add	w10, w9, #0x1
    1220: 880b7d0a     	stxr	w11, w10, [x8]
    1224: 35ffffab     	cbnz	w11, 0x1218 <nl_data_ready+0xb0>
    1228: 35fffb29     	cbnz	w9, 0x118c <nl_data_ready+0x24>
    122c: aa0003f3     	mov	x19, x0
    1230: 52800041     	mov	w1, #0x2                // =2
    1234: aa0803e0     	mov	x0, x8
    1238: 94000000     	bl	0x1238 <nl_data_ready+0xd0>
		0000000000001238:  R_AARCH64_CALL26	refcount_warn_saturate
    123c: aa1303e0     	mov	x0, x19
    1240: 17ffffd6     	b	0x1198 <nl_data_ready+0x30>
