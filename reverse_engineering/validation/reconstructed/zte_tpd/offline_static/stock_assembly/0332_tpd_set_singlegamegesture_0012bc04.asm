
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002537c <tpd_set_singlegamegesture>:
   2537c: d503233f     	paciasp
   25380: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   25384: a9014ff4     	stp	x20, x19, [sp, #0x10]
   25388: 910003fd     	mov	x29, sp
   2538c: f946dc14     	ldr	x20, [x0, #0xdb8]
   25390: b9457e88     	ldr	w8, [x20, #0x57c]
   25394: 7100051f     	cmp	w8, #0x1
   25398: 54000141     	b.ne	0x253c0 <tpd_set_singlegamegesture+0x44>
   2539c: b945b688     	ldr	w8, [x20, #0x5b4]
   253a0: b945ba82     	ldr	w2, [x20, #0x5b8]
   253a4: 7100003f     	cmp	w1, #0x0
   253a8: 1a9fd7e9     	cset	w9, gt
   253ac: 2a020108     	orr	w8, w8, w2
   253b0: b905be89     	str	w9, [x20, #0x5bc]
   253b4: 2a090108     	orr	w8, w8, w9
   253b8: b905b288     	str	w8, [x20, #0x5b0]
   253bc: 14000007     	b	0x253d8 <tpd_set_singlegamegesture+0x5c>
   253c0: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000253c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa419
   253c4: 91000000     	add	x0, x0, #0x0
		00000000000253c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa419
   253c8: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000253c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d46
   253cc: 91000021     	add	x1, x1, #0x0
		00000000000253cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d46
   253d0: 94000000     	bl	0x253d0 <tpd_set_singlegamegesture+0x54>
		00000000000253d0:  R_AARCH64_CALL26	_printk
   253d4: b945ba82     	ldr	w2, [x20, #0x5b8]
   253d8: 90000013     	adrp	x19, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000253d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d46
   253dc: 91000273     	add	x19, x19, #0x0
		00000000000253dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d46
   253e0: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000253e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d82
   253e4: 91000000     	add	x0, x0, #0x0
		00000000000253e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d82
   253e8: aa1303e1     	mov	x1, x19
   253ec: 94000000     	bl	0x253ec <tpd_set_singlegamegesture+0x70>
		00000000000253ec:  R_AARCH64_CALL26	_printk
   253f0: b945b682     	ldr	w2, [x20, #0x5b4]
   253f4: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000253f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d60
   253f8: 91000000     	add	x0, x0, #0x0
		00000000000253f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d60
   253fc: aa1303e1     	mov	x1, x19
   25400: 94000000     	bl	0x25400 <tpd_set_singlegamegesture+0x84>
		0000000000025400:  R_AARCH64_CALL26	_printk
   25404: b945be82     	ldr	w2, [x20, #0x5bc]
   25408: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb228
   2540c: 91000000     	add	x0, x0, #0x0
		000000000002540c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb228
   25410: aa1303e1     	mov	x1, x19
   25414: 94000000     	bl	0x25414 <tpd_set_singlegamegesture+0x98>
		0000000000025414:  R_AARCH64_CALL26	_printk
   25418: b945b282     	ldr	w2, [x20, #0x5b0]
   2541c: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002541c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x436c
   25420: 91000000     	add	x0, x0, #0x0
		0000000000025420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x436c
   25424: aa1303e1     	mov	x1, x19
   25428: 94000000     	bl	0x25428 <tpd_set_singlegamegesture+0xac>
		0000000000025428:  R_AARCH64_CALL26	_printk
   2542c: 2a1f03e0     	mov	w0, wzr
   25430: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   25434: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   25438: d50323bf     	autiasp
   2543c: d65f03c0     	ret
