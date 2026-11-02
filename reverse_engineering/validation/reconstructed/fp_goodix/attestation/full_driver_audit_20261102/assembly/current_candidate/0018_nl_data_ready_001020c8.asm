
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000116c <nl_data_ready>:
    116c: d503233f     	paciasp
    1170: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1174: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1178: 910003fd     	mov	x29, sp
    117c: 9103b008     	add	x8, x0, #0xec
    1180: 14000026     	b	0x1218 <nl_data_ready+0xac>
    1184: 52800029     	mov	w9, #0x1                // =1
    1188: b8290109     	ldadd	w9, w9, [x8]
    118c: 34000529     	cbz	w9, 0x1230 <nl_data_ready+0xc4>
    1190: 1100052a     	add	w10, w9, #0x1
    1194: 2a090149     	orr	w9, w10, w9
    1198: 37f803a9     	tbnz	w9, #0x1f, 0x120c <nl_data_ready+0xa0>
    119c: b9407008     	ldr	w8, [x0, #0x70]
    11a0: 90000014     	adrp	x20, 0x1000 <sendnlmsg+0x40>
		00000000000011a0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x160
    11a4: 7100411f     	cmp	w8, #0x10
    11a8: 540001e3     	b.lo	0x11e4 <nl_data_ready+0x78>
    11ac: f9407008     	ldr	x8, [x0, #0xe0]
    11b0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000011b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    11b4: 91000021     	add	x1, x1, #0x0
		00000000000011b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    11b8: aa0003f3     	mov	x19, x0
    11bc: b9400d02     	ldr	w2, [x8, #0xc]
    11c0: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		00000000000011c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe7
    11c4: 91000108     	add	x8, x8, #0x0
		00000000000011c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe7
    11c8: aa0803e0     	mov	x0, x8
    11cc: b9000282     	str	w2, [x20]
		00000000000011cc:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    11d0: 94000000     	bl	0x11d0 <nl_data_ready+0x64>
		00000000000011d0:  R_AARCH64_CALL26	_printk
    11d4: aa1f03e0     	mov	x0, xzr
    11d8: aa1303e1     	mov	x1, x19
    11dc: 52800042     	mov	w2, #0x2                // =2
    11e0: 94000000     	bl	0x11e0 <nl_data_ready+0x74>
		00000000000011e0:  R_AARCH64_CALL26	sk_skb_reason_drop
    11e4: b9400282     	ldr	w2, [x20]
		00000000000011e4:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x160
    11e8: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000011e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a2
    11ec: 91000000     	add	x0, x0, #0x0
		00000000000011ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a2
    11f0: 90000001     	adrp	x1, 0x1000 <sendnlmsg+0x40>
		00000000000011f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x694
    11f4: 91000021     	add	x1, x1, #0x0
		00000000000011f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x694
    11f8: 94000000     	bl	0x11f8 <nl_data_ready+0x8c>
		00000000000011f8:  R_AARCH64_CALL26	_printk
    11fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1200: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1204: d50323bf     	autiasp
    1208: d65f03c0     	ret
    120c: aa0003f3     	mov	x19, x0
    1210: 52800021     	mov	w1, #0x1                // =1
    1214: 14000009     	b	0x1238 <nl_data_ready+0xcc>
    1218: f9800111     	prfm	pstl1strm, [x8]
    121c: 885f7d09     	ldxr	w9, [x8]
    1220: 1100052a     	add	w10, w9, #0x1
    1224: 880b7d0a     	stxr	w11, w10, [x8]
    1228: 35ffffab     	cbnz	w11, 0x121c <nl_data_ready+0xb0>
    122c: 35fffb29     	cbnz	w9, 0x1190 <nl_data_ready+0x24>
    1230: aa0003f3     	mov	x19, x0
    1234: 52800041     	mov	w1, #0x2                // =2
    1238: aa0803e0     	mov	x0, x8
    123c: 94000000     	bl	0x123c <nl_data_ready+0xd0>
		000000000000123c:  R_AARCH64_CALL26	refcount_warn_saturate
    1240: aa1303e0     	mov	x0, x19
    1244: 17ffffd6     	b	0x119c <nl_data_ready+0x30>
