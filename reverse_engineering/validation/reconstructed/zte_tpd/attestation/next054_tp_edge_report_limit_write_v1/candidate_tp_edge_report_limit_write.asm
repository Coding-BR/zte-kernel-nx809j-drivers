
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d168 <tp_edge_report_limit_write>:
   1d168: d503233f     	paciasp
   1d16c: d10343ff     	sub	sp, sp, #0xd0
   1d170: a9087bfd     	stp	x29, x30, [sp, #0x80]
   1d174: f9004bf9     	str	x25, [sp, #0x90]
   1d178: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   1d17c: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   1d180: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   1d184: 910203fd     	add	x29, sp, #0x80
   1d188: d5384108     	mrs	x8, SP_EL0
   1d18c: aa0103f4     	mov	x20, x1
   1d190: f9438908     	ldr	x8, [x8, #0x710]
   1d194: f101905f     	cmp	x2, #0x64
   1d198: f81f83a8     	stur	x8, [x29, #-0x8]
   1d19c: 90000008     	adrp	x8, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d19c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1d1a0: a9007fff     	stp	xzr, xzr, [sp]
   1d1a4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   1d1a8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1d1ac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   1d1b0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   1d1b4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   1d1b8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1d1bc: d5384109     	mrs	x9, SP_EL0
   1d1c0: f9400116     	ldr	x22, [x8]
		000000000001d1c0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1d1c4: 52800c88     	mov	w8, #0x64               // =100
   1d1c8: f9000bff     	str	xzr, [sp, #0x10]
   1d1cc: 9a88b053     	csel	x19, x2, x8, lt
   1d1d0: b40000c1     	cbz	x1, 0x1d1e8 <tp_edge_report_limit_write+0x80>
   1d1d4: 910043e0     	add	x0, sp, #0x10
   1d1d8: aa1403e1     	mov	x1, x20
   1d1dc: aa1303e2     	mov	x2, x19
   1d1e0: 94000000     	bl	0x1d1e0 <tp_edge_report_limit_write+0x78>
		000000000001d1e0:  R_AARCH64_CALL26	_inline_copy_from_user
   1d1e4: b50007a0     	cbnz	x0, 0x1d2d8 <tp_edge_report_limit_write+0x170>
   1d1e8: 910043e0     	add	x0, sp, #0x10
   1d1ec: 94000000     	bl	0x1d1ec <tp_edge_report_limit_write+0x84>
		000000000001d1ec:  R_AARCH64_CALL26	get_tp_algo_item_id
   1d1f0: 36f80340     	tbz	w0, #0x1f, 0x1d258 <tp_edge_report_limit_write+0xf0>
   1d1f4: 910023e3     	add	x3, sp, #0x8
   1d1f8: aa1403e0     	mov	x0, x20
   1d1fc: aa1303e1     	mov	x1, x19
   1d200: 52800142     	mov	w2, #0xa                // =10
   1d204: 94000000     	bl	0x1d204 <tp_edge_report_limit_write+0x9c>
		000000000001d204:  R_AARCH64_CALL26	kstrtouint_from_user
   1d208: 35000080     	cbnz	w0, 0x1d218 <tp_edge_report_limit_write+0xb0>
   1d20c: f94007e8     	ldr	x8, [sp, #0x8]
   1d210: 7100291f     	cmp	w8, #0xa
   1d214: 540009c9     	b.ls	0x1d34c <tp_edge_report_limit_write+0x1e4>
   1d218: 928002b3     	mov	x19, #-0x16             // =-22
   1d21c: d5384108     	mrs	x8, SP_EL0
   1d220: f9438908     	ldr	x8, [x8, #0x710]
   1d224: d5384109     	mrs	x9, SP_EL0
   1d228: f85f83a9     	ldur	x9, [x29, #-0x8]
   1d22c: eb09011f     	cmp	x8, x9
   1d230: 540016c1     	b.ne	0x1d508 <tp_edge_report_limit_write+0x3a0>
   1d234: aa1303e0     	mov	x0, x19
   1d238: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   1d23c: f9404bf9     	ldr	x25, [sp, #0x90]
   1d240: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   1d244: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   1d248: a9487bfd     	ldp	x29, x30, [sp, #0x80]
   1d24c: 910343ff     	add	sp, sp, #0xd0
   1d250: d50323bf     	autiasp
   1d254: d65f03c0     	ret
   1d258: 2a0003f5     	mov	w21, w0
   1d25c: 910043e0     	add	x0, sp, #0x10
   1d260: 52800741     	mov	w1, #0x3a               // =58
   1d264: 94000000     	bl	0x1d264 <tp_edge_report_limit_write+0xfc>
		000000000001d264:  R_AARCH64_CALL26	strchr
   1d268: 91000414     	add	x20, x0, #0x1
   1d26c: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d26c:  R_AARCH64_ADR_PREL_PG_HI21	unk_31887
   1d270: 91000000     	add	x0, x0, #0x0
		000000000001d270:  R_AARCH64_ADD_ABS_LO12_NC	unk_31887
   1d274: aa1403e1     	mov	x1, x20
   1d278: aa1f03e2     	mov	x2, xzr
   1d27c: f90003f4     	str	x20, [sp]
   1d280: 94000000     	bl	0x1d280 <tp_edge_report_limit_write+0x118>
		000000000001d280:  R_AARCH64_CALL26	_printk
   1d284: 2a1503e8     	mov	w8, w21
   1d288: 71000abf     	cmp	w21, #0x2
   1d28c: 54000328     	b.hi	0x1d2f0 <tp_edge_report_limit_write+0x188>
   1d290: 54000d80     	b.eq	0x1d440 <tp_edge_report_limit_write+0x2d8>
   1d294: 7100051f     	cmp	w8, #0x1
   1d298: 54000ea0     	b.eq	0x1d46c <tp_edge_report_limit_write+0x304>
   1d29c: 350012a8     	cbnz	w8, 0x1d4f0 <tp_edge_report_limit_write+0x388>
   1d2a0: 910023e8     	add	x8, sp, #0x8
   1d2a4: aa1403e0     	mov	x0, x20
   1d2a8: 52800141     	mov	w1, #0xa                // =10
   1d2ac: b27e0102     	orr	x2, x8, #0x4
   1d2b0: 94000000     	bl	0x1d2b0 <tp_edge_report_limit_write+0x148>
		000000000001d2b0:  R_AARCH64_CALL26	kstrtouint
   1d2b4: 35fffb40     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d2b8: b9400fe8     	ldr	w8, [sp, #0xc]
   1d2bc: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d2bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_37521
   1d2c0: 91000000     	add	x0, x0, #0x0
		000000000001d2c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_37521
   1d2c4: 7100011f     	cmp	w8, #0x0
   1d2c8: 1a9f07e1     	cset	w1, ne
   1d2cc: b9000fe1     	str	w1, [sp, #0xc]
   1d2d0: 39006ec1     	strb	w1, [x22, #0x1b]
   1d2d4: 14000079     	b	0x1d4b8 <tp_edge_report_limit_write+0x350>
   1d2d8: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d2d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33B59
   1d2dc: 91000000     	add	x0, x0, #0x0
		000000000001d2dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33B59
   1d2e0: aa1f03e1     	mov	x1, xzr
   1d2e4: aa1f03e2     	mov	x2, xzr
   1d2e8: 94000000     	bl	0x1d2e8 <tp_edge_report_limit_write+0x180>
		000000000001d2e8:  R_AARCH64_CALL26	_printk
   1d2ec: 17ffffcb     	b	0x1d218 <tp_edge_report_limit_write+0xb0>
   1d2f0: 7100111f     	cmp	w8, #0x4
   1d2f4: 540004c8     	b.hi	0x1d38c <tp_edge_report_limit_write+0x224>
   1d2f8: 910023e9     	add	x9, sp, #0x8
   1d2fc: aa1403e0     	mov	x0, x20
   1d300: 52800141     	mov	w1, #0xa                // =10
   1d304: b27e0122     	orr	x2, x9, #0x4
   1d308: 2a0803f5     	mov	w21, w8
   1d30c: 94000000     	bl	0x1d30c <tp_edge_report_limit_write+0x1a4>
		000000000001d30c:  R_AARCH64_CALL26	kstrtouint
   1d310: 71000ebf     	cmp	w21, #0x3
   1d314: 54000c21     	b.ne	0x1d498 <tp_edge_report_limit_write+0x330>
   1d318: 35fff820     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d31c: 394033e1     	ldrb	w1, [sp, #0xc]
   1d320: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d320:  R_AARCH64_ADR_PREL_PG_HI21	unk_38CA5
   1d324: 91000000     	add	x0, x0, #0x0
		000000000001d324:  R_AARCH64_ADD_ABS_LO12_NC	unk_38CA5
   1d328: aa1f03e2     	mov	x2, xzr
   1d32c: 39009ac1     	strb	w1, [x22, #0x26]
   1d330: 94000000     	bl	0x1d330 <tp_edge_report_limit_write+0x1c8>
		000000000001d330:  R_AARCH64_CALL26	_printk
   1d334: 39409ac8     	ldrb	w8, [x22, #0x26]
   1d338: 39009ec8     	strb	w8, [x22, #0x27]
   1d33c: 3900a2c8     	strb	w8, [x22, #0x28]
   1d340: 3900a6c8     	strb	w8, [x22, #0x29]
   1d344: 3900aac8     	strb	w8, [x22, #0x2a]
   1d348: 17ffffb5     	b	0x1d21c <tp_edge_report_limit_write+0xb4>
   1d34c: 794886c9     	ldrh	w9, [x22, #0x442]
   1d350: 7100191f     	cmp	w8, #0x6
   1d354: 3900e2c8     	strb	w8, [x22, #0x38]
   1d358: 54000563     	b.lo	0x1d404 <tp_edge_report_limit_write+0x29c>
   1d35c: d341fd2a     	lsr	x10, x9, #1
   1d360: 5290626b     	mov	w11, #0x8313            // =33555
   1d364: 9bab7d4a     	umull	x10, w10, w11
   1d368: 5298550b     	mov	w11, #0xc2a8            // =49832
   1d36c: 72a11eab     	movk	w11, #0x8f5, lsl #16
   1d370: 9bab7d29     	umull	x9, w9, w11
   1d374: 529fff6b     	mov	w11, #0xfffb            // =65531
   1d378: d356fd4a     	lsr	x10, x10, #22
   1d37c: 0b0b010b     	add	w11, w8, w11
   1d380: d360fd29     	lsr	x9, x9, #32
   1d384: 1b0a2569     	madd	w9, w11, w10, w9
   1d388: 14000026     	b	0x1d420 <tp_edge_report_limit_write+0x2b8>
   1d38c: 7100151f     	cmp	w8, #0x5
   1d390: 540009a0     	b.eq	0x1d4c4 <tp_edge_report_limit_write+0x35c>
   1d394: 7100191f     	cmp	w8, #0x6
   1d398: 54000ac1     	b.ne	0x1d4f0 <tp_edge_report_limit_write+0x388>
   1d39c: aa1f03f4     	mov	x20, xzr
   1d3a0: 910023f7     	add	x23, sp, #0x8
   1d3a4: 90000015     	adrp	x21, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d3a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2681
   1d3a8: 910002b5     	add	x21, x21, #0x0
		000000000001d3a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2681
   1d3ac: 9100d2d8     	add	x24, x22, #0x34
   1d3b0: 90000016     	adrp	x22, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d3b0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CA2F
   1d3b4: 910002d6     	add	x22, x22, #0x0
		000000000001d3b4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CA2F
   1d3b8: 910003e0     	mov	x0, sp
   1d3bc: aa1503e1     	mov	x1, x21
   1d3c0: 94000000     	bl	0x1d3c0 <tp_edge_report_limit_write+0x258>
		000000000001d3c0:  R_AARCH64_CALL26	strsep
   1d3c4: b4fff2c0     	cbz	x0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d3c8: b27e02e2     	orr	x2, x23, #0x4
   1d3cc: 52800141     	mov	w1, #0xa                // =10
   1d3d0: 94000000     	bl	0x1d3d0 <tp_edge_report_limit_write+0x268>
		000000000001d3d0:  R_AARCH64_CALL26	kstrtouint
   1d3d4: 34000080     	cbz	w0, 0x1d3e4 <tp_edge_report_limit_write+0x27c>
   1d3d8: f100129f     	cmp	x20, #0x4
   1d3dc: 54fffee3     	b.lo	0x1d3b8 <tp_edge_report_limit_write+0x250>
   1d3e0: 17ffff8f     	b	0x1d21c <tp_edge_report_limit_write+0xb4>
   1d3e4: 394033e2     	ldrb	w2, [sp, #0xc]
   1d3e8: aa1603e0     	mov	x0, x22
   1d3ec: 2a1403e1     	mov	w1, w20
   1d3f0: 38346b02     	strb	w2, [x24, x20]
   1d3f4: 91000699     	add	x25, x20, #0x1
   1d3f8: 94000000     	bl	0x1d3f8 <tp_edge_report_limit_write+0x290>
		000000000001d3f8:  R_AARCH64_CALL26	_printk
   1d3fc: aa1903f4     	mov	x20, x25
   1d400: 17fffff6     	b	0x1d3d8 <tp_edge_report_limit_write+0x270>
   1d404: 1b097d09     	mul	w9, w8, w9
   1d408: 531d712a     	lsl	w10, w9, #3
   1d40c: 4b090149     	sub	w9, w10, w9
   1d410: 5289ba6a     	mov	w10, #0x4dd3            // =19923
   1d414: 72a20c4a     	movk	w10, #0x1062, lsl #16
   1d418: 9baa7d29     	umull	x9, w9, w10
   1d41c: d366fd29     	lsr	x9, x9, #38
   1d420: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d420:  R_AARCH64_ADR_PREL_PG_HI21	unk_328F9
   1d424: 91000000     	add	x0, x0, #0x0
		000000000001d424:  R_AARCH64_ADD_ABS_LO12_NC	unk_328F9
   1d428: 92407d01     	and	x1, x8, #0xffffffff
   1d42c: 12003d22     	and	w2, w9, #0xffff
   1d430: 79005ac9     	strh	w9, [x22, #0x2c]
   1d434: 79005edf     	strh	wzr, [x22, #0x2e]
   1d438: 94000000     	bl	0x1d438 <tp_edge_report_limit_write+0x2d0>
		000000000001d438:  R_AARCH64_CALL26	_printk
   1d43c: 17ffff78     	b	0x1d21c <tp_edge_report_limit_write+0xb4>
   1d440: 910023e8     	add	x8, sp, #0x8
   1d444: aa1403e0     	mov	x0, x20
   1d448: 52800141     	mov	w1, #0xa                // =10
   1d44c: b27e0102     	orr	x2, x8, #0x4
   1d450: 94000000     	bl	0x1d450 <tp_edge_report_limit_write+0x2e8>
		000000000001d450:  R_AARCH64_CALL26	kstrtouint
   1d454: 35ffee40     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d458: 79401be1     	ldrh	w1, [sp, #0xc]
   1d45c: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d45c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33421
   1d460: 91000000     	add	x0, x0, #0x0
		000000000001d460:  R_AARCH64_ADD_ABS_LO12_NC	unk_33421
   1d464: 79007ec1     	strh	w1, [x22, #0x3e]
   1d468: 14000025     	b	0x1d4fc <tp_edge_report_limit_write+0x394>
   1d46c: 910023e8     	add	x8, sp, #0x8
   1d470: aa1403e0     	mov	x0, x20
   1d474: 52800141     	mov	w1, #0xa                // =10
   1d478: b27e0102     	orr	x2, x8, #0x4
   1d47c: 94000000     	bl	0x1d47c <tp_edge_report_limit_write+0x314>
		000000000001d47c:  R_AARCH64_CALL26	kstrtouint
   1d480: 35ffece0     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d484: 394033e1     	ldrb	w1, [sp, #0xc]
   1d488: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d488:  R_AARCH64_ADR_PREL_PG_HI21	unk_39CF4
   1d48c: 91000000     	add	x0, x0, #0x0
		000000000001d48c:  R_AARCH64_ADD_ABS_LO12_NC	unk_39CF4
   1d490: 390092c1     	strb	w1, [x22, #0x24]
   1d494: 1400001a     	b	0x1d4fc <tp_edge_report_limit_write+0x394>
   1d498: 35ffec20     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d49c: b9400fe8     	ldr	w8, [sp, #0xc]
   1d4a0: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d4a0:  R_AARCH64_ADR_PREL_PG_HI21	unk_380F6
   1d4a4: 91000000     	add	x0, x0, #0x0
		000000000001d4a4:  R_AARCH64_ADD_ABS_LO12_NC	unk_380F6
   1d4a8: 7100011f     	cmp	w8, #0x0
   1d4ac: 1a9f07e1     	cset	w1, ne
   1d4b0: b9000fe1     	str	w1, [sp, #0xc]
   1d4b4: 390096c1     	strb	w1, [x22, #0x25]
   1d4b8: aa1f03e2     	mov	x2, xzr
   1d4bc: 94000000     	bl	0x1d4bc <tp_edge_report_limit_write+0x354>
		000000000001d4bc:  R_AARCH64_CALL26	_printk
   1d4c0: 17ffff57     	b	0x1d21c <tp_edge_report_limit_write+0xb4>
   1d4c4: 910023e8     	add	x8, sp, #0x8
   1d4c8: aa1403e0     	mov	x0, x20
   1d4cc: 52800141     	mov	w1, #0xa                // =10
   1d4d0: b27e0102     	orr	x2, x8, #0x4
   1d4d4: 94000000     	bl	0x1d4d4 <tp_edge_report_limit_write+0x36c>
		000000000001d4d4:  R_AARCH64_CALL26	kstrtouint
   1d4d8: 35ffea20     	cbnz	w0, 0x1d21c <tp_edge_report_limit_write+0xb4>
   1d4dc: 79401be1     	ldrh	w1, [sp, #0xc]
   1d4e0: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d4e0:  R_AARCH64_ADR_PREL_PG_HI21	unk_37521
   1d4e4: 91000000     	add	x0, x0, #0x0
		000000000001d4e4:  R_AARCH64_ADD_ABS_LO12_NC	unk_37521
   1d4e8: 79007ac1     	strh	w1, [x22, #0x3c]
   1d4ec: 14000004     	b	0x1d4fc <tp_edge_report_limit_write+0x394>
   1d4f0: 90000000     	adrp	x0, 0x1d000 <tp_edge_report_limit_read+0x2a8>
		000000000001d4f0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B681
   1d4f4: 91000000     	add	x0, x0, #0x0
		000000000001d4f4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B681
   1d4f8: aa1f03e1     	mov	x1, xzr
   1d4fc: aa1f03e2     	mov	x2, xzr
   1d500: 94000000     	bl	0x1d500 <tp_edge_report_limit_write+0x398>
		000000000001d500:  R_AARCH64_CALL26	_printk
   1d504: 17ffff46     	b	0x1d21c <tp_edge_report_limit_write+0xb4>
   1d508: 94000000     	bl	0x1d508 <tp_edge_report_limit_write+0x3a0>
		000000000001d508:  R_AARCH64_CALL26	__stack_chk_fail
