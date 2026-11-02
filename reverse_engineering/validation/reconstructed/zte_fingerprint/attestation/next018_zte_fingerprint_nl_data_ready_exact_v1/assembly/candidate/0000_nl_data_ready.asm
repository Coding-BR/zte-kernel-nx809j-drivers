
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001d4 <nl_data_ready>:
     1d4: d503233f     	paciasp
     1d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1dc: a9014ff4     	stp	x20, x19, [sp, #0x10]
     1e0: 910003fd     	mov	x29, sp
     1e4: 9103b008     	add	x8, x0, #0xec
     1e8: 14000026     	b	0x280 <nl_data_ready+0xac>
     1ec: 52800029     	mov	w9, #0x1                // =1
     1f0: b8290109     	ldadd	w9, w9, [x8]
     1f4: 34000529     	cbz	w9, 0x298 <nl_data_ready+0xc4>
     1f8: 1100052a     	add	w10, w9, #0x1
     1fc: 2a090149     	orr	w9, w10, w9
     200: 37f803a9     	tbnz	w9, #0x1f, 0x274 <nl_data_ready+0xa0>
     204: b9407008     	ldr	w8, [x0, #0x70]
     208: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000208:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     20c: 7100411f     	cmp	w8, #0x10
     210: 540001e3     	b.lo	0x24c <nl_data_ready+0x78>
     214: f9407008     	ldr	x8, [x0, #0xe0]
     218: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a
     21c: 91000021     	add	x1, x1, #0x0
		000000000000021c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a
     220: aa0003f3     	mov	x19, x0
     224: b9400d02     	ldr	w2, [x8, #0xc]
     228: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xed4
     22c: 91000108     	add	x8, x8, #0x0
		000000000000022c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xed4
     230: aa0803e0     	mov	x0, x8
     234: b9000282     	str	w2, [x20]
		0000000000000234:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30
     238: 94000000     	bl	0x238 <nl_data_ready+0x64>
		0000000000000238:  R_AARCH64_CALL26	_printk
     23c: aa1f03e0     	mov	x0, xzr
     240: aa1303e1     	mov	x1, x19
     244: 52800042     	mov	w2, #0x2                // =2
     248: 94000000     	bl	0x248 <nl_data_ready+0x74>
		0000000000000248:  R_AARCH64_CALL26	sk_skb_reason_drop
     24c: b9400282     	ldr	w2, [x20]
		000000000000024c:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x30
     250: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x558
     254: 91000000     	add	x0, x0, #0x0
		0000000000000254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x558
     258: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54a
     25c: 91000021     	add	x1, x1, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54a
     260: 94000000     	bl	0x260 <nl_data_ready+0x8c>
		0000000000000260:  R_AARCH64_CALL26	_printk
     264: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     268: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     26c: d50323bf     	autiasp
     270: d65f03c0     	ret
     274: aa0003f3     	mov	x19, x0
     278: 52800021     	mov	w1, #0x1                // =1
     27c: 14000009     	b	0x2a0 <nl_data_ready+0xcc>
     280: f9800111     	prfm	pstl1strm, [x8]
     284: 885f7d09     	ldxr	w9, [x8]
     288: 1100052a     	add	w10, w9, #0x1
     28c: 880b7d0a     	stxr	w11, w10, [x8]
     290: 35ffffab     	cbnz	w11, 0x284 <nl_data_ready+0xb0>
     294: 35fffb29     	cbnz	w9, 0x1f8 <nl_data_ready+0x24>
     298: aa0003f3     	mov	x19, x0
     29c: 52800041     	mov	w1, #0x2                // =2
     2a0: aa0803e0     	mov	x0, x8
     2a4: 94000000     	bl	0x2a4 <nl_data_ready+0xd0>
		00000000000002a4:  R_AARCH64_CALL26	refcount_warn_saturate
     2a8: aa1303e0     	mov	x0, x19
     2ac: 17ffffd6     	b	0x204 <nl_data_ready+0x30>
