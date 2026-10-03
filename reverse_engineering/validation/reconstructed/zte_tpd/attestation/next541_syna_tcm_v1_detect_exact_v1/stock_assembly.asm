
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001808c <syna_tcm_v1_detect>:
   1808c: d503233f     	paciasp
   18090: d10103ff     	sub	sp, sp, #0x40
   18094: a9017bfd     	stp	x29, x30, [sp, #0x10]
   18098: a90257f6     	stp	x22, x21, [sp, #0x20]
   1809c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   180a0: 910043fd     	add	x29, sp, #0x10
   180a4: d5384108     	mrs	x8, SP_EL0
   180a8: f9438908     	ldr	x8, [x8, #0x710]
   180ac: f90007e8     	str	x8, [sp, #0x8]
   180b0: 390013ff     	strb	wzr, [sp, #0x4]
   180b4: b4000c00     	cbz	x0, 0x18234 <syna_tcm_v1_detect+0x1a8>
   180b8: aa0003f3     	mov	x19, x0
   180bc: 360002a1     	tbz	w1, #0x0, 0x18110 <syna_tcm_v1_detect+0x84>
   180c0: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000180c0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x18fb0
   180c4: 91000108     	add	x8, x8, #0x0
		00000000000180c4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x18fb0
   180c8: 2a1f03e0     	mov	w0, wzr
   180cc: f901ca68     	str	x8, [x19, #0x390]
   180d0: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000180d0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x18624
   180d4: 91000108     	add	x8, x8, #0x0
		00000000000180d4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x18624
   180d8: f901ce68     	str	x8, [x19, #0x398]
   180dc: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000180dc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a520
   180e0: 91000108     	add	x8, x8, #0x0
		00000000000180e0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a520
   180e4: f901d668     	str	x8, [x19, #0x3a8]
   180e8: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000180e8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x18f08
   180ec: 91000108     	add	x8, x8, #0x0
		00000000000180ec:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x18f08
   180f0: f901da68     	str	x8, [x19, #0x3b0]
   180f4: 90000008     	adrp	x8, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000180f4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1a5dc
   180f8: 91000108     	add	x8, x8, #0x0
		00000000000180f8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1a5dc
   180fc: f901d268     	str	x8, [x19, #0x3a0]
   18100: 52800028     	mov	w8, #0x1                // =1
   18104: b9037e7f     	str	wzr, [x19, #0x37c]
   18108: 39002268     	strb	w8, [x19, #0x8]
   1810c: 1400003f     	b	0x18208 <syna_tcm_v1_detect+0x17c>
   18110: 910d2260     	add	x0, x19, #0x348
   18114: 2a0203f6     	mov	w22, w2
   18118: 94000000     	bl	0x18118 <syna_tcm_v1_detect+0x8c>
		0000000000018118:  R_AARCH64_CALL26	mutex_lock
   1811c: 394a0262     	ldrb	w2, [x19, #0x280]
   18120: 35000982     	cbnz	w2, 0x18250 <syna_tcm_v1_detect+0x1c4>
   18124: 91094260     	add	x0, x19, #0x250
   18128: 91090274     	add	x20, x19, #0x240
   1812c: 94000000     	bl	0x1812c <syna_tcm_v1_detect+0xa0>
		000000000001812c:  R_AARCH64_CALL26	mutex_lock
   18130: 394a0268     	ldrb	w8, [x19, #0x280]
   18134: b9424a75     	ldr	w21, [x19, #0x248]
   18138: f9412260     	ldr	x0, [x19, #0x240]
   1813c: 11000508     	add	w8, w8, #0x1
   18140: 7100d6bf     	cmp	w21, #0x35
   18144: 390a0268     	strb	w8, [x19, #0x280]
   18148: 54000208     	b.hi	0x18188 <syna_tcm_v1_detect+0xfc>
   1814c: b40000c0     	cbz	x0, 0x18164 <syna_tcm_v1_detect+0xd8>
   18150: aa0003f5     	mov	x21, x0
   18154: 94000000     	bl	0x18154 <syna_tcm_v1_detect+0xc8>
		0000000000018154:  R_AARCH64_CALL26	syna_request_managed_device
   18158: b40016a0     	cbz	x0, 0x1842c <syna_tcm_v1_detect+0x3a0>
   1815c: aa1503e1     	mov	x1, x21
   18160: 94000000     	bl	0x18160 <syna_tcm_v1_detect+0xd4>
		0000000000018160:  R_AARCH64_CALL26	devm_kfree
   18164: 94000000     	bl	0x18164 <syna_tcm_v1_detect+0xd8>
		0000000000018164:  R_AARCH64_CALL26	syna_request_managed_device
   18168: b4001700     	cbz	x0, 0x18448 <syna_tcm_v1_detect+0x3bc>
   1816c: 528006c1     	mov	w1, #0x36               // =54
   18170: 5281b802     	mov	w2, #0xdc0              // =3520
   18174: 528006d5     	mov	w21, #0x36              // =54
   18178: 94000000     	bl	0x18178 <syna_tcm_v1_detect+0xec>
		0000000000018178:  R_AARCH64_CALL26	devm_kmalloc
   1817c: f9000280     	str	x0, [x20]
   18180: b4001700     	cbz	x0, 0x18460 <syna_tcm_v1_detect+0x3d4>
   18184: b9024a75     	str	w21, [x19, #0x248]
   18188: 2a1503e2     	mov	w2, w21
   1818c: 2a1f03e1     	mov	w1, wzr
   18190: 94000000     	bl	0x18190 <syna_tcm_v1_detect+0x104>
		0000000000018190:  R_AARCH64_CALL26	memset
   18194: f9402660     	ldr	x0, [x19, #0x48]
   18198: b9024e7f     	str	wzr, [x19, #0x24c]
   1819c: b4000660     	cbz	x0, 0x18268 <syna_tcm_v1_detect+0x1dc>
   181a0: f9401008     	ldr	x8, [x0, #0x20]
   181a4: b40006a8     	cbz	x8, 0x18278 <syna_tcm_v1_detect+0x1ec>
   181a8: f9412275     	ldr	x21, [x19, #0x240]
   181ac: 528006c2     	mov	w2, #0x36               // =54
   181b0: aa1503e1     	mov	x1, x21
   181b4: b85fc110     	ldur	w16, [x8, #-0x4]
   181b8: 728403f1     	movk	w17, #0x201f
   181bc: 72a51491     	movk	w17, #0x28a4, lsl #16
   181c0: 6b11021f     	cmp	w16, w17
   181c4: 54000040     	b.eq	0x181cc <syna_tcm_v1_detect+0x140>
   181c8: d4304500     	brk	#0x8228
   181cc: d63f0100     	blr	x8
   181d0: 37f80620     	tbnz	w0, #0x1f, 0x18294 <syna_tcm_v1_detect+0x208>
   181d4: 394a0262     	ldrb	w2, [x19, #0x280]
   181d8: 7100045f     	cmp	w2, #0x1
   181dc: 540007e1     	b.ne	0x182d8 <syna_tcm_v1_detect+0x24c>
   181e0: 2a1f03e8     	mov	w8, wzr
   181e4: 91094260     	add	x0, x19, #0x250
   181e8: 390a0268     	strb	w8, [x19, #0x280]
   181ec: 94000000     	bl	0x181ec <syna_tcm_v1_detect+0x160>
		00000000000181ec:  R_AARCH64_CALL26	mutex_unlock
   181f0: 910d2260     	add	x0, x19, #0x348
   181f4: 94000000     	bl	0x181f4 <syna_tcm_v1_detect+0x168>
		00000000000181f4:  R_AARCH64_CALL26	mutex_unlock
   181f8: 394002a8     	ldrb	w8, [x21]
   181fc: 7102951f     	cmp	w8, #0xa5
   18200: 540007c0     	b.eq	0x182f8 <syna_tcm_v1_detect+0x26c>
   18204: 12801e80     	mov	w0, #-0xf5              // =-245
   18208: d5384108     	mrs	x8, SP_EL0
   1820c: f9438908     	ldr	x8, [x8, #0x710]
   18210: f94007e9     	ldr	x9, [sp, #0x8]
   18214: eb09011f     	cmp	x8, x9
   18218: 54001a21     	b.ne	0x1855c <syna_tcm_v1_detect+0x4d0>
   1821c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   18220: a94257f6     	ldp	x22, x21, [sp, #0x20]
   18224: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   18228: 910103ff     	add	sp, sp, #0x40
   1822c: d50323bf     	autiasp
   18230: d65f03c0     	ret
   18234: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   18238: 91000000     	add	x0, x0, #0x0
		0000000000018238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1823c: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001823c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   18240: 91000021     	add	x1, x1, #0x0
		0000000000018240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   18244: 94000000     	bl	0x18244 <syna_tcm_v1_detect+0x1b8>
		0000000000018244:  R_AARCH64_CALL26	_printk
   18248: 12801e00     	mov	w0, #-0xf1              // =-241
   1824c: 17ffffef     	b	0x18208 <syna_tcm_v1_detect+0x17c>
   18250: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   18254: 91000000     	add	x0, x0, #0x0
		0000000000018254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   18258: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1825c: 91000021     	add	x1, x1, #0x0
		000000000001825c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   18260: 94000000     	bl	0x18260 <syna_tcm_v1_detect+0x1d4>
		0000000000018260:  R_AARCH64_CALL26	_printk
   18264: 17ffffb0     	b	0x18124 <syna_tcm_v1_detect+0x98>
   18268: 12801e14     	mov	w20, #-0xf1             // =-241
   1826c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001826c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   18270: 91000000     	add	x0, x0, #0x0
		0000000000018270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   18274: 14000004     	b	0x18284 <syna_tcm_v1_detect+0x1f8>
   18278: 12801e94     	mov	w20, #-0xf5             // =-245
   1827c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001827c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce6
   18280: 91000000     	add	x0, x0, #0x0
		0000000000018280:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce6
   18284: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd8
   18288: 91000021     	add	x1, x1, #0x0
		0000000000018288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd8
   1828c: 94000000     	bl	0x1828c <syna_tcm_v1_detect+0x200>
		000000000001828c:  R_AARCH64_CALL26	_printk
   18290: 14000002     	b	0x18298 <syna_tcm_v1_detect+0x20c>
   18294: 2a0003f4     	mov	w20, w0
   18298: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c97
   1829c: 91000000     	add	x0, x0, #0x0
		000000000001829c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c97
   182a0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000182a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   182a4: 91000021     	add	x1, x1, #0x0
		00000000000182a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   182a8: 94000000     	bl	0x182a8 <syna_tcm_v1_detect+0x21c>
		00000000000182a8:  R_AARCH64_CALL26	_printk
   182ac: 394a0262     	ldrb	w2, [x19, #0x280]
   182b0: 7100045f     	cmp	w2, #0x1
   182b4: 54001341     	b.ne	0x1851c <syna_tcm_v1_detect+0x490>
   182b8: 2a1f03e8     	mov	w8, wzr
   182bc: 91094260     	add	x0, x19, #0x250
   182c0: 390a0268     	strb	w8, [x19, #0x280]
   182c4: 94000000     	bl	0x182c4 <syna_tcm_v1_detect+0x238>
		00000000000182c4:  R_AARCH64_CALL26	mutex_unlock
   182c8: 910d2260     	add	x0, x19, #0x348
   182cc: 94000000     	bl	0x182cc <syna_tcm_v1_detect+0x240>
		00000000000182cc:  R_AARCH64_CALL26	mutex_unlock
   182d0: 2a1403e0     	mov	w0, w20
   182d4: 17ffffcd     	b	0x18208 <syna_tcm_v1_detect+0x17c>
   182d8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000182d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   182dc: 91000000     	add	x0, x0, #0x0
		00000000000182dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   182e0: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000182e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   182e4: 91000021     	add	x1, x1, #0x0
		00000000000182e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   182e8: 94000000     	bl	0x182e8 <syna_tcm_v1_detect+0x25c>
		00000000000182e8:  R_AARCH64_CALL26	_printk
   182ec: 394a0268     	ldrb	w8, [x19, #0x280]
   182f0: 51000508     	sub	w8, w8, #0x1
   182f4: 17ffffbc     	b	0x181e4 <syna_tcm_v1_detect+0x158>
   182f8: 394e0268     	ldrb	w8, [x19, #0x380]
   182fc: 7100051f     	cmp	w8, #0x1
   18300: 540002e1     	b.ne	0x1835c <syna_tcm_v1_detect+0x2d0>
   18304: b9420268     	ldr	w8, [x19, #0x200]
   18308: 340002a8     	cbz	w8, 0x1835c <syna_tcm_v1_detect+0x2d0>
   1830c: aa1403e0     	mov	x0, x20
   18310: 94000094     	bl	0x18560 <syna_tcm_buf_lock>
   18314: b9420268     	ldr	w8, [x19, #0x200]
   18318: b9424a69     	ldr	w9, [x19, #0x248]
   1831c: 1100150b     	add	w11, w8, #0x5
   18320: 6b0b013f     	cmp	w9, w11
   18324: 540001c9     	b.ls	0x1835c <syna_tcm_v1_detect+0x2d0>
   18328: f941226a     	ldr	x10, [x19, #0x240]
   1832c: 394e126c     	ldrb	w12, [x19, #0x384]
   18330: 786b494b     	ldrh	w11, [x10, w11, uxtw]
   18334: 7100059f     	cmp	w12, #0x1
   18338: 7907066b     	strh	w11, [x19, #0x382]
   1833c: 540000c1     	b.ne	0x18354 <syna_tcm_v1_detect+0x2c8>
   18340: 11001d08     	add	w8, w8, #0x7
   18344: 6b08013f     	cmp	w9, w8
   18348: 54000063     	b.lo	0x18354 <syna_tcm_v1_detect+0x2c8>
   1834c: 38684948     	ldrb	w8, [x10, w8, uxtw]
   18350: 390e1668     	strb	w8, [x19, #0x385]
   18354: aa1403e0     	mov	x0, x20
   18358: 94000098     	bl	0x185b8 <syna_tcm_buf_unlock>
   1835c: 79470668     	ldrh	w8, [x19, #0x382]
   18360: 528b4b49     	mov	w9, #0x5a5a             // =23130
   18364: 6b09011f     	cmp	w8, w9
   18368: 54000041     	b.ne	0x18370 <syna_tcm_v1_detect+0x2e4>
   1836c: 390e027f     	strb	wzr, [x19, #0x380]
   18370: 394e1668     	ldrb	w8, [x19, #0x385]
   18374: 7101691f     	cmp	w8, #0x5a
   18378: 54000041     	b.ne	0x18380 <syna_tcm_v1_detect+0x2f4>
   1837c: 390e127f     	strb	wzr, [x19, #0x384]
   18380: 394006a8     	ldrb	w8, [x21, #0x1]
   18384: 7100411f     	cmp	w8, #0x10
   18388: 540001e0     	b.eq	0x183c4 <syna_tcm_v1_detect+0x338>
   1838c: b941ee65     	ldr	w5, [x19, #0x1ec]
   18390: 720002df     	tst	w22, #0x1
   18394: 52800048     	mov	w8, #0x2                // =2
   18398: 52800089     	mov	w9, #0x4                // =4
   1839c: 910013e4     	add	x4, sp, #0x4
   183a0: aa1303e0     	mov	x0, x19
   183a4: 1a881121     	csel	w1, w9, w8, ne
   183a8: aa1f03e2     	mov	x2, xzr
   183ac: 2a1f03e3     	mov	w3, wzr
   183b0: 9400009d     	bl	0x18624 <syna_tcm_v1_write_message>
   183b4: 36f80080     	tbz	w0, #0x1f, 0x183c4 <syna_tcm_v1_detect+0x338>
   183b8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000183b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b95
   183bc: 91000000     	add	x0, x0, #0x0
		00000000000183bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b95
   183c0: 14000016     	b	0x18418 <syna_tcm_v1_detect+0x38c>
   183c4: 39402668     	ldrb	w8, [x19, #0x9]
   183c8: 350001e8     	cbnz	w8, 0x18404 <syna_tcm_v1_detect+0x378>
   183cc: aa1403e0     	mov	x0, x20
   183d0: 94000064     	bl	0x18560 <syna_tcm_buf_lock>
   183d4: 910012a1     	add	x1, x21, #0x4
   183d8: aa1303e0     	mov	x0, x19
   183dc: 52800682     	mov	w2, #0x34               // =52
   183e0: 52800603     	mov	w3, #0x30               // =48
   183e4: 94000299     	bl	0x18e48 <syna_tcm_v1_parse_idinfo>
   183e8: 2a0003f5     	mov	w21, w0
   183ec: aa1403e0     	mov	x0, x20
   183f0: 94000072     	bl	0x185b8 <syna_tcm_buf_unlock>
   183f4: 36f80095     	tbz	w21, #0x1f, 0x18404 <syna_tcm_v1_detect+0x378>
   183f8: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000183f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70bf
   183fc: 91000000     	add	x0, x0, #0x0
		00000000000183fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70bf
   18400: 14000006     	b	0x18418 <syna_tcm_v1_detect+0x38c>
   18404: aa1303e0     	mov	x0, x19
   18408: 940002c0     	bl	0x18f08 <syna_tcm_v1_check_max_rw_size>
   1840c: 36f80580     	tbz	w0, #0x1f, 0x184bc <syna_tcm_v1_detect+0x430>
   18410: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018410:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb579
   18414: 91000000     	add	x0, x0, #0x0
		0000000000018414:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb579
   18418: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   1841c: 91000021     	add	x1, x1, #0x0
		000000000001841c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   18420: 94000000     	bl	0x18420 <syna_tcm_v1_detect+0x394>
		0000000000018420:  R_AARCH64_CALL26	_printk
   18424: 12801e20     	mov	w0, #-0xf2              // =-242
   18428: 17ffff78     	b	0x18208 <syna_tcm_v1_detect+0x17c>
   1842c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001842c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   18430: 91000000     	add	x0, x0, #0x0
		0000000000018430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   18434: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   18438: 91000021     	add	x1, x1, #0x0
		0000000000018438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1843c: 94000000     	bl	0x1843c <syna_tcm_v1_detect+0x3b0>
		000000000001843c:  R_AARCH64_CALL26	_printk
   18440: 94000000     	bl	0x18440 <syna_tcm_v1_detect+0x3b4>
		0000000000018440:  R_AARCH64_CALL26	syna_request_managed_device
   18444: b5ffe940     	cbnz	x0, 0x1816c <syna_tcm_v1_detect+0xe0>
   18448: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   1844c: 91000000     	add	x0, x0, #0x0
		000000000001844c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   18450: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   18454: 91000021     	add	x1, x1, #0x0
		0000000000018454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   18458: 94000000     	bl	0x18458 <syna_tcm_v1_detect+0x3cc>
		0000000000018458:  R_AARCH64_CALL26	_printk
   1845c: f900029f     	str	xzr, [x20]
   18460: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   18464: 91000000     	add	x0, x0, #0x0
		0000000000018464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   18468: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   1846c: 91000021     	add	x1, x1, #0x0
		000000000001846c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   18470: 528006c2     	mov	w2, #0x36               // =54
   18474: 94000000     	bl	0x18474 <syna_tcm_v1_detect+0x3e8>
		0000000000018474:  R_AARCH64_CALL26	_printk
   18478: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2df0
   1847c: 91000000     	add	x0, x0, #0x0
		000000000001847c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2df0
   18480: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   18484: 91000021     	add	x1, x1, #0x0
		0000000000018484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   18488: f901267f     	str	xzr, [x19, #0x248]
   1848c: 94000000     	bl	0x1848c <syna_tcm_v1_detect+0x400>
		000000000001848c:  R_AARCH64_CALL26	_printk
   18490: 394a0262     	ldrb	w2, [x19, #0x280]
   18494: 7100045f     	cmp	w2, #0x1
   18498: 54000521     	b.ne	0x1853c <syna_tcm_v1_detect+0x4b0>
   1849c: 2a1f03e8     	mov	w8, wzr
   184a0: 91094260     	add	x0, x19, #0x250
   184a4: 390a0268     	strb	w8, [x19, #0x280]
   184a8: 94000000     	bl	0x184a8 <syna_tcm_v1_detect+0x41c>
		00000000000184a8:  R_AARCH64_CALL26	mutex_unlock
   184ac: 910d2260     	add	x0, x19, #0x348
   184b0: 94000000     	bl	0x184b0 <syna_tcm_v1_detect+0x424>
		00000000000184b0:  R_AARCH64_CALL26	mutex_unlock
   184b4: 12801e40     	mov	w0, #-0xf3              // =-243
   184b8: 17ffff54     	b	0x18208 <syna_tcm_v1_detect+0x17c>
   184bc: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000184bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x286
   184c0: 91000000     	add	x0, x0, #0x0
		00000000000184c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x286
   184c4: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000184c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   184c8: 91000021     	add	x1, x1, #0x0
		00000000000184c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   184cc: 94000000     	bl	0x184cc <syna_tcm_v1_detect+0x440>
		00000000000184cc:  R_AARCH64_CALL26	_printk
   184d0: 394e0268     	ldrb	w8, [x19, #0x380]
   184d4: 394e1269     	ldrb	w9, [x19, #0x384]
   184d8: 37000048     	tbnz	w8, #0x0, 0x184e0 <syna_tcm_v1_detect+0x454>
   184dc: 3607df29     	tbz	w9, #0x0, 0x180c0 <syna_tcm_v1_detect+0x34>
   184e0: 9000000a     	adrp	x10, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000184e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8663
   184e4: 9100014a     	add	x10, x10, #0x0
		00000000000184e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8663
   184e8: 9000000b     	adrp	x11, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		00000000000184e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x458d
   184ec: 9100016b     	add	x11, x11, #0x0
		00000000000184ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x458d
   184f0: 7100011f     	cmp	w8, #0x0
   184f4: 2a280128     	orn	w8, w9, w8
   184f8: 9a8a1162     	csel	x2, x11, x10, ne
   184fc: 7200011f     	tst	w8, #0x1
   18500: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27c1
   18504: 91000000     	add	x0, x0, #0x0
		0000000000018504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27c1
   18508: 9a8a1163     	csel	x3, x11, x10, ne
   1850c: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001850c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3496
   18510: 91000021     	add	x1, x1, #0x0
		0000000000018510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3496
   18514: 94000000     	bl	0x18514 <syna_tcm_v1_detect+0x488>
		0000000000018514:  R_AARCH64_CALL26	_printk
   18518: 17fffeea     	b	0x180c0 <syna_tcm_v1_detect+0x34>
   1851c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001851c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   18520: 91000000     	add	x0, x0, #0x0
		0000000000018520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   18524: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   18528: 91000021     	add	x1, x1, #0x0
		0000000000018528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1852c: 94000000     	bl	0x1852c <syna_tcm_v1_detect+0x4a0>
		000000000001852c:  R_AARCH64_CALL26	_printk
   18530: 394a0268     	ldrb	w8, [x19, #0x280]
   18534: 51000508     	sub	w8, w8, #0x1
   18538: 17ffff61     	b	0x182bc <syna_tcm_v1_detect+0x230>
   1853c: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		000000000001853c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   18540: 91000000     	add	x0, x0, #0x0
		0000000000018540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   18544: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   18548: 91000021     	add	x1, x1, #0x0
		0000000000018548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1854c: 94000000     	bl	0x1854c <syna_tcm_v1_detect+0x4c0>
		000000000001854c:  R_AARCH64_CALL26	_printk
   18550: 394a0268     	ldrb	w8, [x19, #0x280]
   18554: 51000508     	sub	w8, w8, #0x1
   18558: 17ffffd2     	b	0x184a0 <syna_tcm_v1_detect+0x414>
   1855c: 94000000     	bl	0x1855c <syna_tcm_v1_detect+0x4d0>
		000000000001855c:  R_AARCH64_CALL26	__stack_chk_fail
