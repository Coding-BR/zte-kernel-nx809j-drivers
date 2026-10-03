
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000165e4 <syna_tcm_buf_copy>:
   165e4: d503233f     	paciasp
   165e8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   165ec: f9000bf7     	str	x23, [sp, #0x10]
   165f0: a90257f6     	stp	x22, x21, [sp, #0x20]
   165f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
   165f8: 910003fd     	mov	x29, sp
   165fc: 39410002     	ldrb	w2, [x0, #0x40]
   16600: aa0003f3     	mov	x19, x0
   16604: aa0103f4     	mov	x20, x1
   16608: 350009e2     	cbnz	w2, 0x16744 <syna_tcm_buf_copy+0x160>
   1660c: 91004260     	add	x0, x19, #0x10
   16610: 94000000     	bl	0x16610 <syna_tcm_buf_copy+0x2c>
		0000000000016610:  R_AARCH64_CALL26	mutex_lock
   16614: 39410268     	ldrb	w8, [x19, #0x40]
   16618: 11000508     	add	w8, w8, #0x1
   1661c: 39010268     	strb	w8, [x19, #0x40]
   16620: 39410282     	ldrb	w2, [x20, #0x40]
   16624: 350009c2     	cbnz	w2, 0x1675c <syna_tcm_buf_copy+0x178>
   16628: 91004280     	add	x0, x20, #0x10
   1662c: 94000000     	bl	0x1662c <syna_tcm_buf_copy+0x48>
		000000000001662c:  R_AARCH64_CALL26	mutex_lock
   16630: 39410288     	ldrb	w8, [x20, #0x40]
   16634: b9400e95     	ldr	w21, [x20, #0xc]
   16638: 11000508     	add	w8, w8, #0x1
   1663c: 39010288     	strb	w8, [x20, #0x40]
   16640: b9400a63     	ldr	w3, [x19, #0x8]
   16644: 6b15007f     	cmp	w3, w21
   16648: 540003c2     	b.hs	0x166c0 <syna_tcm_buf_copy+0xdc>
   1664c: 110006b6     	add	w22, w21, #0x1
   16650: f9400260     	ldr	x0, [x19]
   16654: 6b16007f     	cmp	w3, w22
   16658: 54000262     	b.hs	0x166a4 <syna_tcm_buf_copy+0xc0>
   1665c: b40000c0     	cbz	x0, 0x16674 <syna_tcm_buf_copy+0x90>
   16660: aa0003f7     	mov	x23, x0
   16664: 94000000     	bl	0x16664 <syna_tcm_buf_copy+0x80>
		0000000000016664:  R_AARCH64_CALL26	syna_request_managed_device
   16668: b4000c60     	cbz	x0, 0x167f4 <syna_tcm_buf_copy+0x210>
   1666c: aa1703e1     	mov	x1, x23
   16670: 94000000     	bl	0x16670 <syna_tcm_buf_copy+0x8c>
		0000000000016670:  R_AARCH64_CALL26	devm_kfree
   16674: 94000000     	bl	0x16674 <syna_tcm_buf_copy+0x90>
		0000000000016674:  R_AARCH64_CALL26	syna_request_managed_device
   16678: b4000cc0     	cbz	x0, 0x16810 <syna_tcm_buf_copy+0x22c>
   1667c: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
   16680: 6b0802bf     	cmp	w21, w8
   16684: 54000b22     	b.hs	0x167e8 <syna_tcm_buf_copy+0x204>
   16688: aa1603e1     	mov	x1, x22
   1668c: 5281b802     	mov	w2, #0xdc0              // =3520
   16690: 94000000     	bl	0x16690 <syna_tcm_buf_copy+0xac>
		0000000000016690:  R_AARCH64_CALL26	devm_kmalloc
   16694: f9000260     	str	x0, [x19]
   16698: b4000c80     	cbz	x0, 0x16828 <syna_tcm_buf_copy+0x244>
   1669c: b9000a76     	str	w22, [x19, #0x8]
   166a0: 14000002     	b	0x166a8 <syna_tcm_buf_copy+0xc4>
   166a4: aa0303f6     	mov	x22, x3
   166a8: 2a1f03e1     	mov	w1, wzr
   166ac: aa1603e2     	mov	x2, x22
   166b0: 94000000     	bl	0x166b0 <syna_tcm_buf_copy+0xcc>
		00000000000166b0:  R_AARCH64_CALL26	memset
   166b4: b9000e7f     	str	wzr, [x19, #0xc]
   166b8: b9400a63     	ldr	w3, [x19, #0x8]
   166bc: b9400e95     	ldr	w21, [x20, #0xc]
   166c0: f9400260     	ldr	x0, [x19]
   166c4: b4000860     	cbz	x0, 0x167d0 <syna_tcm_buf_copy+0x1ec>
   166c8: f9400281     	ldr	x1, [x20]
   166cc: b4000821     	cbz	x1, 0x167d0 <syna_tcm_buf_copy+0x1ec>
   166d0: b9400a82     	ldr	w2, [x20, #0x8]
   166d4: 6b0302bf     	cmp	w21, w3
   166d8: 540006e8     	b.hi	0x167b4 <syna_tcm_buf_copy+0x1d0>
   166dc: 6b0202bf     	cmp	w21, w2
   166e0: 540006a8     	b.hi	0x167b4 <syna_tcm_buf_copy+0x1d0>
   166e4: 2a1503e2     	mov	w2, w21
   166e8: 94000000     	bl	0x166e8 <syna_tcm_buf_copy+0x104>
		00000000000166e8:  R_AARCH64_CALL26	memcpy
   166ec: b9400e88     	ldr	w8, [x20, #0xc]
   166f0: b9000e68     	str	w8, [x19, #0xc]
   166f4: 39410282     	ldrb	w2, [x20, #0x40]
   166f8: 7100045f     	cmp	w2, #0x1
   166fc: 540004c1     	b.ne	0x16794 <syna_tcm_buf_copy+0x1b0>
   16700: 2a1f03e8     	mov	w8, wzr
   16704: 91004280     	add	x0, x20, #0x10
   16708: 39010288     	strb	w8, [x20, #0x40]
   1670c: 94000000     	bl	0x1670c <syna_tcm_buf_copy+0x128>
		000000000001670c:  R_AARCH64_CALL26	mutex_unlock
   16710: 39410262     	ldrb	w2, [x19, #0x40]
   16714: 7100045f     	cmp	w2, #0x1
   16718: 540002e1     	b.ne	0x16774 <syna_tcm_buf_copy+0x190>
   1671c: 2a1f03e8     	mov	w8, wzr
   16720: 91004260     	add	x0, x19, #0x10
   16724: 39010268     	strb	w8, [x19, #0x40]
   16728: 94000000     	bl	0x16728 <syna_tcm_buf_copy+0x144>
		0000000000016728:  R_AARCH64_CALL26	mutex_unlock
   1672c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   16730: f9400bf7     	ldr	x23, [sp, #0x10]
   16734: a94257f6     	ldp	x22, x21, [sp, #0x20]
   16738: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1673c: d50323bf     	autiasp
   16740: d65f03c0     	ret
   16744: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   16748: 91000000     	add	x0, x0, #0x0
		0000000000016748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1674c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001674c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   16750: 91000021     	add	x1, x1, #0x0
		0000000000016750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   16754: 94000000     	bl	0x16754 <syna_tcm_buf_copy+0x170>
		0000000000016754:  R_AARCH64_CALL26	_printk
   16758: 17ffffad     	b	0x1660c <syna_tcm_buf_copy+0x28>
   1675c: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001675c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   16760: 91000000     	add	x0, x0, #0x0
		0000000000016760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   16764: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   16768: 91000021     	add	x1, x1, #0x0
		0000000000016768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1676c: 94000000     	bl	0x1676c <syna_tcm_buf_copy+0x188>
		000000000001676c:  R_AARCH64_CALL26	_printk
   16770: 17ffffae     	b	0x16628 <syna_tcm_buf_copy+0x44>
   16774: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   16778: 91000000     	add	x0, x0, #0x0
		0000000000016778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1677c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001677c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   16780: 91000021     	add	x1, x1, #0x0
		0000000000016780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   16784: 94000000     	bl	0x16784 <syna_tcm_buf_copy+0x1a0>
		0000000000016784:  R_AARCH64_CALL26	_printk
   16788: 39410268     	ldrb	w8, [x19, #0x40]
   1678c: 51000508     	sub	w8, w8, #0x1
   16790: 17ffffe4     	b	0x16720 <syna_tcm_buf_copy+0x13c>
   16794: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   16798: 91000000     	add	x0, x0, #0x0
		0000000000016798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1679c: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		000000000001679c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   167a0: 91000021     	add	x1, x1, #0x0
		00000000000167a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   167a4: 94000000     	bl	0x167a4 <syna_tcm_buf_copy+0x1c0>
		00000000000167a4:  R_AARCH64_CALL26	_printk
   167a8: 39410288     	ldrb	w8, [x20, #0x40]
   167ac: 51000508     	sub	w8, w8, #0x1
   167b0: 17ffffd5     	b	0x16704 <syna_tcm_buf_copy+0x120>
   167b4: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   167b8: 91000000     	add	x0, x0, #0x0
		00000000000167b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   167bc: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   167c0: 91000021     	add	x1, x1, #0x0
		00000000000167c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   167c4: 2a1503e4     	mov	w4, w21
   167c8: 94000000     	bl	0x167c8 <syna_tcm_buf_copy+0x1e4>
		00000000000167c8:  R_AARCH64_CALL26	_printk
   167cc: b9400e95     	ldr	w21, [x20, #0xc]
   167d0: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a49
   167d4: 91000000     	add	x0, x0, #0x0
		00000000000167d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a49
   167d8: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   167dc: 91000021     	add	x1, x1, #0x0
		00000000000167dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   167e0: 2a1503e2     	mov	w2, w21
   167e4: 1400001e     	b	0x1685c <syna_tcm_buf_copy+0x278>
   167e8: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   167ec: 91000000     	add	x0, x0, #0x0
		00000000000167ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   167f0: 1400000a     	b	0x16818 <syna_tcm_buf_copy+0x234>
   167f4: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   167f8: 91000000     	add	x0, x0, #0x0
		00000000000167f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   167fc: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		00000000000167fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   16800: 91000021     	add	x1, x1, #0x0
		0000000000016800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   16804: 94000000     	bl	0x16804 <syna_tcm_buf_copy+0x220>
		0000000000016804:  R_AARCH64_CALL26	_printk
   16808: 94000000     	bl	0x16808 <syna_tcm_buf_copy+0x224>
		0000000000016808:  R_AARCH64_CALL26	syna_request_managed_device
   1680c: b5fff380     	cbnz	x0, 0x1667c <syna_tcm_buf_copy+0x98>
   16810: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   16814: 91000000     	add	x0, x0, #0x0
		0000000000016814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   16818: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   1681c: 91000021     	add	x1, x1, #0x0
		000000000001681c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   16820: 94000000     	bl	0x16820 <syna_tcm_buf_copy+0x23c>
		0000000000016820:  R_AARCH64_CALL26	_printk
   16824: f900027f     	str	xzr, [x19]
   16828: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   1682c: 91000000     	add	x0, x0, #0x0
		000000000001682c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   16830: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   16834: 91000021     	add	x1, x1, #0x0
		0000000000016834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   16838: 2a1603e2     	mov	w2, w22
   1683c: 94000000     	bl	0x1683c <syna_tcm_buf_copy+0x258>
		000000000001683c:  R_AARCH64_CALL26	_printk
   16840: f900067f     	str	xzr, [x19, #0x8]
   16844: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64e5
   16848: 91000000     	add	x0, x0, #0x0
		0000000000016848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64e5
   1684c: b9400e88     	ldr	w8, [x20, #0xc]
   16850: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13bf
   16854: 91000021     	add	x1, x1, #0x0
		0000000000016854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13bf
   16858: 11000502     	add	w2, w8, #0x1
   1685c: 94000000     	bl	0x1685c <syna_tcm_buf_copy+0x278>
		000000000001685c:  R_AARCH64_CALL26	_printk
   16860: 17ffffa5     	b	0x166f4 <syna_tcm_buf_copy+0x110>
