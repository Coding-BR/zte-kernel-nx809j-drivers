
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000160bc <syna_testing_pt0a_show>:
   160bc: d503233f     	paciasp
   160c0: d10343ff     	sub	sp, sp, #0xd0
   160c4: a9077bfd     	stp	x29, x30, [sp, #0x70]
   160c8: a9086ffc     	stp	x28, x27, [sp, #0x80]
   160cc: a90967fa     	stp	x26, x25, [sp, #0x90]
   160d0: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   160d4: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   160d8: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   160dc: 9101c3fd     	add	x29, sp, #0x70
   160e0: d5384108     	mrs	x8, SP_EL0
   160e4: aa0203f3     	mov	x19, x2
   160e8: f9438908     	ldr	x8, [x8, #0x710]
   160ec: f81f83a8     	stur	x8, [x29, #-0x8]
   160f0: f9400c08     	ldr	x8, [x0, #0x18]
   160f4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   160f8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   160fc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   16100: f9400d08     	ldr	x8, [x8, #0x18]
   16104: f9000fff     	str	xzr, [sp, #0x18]
   16108: f90007ff     	str	xzr, [sp, #0x8]
   1610c: f9404d18     	ldr	x24, [x8, #0x98]
   16110: f9001bff     	str	xzr, [sp, #0x30]
   16114: 39560b08     	ldrb	w8, [x24, #0x582]
   16118: 36000c68     	tbz	w8, #0x0, 0x162a4 <syna_testing_pt0a_show+0x1e8>
   1611c: 94000000     	bl	0x1611c <syna_testing_pt0a_show+0x60>
		000000000001611c:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   16120: b4000e20     	cbz	x0, 0x162e4 <syna_testing_pt0a_show+0x228>
   16124: f9400308     	ldr	x8, [x24]
   16128: 910083f5     	add	x21, sp, #0x20
   1612c: aa0003f4     	mov	x20, x0
   16130: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   16134: 91000021     	add	x1, x1, #0x0
		0000000000016134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   16138: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016138:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   1613c: 91000042     	add	x2, x2, #0x0
		000000000001613c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   16140: b9402108     	ldr	w8, [x8, #0x20]
   16144: b9002408     	str	w8, [x0, #0x24]
   16148: f9400308     	ldr	x8, [x24]
   1614c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   16150: b9401d08     	ldr	w8, [x8, #0x1c]
   16154: b9002008     	str	w8, [x0, #0x20]
   16158: 910042a0     	add	x0, x21, #0x10
   1615c: 390183ff     	strb	wzr, [sp, #0x60]
   16160: 94000000     	bl	0x16160 <syna_testing_pt0a_show+0xa4>
		0000000000016160:  R_AARCH64_CALL26	__mutex_init
   16164: 90000008     	adrp	x8, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x13f8
   16168: 91000108     	add	x8, x8, #0x0
		0000000000016168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x13f8
   1616c: 90000009     	adrp	x9, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001616c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2078
   16170: 91000129     	add	x9, x9, #0x0
		0000000000016170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2078
   16174: f9000be8     	str	x8, [sp, #0x10]
   16178: 52819008     	mov	w8, #0xc80              // =3200
   1617c: b9001be8     	str	w8, [sp, #0x18]
   16180: aa1403e1     	mov	x1, x20
   16184: 2a1f03e2     	mov	w2, wzr
   16188: f90003e9     	str	x9, [sp]
   1618c: 910043e9     	add	x9, sp, #0x10
   16190: b9000be8     	str	w8, [sp, #0x8]
   16194: 910003e8     	mov	x8, sp
   16198: f9006e95     	str	x21, [x20, #0xd8]
   1619c: a903a289     	stp	x9, x8, [x20, #0x38]
   161a0: f9400e88     	ldr	x8, [x20, #0x18]
   161a4: f9400300     	ldr	x0, [x24]
   161a8: b85fc110     	ldur	w16, [x8, #-0x4]
   161ac: 72895251     	movk	w17, #0x4a92
   161b0: 72b03811     	movk	w17, #0x81c0, lsl #16
   161b4: 6b11021f     	cmp	w16, w17
   161b8: 54000040     	b.eq	0x161c0 <syna_testing_pt0a_show+0x104>
   161bc: d4304500     	brk	#0x8228
   161c0: d63f0100     	blr	x8
   161c4: 37f80ba0     	tbnz	w0, #0x1f, 0x16338 <syna_testing_pt0a_show+0x27c>
   161c8: 39404288     	ldrb	w8, [x20, #0x10]
   161cc: 90000009     	adrp	x9, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000161cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   161d0: 91000129     	add	x9, x9, #0x0
		00000000000161d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   161d4: 7100011f     	cmp	w8, #0x0
   161d8: 90000008     	adrp	x8, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000161d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   161dc: 91000108     	add	x8, x8, #0x0
		00000000000161dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   161e0: 9a891105     	csel	x5, x8, x9, ne
   161e4: f9400683     	ldr	x3, [x20, #0x8]
   161e8: b9400284     	ldr	w4, [x20]
   161ec: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000161ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   161f0: 91000042     	add	x2, x2, #0x0
		00000000000161f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   161f4: aa1303e0     	mov	x0, x19
   161f8: 52820001     	mov	w1, #0x1000             // =4096
   161fc: 94000000     	bl	0x161fc <syna_testing_pt0a_show+0x140>
		00000000000161fc:  R_AARCH64_CALL26	scnprintf
   16200: b9402fe8     	ldr	w8, [sp, #0x2c]
   16204: 2a0003f5     	mov	w21, w0
   16208: 340005a8     	cbz	w8, 0x162bc <syna_testing_pt0a_show+0x200>
   1620c: b9402288     	ldr	w8, [x20, #0x20]
   16210: 34000568     	cbz	w8, 0x162bc <syna_testing_pt0a_show+0x200>
   16214: f94013fa     	ldr	x26, [sp, #0x20]
   16218: 2a1f03f9     	mov	w25, wzr
   1621c: 90000016     	adrp	x22, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001621c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   16220: 910002d6     	add	x22, x22, #0x0
		0000000000016220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   16224: 5282001b     	mov	w27, #0x1000            // =4096
   16228: 90000017     	adrp	x23, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0ee
   1622c: 910002f7     	add	x23, x23, #0x0
		000000000001622c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0ee
   16230: 1400000b     	b	0x1625c <syna_testing_pt0a_show+0x1a0>
   16234: 2a1503e8     	mov	w8, w21
   16238: aa1603e2     	mov	x2, x22
   1623c: cb080361     	sub	x1, x27, x8
   16240: 8b080260     	add	x0, x19, x8
   16244: 94000000     	bl	0x16244 <syna_testing_pt0a_show+0x188>
		0000000000016244:  R_AARCH64_CALL26	scnprintf
   16248: b9402288     	ldr	w8, [x20, #0x20]
   1624c: 11000739     	add	w25, w25, #0x1
   16250: 0b150015     	add	w21, w0, w21
   16254: 6b08033f     	cmp	w25, w8
   16258: 54000322     	b.hs	0x162bc <syna_testing_pt0a_show+0x200>
   1625c: b9402688     	ldr	w8, [x20, #0x24]
   16260: 34fffea8     	cbz	w8, 0x16234 <syna_testing_pt0a_show+0x178>
   16264: 2a1f03fc     	mov	w28, wzr
   16268: f9400308     	ldr	x8, [x24]
   1626c: 2a1503e9     	mov	w9, w21
   16270: aa1703e2     	mov	x2, x23
   16274: cb090361     	sub	x1, x27, x9
   16278: 8b090260     	add	x0, x19, x9
   1627c: b9402108     	ldr	w8, [x8, #0x20]
   16280: 1b087328     	madd	w8, w25, w8, w28
   16284: 78e85b43     	ldrsh	w3, [x26, w8, uxtw #1]
   16288: 94000000     	bl	0x16288 <syna_testing_pt0a_show+0x1cc>
		0000000000016288:  R_AARCH64_CALL26	scnprintf
   1628c: b9402688     	ldr	w8, [x20, #0x24]
   16290: 1100079c     	add	w28, w28, #0x1
   16294: 0b150015     	add	w21, w0, w21
   16298: 6b08039f     	cmp	w28, w8
   1629c: 54fffe63     	b.lo	0x16268 <syna_testing_pt0a_show+0x1ac>
   162a0: 17ffffe5     	b	0x16234 <syna_testing_pt0a_show+0x178>
   162a4: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000162a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   162a8: 91000042     	add	x2, x2, #0x0
		00000000000162a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   162ac: aa1303e0     	mov	x0, x19
   162b0: 52820001     	mov	w1, #0x1000             // =4096
   162b4: 94000000     	bl	0x162b4 <syna_testing_pt0a_show+0x1f8>
		00000000000162b4:  R_AARCH64_CALL26	scnprintf
   162b8: 14000011     	b	0x162fc <syna_testing_pt0a_show+0x240>
   162bc: 394183e2     	ldrb	w2, [sp, #0x60]
   162c0: 350004e2     	cbnz	w2, 0x1635c <syna_testing_pt0a_show+0x2a0>
   162c4: f94013f3     	ldr	x19, [sp, #0x20]
   162c8: 94000000     	bl	0x162c8 <syna_testing_pt0a_show+0x20c>
		00000000000162c8:  R_AARCH64_CALL26	syna_request_managed_device
   162cc: b4000540     	cbz	x0, 0x16374 <syna_testing_pt0a_show+0x2b8>
   162d0: b4000073     	cbz	x19, 0x162dc <syna_testing_pt0a_show+0x220>
   162d4: aa1303e1     	mov	x1, x19
   162d8: 94000000     	bl	0x162d8 <syna_testing_pt0a_show+0x21c>
		00000000000162d8:  R_AARCH64_CALL26	devm_kfree
   162dc: 2a1503e0     	mov	w0, w21
   162e0: 14000008     	b	0x16300 <syna_testing_pt0a_show+0x244>
   162e4: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000162e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   162e8: 91000042     	add	x2, x2, #0x0
		00000000000162e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   162ec: aa1303e0     	mov	x0, x19
   162f0: 52820001     	mov	w1, #0x1000             // =4096
   162f4: 52814003     	mov	w3, #0xa00              // =2560
   162f8: 94000000     	bl	0x162f8 <syna_testing_pt0a_show+0x23c>
		00000000000162f8:  R_AARCH64_CALL26	scnprintf
   162fc: 93407c00     	sxtw	x0, w0
   16300: d5384108     	mrs	x8, SP_EL0
   16304: f9438908     	ldr	x8, [x8, #0x710]
   16308: f85f83a9     	ldur	x9, [x29, #-0x8]
   1630c: eb09011f     	cmp	x8, x9
   16310: 540003e1     	b.ne	0x1638c <syna_testing_pt0a_show+0x2d0>
   16314: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   16318: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   1631c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   16320: a94967fa     	ldp	x26, x25, [sp, #0x90]
   16324: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   16328: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   1632c: 910343ff     	add	sp, sp, #0xd0
   16330: d50323bf     	autiasp
   16334: d65f03c0     	ret
   16338: f9400682     	ldr	x2, [x20, #0x8]
   1633c: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001633c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   16340: 91000000     	add	x0, x0, #0x0
		0000000000016340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   16344: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9280
   16348: 91000021     	add	x1, x1, #0x0
		0000000000016348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9280
   1634c: 94000000     	bl	0x1634c <syna_testing_pt0a_show+0x290>
		000000000001634c:  R_AARCH64_CALL26	_printk
   16350: 90000005     	adrp	x5, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   16354: 910000a5     	add	x5, x5, #0x0
		0000000000016354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   16358: 17ffffa3     	b	0x161e4 <syna_testing_pt0a_show+0x128>
   1635c: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001635c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   16360: 91000000     	add	x0, x0, #0x0
		0000000000016360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   16364: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   16368: 91000021     	add	x1, x1, #0x0
		0000000000016368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   1636c: 94000000     	bl	0x1636c <syna_testing_pt0a_show+0x2b0>
		000000000001636c:  R_AARCH64_CALL26	_printk
   16370: 17ffffd5     	b	0x162c4 <syna_testing_pt0a_show+0x208>
   16374: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   16378: 91000000     	add	x0, x0, #0x0
		0000000000016378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1637c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001637c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   16380: 91000021     	add	x1, x1, #0x0
		0000000000016380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   16384: 94000000     	bl	0x16384 <syna_testing_pt0a_show+0x2c8>
		0000000000016384:  R_AARCH64_CALL26	_printk
   16388: 17ffffd5     	b	0x162dc <syna_testing_pt0a_show+0x220>
   1638c: 94000000     	bl	0x1638c <syna_testing_pt0a_show+0x2d0>
		000000000001638c:  R_AARCH64_CALL26	__stack_chk_fail
