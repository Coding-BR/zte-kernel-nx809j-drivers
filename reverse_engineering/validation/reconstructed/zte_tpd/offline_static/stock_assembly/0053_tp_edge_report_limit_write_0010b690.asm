
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004e08 <tp_edge_report_limit_write>:
    4e08: d503233f     	paciasp
    4e0c: d10303ff     	sub	sp, sp, #0xc0
    4e10: a9087bfd     	stp	x29, x30, [sp, #0x80]
    4e14: f9004bf7     	str	x23, [sp, #0x90]
    4e18: a90a57f6     	stp	x22, x21, [sp, #0xa0]
    4e1c: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
    4e20: 910203fd     	add	x29, sp, #0x80
    4e24: d5384108     	mrs	x8, SP_EL0
    4e28: aa0103f4     	mov	x20, x1
    4e2c: f9438908     	ldr	x8, [x8, #0x710]
    4e30: f101905f     	cmp	x2, #0x64
    4e34: f81f83a8     	stur	x8, [x29, #-0x8]
    4e38: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004e38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    4e3c: f9400115     	ldr	x21, [x8]
		0000000000004e3c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4e40: 52800c88     	mov	w8, #0x64               // =100
    4e44: b90073ff     	str	wzr, [sp, #0x70]
    4e48: 9a883053     	csel	x19, x2, x8, lo
    4e4c: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    4e50: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    4e54: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    4e58: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    4e5c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    4e60: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    4e64: f90003ff     	str	xzr, [sp]
    4e68: b4000141     	cbz	x1, 0x4e90 <tp_edge_report_limit_write+0x88>
    4e6c: 910043e0     	add	x0, sp, #0x10
    4e70: aa1303e1     	mov	x1, x19
    4e74: 2a1f03e2     	mov	w2, wzr
    4e78: 94000000     	bl	0x4e78 <tp_edge_report_limit_write+0x70>
		0000000000004e78:  R_AARCH64_CALL26	__check_object_size
    4e7c: 910043e0     	add	x0, sp, #0x10
    4e80: aa1403e1     	mov	x1, x20
    4e84: aa1303e2     	mov	x2, x19
    4e88: 97fffbae     	bl	0x3d40 <_inline_copy_from_user>
    4e8c: b5000780     	cbnz	x0, 0x4f7c <tp_edge_report_limit_write+0x174>
    4e90: 910043e0     	add	x0, sp, #0x10
    4e94: 94000000     	bl	0x4e94 <tp_edge_report_limit_write+0x8c>
		0000000000004e94:  R_AARCH64_CALL26	get_tp_algo_item_id
    4e98: 36f80300     	tbz	w0, #0x1f, 0x4ef8 <tp_edge_report_limit_write+0xf0>
    4e9c: 910003e3     	mov	x3, sp
    4ea0: aa1403e0     	mov	x0, x20
    4ea4: aa1303e1     	mov	x1, x19
    4ea8: 52800142     	mov	w2, #0xa                // =10
    4eac: 94000000     	bl	0x4eac <tp_edge_report_limit_write+0xa4>
		0000000000004eac:  R_AARCH64_CALL26	kstrtouint_from_user
    4eb0: 2a0003e8     	mov	w8, w0
    4eb4: 928002a0     	mov	x0, #-0x16              // =-22
    4eb8: 35000968     	cbnz	w8, 0x4fe4 <tp_edge_report_limit_write+0x1dc>
    4ebc: b94003e1     	ldr	w1, [sp]
    4ec0: 7100283f     	cmp	w1, #0xa
    4ec4: 54000908     	b.hi	0x4fe4 <tp_edge_report_limit_write+0x1dc>
    4ec8: 794886a8     	ldrh	w8, [x21, #0x442]
    4ecc: 7100143f     	cmp	w1, #0x5
    4ed0: 3900e2a1     	strb	w1, [x21, #0x38]
    4ed4: 540005e8     	b.hi	0x4f90 <tp_edge_report_limit_write+0x188>
    4ed8: 1b087c28     	mul	w8, w1, w8
    4edc: 531d7109     	lsl	w9, w8, #3
    4ee0: 4b080128     	sub	w8, w9, w8
    4ee4: 5289ba69     	mov	w9, #0x4dd3             // =19923
    4ee8: 72a20c49     	movk	w9, #0x1062, lsl #16
    4eec: 9ba97d08     	umull	x8, w8, w9
    4ef0: d366fd08     	lsr	x8, x8, #38
    4ef4: 14000034     	b	0x4fc4 <tp_edge_report_limit_write+0x1bc>
    4ef8: 2a0003f6     	mov	w22, w0
    4efc: 910043e0     	add	x0, sp, #0x10
    4f00: 52800741     	mov	w1, #0x3a               // =58
    4f04: 94000000     	bl	0x4f04 <tp_edge_report_limit_write+0xfc>
		0000000000004f04:  R_AARCH64_CALL26	strchr
    4f08: 91000414     	add	x20, x0, #0x1
    4f0c: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc6
    4f10: 91000000     	add	x0, x0, #0x0
		0000000000004f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc6
    4f14: aa1403e1     	mov	x1, x20
    4f18: f90007f4     	str	x20, [sp, #0x8]
    4f1c: 94000000     	bl	0x4f1c <tp_edge_report_limit_write+0x114>
		0000000000004f1c:  R_AARCH64_CALL26	_printk
    4f20: 2a1603e8     	mov	w8, w22
    4f24: 71000adf     	cmp	w22, #0x2
    4f28: 5400076d     	b.le	0x5014 <tp_edge_report_limit_write+0x20c>
    4f2c: 7100111f     	cmp	w8, #0x4
    4f30: 5400094c     	b.gt	0x5058 <tp_edge_report_limit_write+0x250>
    4f34: 71000d1f     	cmp	w8, #0x3
    4f38: 54000ca0     	b.eq	0x50cc <tp_edge_report_limit_write+0x2c4>
    4f3c: 7100111f     	cmp	w8, #0x4
    4f40: 54001361     	b.ne	0x51ac <tp_edge_report_limit_write+0x3a4>
    4f44: 910013e2     	add	x2, sp, #0x4
    4f48: aa1403e0     	mov	x0, x20
    4f4c: 52800141     	mov	w1, #0xa                // =10
    4f50: 94000000     	bl	0x4f50 <tp_edge_report_limit_write+0x148>
		0000000000004f50:  R_AARCH64_CALL26	kstrtouint
    4f54: 35000460     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    4f58: b94007e8     	ldr	w8, [sp, #0x4]
    4f5c: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d87
    4f60: 91000000     	add	x0, x0, #0x0
		0000000000004f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d87
    4f64: 7100011f     	cmp	w8, #0x0
    4f68: 1a9f07e1     	cset	w1, ne
    4f6c: b90007e1     	str	w1, [sp, #0x4]
    4f70: 390096a1     	strb	w1, [x21, #0x25]
    4f74: 94000000     	bl	0x4f74 <tp_edge_report_limit_write+0x16c>
		0000000000004f74:  R_AARCH64_CALL26	_printk
    4f78: 1400001a     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    4f7c: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x256c
    4f80: 91000000     	add	x0, x0, #0x0
		0000000000004f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x256c
    4f84: 94000000     	bl	0x4f84 <tp_edge_report_limit_write+0x17c>
		0000000000004f84:  R_AARCH64_CALL26	_printk
    4f88: 928002a0     	mov	x0, #-0x16              // =-22
    4f8c: 14000016     	b	0x4fe4 <tp_edge_report_limit_write+0x1dc>
    4f90: 52800469     	mov	w9, #0x23               // =35
    4f94: 53017d0a     	lsr	w10, w8, #1
    4f98: 1b097d08     	mul	w8, w8, w9
    4f9c: 52906269     	mov	w9, #0x8313             // =33555
    4fa0: 1b097d49     	mul	w9, w10, w9
    4fa4: 5291270a     	mov	w10, #0x8938            // =35128
    4fa8: 72a0082a     	movk	w10, #0x41, lsl #16
    4fac: 9baa7d08     	umull	x8, w8, w10
    4fb0: 529fff6a     	mov	w10, #0xfffb            // =65531
    4fb4: 53167d29     	lsr	w9, w9, #22
    4fb8: 0b0a002a     	add	w10, w1, w10
    4fbc: d360fd08     	lsr	x8, x8, #32
    4fc0: 1b092148     	madd	w8, w10, w9, w8
    4fc4: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1237
    4fc8: 91000000     	add	x0, x0, #0x0
		0000000000004fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1237
    4fcc: 12003d02     	and	w2, w8, #0xffff
    4fd0: 2a1f03e3     	mov	w3, wzr
    4fd4: 79005aa8     	strh	w8, [x21, #0x2c]
    4fd8: 79005ebf     	strh	wzr, [x21, #0x2e]
    4fdc: 94000000     	bl	0x4fdc <tp_edge_report_limit_write+0x1d4>
		0000000000004fdc:  R_AARCH64_CALL26	_printk
    4fe0: aa1303e0     	mov	x0, x19
    4fe4: d5384108     	mrs	x8, SP_EL0
    4fe8: f9438908     	ldr	x8, [x8, #0x710]
    4fec: f85f83a9     	ldur	x9, [x29, #-0x8]
    4ff0: eb09011f     	cmp	x8, x9
    4ff4: 54000e41     	b.ne	0x51bc <tp_edge_report_limit_write+0x3b4>
    4ff8: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
    4ffc: f9404bf7     	ldr	x23, [sp, #0x90]
    5000: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
    5004: a9487bfd     	ldp	x29, x30, [sp, #0x80]
    5008: 910303ff     	add	sp, sp, #0xc0
    500c: d50323bf     	autiasp
    5010: d65f03c0     	ret
    5014: 34000b08     	cbz	w8, 0x5174 <tp_edge_report_limit_write+0x36c>
    5018: 7100051f     	cmp	w8, #0x1
    501c: 54000940     	b.eq	0x5144 <tp_edge_report_limit_write+0x33c>
    5020: 7100091f     	cmp	w8, #0x2
    5024: 54000c41     	b.ne	0x51ac <tp_edge_report_limit_write+0x3a4>
    5028: 910013e2     	add	x2, sp, #0x4
    502c: aa1403e0     	mov	x0, x20
    5030: 52800141     	mov	w1, #0xa                // =10
    5034: 94000000     	bl	0x5034 <tp_edge_report_limit_write+0x22c>
		0000000000005034:  R_AARCH64_CALL26	kstrtouint
    5038: 35fffd40     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    503c: b94007e8     	ldr	w8, [sp, #0x4]
    5040: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1c
    5044: 91000000     	add	x0, x0, #0x0
		0000000000005044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1c
    5048: 12003d01     	and	w1, w8, #0xffff
    504c: 79007ea8     	strh	w8, [x21, #0x3e]
    5050: 94000000     	bl	0x5050 <tp_edge_report_limit_write+0x248>
		0000000000005050:  R_AARCH64_CALL26	_printk
    5054: 17ffffe3     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5058: 7100151f     	cmp	w8, #0x5
    505c: 540005c0     	b.eq	0x5114 <tp_edge_report_limit_write+0x30c>
    5060: 7100191f     	cmp	w8, #0x6
    5064: 54000a41     	b.ne	0x51ac <tp_edge_report_limit_write+0x3a4>
    5068: aa1f03f6     	mov	x22, xzr
    506c: 90000014     	adrp	x20, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000506c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e1d
    5070: 91000294     	add	x20, x20, #0x0
		0000000000005070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e1d
    5074: 9100d2b7     	add	x23, x21, #0x34
    5078: 90000015     	adrp	x21, 0x5000 <tp_edge_report_limit_write+0x1f8>
		0000000000005078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb982
    507c: 910002b5     	add	x21, x21, #0x0
		000000000000507c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb982
    5080: 910023e0     	add	x0, sp, #0x8
    5084: aa1403e1     	mov	x1, x20
    5088: 94000000     	bl	0x5088 <tp_edge_report_limit_write+0x280>
		0000000000005088:  R_AARCH64_CALL26	strsep
    508c: b4fffaa0     	cbz	x0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5090: 910013e2     	add	x2, sp, #0x4
    5094: 52800141     	mov	w1, #0xa                // =10
    5098: 94000000     	bl	0x5098 <tp_edge_report_limit_write+0x290>
		0000000000005098:  R_AARCH64_CALL26	kstrtouint
    509c: 34000080     	cbz	w0, 0x50ac <tp_edge_report_limit_write+0x2a4>
    50a0: f1000edf     	cmp	x22, #0x3
    50a4: 54fffee9     	b.ls	0x5080 <tp_edge_report_limit_write+0x278>
    50a8: 17ffffce     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    50ac: b94007e8     	ldr	w8, [sp, #0x4]
    50b0: 12003ec1     	and	w1, w22, #0xffff
    50b4: aa1503e0     	mov	x0, x21
    50b8: 38366ae8     	strb	w8, [x23, x22]
    50bc: 12001d02     	and	w2, w8, #0xff
    50c0: 94000000     	bl	0x50c0 <tp_edge_report_limit_write+0x2b8>
		00000000000050c0:  R_AARCH64_CALL26	_printk
    50c4: 910006d6     	add	x22, x22, #0x1
    50c8: 17fffff6     	b	0x50a0 <tp_edge_report_limit_write+0x298>
    50cc: 910013e2     	add	x2, sp, #0x4
    50d0: aa1403e0     	mov	x0, x20
    50d4: 52800141     	mov	w1, #0xa                // =10
    50d8: 94000000     	bl	0x50d8 <tp_edge_report_limit_write+0x2d0>
		00000000000050d8:  R_AARCH64_CALL26	kstrtouint
    50dc: 35fff820     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    50e0: b94007e8     	ldr	w8, [sp, #0x4]
    50e4: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000050e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a15
    50e8: 91000000     	add	x0, x0, #0x0
		00000000000050e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a15
    50ec: 12001d01     	and	w1, w8, #0xff
    50f0: 39009aa8     	strb	w8, [x21, #0x26]
    50f4: 94000000     	bl	0x50f4 <tp_edge_report_limit_write+0x2ec>
		00000000000050f4:  R_AARCH64_CALL26	_printk
    50f8: 39409aa8     	ldrb	w8, [x21, #0x26]
    50fc: aa1303e0     	mov	x0, x19
    5100: 39009ea8     	strb	w8, [x21, #0x27]
    5104: 3900a2a8     	strb	w8, [x21, #0x28]
    5108: 3900a6a8     	strb	w8, [x21, #0x29]
    510c: 3900aaa8     	strb	w8, [x21, #0x2a]
    5110: 17ffffb5     	b	0x4fe4 <tp_edge_report_limit_write+0x1dc>
    5114: 910013e2     	add	x2, sp, #0x4
    5118: aa1403e0     	mov	x0, x20
    511c: 52800141     	mov	w1, #0xa                // =10
    5120: 94000000     	bl	0x5120 <tp_edge_report_limit_write+0x318>
		0000000000005120:  R_AARCH64_CALL26	kstrtouint
    5124: 35fff5e0     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5128: b94007e8     	ldr	w8, [sp, #0x4]
    512c: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000512c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6139
    5130: 91000000     	add	x0, x0, #0x0
		0000000000005130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6139
    5134: 12003d01     	and	w1, w8, #0xffff
    5138: 79007aa8     	strh	w8, [x21, #0x3c]
    513c: 94000000     	bl	0x513c <tp_edge_report_limit_write+0x334>
		000000000000513c:  R_AARCH64_CALL26	_printk
    5140: 17ffffa8     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5144: 910013e2     	add	x2, sp, #0x4
    5148: aa1403e0     	mov	x0, x20
    514c: 52800141     	mov	w1, #0xa                // =10
    5150: 94000000     	bl	0x5150 <tp_edge_report_limit_write+0x348>
		0000000000005150:  R_AARCH64_CALL26	kstrtouint
    5154: 35fff460     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5158: b94007e8     	ldr	w8, [sp, #0x4]
    515c: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000515c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8acb
    5160: 91000000     	add	x0, x0, #0x0
		0000000000005160:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8acb
    5164: 12001d01     	and	w1, w8, #0xff
    5168: 390092a8     	strb	w8, [x21, #0x24]
    516c: 94000000     	bl	0x516c <tp_edge_report_limit_write+0x364>
		000000000000516c:  R_AARCH64_CALL26	_printk
    5170: 17ffff9c     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5174: 910013e2     	add	x2, sp, #0x4
    5178: aa1403e0     	mov	x0, x20
    517c: 52800141     	mov	w1, #0xa                // =10
    5180: 94000000     	bl	0x5180 <tp_edge_report_limit_write+0x378>
		0000000000005180:  R_AARCH64_CALL26	kstrtouint
    5184: 35fff2e0     	cbnz	w0, 0x4fe0 <tp_edge_report_limit_write+0x1d8>
    5188: b94007e8     	ldr	w8, [sp, #0x4]
    518c: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		000000000000518c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6139
    5190: 91000000     	add	x0, x0, #0x0
		0000000000005190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6139
    5194: 7100011f     	cmp	w8, #0x0
    5198: 1a9f07e1     	cset	w1, ne
    519c: b90007e1     	str	w1, [sp, #0x4]
    51a0: 39006ea1     	strb	w1, [x21, #0x1b]
    51a4: 94000000     	bl	0x51a4 <tp_edge_report_limit_write+0x39c>
		00000000000051a4:  R_AARCH64_CALL26	_printk
    51a8: 17ffff8e     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    51ac: 90000000     	adrp	x0, 0x5000 <tp_edge_report_limit_write+0x1f8>
		00000000000051ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa512
    51b0: 91000000     	add	x0, x0, #0x0
		00000000000051b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa512
    51b4: 94000000     	bl	0x51b4 <tp_edge_report_limit_write+0x3ac>
		00000000000051b4:  R_AARCH64_CALL26	_printk
    51b8: 17ffff8a     	b	0x4fe0 <tp_edge_report_limit_write+0x1d8>
    51bc: 94000000     	bl	0x51bc <tp_edge_report_limit_write+0x3b4>
		00000000000051bc:  R_AARCH64_CALL26	__stack_chk_fail
