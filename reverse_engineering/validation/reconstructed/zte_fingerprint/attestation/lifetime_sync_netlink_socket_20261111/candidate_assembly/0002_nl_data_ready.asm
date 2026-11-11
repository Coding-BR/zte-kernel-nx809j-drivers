
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000218 <nl_data_ready>:
     218: d503233f     	paciasp
     21c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     220: a9014ff4     	stp	x20, x19, [sp, #0x10]
     224: 910003fd     	mov	x29, sp
     228: 9103b008     	add	x8, x0, #0xec
     22c: 14000027     	b	0x2c8 <nl_data_ready+0xb0>
     230: 52800029     	mov	w9, #0x1                // =1
     234: b8290109     	ldadd	w9, w9, [x8]
     238: 34000549     	cbz	w9, 0x2e0 <nl_data_ready+0xc8>
     23c: 1100052a     	add	w10, w9, #0x1
     240: 2a090149     	orr	w9, w10, w9
     244: 37f803c9     	tbnz	w9, #0x1f, 0x2bc <nl_data_ready+0xa4>
     248: b9407008     	ldr	w8, [x0, #0x70]
     24c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000024c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     250: 7100411f     	cmp	w8, #0x10
     254: 54000203     	b.lo	0x294 <nl_data_ready+0x7c>
     258: f9407008     	ldr	x8, [x0, #0xe0]
     25c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x824
     260: 91000021     	add	x1, x1, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x824
     264: aa0003f3     	mov	x19, x0
     268: b9400d08     	ldr	w8, [x8, #0xc]
     26c: b9000288     	str	w8, [x20]
		000000000000026c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x60
     270: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1365
     274: 91000108     	add	x8, x8, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1365
     278: b9400282     	ldr	w2, [x20]
		0000000000000278:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x60
     27c: aa0803e0     	mov	x0, x8
     280: 94000000     	bl	0x280 <nl_data_ready+0x68>
		0000000000000280:  R_AARCH64_CALL26	_printk
     284: aa1f03e0     	mov	x0, xzr
     288: aa1303e1     	mov	x1, x19
     28c: 52800042     	mov	w2, #0x2                // =2
     290: 94000000     	bl	0x290 <nl_data_ready+0x78>
		0000000000000290:  R_AARCH64_CALL26	sk_skb_reason_drop
     294: b9400282     	ldr	w2, [x20]
		0000000000000294:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x60
     298: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x832
     29c: 91000000     	add	x0, x0, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x832
     2a0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x824
     2a4: 91000021     	add	x1, x1, #0x0
		00000000000002a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x824
     2a8: 94000000     	bl	0x2a8 <nl_data_ready+0x90>
		00000000000002a8:  R_AARCH64_CALL26	_printk
     2ac: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     2b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     2b4: d50323bf     	autiasp
     2b8: d65f03c0     	ret
     2bc: aa0003f3     	mov	x19, x0
     2c0: 52800021     	mov	w1, #0x1                // =1
     2c4: 14000009     	b	0x2e8 <nl_data_ready+0xd0>
     2c8: f9800111     	prfm	pstl1strm, [x8]
     2cc: 885f7d09     	ldxr	w9, [x8]
     2d0: 1100052a     	add	w10, w9, #0x1
     2d4: 880b7d0a     	stxr	w11, w10, [x8]
     2d8: 35ffffab     	cbnz	w11, 0x2cc <nl_data_ready+0xb4>
     2dc: 35fffb09     	cbnz	w9, 0x23c <nl_data_ready+0x24>
     2e0: aa0003f3     	mov	x19, x0
     2e4: 52800041     	mov	w1, #0x2                // =2
     2e8: aa0803e0     	mov	x0, x8
     2ec: 94000000     	bl	0x2ec <nl_data_ready+0xd4>
		00000000000002ec:  R_AARCH64_CALL26	refcount_warn_saturate
     2f0: aa1303e0     	mov	x0, x19
     2f4: 17ffffd5     	b	0x248 <nl_data_ready+0x30>
