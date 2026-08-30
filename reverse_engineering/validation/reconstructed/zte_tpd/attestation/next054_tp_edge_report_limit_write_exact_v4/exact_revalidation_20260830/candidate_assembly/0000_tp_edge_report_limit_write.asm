
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014814 <tp_edge_report_limit_write>:
   14814: d503233f     	paciasp
   14818: d10303ff     	sub	sp, sp, #0xc0
   1481c: a9087bfd     	stp	x29, x30, [sp, #0x80]
   14820: f9004bf7     	str	x23, [sp, #0x90]
   14824: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   14828: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   1482c: 910203fd     	add	x29, sp, #0x80
   14830: d5384108     	mrs	x8, SP_EL0
   14834: aa0103f4     	mov	x20, x1
   14838: f9438908     	ldr	x8, [x8, #0x710]
   1483c: f101905f     	cmp	x2, #0x64
   14840: f81f83a8     	stur	x8, [x29, #-0x8]
   14844: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014844:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   14848: f9400115     	ldr	x21, [x8]
		0000000000014848:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1484c: 52800c88     	mov	w8, #0x64               // =100
   14850: b90073ff     	str	wzr, [sp, #0x70]
   14854: 9a883053     	csel	x19, x2, x8, lo
   14858: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1485c: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   14860: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   14864: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   14868: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1486c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   14870: f90003ff     	str	xzr, [sp]
   14874: b4000141     	cbz	x1, 0x1489c <tp_edge_report_limit_write+0x88>
   14878: 910043e0     	add	x0, sp, #0x10
   1487c: aa1303e1     	mov	x1, x19
   14880: 2a1f03e2     	mov	w2, wzr
   14884: 94000000     	bl	0x14884 <tp_edge_report_limit_write+0x70>
		0000000000014884:  R_AARCH64_CALL26	__check_object_size
   14888: 910043e0     	add	x0, sp, #0x10
   1488c: aa1403e1     	mov	x1, x20
   14890: aa1303e2     	mov	x2, x19
   14894: 94000000     	bl	0x14894 <tp_edge_report_limit_write+0x80>
		0000000000014894:  R_AARCH64_CALL26	_inline_copy_from_user
   14898: b5000780     	cbnz	x0, 0x14988 <tp_edge_report_limit_write+0x174>
   1489c: 910043e0     	add	x0, sp, #0x10
   148a0: 94000000     	bl	0x148a0 <tp_edge_report_limit_write+0x8c>
		00000000000148a0:  R_AARCH64_CALL26	get_tp_algo_item_id
   148a4: 36f80300     	tbz	w0, #0x1f, 0x14904 <tp_edge_report_limit_write+0xf0>
   148a8: 910003e3     	mov	x3, sp
   148ac: aa1403e0     	mov	x0, x20
   148b0: aa1303e1     	mov	x1, x19
   148b4: 52800142     	mov	w2, #0xa                // =10
   148b8: 94000000     	bl	0x148b8 <tp_edge_report_limit_write+0xa4>
		00000000000148b8:  R_AARCH64_CALL26	kstrtouint_from_user
   148bc: 2a0003e8     	mov	w8, w0
   148c0: 928002a0     	mov	x0, #-0x16              // =-22
   148c4: 35000968     	cbnz	w8, 0x149f0 <tp_edge_report_limit_write+0x1dc>
   148c8: b94003e1     	ldr	w1, [sp]
   148cc: 7100283f     	cmp	w1, #0xa
   148d0: 54000908     	b.hi	0x149f0 <tp_edge_report_limit_write+0x1dc>
   148d4: 794886a8     	ldrh	w8, [x21, #0x442]
   148d8: 7100143f     	cmp	w1, #0x5
   148dc: 3900e2a1     	strb	w1, [x21, #0x38]
   148e0: 540005e8     	b.hi	0x1499c <tp_edge_report_limit_write+0x188>
   148e4: 1b087c28     	mul	w8, w1, w8
   148e8: 531d7109     	lsl	w9, w8, #3
   148ec: 4b080128     	sub	w8, w9, w8
   148f0: 5289ba69     	mov	w9, #0x4dd3             // =19923
   148f4: 72a20c49     	movk	w9, #0x1062, lsl #16
   148f8: 9ba97d08     	umull	x8, w8, w9
   148fc: d366fd08     	lsr	x8, x8, #38
   14900: 14000034     	b	0x149d0 <tp_edge_report_limit_write+0x1bc>
   14904: 2a0003f6     	mov	w22, w0
   14908: 910043e0     	add	x0, sp, #0x10
   1490c: 52800741     	mov	w1, #0x3a               // =58
   14910: 94000000     	bl	0x14910 <tp_edge_report_limit_write+0xfc>
		0000000000014910:  R_AARCH64_CALL26	strchr
   14914: 91000414     	add	x20, x0, #0x1
   14918: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174df
   1491c: 91000000     	add	x0, x0, #0x0
		000000000001491c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174df
   14920: aa1403e1     	mov	x1, x20
   14924: f90007f4     	str	x20, [sp, #0x8]
   14928: 94000000     	bl	0x14928 <tp_edge_report_limit_write+0x114>
		0000000000014928:  R_AARCH64_CALL26	_printk
   1492c: 2a1603e8     	mov	w8, w22
   14930: 71000adf     	cmp	w22, #0x2
   14934: 5400076d     	b.le	0x14a20 <tp_edge_report_limit_write+0x20c>
   14938: 7100111f     	cmp	w8, #0x4
   1493c: 5400094c     	b.gt	0x14a64 <tp_edge_report_limit_write+0x250>
   14940: 71000d1f     	cmp	w8, #0x3
   14944: 54000ca0     	b.eq	0x14ad8 <tp_edge_report_limit_write+0x2c4>
   14948: 7100111f     	cmp	w8, #0x4
   1494c: 54001361     	b.ne	0x14bb8 <tp_edge_report_limit_write+0x3a4>
   14950: 910013e2     	add	x2, sp, #0x4
   14954: aa1403e0     	mov	x0, x20
   14958: 52800141     	mov	w1, #0xa                // =10
   1495c: 94000000     	bl	0x1495c <tp_edge_report_limit_write+0x148>
		000000000001495c:  R_AARCH64_CALL26	kstrtouint
   14960: 35000460     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14964: b94007e8     	ldr	w8, [sp, #0x4]
   14968: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4a3
   1496c: 91000000     	add	x0, x0, #0x0
		000000000001496c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4a3
   14970: 7100011f     	cmp	w8, #0x0
   14974: 1a9f07e1     	cset	w1, ne
   14978: b90007e1     	str	w1, [sp, #0x4]
   1497c: 390096a1     	strb	w1, [x21, #0x25]
   14980: 94000000     	bl	0x14980 <tp_edge_report_limit_write+0x16c>
		0000000000014980:  R_AARCH64_CALL26	_printk
   14984: 1400001a     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14988: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184aa
   1498c: 91000000     	add	x0, x0, #0x0
		000000000001498c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184aa
   14990: 94000000     	bl	0x14990 <tp_edge_report_limit_write+0x17c>
		0000000000014990:  R_AARCH64_CALL26	_printk
   14994: 928002a0     	mov	x0, #-0x16              // =-22
   14998: 14000016     	b	0x149f0 <tp_edge_report_limit_write+0x1dc>
   1499c: 52800469     	mov	w9, #0x23               // =35
   149a0: 53017d0a     	lsr	w10, w8, #1
   149a4: 1b097d08     	mul	w8, w8, w9
   149a8: 52906269     	mov	w9, #0x8313             // =33555
   149ac: 1b097d49     	mul	w9, w10, w9
   149b0: 5291270a     	mov	w10, #0x8938            // =35128
   149b4: 72a0082a     	movk	w10, #0x41, lsl #16
   149b8: 9baa7d08     	umull	x8, w8, w10
   149bc: 529fff6a     	mov	w10, #0xfffb            // =65531
   149c0: 53167d29     	lsr	w9, w9, #22
   149c4: 0b0a002a     	add	w10, w1, w10
   149c8: d360fd08     	lsr	x8, x8, #32
   149cc: 1b092148     	madd	w8, w10, w9, w8
   149d0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000149d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c97
   149d4: 91000000     	add	x0, x0, #0x0
		00000000000149d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c97
   149d8: 12003d02     	and	w2, w8, #0xffff
   149dc: 2a1f03e3     	mov	w3, wzr
   149e0: 79005aa8     	strh	w8, [x21, #0x2c]
   149e4: 79005ebf     	strh	wzr, [x21, #0x2e]
   149e8: 94000000     	bl	0x149e8 <tp_edge_report_limit_write+0x1d4>
		00000000000149e8:  R_AARCH64_CALL26	_printk
   149ec: aa1303e0     	mov	x0, x19
   149f0: d5384108     	mrs	x8, SP_EL0
   149f4: f9438908     	ldr	x8, [x8, #0x710]
   149f8: f85f83a9     	ldur	x9, [x29, #-0x8]
   149fc: eb09011f     	cmp	x8, x9
   14a00: 54000e41     	b.ne	0x14bc8 <tp_edge_report_limit_write+0x3b4>
   14a04: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   14a08: f9404bf7     	ldr	x23, [sp, #0x90]
   14a0c: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   14a10: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   14a14: 910303ff     	add	sp, sp, #0xc0
   14a18: d50323bf     	autiasp
   14a1c: d65f03c0     	ret
   14a20: 34000b08     	cbz	w8, 0x14b80 <tp_edge_report_limit_write+0x36c>
   14a24: 7100051f     	cmp	w8, #0x1
   14a28: 54000940     	b.eq	0x14b50 <tp_edge_report_limit_write+0x33c>
   14a2c: 7100091f     	cmp	w8, #0x2
   14a30: 54000c41     	b.ne	0x14bb8 <tp_edge_report_limit_write+0x3a4>
   14a34: 910013e2     	add	x2, sp, #0x4
   14a38: aa1403e0     	mov	x0, x20
   14a3c: 52800141     	mov	w1, #0xa                // =10
   14a40: 94000000     	bl	0x14a40 <tp_edge_report_limit_write+0x22c>
		0000000000014a40:  R_AARCH64_CALL26	kstrtouint
   14a44: 35fffd40     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14a48: b94007e8     	ldr	w8, [sp, #0x4]
   14a4c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18223
   14a50: 91000000     	add	x0, x0, #0x0
		0000000000014a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18223
   14a54: 12003d01     	and	w1, w8, #0xffff
   14a58: 79007ea8     	strh	w8, [x21, #0x3e]
   14a5c: 94000000     	bl	0x14a5c <tp_edge_report_limit_write+0x248>
		0000000000014a5c:  R_AARCH64_CALL26	_printk
   14a60: 17ffffe3     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14a64: 7100151f     	cmp	w8, #0x5
   14a68: 540005c0     	b.eq	0x14b20 <tp_edge_report_limit_write+0x30c>
   14a6c: 7100191f     	cmp	w8, #0x6
   14a70: 54000a41     	b.ne	0x14bb8 <tp_edge_report_limit_write+0x3a4>
   14a74: aa1f03f6     	mov	x22, xzr
   14a78: 90000014     	adrp	x20, 0x14000 <syna_tcm_reset+0x138>
		0000000000014a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fb2
   14a7c: 91000294     	add	x20, x20, #0x0
		0000000000014a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fb2
   14a80: 9100d2b7     	add	x23, x21, #0x34
   14a84: 90000015     	adrp	x21, 0x14000 <syna_tcm_reset+0x138>
		0000000000014a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c56d
   14a88: 910002b5     	add	x21, x21, #0x0
		0000000000014a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c56d
   14a8c: 910023e0     	add	x0, sp, #0x8
   14a90: aa1403e1     	mov	x1, x20
   14a94: 94000000     	bl	0x14a94 <tp_edge_report_limit_write+0x280>
		0000000000014a94:  R_AARCH64_CALL26	strsep
   14a98: b4fffaa0     	cbz	x0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14a9c: 910013e2     	add	x2, sp, #0x4
   14aa0: 52800141     	mov	w1, #0xa                // =10
   14aa4: 94000000     	bl	0x14aa4 <tp_edge_report_limit_write+0x290>
		0000000000014aa4:  R_AARCH64_CALL26	kstrtouint
   14aa8: 34000080     	cbz	w0, 0x14ab8 <tp_edge_report_limit_write+0x2a4>
   14aac: f1000edf     	cmp	x22, #0x3
   14ab0: 54fffee9     	b.ls	0x14a8c <tp_edge_report_limit_write+0x278>
   14ab4: 17ffffce     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14ab8: b94007e8     	ldr	w8, [sp, #0x4]
   14abc: 12003ec1     	and	w1, w22, #0xffff
   14ac0: aa1503e0     	mov	x0, x21
   14ac4: 38366ae8     	strb	w8, [x23, x22]
   14ac8: 12001d02     	and	w2, w8, #0xff
   14acc: 94000000     	bl	0x14acc <tp_edge_report_limit_write+0x2b8>
		0000000000014acc:  R_AARCH64_CALL26	_printk
   14ad0: 910006d6     	add	x22, x22, #0x1
   14ad4: 17fffff6     	b	0x14aac <tp_edge_report_limit_write+0x298>
   14ad8: 910013e2     	add	x2, sp, #0x4
   14adc: aa1403e0     	mov	x0, x20
   14ae0: 52800141     	mov	w1, #0xa                // =10
   14ae4: 94000000     	bl	0x14ae4 <tp_edge_report_limit_write+0x2d0>
		0000000000014ae4:  R_AARCH64_CALL26	kstrtouint
   14ae8: 35fff820     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14aec: b94007e8     	ldr	w8, [sp, #0x4]
   14af0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa19
   14af4: 91000000     	add	x0, x0, #0x0
		0000000000014af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa19
   14af8: 12001d01     	and	w1, w8, #0xff
   14afc: 39009aa8     	strb	w8, [x21, #0x26]
   14b00: 94000000     	bl	0x14b00 <tp_edge_report_limit_write+0x2ec>
		0000000000014b00:  R_AARCH64_CALL26	_printk
   14b04: 39409aa8     	ldrb	w8, [x21, #0x26]
   14b08: aa1303e0     	mov	x0, x19
   14b0c: 39009ea8     	strb	w8, [x21, #0x27]
   14b10: 3900a2a8     	strb	w8, [x21, #0x28]
   14b14: 3900a6a8     	strb	w8, [x21, #0x29]
   14b18: 3900aaa8     	strb	w8, [x21, #0x2a]
   14b1c: 17ffffb5     	b	0x149f0 <tp_edge_report_limit_write+0x1dc>
   14b20: 910013e2     	add	x2, sp, #0x4
   14b24: aa1403e0     	mov	x0, x20
   14b28: 52800141     	mov	w1, #0xa                // =10
   14b2c: 94000000     	bl	0x14b2c <tp_edge_report_limit_write+0x318>
		0000000000014b2c:  R_AARCH64_CALL26	kstrtouint
   14b30: 35fff5e0     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14b34: b94007e8     	ldr	w8, [sp, #0x4]
   14b38: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e76
   14b3c: 91000000     	add	x0, x0, #0x0
		0000000000014b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e76
   14b40: 12003d01     	and	w1, w8, #0xffff
   14b44: 79007aa8     	strh	w8, [x21, #0x3c]
   14b48: 94000000     	bl	0x14b48 <tp_edge_report_limit_write+0x334>
		0000000000014b48:  R_AARCH64_CALL26	_printk
   14b4c: 17ffffa8     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14b50: 910013e2     	add	x2, sp, #0x4
   14b54: aa1403e0     	mov	x0, x20
   14b58: 52800141     	mov	w1, #0xa                // =10
   14b5c: 94000000     	bl	0x14b5c <tp_edge_report_limit_write+0x348>
		0000000000014b5c:  R_AARCH64_CALL26	kstrtouint
   14b60: 35fff460     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14b64: b94007e8     	ldr	w8, [sp, #0x4]
   14b68: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b225
   14b6c: 91000000     	add	x0, x0, #0x0
		0000000000014b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b225
   14b70: 12001d01     	and	w1, w8, #0xff
   14b74: 390092a8     	strb	w8, [x21, #0x24]
   14b78: 94000000     	bl	0x14b78 <tp_edge_report_limit_write+0x364>
		0000000000014b78:  R_AARCH64_CALL26	_printk
   14b7c: 17ffff9c     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14b80: 910013e2     	add	x2, sp, #0x4
   14b84: aa1403e0     	mov	x0, x20
   14b88: 52800141     	mov	w1, #0xa                // =10
   14b8c: 94000000     	bl	0x14b8c <tp_edge_report_limit_write+0x378>
		0000000000014b8c:  R_AARCH64_CALL26	kstrtouint
   14b90: 35fff2e0     	cbnz	w0, 0x149ec <tp_edge_report_limit_write+0x1d8>
   14b94: b94007e8     	ldr	w8, [sp, #0x4]
   14b98: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e76
   14b9c: 91000000     	add	x0, x0, #0x0
		0000000000014b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e76
   14ba0: 7100011f     	cmp	w8, #0x0
   14ba4: 1a9f07e1     	cset	w1, ne
   14ba8: b90007e1     	str	w1, [sp, #0x4]
   14bac: 39006ea1     	strb	w1, [x21, #0x1b]
   14bb0: 94000000     	bl	0x14bb0 <tp_edge_report_limit_write+0x39c>
		0000000000014bb0:  R_AARCH64_CALL26	_printk
   14bb4: 17ffff8e     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14bb8: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdbd
   14bbc: 91000000     	add	x0, x0, #0x0
		0000000000014bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdbd
   14bc0: 94000000     	bl	0x14bc0 <tp_edge_report_limit_write+0x3ac>
		0000000000014bc0:  R_AARCH64_CALL26	_printk
   14bc4: 17ffff8a     	b	0x149ec <tp_edge_report_limit_write+0x1d8>
   14bc8: 94000000     	bl	0x14bc8 <tp_edge_report_limit_write+0x3b4>
		0000000000014bc8:  R_AARCH64_CALL26	__stack_chk_fail
