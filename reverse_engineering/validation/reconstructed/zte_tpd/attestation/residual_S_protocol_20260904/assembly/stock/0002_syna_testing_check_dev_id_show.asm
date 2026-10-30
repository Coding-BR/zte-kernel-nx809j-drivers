
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015680 <syna_testing_check_dev_id_show>:
   15680: d503233f     	paciasp
   15684: d10403ff     	sub	sp, sp, #0x100
   15688: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
   1568c: f90063f9     	str	x25, [sp, #0xc0]
   15690: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
   15694: a90e57f6     	stp	x22, x21, [sp, #0xe0]
   15698: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
   1569c: 9102c3fd     	add	x29, sp, #0xb0
   156a0: d5384108     	mrs	x8, SP_EL0
   156a4: aa0203f3     	mov	x19, x2
   156a8: f9438908     	ldr	x8, [x8, #0x710]
   156ac: f81f83a8     	stur	x8, [x29, #-0x8]
   156b0: f9400c08     	ldr	x8, [x0, #0x18]
   156b4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   156b8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   156bc: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   156c0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   156c4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   156c8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   156cc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   156d0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   156d4: f9400d08     	ldr	x8, [x8, #0x18]
   156d8: f9000bff     	str	xzr, [sp, #0x10]
   156dc: f9404d17     	ldr	x23, [x8, #0x98]
   156e0: 39560ae8     	ldrb	w8, [x23, #0x582]
   156e4: 36000ca8     	tbz	w8, #0x0, 0x15878 <syna_testing_check_dev_id_show+0x1f8>
   156e8: 94000000     	bl	0x156e8 <syna_testing_check_dev_id_show+0x68>
		00000000000156e8:  R_AARCH64_CALL26	syna_tcm_get_testing_0001
   156ec: b4000d20     	cbz	x0, 0x15890 <syna_testing_check_dev_id_show+0x210>
   156f0: 910063f8     	add	x24, sp, #0x18
   156f4: 90000015     	adrp	x21, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000156f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   156f8: 910002b5     	add	x21, x21, #0x0
		00000000000156f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   156fc: 90000016     	adrp	x22, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000156fc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   15700: 910002d6     	add	x22, x22, #0x0
		0000000000015700:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   15704: aa0003f4     	mov	x20, x0
   15708: 91004300     	add	x0, x24, #0x10
   1570c: aa1503e1     	mov	x1, x21
   15710: aa1603e2     	mov	x2, x22
   15714: 390163ff     	strb	wzr, [sp, #0x58]
   15718: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   1571c: 94000000     	bl	0x1571c <syna_testing_check_dev_id_show+0x9c>
		000000000001571c:  R_AARCH64_CALL26	__mutex_init
   15720: 91016300     	add	x0, x24, #0x58
   15724: aa1503e1     	mov	x1, x21
   15728: aa1603e2     	mov	x2, x22
   1572c: f9006e98     	str	x24, [x20, #0xd8]
   15730: 91012319     	add	x25, x24, #0x48
   15734: 390283ff     	strb	wzr, [sp, #0xa0]
   15738: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1573c: 94000000     	bl	0x1573c <syna_testing_check_dev_id_show+0xbc>
		000000000001573c:  R_AARCH64_CALL26	__mutex_init
   15740: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf58
   15744: 91000108     	add	x8, x8, #0x0
		0000000000015744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf58
   15748: f9007299     	str	x25, [x20, #0xe0]
   1574c: f90007e8     	str	x8, [sp, #0x8]
   15750: 52800088     	mov	w8, #0x4                // =4
   15754: aa1403e1     	mov	x1, x20
   15758: b90013e8     	str	w8, [sp, #0x10]
   1575c: 910023e8     	add	x8, sp, #0x8
   15760: 2a1f03e2     	mov	w2, wzr
   15764: a903a29f     	stp	xzr, x8, [x20, #0x38]
   15768: f9400e88     	ldr	x8, [x20, #0x18]
   1576c: f94002e0     	ldr	x0, [x23]
   15770: b85fc110     	ldur	w16, [x8, #-0x4]
   15774: 72895251     	movk	w17, #0x4a92
   15778: 72b03811     	movk	w17, #0x81c0, lsl #16
   1577c: 6b11021f     	cmp	w16, w17
   15780: 54000040     	b.eq	0x15788 <syna_testing_check_dev_id_show+0x108>
   15784: d4304500     	brk	#0x8228
   15788: d63f0100     	blr	x8
   1578c: 37f80aa0     	tbnz	w0, #0x1f, 0x158e0 <syna_testing_check_dev_id_show+0x260>
   15790: 39404288     	ldrb	w8, [x20, #0x10]
   15794: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15798: 91000129     	add	x9, x9, #0x0
		0000000000015798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   1579c: 7100011f     	cmp	w8, #0x0
   157a0: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000157a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   157a4: 91000108     	add	x8, x8, #0x0
		00000000000157a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   157a8: 9a891105     	csel	x5, x8, x9, ne
   157ac: f9400683     	ldr	x3, [x20, #0x8]
   157b0: b9400284     	ldr	w4, [x20]
   157b4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000157b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   157b8: 91000042     	add	x2, x2, #0x0
		00000000000157b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   157bc: aa1303e0     	mov	x0, x19
   157c0: 52820001     	mov	w1, #0x1000             // =4096
   157c4: 94000000     	bl	0x157c4 <syna_testing_check_dev_id_show+0x144>
		00000000000157c4:  R_AARCH64_CALL26	scnprintf
   157c8: b94027e8     	ldr	w8, [sp, #0x24]
   157cc: 2a0003f4     	mov	w20, w0
   157d0: 34000168     	cbz	w8, 0x157fc <syna_testing_check_dev_id_show+0x17c>
   157d4: f9400fe8     	ldr	x8, [sp, #0x18]
   157d8: 2a1403e9     	mov	w9, w20
   157dc: 5282000a     	mov	w10, #0x1000            // =4096
   157e0: cb090141     	sub	x1, x10, x9
   157e4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000157e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb524
   157e8: 91000042     	add	x2, x2, #0x0
		00000000000157e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb524
   157ec: b9400103     	ldr	w3, [x8]
   157f0: 8b090260     	add	x0, x19, x9
   157f4: 94000000     	bl	0x157f4 <syna_testing_check_dev_id_show+0x174>
		00000000000157f4:  R_AARCH64_CALL26	scnprintf
   157f8: 0b140014     	add	w20, w0, w20
   157fc: b9406fe8     	ldr	w8, [sp, #0x6c]
   15800: 34000148     	cbz	w8, 0x15828 <syna_testing_check_dev_id_show+0x1a8>
   15804: 2a1403e8     	mov	w8, w20
   15808: 52820009     	mov	w9, #0x1000             // =4096
   1580c: f94033e3     	ldr	x3, [sp, #0x60]
   15810: cb080121     	sub	x1, x9, x8
   15814: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c88
   15818: 91000042     	add	x2, x2, #0x0
		0000000000015818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c88
   1581c: 8b080260     	add	x0, x19, x8
   15820: 94000000     	bl	0x15820 <syna_testing_check_dev_id_show+0x1a0>
		0000000000015820:  R_AARCH64_CALL26	scnprintf
   15824: 0b140014     	add	w20, w0, w20
   15828: 394163e2     	ldrb	w2, [sp, #0x58]
   1582c: 350006c2     	cbnz	w2, 0x15904 <syna_testing_check_dev_id_show+0x284>
   15830: f9400ff3     	ldr	x19, [sp, #0x18]
   15834: 94000000     	bl	0x15834 <syna_testing_check_dev_id_show+0x1b4>
		0000000000015834:  R_AARCH64_CALL26	syna_request_managed_device
   15838: b4000720     	cbz	x0, 0x1591c <syna_testing_check_dev_id_show+0x29c>
   1583c: b4000073     	cbz	x19, 0x15848 <syna_testing_check_dev_id_show+0x1c8>
   15840: aa1303e1     	mov	x1, x19
   15844: 94000000     	bl	0x15844 <syna_testing_check_dev_id_show+0x1c4>
		0000000000015844:  R_AARCH64_CALL26	devm_kfree
   15848: 394283e2     	ldrb	w2, [sp, #0xa0]
   1584c: f90013ff     	str	xzr, [sp, #0x20]
   15850: 390163ff     	strb	wzr, [sp, #0x58]
   15854: 35000702     	cbnz	w2, 0x15934 <syna_testing_check_dev_id_show+0x2b4>
   15858: f94033f3     	ldr	x19, [sp, #0x60]
   1585c: 94000000     	bl	0x1585c <syna_testing_check_dev_id_show+0x1dc>
		000000000001585c:  R_AARCH64_CALL26	syna_request_managed_device
   15860: b4000760     	cbz	x0, 0x1594c <syna_testing_check_dev_id_show+0x2cc>
   15864: b4000073     	cbz	x19, 0x15870 <syna_testing_check_dev_id_show+0x1f0>
   15868: aa1303e1     	mov	x1, x19
   1586c: 94000000     	bl	0x1586c <syna_testing_check_dev_id_show+0x1ec>
		000000000001586c:  R_AARCH64_CALL26	devm_kfree
   15870: 2a1403e0     	mov	w0, w20
   15874: 1400000e     	b	0x158ac <syna_testing_check_dev_id_show+0x22c>
   15878: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   1587c: 91000042     	add	x2, x2, #0x0
		000000000001587c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   15880: aa1303e0     	mov	x0, x19
   15884: 52820001     	mov	w1, #0x1000             // =4096
   15888: 94000000     	bl	0x15888 <syna_testing_check_dev_id_show+0x208>
		0000000000015888:  R_AARCH64_CALL26	scnprintf
   1588c: 14000007     	b	0x158a8 <syna_testing_check_dev_id_show+0x228>
   15890: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   15894: 91000042     	add	x2, x2, #0x0
		0000000000015894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   15898: aa1303e0     	mov	x0, x19
   1589c: 52820001     	mov	w1, #0x1000             // =4096
   158a0: 52800023     	mov	w3, #0x1                // =1
   158a4: 94000000     	bl	0x158a4 <syna_testing_check_dev_id_show+0x224>
		00000000000158a4:  R_AARCH64_CALL26	scnprintf
   158a8: 93407c00     	sxtw	x0, w0
   158ac: d5384108     	mrs	x8, SP_EL0
   158b0: f9438908     	ldr	x8, [x8, #0x710]
   158b4: f85f83a9     	ldur	x9, [x29, #-0x8]
   158b8: eb09011f     	cmp	x8, x9
   158bc: 54000541     	b.ne	0x15964 <syna_testing_check_dev_id_show+0x2e4>
   158c0: a94f4ff4     	ldp	x20, x19, [sp, #0xf0]
   158c4: f94063f9     	ldr	x25, [sp, #0xc0]
   158c8: a94e57f6     	ldp	x22, x21, [sp, #0xe0]
   158cc: a94d5ff8     	ldp	x24, x23, [sp, #0xd0]
   158d0: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
   158d4: 910403ff     	add	sp, sp, #0x100
   158d8: d50323bf     	autiasp
   158dc: d65f03c0     	ret
   158e0: f9400682     	ldr	x2, [x20, #0x8]
   158e4: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000158e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   158e8: 91000000     	add	x0, x0, #0x0
		00000000000158e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   158ec: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000158ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c69
   158f0: 91000021     	add	x1, x1, #0x0
		00000000000158f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c69
   158f4: 94000000     	bl	0x158f4 <syna_testing_check_dev_id_show+0x274>
		00000000000158f4:  R_AARCH64_CALL26	_printk
   158f8: 90000005     	adrp	x5, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000158f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   158fc: 910000a5     	add	x5, x5, #0x0
		00000000000158fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15900: 17ffffab     	b	0x157ac <syna_testing_check_dev_id_show+0x12c>
   15904: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   15908: 91000000     	add	x0, x0, #0x0
		0000000000015908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1590c: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001590c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15910: 91000021     	add	x1, x1, #0x0
		0000000000015910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15914: 94000000     	bl	0x15914 <syna_testing_check_dev_id_show+0x294>
		0000000000015914:  R_AARCH64_CALL26	_printk
   15918: 17ffffc6     	b	0x15830 <syna_testing_check_dev_id_show+0x1b0>
   1591c: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001591c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15920: 91000000     	add	x0, x0, #0x0
		0000000000015920:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15924: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   15928: 91000021     	add	x1, x1, #0x0
		0000000000015928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1592c: 94000000     	bl	0x1592c <syna_testing_check_dev_id_show+0x2ac>
		000000000001592c:  R_AARCH64_CALL26	_printk
   15930: 17ffffc6     	b	0x15848 <syna_testing_check_dev_id_show+0x1c8>
   15934: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   15938: 91000000     	add	x0, x0, #0x0
		0000000000015938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1593c: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001593c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15940: 91000021     	add	x1, x1, #0x0
		0000000000015940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15944: 94000000     	bl	0x15944 <syna_testing_check_dev_id_show+0x2c4>
		0000000000015944:  R_AARCH64_CALL26	_printk
   15948: 17ffffc4     	b	0x15858 <syna_testing_check_dev_id_show+0x1d8>
   1594c: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001594c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15950: 91000000     	add	x0, x0, #0x0
		0000000000015950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15954: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   15958: 91000021     	add	x1, x1, #0x0
		0000000000015958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1595c: 94000000     	bl	0x1595c <syna_testing_check_dev_id_show+0x2dc>
		000000000001595c:  R_AARCH64_CALL26	_printk
   15960: 17ffffc4     	b	0x15870 <syna_testing_check_dev_id_show+0x1f0>
   15964: 94000000     	bl	0x15964 <syna_testing_check_dev_id_show+0x2e4>
		0000000000015964:  R_AARCH64_CALL26	__stack_chk_fail
