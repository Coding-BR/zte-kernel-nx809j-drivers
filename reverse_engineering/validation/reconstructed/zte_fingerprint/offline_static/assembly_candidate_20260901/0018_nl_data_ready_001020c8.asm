
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020ac <nl_data_ready>:
    20ac: d503233f     	paciasp
    20b0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    20b4: a9014ff4     	stp	x20, x19, [sp, #0x10]
    20b8: 910003fd     	mov	x29, sp
    20bc: aa0003f3     	mov	x19, x0
    20c0: 9103b000     	add	x0, x0, #0xec
    20c4: 14000022     	b	0x214c <nl_data_ready+0xa0>
    20c8: 52800028     	mov	w8, #0x1                // =1
    20cc: b8280008     	ldadd	w8, w8, [x0]
    20d0: 340004a8     	cbz	w8, 0x2164 <nl_data_ready+0xb8>
    20d4: 11000509     	add	w9, w8, #0x1
    20d8: 2a080128     	orr	w8, w9, w8
    20dc: 37f80348     	tbnz	w8, #0x1f, 0x2144 <nl_data_ready+0x98>
    20e0: b9407268     	ldr	w8, [x19, #0x70]
    20e4: 90000014     	adrp	x20, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000020e4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    20e8: 7100411f     	cmp	w8, #0x10
    20ec: 54000103     	b.lo	0x210c <nl_data_ready+0x60>
    20f0: b9403662     	ldr	w2, [x19, #0x34]
    20f4: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000020f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e1
    20f8: 91000000     	add	x0, x0, #0x0
		00000000000020f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e1
    20fc: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		00000000000020fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411
    2100: 91000021     	add	x1, x1, #0x0
		0000000000002100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411
    2104: b9000282     	str	w2, [x20]
		0000000000002104:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1e8
    2108: 94000000     	bl	0x2108 <nl_data_ready+0x5c>
		0000000000002108:  R_AARCH64_CALL26	_printk
    210c: aa1f03e0     	mov	x0, xzr
    2110: aa1303e1     	mov	x1, x19
    2114: 52800042     	mov	w2, #0x2                // =2
    2118: 94000000     	bl	0x2118 <nl_data_ready+0x6c>
		0000000000002118:  R_AARCH64_CALL26	sk_skb_reason_drop
    211c: b9400282     	ldr	w2, [x20]
		000000000000211c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x1e8
    2120: 90000000     	adrp	x0, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41f
    2124: 91000000     	add	x0, x0, #0x0
		0000000000002124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41f
    2128: 90000001     	adrp	x1, 0x2000 <goodix_fb_state_chg_callback+0xac>
		0000000000002128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x411
    212c: 91000021     	add	x1, x1, #0x0
		000000000000212c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x411
    2130: 94000000     	bl	0x2130 <nl_data_ready+0x84>
		0000000000002130:  R_AARCH64_CALL26	_printk
    2134: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    2138: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    213c: d50323bf     	autiasp
    2140: d65f03c0     	ret
    2144: 52800021     	mov	w1, #0x1                // =1
    2148: 14000008     	b	0x2168 <nl_data_ready+0xbc>
    214c: f9800011     	prfm	pstl1strm, [x0]
    2150: 885f7c08     	ldxr	w8, [x0]
    2154: 11000509     	add	w9, w8, #0x1
    2158: 880a7c09     	stxr	w10, w9, [x0]
    215c: 35ffffaa     	cbnz	w10, 0x2150 <nl_data_ready+0xa4>
    2160: 35fffba8     	cbnz	w8, 0x20d4 <nl_data_ready+0x28>
    2164: 52800041     	mov	w1, #0x2                // =2
    2168: 94000000     	bl	0x2168 <nl_data_ready+0xbc>
		0000000000002168:  R_AARCH64_CALL26	refcount_warn_saturate
    216c: 17ffffdd     	b	0x20e0 <nl_data_ready+0x34>
