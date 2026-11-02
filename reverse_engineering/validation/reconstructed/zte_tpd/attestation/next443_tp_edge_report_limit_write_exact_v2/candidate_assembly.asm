
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024cc8 <tp_edge_report_limit_write>:
   24cc8: d503233f     	paciasp
   24ccc: d10303ff     	sub	sp, sp, #0xc0
   24cd0: a9087bfd     	stp	x29, x30, [sp, #0x80]
   24cd4: f9004bf7     	str	x23, [sp, #0x90]
   24cd8: a90a57f6     	stp	x22, x21, [sp, #0xa0]
   24cdc: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
   24ce0: 910203fd     	add	x29, sp, #0x80
   24ce4: d5384108     	mrs	x8, SP_EL0
   24ce8: aa0103f4     	mov	x20, x1
   24cec: f9438908     	ldr	x8, [x8, #0x710]
   24cf0: f101905f     	cmp	x2, #0x64
   24cf4: f81f83a8     	stur	x8, [x29, #-0x8]
   24cf8: 90000008     	adrp	x8, 0x24000 <zte_touch_probe+0x304>
		0000000000024cf8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   24cfc: f9400115     	ldr	x21, [x8]
		0000000000024cfc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   24d00: 52800c88     	mov	w8, #0x64               // =100
   24d04: b90073ff     	str	wzr, [sp, #0x70]
   24d08: 9a883053     	csel	x19, x2, x8, lo
   24d0c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   24d10: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   24d14: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   24d18: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   24d1c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   24d20: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   24d24: f90003ff     	str	xzr, [sp]
   24d28: b4000141     	cbz	x1, 0x24d50 <tp_edge_report_limit_write+0x88>
   24d2c: 910043e0     	add	x0, sp, #0x10
   24d30: aa1303e1     	mov	x1, x19
   24d34: 2a1f03e2     	mov	w2, wzr
   24d38: 94000000     	bl	0x24d38 <tp_edge_report_limit_write+0x70>
		0000000000024d38:  R_AARCH64_CALL26	__check_object_size
   24d3c: 910043e0     	add	x0, sp, #0x10
   24d40: aa1403e1     	mov	x1, x20
   24d44: aa1303e2     	mov	x2, x19
   24d48: 94000000     	bl	0x24d48 <tp_edge_report_limit_write+0x80>
		0000000000024d48:  R_AARCH64_CALL26	_inline_copy_from_user
   24d4c: b5000780     	cbnz	x0, 0x24e3c <tp_edge_report_limit_write+0x174>
   24d50: 910043e0     	add	x0, sp, #0x10
   24d54: 94000000     	bl	0x24d54 <tp_edge_report_limit_write+0x8c>
		0000000000024d54:  R_AARCH64_CALL26	get_tp_algo_item_id
   24d58: 36f80300     	tbz	w0, #0x1f, 0x24db8 <tp_edge_report_limit_write+0xf0>
   24d5c: 910003e3     	mov	x3, sp
   24d60: aa1403e0     	mov	x0, x20
   24d64: aa1303e1     	mov	x1, x19
   24d68: 52800142     	mov	w2, #0xa                // =10
   24d6c: 94000000     	bl	0x24d6c <tp_edge_report_limit_write+0xa4>
		0000000000024d6c:  R_AARCH64_CALL26	kstrtouint_from_user
   24d70: 2a0003e8     	mov	w8, w0
   24d74: 928002a0     	mov	x0, #-0x16              // =-22
   24d78: 35000968     	cbnz	w8, 0x24ea4 <tp_edge_report_limit_write+0x1dc>
   24d7c: b94003e1     	ldr	w1, [sp]
   24d80: 7100283f     	cmp	w1, #0xa
   24d84: 54000908     	b.hi	0x24ea4 <tp_edge_report_limit_write+0x1dc>
   24d88: 794886a8     	ldrh	w8, [x21, #0x442]
   24d8c: 7100143f     	cmp	w1, #0x5
   24d90: 3900e2a1     	strb	w1, [x21, #0x38]
   24d94: 540005e8     	b.hi	0x24e50 <tp_edge_report_limit_write+0x188>
   24d98: 1b087c28     	mul	w8, w1, w8
   24d9c: 531d7109     	lsl	w9, w8, #3
   24da0: 4b080128     	sub	w8, w9, w8
   24da4: 5289ba69     	mov	w9, #0x4dd3             // =19923
   24da8: 72a20c49     	movk	w9, #0x1062, lsl #16
   24dac: 9ba97d08     	umull	x8, w8, w9
   24db0: d366fd08     	lsr	x8, x8, #38
   24db4: 14000034     	b	0x24e84 <tp_edge_report_limit_write+0x1bc>
   24db8: 2a0003f6     	mov	w22, w0
   24dbc: 910043e0     	add	x0, sp, #0x10
   24dc0: 52800741     	mov	w1, #0x3a               // =58
   24dc4: 94000000     	bl	0x24dc4 <tp_edge_report_limit_write+0xfc>
		0000000000024dc4:  R_AARCH64_CALL26	strchr
   24dc8: 91000414     	add	x20, x0, #0x1
   24dcc: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41e
   24dd0: 91000000     	add	x0, x0, #0x0
		0000000000024dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41e
   24dd4: aa1403e1     	mov	x1, x20
   24dd8: f90007f4     	str	x20, [sp, #0x8]
   24ddc: 94000000     	bl	0x24ddc <tp_edge_report_limit_write+0x114>
		0000000000024ddc:  R_AARCH64_CALL26	_printk
   24de0: 2a1603e8     	mov	w8, w22
   24de4: 71000adf     	cmp	w22, #0x2
   24de8: 5400076d     	b.le	0x24ed4 <tp_edge_report_limit_write+0x20c>
   24dec: 7100111f     	cmp	w8, #0x4
   24df0: 5400094c     	b.gt	0x24f18 <tp_edge_report_limit_write+0x250>
   24df4: 71000d1f     	cmp	w8, #0x3
   24df8: 54000ca0     	b.eq	0x24f8c <tp_edge_report_limit_write+0x2c4>
   24dfc: 7100111f     	cmp	w8, #0x4
   24e00: 54001361     	b.ne	0x2506c <tp_edge_report_limit_write+0x3a4>
   24e04: 910013e2     	add	x2, sp, #0x4
   24e08: aa1403e0     	mov	x0, x20
   24e0c: 52800141     	mov	w1, #0xa                // =10
   24e10: 94000000     	bl	0x24e10 <tp_edge_report_limit_write+0x148>
		0000000000024e10:  R_AARCH64_CALL26	kstrtouint
   24e14: 35000460     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24e18: b94007e8     	ldr	w8, [sp, #0x4]
   24e1c: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41c6
   24e20: 91000000     	add	x0, x0, #0x0
		0000000000024e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41c6
   24e24: 7100011f     	cmp	w8, #0x0
   24e28: 1a9f07e1     	cset	w1, ne
   24e2c: b90007e1     	str	w1, [sp, #0x4]
   24e30: 390096a1     	strb	w1, [x21, #0x25]
   24e34: 94000000     	bl	0x24e34 <tp_edge_report_limit_write+0x16c>
		0000000000024e34:  R_AARCH64_CALL26	_printk
   24e38: 1400001a     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24e3c: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1965
   24e40: 91000000     	add	x0, x0, #0x0
		0000000000024e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1965
   24e44: 94000000     	bl	0x24e44 <tp_edge_report_limit_write+0x17c>
		0000000000024e44:  R_AARCH64_CALL26	_printk
   24e48: 928002a0     	mov	x0, #-0x16              // =-22
   24e4c: 14000016     	b	0x24ea4 <tp_edge_report_limit_write+0x1dc>
   24e50: 52800469     	mov	w9, #0x23               // =35
   24e54: 53017d0a     	lsr	w10, w8, #1
   24e58: 1b097d08     	mul	w8, w8, w9
   24e5c: 52906269     	mov	w9, #0x8313             // =33555
   24e60: 1b097d49     	mul	w9, w10, w9
   24e64: 5291270a     	mov	w10, #0x8938            // =35128
   24e68: 72a0082a     	movk	w10, #0x41, lsl #16
   24e6c: 9baa7d08     	umull	x8, w8, w10
   24e70: 529fff6a     	mov	w10, #0xfffb            // =65531
   24e74: 53167d29     	lsr	w9, w9, #22
   24e78: 0b0a002a     	add	w10, w1, w10
   24e7c: d360fd08     	lsr	x8, x8, #32
   24e80: 1b092148     	madd	w8, w10, w9, w8
   24e84: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd22
   24e88: 91000000     	add	x0, x0, #0x0
		0000000000024e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd22
   24e8c: 12003d02     	and	w2, w8, #0xffff
   24e90: 2a1f03e3     	mov	w3, wzr
   24e94: 79005aa8     	strh	w8, [x21, #0x2c]
   24e98: 79005ebf     	strh	wzr, [x21, #0x2e]
   24e9c: 94000000     	bl	0x24e9c <tp_edge_report_limit_write+0x1d4>
		0000000000024e9c:  R_AARCH64_CALL26	_printk
   24ea0: aa1303e0     	mov	x0, x19
   24ea4: d5384108     	mrs	x8, SP_EL0
   24ea8: f9438908     	ldr	x8, [x8, #0x710]
   24eac: f85f83a9     	ldur	x9, [x29, #-0x8]
   24eb0: eb09011f     	cmp	x8, x9
   24eb4: 54000e41     	b.ne	0x2507c <tp_edge_report_limit_write+0x3b4>
   24eb8: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
   24ebc: f9404bf7     	ldr	x23, [sp, #0x90]
   24ec0: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
   24ec4: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   24ec8: 910303ff     	add	sp, sp, #0xc0
   24ecc: d50323bf     	autiasp
   24ed0: d65f03c0     	ret
   24ed4: 34000b08     	cbz	w8, 0x25034 <tp_edge_report_limit_write+0x36c>
   24ed8: 7100051f     	cmp	w8, #0x1
   24edc: 54000940     	b.eq	0x25004 <tp_edge_report_limit_write+0x33c>
   24ee0: 7100091f     	cmp	w8, #0x2
   24ee4: 54000c41     	b.ne	0x2506c <tp_edge_report_limit_write+0x3a4>
   24ee8: 910013e2     	add	x2, sp, #0x4
   24eec: aa1403e0     	mov	x0, x20
   24ef0: 52800141     	mov	w1, #0xa                // =10
   24ef4: 94000000     	bl	0x24ef4 <tp_edge_report_limit_write+0x22c>
		0000000000024ef4:  R_AARCH64_CALL26	kstrtouint
   24ef8: 35fffd40     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24efc: b94007e8     	ldr	w8, [sp, #0x4]
   24f00: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1566
   24f04: 91000000     	add	x0, x0, #0x0
		0000000000024f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1566
   24f08: 12003d01     	and	w1, w8, #0xffff
   24f0c: 79007ea8     	strh	w8, [x21, #0x3e]
   24f10: 94000000     	bl	0x24f10 <tp_edge_report_limit_write+0x248>
		0000000000024f10:  R_AARCH64_CALL26	_printk
   24f14: 17ffffe3     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24f18: 7100151f     	cmp	w8, #0x5
   24f1c: 540005c0     	b.eq	0x24fd4 <tp_edge_report_limit_write+0x30c>
   24f20: 7100191f     	cmp	w8, #0x6
   24f24: 54000a41     	b.ne	0x2506c <tp_edge_report_limit_write+0x3a4>
   24f28: aa1f03f6     	mov	x22, xzr
   24f2c: 90000014     	adrp	x20, 0x24000 <zte_touch_probe+0x304>
		0000000000024f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x253b
   24f30: 91000294     	add	x20, x20, #0x0
		0000000000024f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x253b
   24f34: 9100d2b7     	add	x23, x21, #0x34
   24f38: 90000015     	adrp	x21, 0x24000 <zte_touch_probe+0x304>
		0000000000024f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f69
   24f3c: 910002b5     	add	x21, x21, #0x0
		0000000000024f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f69
   24f40: 910023e0     	add	x0, sp, #0x8
   24f44: aa1403e1     	mov	x1, x20
   24f48: 94000000     	bl	0x24f48 <tp_edge_report_limit_write+0x280>
		0000000000024f48:  R_AARCH64_CALL26	strsep
   24f4c: b4fffaa0     	cbz	x0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24f50: 910013e2     	add	x2, sp, #0x4
   24f54: 52800141     	mov	w1, #0xa                // =10
   24f58: 94000000     	bl	0x24f58 <tp_edge_report_limit_write+0x290>
		0000000000024f58:  R_AARCH64_CALL26	kstrtouint
   24f5c: 34000080     	cbz	w0, 0x24f6c <tp_edge_report_limit_write+0x2a4>
   24f60: f1000edf     	cmp	x22, #0x3
   24f64: 54fffee9     	b.ls	0x24f40 <tp_edge_report_limit_write+0x278>
   24f68: 17ffffce     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24f6c: b94007e8     	ldr	w8, [sp, #0x4]
   24f70: 12003ec1     	and	w1, w22, #0xffff
   24f74: aa1503e0     	mov	x0, x21
   24f78: 38366ae8     	strb	w8, [x23, x22]
   24f7c: 12001d02     	and	w2, w8, #0xff
   24f80: 94000000     	bl	0x24f80 <tp_edge_report_limit_write+0x2b8>
		0000000000024f80:  R_AARCH64_CALL26	_printk
   24f84: 910006d6     	add	x22, x22, #0x1
   24f88: 17fffff6     	b	0x24f60 <tp_edge_report_limit_write+0x298>
   24f8c: 910013e2     	add	x2, sp, #0x4
   24f90: aa1403e0     	mov	x0, x20
   24f94: 52800141     	mov	w1, #0xa                // =10
   24f98: 94000000     	bl	0x24f98 <tp_edge_report_limit_write+0x2d0>
		0000000000024f98:  R_AARCH64_CALL26	kstrtouint
   24f9c: 35fff820     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24fa0: b94007e8     	ldr	w8, [sp, #0x4]
   24fa4: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x493e
   24fa8: 91000000     	add	x0, x0, #0x0
		0000000000024fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x493e
   24fac: 12001d01     	and	w1, w8, #0xff
   24fb0: 39009aa8     	strb	w8, [x21, #0x26]
   24fb4: 94000000     	bl	0x24fb4 <tp_edge_report_limit_write+0x2ec>
		0000000000024fb4:  R_AARCH64_CALL26	_printk
   24fb8: 39409aa8     	ldrb	w8, [x21, #0x26]
   24fbc: aa1303e0     	mov	x0, x19
   24fc0: 39009ea8     	strb	w8, [x21, #0x27]
   24fc4: 3900a2a8     	strb	w8, [x21, #0x28]
   24fc8: 3900a6a8     	strb	w8, [x21, #0x29]
   24fcc: 3900aaa8     	strb	w8, [x21, #0x2a]
   24fd0: 17ffffb5     	b	0x24ea4 <tp_edge_report_limit_write+0x1dc>
   24fd4: 910013e2     	add	x2, sp, #0x4
   24fd8: aa1403e0     	mov	x0, x20
   24fdc: 52800141     	mov	w1, #0xa                // =10
   24fe0: 94000000     	bl	0x24fe0 <tp_edge_report_limit_write+0x318>
		0000000000024fe0:  R_AARCH64_CALL26	kstrtouint
   24fe4: 35fff5e0     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   24fe8: b94007e8     	ldr	w8, [sp, #0x4]
   24fec: 90000000     	adrp	x0, 0x24000 <zte_touch_probe+0x304>
		0000000000024fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0a
   24ff0: 91000000     	add	x0, x0, #0x0
		0000000000024ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0a
   24ff4: 12003d01     	and	w1, w8, #0xffff
   24ff8: 79007aa8     	strh	w8, [x21, #0x3c]
   24ffc: 94000000     	bl	0x24ffc <tp_edge_report_limit_write+0x334>
		0000000000024ffc:  R_AARCH64_CALL26	_printk
   25000: 17ffffa8     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   25004: 910013e2     	add	x2, sp, #0x4
   25008: aa1403e0     	mov	x0, x20
   2500c: 52800141     	mov	w1, #0xa                // =10
   25010: 94000000     	bl	0x25010 <tp_edge_report_limit_write+0x348>
		0000000000025010:  R_AARCH64_CALL26	kstrtouint
   25014: 35fff460     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   25018: b94007e8     	ldr	w8, [sp, #0x4]
   2501c: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_write+0x338>
		000000000002501c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5470
   25020: 91000000     	add	x0, x0, #0x0
		0000000000025020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5470
   25024: 12001d01     	and	w1, w8, #0xff
   25028: 390092a8     	strb	w8, [x21, #0x24]
   2502c: 94000000     	bl	0x2502c <tp_edge_report_limit_write+0x364>
		000000000002502c:  R_AARCH64_CALL26	_printk
   25030: 17ffff9c     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   25034: 910013e2     	add	x2, sp, #0x4
   25038: aa1403e0     	mov	x0, x20
   2503c: 52800141     	mov	w1, #0xa                // =10
   25040: 94000000     	bl	0x25040 <tp_edge_report_limit_write+0x378>
		0000000000025040:  R_AARCH64_CALL26	kstrtouint
   25044: 35fff2e0     	cbnz	w0, 0x24ea0 <tp_edge_report_limit_write+0x1d8>
   25048: b94007e8     	ldr	w8, [sp, #0x4]
   2504c: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_write+0x338>
		000000000002504c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c0a
   25050: 91000000     	add	x0, x0, #0x0
		0000000000025050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c0a
   25054: 7100011f     	cmp	w8, #0x0
   25058: 1a9f07e1     	cset	w1, ne
   2505c: b90007e1     	str	w1, [sp, #0x4]
   25060: 39006ea1     	strb	w1, [x21, #0x1b]
   25064: 94000000     	bl	0x25064 <tp_edge_report_limit_write+0x39c>
		0000000000025064:  R_AARCH64_CALL26	_printk
   25068: 17ffff8e     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   2506c: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_write+0x338>
		000000000002506c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63c4
   25070: 91000000     	add	x0, x0, #0x0
		0000000000025070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63c4
   25074: 94000000     	bl	0x25074 <tp_edge_report_limit_write+0x3ac>
		0000000000025074:  R_AARCH64_CALL26	_printk
   25078: 17ffff8a     	b	0x24ea0 <tp_edge_report_limit_write+0x1d8>
   2507c: 94000000     	bl	0x2507c <tp_edge_report_limit_write+0x3b4>
		000000000002507c:  R_AARCH64_CALL26	__stack_chk_fail
