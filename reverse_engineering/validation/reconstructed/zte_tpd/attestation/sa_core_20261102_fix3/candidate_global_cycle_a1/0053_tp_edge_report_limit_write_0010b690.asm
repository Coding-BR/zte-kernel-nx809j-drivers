
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014870 <tp_edge_report_limit_write>:
   14870: d503233f     	paciasp
   14874: d10303ff     	sub	sp, sp, #0xc0
   14878: a9087bfd     	stp	x29, x30, [sp, #0x80]
   1487c: f9004bf7     	str	x23, [sp, #0x90]
   14880: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   14884: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   14888: 910203fd     	add	x29, sp, #0x80
   1488c: d5384108     	mrs	x8, SP_EL0
   14890: aa0103f4     	mov	x20, x1
   14894: f9438908     	ldr	x8, [x8, #0x710]
   14898: f101905f     	cmp	x2, #0x64
   1489c: f81f83a8     	stur	x8, [x29, #-0x8]
   148a0: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000148a0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   148a4: f9400115     	ldr	x21, [x8]
		00000000000148a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   148a8: 52800c88     	mov	w8, #0x64               // =100
   148ac: b90073ff     	str	wzr, [sp, #0x70]
   148b0: 9a883053     	csel	x19, x2, x8, lo
   148b4: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   148b8: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   148bc: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   148c0: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   148c4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   148c8: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   148cc: f90003ff     	str	xzr, [sp]
   148d0: b4000141     	cbz	x1, 0x148f8 <tp_edge_report_limit_write+0x88>
   148d4: 910043e0     	add	x0, sp, #0x10
   148d8: aa1303e1     	mov	x1, x19
   148dc: 2a1f03e2     	mov	w2, wzr
   148e0: 94000000     	bl	0x148e0 <tp_edge_report_limit_write+0x70>
		00000000000148e0:  R_AARCH64_CALL26	__check_object_size
   148e4: 910043e0     	add	x0, sp, #0x10
   148e8: aa1403e1     	mov	x1, x20
   148ec: aa1303e2     	mov	x2, x19
   148f0: 94000000     	bl	0x148f0 <tp_edge_report_limit_write+0x80>
		00000000000148f0:  R_AARCH64_CALL26	_inline_copy_from_user
   148f4: b5000780     	cbnz	x0, 0x149e4 <tp_edge_report_limit_write+0x174>
   148f8: 910043e0     	add	x0, sp, #0x10
   148fc: 94000000     	bl	0x148fc <tp_edge_report_limit_write+0x8c>
		00000000000148fc:  R_AARCH64_CALL26	get_tp_algo_item_id
   14900: 36f80300     	tbz	w0, #0x1f, 0x14960 <tp_edge_report_limit_write+0xf0>
   14904: 910003e3     	mov	x3, sp
   14908: aa1403e0     	mov	x0, x20
   1490c: aa1303e1     	mov	x1, x19
   14910: 52800142     	mov	w2, #0xa                // =10
   14914: 94000000     	bl	0x14914 <tp_edge_report_limit_write+0xa4>
		0000000000014914:  R_AARCH64_CALL26	kstrtouint_from_user
   14918: 2a0003e8     	mov	w8, w0
   1491c: 928002a0     	mov	x0, #-0x16              // =-22
   14920: 35000968     	cbnz	w8, 0x14a4c <tp_edge_report_limit_write+0x1dc>
   14924: b94003e1     	ldr	w1, [sp]
   14928: 7100283f     	cmp	w1, #0xa
   1492c: 54000908     	b.hi	0x14a4c <tp_edge_report_limit_write+0x1dc>
   14930: 794886a8     	ldrh	w8, [x21, #0x442]
   14934: 7100143f     	cmp	w1, #0x5
   14938: 3900e2a1     	strb	w1, [x21, #0x38]
   1493c: 540005e8     	b.hi	0x149f8 <tp_edge_report_limit_write+0x188>
   14940: 1b087c28     	mul	w8, w1, w8
   14944: 531d7109     	lsl	w9, w8, #3
   14948: 4b080128     	sub	w8, w9, w8
   1494c: 5289ba69     	mov	w9, #0x4dd3             // =19923
   14950: 72a20c49     	movk	w9, #0x1062, lsl #16
   14954: 9ba97d08     	umull	x8, w8, w9
   14958: d366fd08     	lsr	x8, x8, #38
   1495c: 14000034     	b	0x14a2c <tp_edge_report_limit_write+0x1bc>
   14960: 2a0003f6     	mov	w22, w0
   14964: 910043e0     	add	x0, sp, #0x10
   14968: 52800741     	mov	w1, #0x3a               // =58
   1496c: 94000000     	bl	0x1496c <tp_edge_report_limit_write+0xfc>
		000000000001496c:  R_AARCH64_CALL26	strchr
   14970: 91000414     	add	x20, x0, #0x1
   14974: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174df
   14978: 91000000     	add	x0, x0, #0x0
		0000000000014978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174df
   1497c: aa1403e1     	mov	x1, x20
   14980: f90007f4     	str	x20, [sp, #0x8]
   14984: 94000000     	bl	0x14984 <tp_edge_report_limit_write+0x114>
		0000000000014984:  R_AARCH64_CALL26	_printk
   14988: 2a1603e8     	mov	w8, w22
   1498c: 71000adf     	cmp	w22, #0x2
   14990: 5400076d     	b.le	0x14a7c <tp_edge_report_limit_write+0x20c>
   14994: 7100111f     	cmp	w8, #0x4
   14998: 5400094c     	b.gt	0x14ac0 <tp_edge_report_limit_write+0x250>
   1499c: 71000d1f     	cmp	w8, #0x3
   149a0: 54000ca0     	b.eq	0x14b34 <tp_edge_report_limit_write+0x2c4>
   149a4: 7100111f     	cmp	w8, #0x4
   149a8: 54001361     	b.ne	0x14c14 <tp_edge_report_limit_write+0x3a4>
   149ac: 910013e2     	add	x2, sp, #0x4
   149b0: aa1403e0     	mov	x0, x20
   149b4: 52800141     	mov	w1, #0xa                // =10
   149b8: 94000000     	bl	0x149b8 <tp_edge_report_limit_write+0x148>
		00000000000149b8:  R_AARCH64_CALL26	kstrtouint
   149bc: 35000460     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   149c0: b94007e8     	ldr	w8, [sp, #0x4]
   149c4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000149c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4a3
   149c8: 91000000     	add	x0, x0, #0x0
		00000000000149c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4a3
   149cc: 7100011f     	cmp	w8, #0x0
   149d0: 1a9f07e1     	cset	w1, ne
   149d4: b90007e1     	str	w1, [sp, #0x4]
   149d8: 390096a1     	strb	w1, [x21, #0x25]
   149dc: 94000000     	bl	0x149dc <tp_edge_report_limit_write+0x16c>
		00000000000149dc:  R_AARCH64_CALL26	_printk
   149e0: 1400001a     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   149e4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000149e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184aa
   149e8: 91000000     	add	x0, x0, #0x0
		00000000000149e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184aa
   149ec: 94000000     	bl	0x149ec <tp_edge_report_limit_write+0x17c>
		00000000000149ec:  R_AARCH64_CALL26	_printk
   149f0: 928002a0     	mov	x0, #-0x16              // =-22
   149f4: 14000016     	b	0x14a4c <tp_edge_report_limit_write+0x1dc>
   149f8: 52800469     	mov	w9, #0x23               // =35
   149fc: 53017d0a     	lsr	w10, w8, #1
   14a00: 1b097d08     	mul	w8, w8, w9
   14a04: 52906269     	mov	w9, #0x8313             // =33555
   14a08: 1b097d49     	mul	w9, w10, w9
   14a0c: 5291270a     	mov	w10, #0x8938            // =35128
   14a10: 72a0082a     	movk	w10, #0x41, lsl #16
   14a14: 9baa7d08     	umull	x8, w8, w10
   14a18: 529fff6a     	mov	w10, #0xfffb            // =65531
   14a1c: 53167d29     	lsr	w9, w9, #22
   14a20: 0b0a002a     	add	w10, w1, w10
   14a24: d360fd08     	lsr	x8, x8, #32
   14a28: 1b092148     	madd	w8, w10, w9, w8
   14a2c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c97
   14a30: 91000000     	add	x0, x0, #0x0
		0000000000014a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c97
   14a34: 12003d02     	and	w2, w8, #0xffff
   14a38: 2a1f03e3     	mov	w3, wzr
   14a3c: 79005aa8     	strh	w8, [x21, #0x2c]
   14a40: 79005ebf     	strh	wzr, [x21, #0x2e]
   14a44: 94000000     	bl	0x14a44 <tp_edge_report_limit_write+0x1d4>
		0000000000014a44:  R_AARCH64_CALL26	_printk
   14a48: aa1303e0     	mov	x0, x19
   14a4c: d5384108     	mrs	x8, SP_EL0
   14a50: f9438908     	ldr	x8, [x8, #0x710]
   14a54: f85f83a9     	ldur	x9, [x29, #-0x8]
   14a58: eb09011f     	cmp	x8, x9
   14a5c: 54000e41     	b.ne	0x14c24 <tp_edge_report_limit_write+0x3b4>
   14a60: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   14a64: f9404bf7     	ldr	x23, [sp, #0x90]
   14a68: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   14a6c: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   14a70: 910303ff     	add	sp, sp, #0xc0
   14a74: d50323bf     	autiasp
   14a78: d65f03c0     	ret
   14a7c: 34000b08     	cbz	w8, 0x14bdc <tp_edge_report_limit_write+0x36c>
   14a80: 7100051f     	cmp	w8, #0x1
   14a84: 54000940     	b.eq	0x14bac <tp_edge_report_limit_write+0x33c>
   14a88: 7100091f     	cmp	w8, #0x2
   14a8c: 54000c41     	b.ne	0x14c14 <tp_edge_report_limit_write+0x3a4>
   14a90: 910013e2     	add	x2, sp, #0x4
   14a94: aa1403e0     	mov	x0, x20
   14a98: 52800141     	mov	w1, #0xa                // =10
   14a9c: 94000000     	bl	0x14a9c <tp_edge_report_limit_write+0x22c>
		0000000000014a9c:  R_AARCH64_CALL26	kstrtouint
   14aa0: 35fffd40     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14aa4: b94007e8     	ldr	w8, [sp, #0x4]
   14aa8: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18223
   14aac: 91000000     	add	x0, x0, #0x0
		0000000000014aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18223
   14ab0: 12003d01     	and	w1, w8, #0xffff
   14ab4: 79007ea8     	strh	w8, [x21, #0x3e]
   14ab8: 94000000     	bl	0x14ab8 <tp_edge_report_limit_write+0x248>
		0000000000014ab8:  R_AARCH64_CALL26	_printk
   14abc: 17ffffe3     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14ac0: 7100151f     	cmp	w8, #0x5
   14ac4: 540005c0     	b.eq	0x14b7c <tp_edge_report_limit_write+0x30c>
   14ac8: 7100191f     	cmp	w8, #0x6
   14acc: 54000a41     	b.ne	0x14c14 <tp_edge_report_limit_write+0x3a4>
   14ad0: aa1f03f6     	mov	x22, xzr
   14ad4: 90000014     	adrp	x20, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18fb2
   14ad8: 91000294     	add	x20, x20, #0x0
		0000000000014ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18fb2
   14adc: 9100d2b7     	add	x23, x21, #0x34
   14ae0: 90000015     	adrp	x21, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c586
   14ae4: 910002b5     	add	x21, x21, #0x0
		0000000000014ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c586
   14ae8: 910023e0     	add	x0, sp, #0x8
   14aec: aa1403e1     	mov	x1, x20
   14af0: 94000000     	bl	0x14af0 <tp_edge_report_limit_write+0x280>
		0000000000014af0:  R_AARCH64_CALL26	strsep
   14af4: b4fffaa0     	cbz	x0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14af8: 910013e2     	add	x2, sp, #0x4
   14afc: 52800141     	mov	w1, #0xa                // =10
   14b00: 94000000     	bl	0x14b00 <tp_edge_report_limit_write+0x290>
		0000000000014b00:  R_AARCH64_CALL26	kstrtouint
   14b04: 34000080     	cbz	w0, 0x14b14 <tp_edge_report_limit_write+0x2a4>
   14b08: f1000edf     	cmp	x22, #0x3
   14b0c: 54fffee9     	b.ls	0x14ae8 <tp_edge_report_limit_write+0x278>
   14b10: 17ffffce     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14b14: b94007e8     	ldr	w8, [sp, #0x4]
   14b18: 12003ec1     	and	w1, w22, #0xffff
   14b1c: aa1503e0     	mov	x0, x21
   14b20: 38366ae8     	strb	w8, [x23, x22]
   14b24: 12001d02     	and	w2, w8, #0xff
   14b28: 94000000     	bl	0x14b28 <tp_edge_report_limit_write+0x2b8>
		0000000000014b28:  R_AARCH64_CALL26	_printk
   14b2c: 910006d6     	add	x22, x22, #0x1
   14b30: 17fffff6     	b	0x14b08 <tp_edge_report_limit_write+0x298>
   14b34: 910013e2     	add	x2, sp, #0x4
   14b38: aa1403e0     	mov	x0, x20
   14b3c: 52800141     	mov	w1, #0xa                // =10
   14b40: 94000000     	bl	0x14b40 <tp_edge_report_limit_write+0x2d0>
		0000000000014b40:  R_AARCH64_CALL26	kstrtouint
   14b44: 35fff820     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14b48: b94007e8     	ldr	w8, [sp, #0x4]
   14b4c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa19
   14b50: 91000000     	add	x0, x0, #0x0
		0000000000014b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa19
   14b54: 12001d01     	and	w1, w8, #0xff
   14b58: 39009aa8     	strb	w8, [x21, #0x26]
   14b5c: 94000000     	bl	0x14b5c <tp_edge_report_limit_write+0x2ec>
		0000000000014b5c:  R_AARCH64_CALL26	_printk
   14b60: 39409aa8     	ldrb	w8, [x21, #0x26]
   14b64: aa1303e0     	mov	x0, x19
   14b68: 39009ea8     	strb	w8, [x21, #0x27]
   14b6c: 3900a2a8     	strb	w8, [x21, #0x28]
   14b70: 3900a6a8     	strb	w8, [x21, #0x29]
   14b74: 3900aaa8     	strb	w8, [x21, #0x2a]
   14b78: 17ffffb5     	b	0x14a4c <tp_edge_report_limit_write+0x1dc>
   14b7c: 910013e2     	add	x2, sp, #0x4
   14b80: aa1403e0     	mov	x0, x20
   14b84: 52800141     	mov	w1, #0xa                // =10
   14b88: 94000000     	bl	0x14b88 <tp_edge_report_limit_write+0x318>
		0000000000014b88:  R_AARCH64_CALL26	kstrtouint
   14b8c: 35fff5e0     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14b90: b94007e8     	ldr	w8, [sp, #0x4]
   14b94: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e76
   14b98: 91000000     	add	x0, x0, #0x0
		0000000000014b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e76
   14b9c: 12003d01     	and	w1, w8, #0xffff
   14ba0: 79007aa8     	strh	w8, [x21, #0x3c]
   14ba4: 94000000     	bl	0x14ba4 <tp_edge_report_limit_write+0x334>
		0000000000014ba4:  R_AARCH64_CALL26	_printk
   14ba8: 17ffffa8     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14bac: 910013e2     	add	x2, sp, #0x4
   14bb0: aa1403e0     	mov	x0, x20
   14bb4: 52800141     	mov	w1, #0xa                // =10
   14bb8: 94000000     	bl	0x14bb8 <tp_edge_report_limit_write+0x348>
		0000000000014bb8:  R_AARCH64_CALL26	kstrtouint
   14bbc: 35fff460     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14bc0: b94007e8     	ldr	w8, [sp, #0x4]
   14bc4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b225
   14bc8: 91000000     	add	x0, x0, #0x0
		0000000000014bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b225
   14bcc: 12001d01     	and	w1, w8, #0xff
   14bd0: 390092a8     	strb	w8, [x21, #0x24]
   14bd4: 94000000     	bl	0x14bd4 <tp_edge_report_limit_write+0x364>
		0000000000014bd4:  R_AARCH64_CALL26	_printk
   14bd8: 17ffff9c     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14bdc: 910013e2     	add	x2, sp, #0x4
   14be0: aa1403e0     	mov	x0, x20
   14be4: 52800141     	mov	w1, #0xa                // =10
   14be8: 94000000     	bl	0x14be8 <tp_edge_report_limit_write+0x378>
		0000000000014be8:  R_AARCH64_CALL26	kstrtouint
   14bec: 35fff2e0     	cbnz	w0, 0x14a48 <tp_edge_report_limit_write+0x1d8>
   14bf0: b94007e8     	ldr	w8, [sp, #0x4]
   14bf4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e76
   14bf8: 91000000     	add	x0, x0, #0x0
		0000000000014bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e76
   14bfc: 7100011f     	cmp	w8, #0x0
   14c00: 1a9f07e1     	cset	w1, ne
   14c04: b90007e1     	str	w1, [sp, #0x4]
   14c08: 39006ea1     	strb	w1, [x21, #0x1b]
   14c0c: 94000000     	bl	0x14c0c <tp_edge_report_limit_write+0x39c>
		0000000000014c0c:  R_AARCH64_CALL26	_printk
   14c10: 17ffff8e     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14c14: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bdbd
   14c18: 91000000     	add	x0, x0, #0x0
		0000000000014c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bdbd
   14c1c: 94000000     	bl	0x14c1c <tp_edge_report_limit_write+0x3ac>
		0000000000014c1c:  R_AARCH64_CALL26	_printk
   14c20: 17ffff8a     	b	0x14a48 <tp_edge_report_limit_write+0x1d8>
   14c24: 94000000     	bl	0x14c24 <tp_edge_report_limit_write+0x3b4>
		0000000000014c24:  R_AARCH64_CALL26	__stack_chk_fail
