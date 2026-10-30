
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000061cc <syna_tcm_erase_mtp_data>:
    61cc: d503233f     	paciasp
    61d0: d103c3ff     	sub	sp, sp, #0xf0
    61d4: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
    61d8: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    61dc: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    61e0: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    61e4: 9102c3fd     	add	x29, sp, #0xb0
    61e8: d5384108     	mrs	x8, SP_EL0
    61ec: f9438908     	ldr	x8, [x8, #0x710]
    61f0: f81f83a8     	stur	x8, [x29, #-0x8]
    61f4: b4000d60     	cbz	x0, 0x63a0 <syna_tcm_erase_mtp_data+0x1d4>
    61f8: aa0003f3     	mov	x19, x0
    61fc: 910043e8     	add	x8, sp, #0x10
    6200: a9087fff     	stp	xzr, xzr, [sp, #0x80]
    6204: a908fd1f     	stp	xzr, xzr, [x8, #0x88]
    6208: f900411f     	str	xzr, [x8, #0x80]
    620c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
    6210: a9067fff     	stp	xzr, xzr, [sp, #0x60]
    6214: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    6218: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    621c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
    6220: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    6224: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    6228: 34000081     	cbz	w1, 0x6238 <syna_tcm_erase_mtp_data+0x6c>
    622c: b9420e77     	ldr	w23, [x19, #0x20c]
    6230: b941ea74     	ldr	w20, [x19, #0x1e8]
    6234: 14000003     	b	0x6240 <syna_tcm_erase_mtp_data+0x74>
    6238: 2a1f03f4     	mov	w20, wzr
    623c: 2a1f03f7     	mov	w23, wzr
    6240: 910043e8     	add	x8, sp, #0x10
    6244: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    6248: 91000021     	add	x1, x1, #0x0
		0000000000006248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    624c: 90000002     	adrp	x2, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000624c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    6250: 91000042     	add	x2, x2, #0x0
		0000000000006250:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    6254: 91014100     	add	x0, x8, #0x50
    6258: a9057fff     	stp	xzr, xzr, [sp, #0x50]
    625c: 94000000     	bl	0x625c <syna_tcm_erase_mtp_data+0x90>
		000000000000625c:  R_AARCH64_CALL26	__mutex_init
    6260: 910043e1     	add	x1, sp, #0x10
    6264: aa1303e0     	mov	x0, x19
    6268: 2a1703e2     	mov	w2, w23
    626c: 2a1403e3     	mov	w3, w20
    6270: 97fff09e     	bl	0x24e8 <syna_tcm_update_flash_block+0x7b4>
		0000000000006270:  R_AARCH64_CALL26	syna_tcm_set_up_flash_access
    6274: 37f80a40     	tbnz	w0, #0x1f, 0x63bc <syna_tcm_erase_mtp_data+0x1f0>
    6278: f9401be8     	ldr	x8, [sp, #0x30]
    627c: 39400102     	ldrb	w2, [x8]
    6280: 7100085f     	cmp	w2, #0x2
    6284: 54000bc9     	b.ls	0x63fc <syna_tcm_erase_mtp_data+0x230>
    6288: b9403be9     	ldr	w9, [sp, #0x38]
    628c: 39405508     	ldrb	w8, [x8, #0x15]
    6290: b9404fea     	ldr	w10, [sp, #0x4c]
    6294: b9000fff     	str	wzr, [sp, #0xc]
    6298: 1b082528     	madd	w8, w9, w8, w9
    629c: 1ac90955     	udiv	w21, w10, w9
    62a0: 51000508     	sub	w8, w8, #0x1
    62a4: 1ac90916     	udiv	w22, w8, w9
    62a8: 2a1502c8     	orr	w8, w22, w21
    62ac: 7104011f     	cmp	w8, #0x100
    62b0: 54000082     	b.hs	0x62c0 <syna_tcm_erase_mtp_data+0xf4>
    62b4: 52800043     	mov	w3, #0x2                // =2
    62b8: 2a1603e8     	mov	w8, w22
    62bc: 14000004     	b	0x62cc <syna_tcm_erase_mtp_data+0x100>
    62c0: 53087ea8     	lsr	w8, w21, #8
    62c4: 52800083     	mov	w3, #0x4                // =4
    62c8: 79001ff6     	strh	w22, [sp, #0xe]
    62cc: 39402662     	ldrb	w2, [x19, #0x9]
    62d0: 1b177ec5     	mul	w5, w22, w23
    62d4: 390033f5     	strb	w21, [sp, #0xc]
    62d8: 390037e8     	strb	w8, [sp, #0xd]
    62dc: 71002c5f     	cmp	w2, #0xb
    62e0: 540009c1     	b.ne	0x6418 <syna_tcm_erase_mtp_data+0x24c>
    62e4: 350000a5     	cbnz	w5, 0x62f8 <syna_tcm_erase_mtp_data+0x12c>
    62e8: f9402668     	ldr	x8, [x19, #0x48]
    62ec: 39405108     	ldrb	w8, [x8, #0x14]
    62f0: 36000d28     	tbz	w8, #0x0, 0x6494 <syna_tcm_erase_mtp_data+0x2c8>
    62f4: 2a1f03e5     	mov	w5, wzr
    62f8: f941ce68     	ldr	x8, [x19, #0x398]
    62fc: 910033e2     	add	x2, sp, #0xc
    6300: aa1303e0     	mov	x0, x19
    6304: 52800221     	mov	w1, #0x11               // =17
    6308: aa1f03e4     	mov	x4, xzr
    630c: b85fc110     	ldur	w16, [x8, #-0x4]
    6310: 728751d1     	movk	w17, #0x3a8e
    6314: 72a48411     	movk	w17, #0x2420, lsl #16
    6318: 6b11021f     	cmp	w16, w17
    631c: 54000040     	b.eq	0x6324 <syna_tcm_erase_mtp_data+0x158>
    6320: d4304500     	brk	#0x8228
    6324: d63f0100     	blr	x8
    6328: 37f808e0     	tbnz	w0, #0x1f, 0x6444 <syna_tcm_erase_mtp_data+0x278>
    632c: 2a1f03f7     	mov	w23, wzr
    6330: 39402668     	ldrb	w8, [x19, #0x9]
    6334: 71002d1f     	cmp	w8, #0xb
    6338: 540000a1     	b.ne	0x634c <syna_tcm_erase_mtp_data+0x180>
    633c: aa1303e0     	mov	x0, x19
    6340: 52800021     	mov	w1, #0x1                // =1
    6344: 2a1403e2     	mov	w2, w20
    6348: 94000000     	bl	0x6348 <syna_tcm_erase_mtp_data+0x17c>
		0000000000006348:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    634c: 394243e2     	ldrb	w2, [sp, #0x90]
    6350: 350003e2     	cbnz	w2, 0x63cc <syna_tcm_erase_mtp_data+0x200>
    6354: f9402bf3     	ldr	x19, [sp, #0x50]
    6358: 94000000     	bl	0x6358 <syna_tcm_erase_mtp_data+0x18c>
		0000000000006358:  R_AARCH64_CALL26	syna_request_managed_device
    635c: b4000440     	cbz	x0, 0x63e4 <syna_tcm_erase_mtp_data+0x218>
    6360: b4000073     	cbz	x19, 0x636c <syna_tcm_erase_mtp_data+0x1a0>
    6364: aa1303e1     	mov	x1, x19
    6368: 94000000     	bl	0x6368 <syna_tcm_erase_mtp_data+0x19c>
		0000000000006368:  R_AARCH64_CALL26	devm_kfree
    636c: 2a1703e0     	mov	w0, w23
    6370: d5384108     	mrs	x8, SP_EL0
    6374: f9438908     	ldr	x8, [x8, #0x710]
    6378: f85f83a9     	ldur	x9, [x29, #-0x8]
    637c: eb09011f     	cmp	x8, x9
    6380: 54000a01     	b.ne	0x64c0 <syna_tcm_erase_mtp_data+0x2f4>
    6384: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    6388: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    638c: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    6390: a94b7bfd     	ldp	x29, x30, [sp, #0xb0]
    6394: 9103c3ff     	add	sp, sp, #0xf0
    6398: d50323bf     	autiasp
    639c: d65f03c0     	ret
    63a0: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    63a4: 91000000     	add	x0, x0, #0x0
		00000000000063a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    63a8: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4974
    63ac: 91000021     	add	x1, x1, #0x0
		00000000000063ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4974
    63b0: 94000000     	bl	0x63b0 <syna_tcm_erase_mtp_data+0x1e4>
		00000000000063b0:  R_AARCH64_CALL26	_printk
    63b4: 12801e00     	mov	w0, #-0xf1              // =-241
    63b8: 17ffffee     	b	0x6370 <syna_tcm_erase_mtp_data+0x1a4>
    63bc: 2a0003f7     	mov	w23, w0
    63c0: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    63c4: 91000000     	add	x0, x0, #0x0
		00000000000063c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    63c8: 1400002f     	b	0x6484 <syna_tcm_erase_mtp_data+0x2b8>
    63cc: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    63d0: 91000000     	add	x0, x0, #0x0
		00000000000063d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    63d4: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    63d8: 91000021     	add	x1, x1, #0x0
		00000000000063d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    63dc: 94000000     	bl	0x63dc <syna_tcm_erase_mtp_data+0x210>
		00000000000063dc:  R_AARCH64_CALL26	_printk
    63e0: 17ffffdd     	b	0x6354 <syna_tcm_erase_mtp_data+0x188>
    63e4: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    63e8: 91000000     	add	x0, x0, #0x0
		00000000000063e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    63ec: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000063ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    63f0: 91000021     	add	x1, x1, #0x0
		00000000000063f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    63f4: 94000000     	bl	0x63f4 <syna_tcm_erase_mtp_data+0x228>
		00000000000063f4:  R_AARCH64_CALL26	_printk
    63f8: 17ffffdd     	b	0x636c <syna_tcm_erase_mtp_data+0x1a0>
    63fc: 2a0003f7     	mov	w23, w0
    6400: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f56
    6404: 91000000     	add	x0, x0, #0x0
		0000000000006404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f56
    6408: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4974
    640c: 91000021     	add	x1, x1, #0x0
		000000000000640c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4974
    6410: 94000000     	bl	0x6410 <syna_tcm_erase_mtp_data+0x244>
		0000000000006410:  R_AARCH64_CALL26	_printk
    6414: 17ffffc7     	b	0x6330 <syna_tcm_erase_mtp_data+0x164>
    6418: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6808
    641c: 91000000     	add	x0, x0, #0x0
		000000000000641c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6808
    6420: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
    6424: 91000021     	add	x1, x1, #0x0
		0000000000006424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
    6428: 2a0303f7     	mov	w23, w3
    642c: 2a0503f8     	mov	w24, w5
    6430: 94000000     	bl	0x6430 <syna_tcm_erase_mtp_data+0x264>
		0000000000006430:  R_AARCH64_CALL26	_printk
    6434: 2a1803e5     	mov	w5, w24
    6438: 2a1703e3     	mov	w3, w23
    643c: 35fff5e5     	cbnz	w5, 0x62f8 <syna_tcm_erase_mtp_data+0x12c>
    6440: 17ffffaa     	b	0x62e8 <syna_tcm_erase_mtp_data+0x11c>
    6444: 2a0003f7     	mov	w23, w0
    6448: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
    644c: 91000000     	add	x0, x0, #0x0
		000000000000644c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
    6450: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
    6454: 91000021     	add	x1, x1, #0x0
		0000000000006454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
    6458: 52800222     	mov	w2, #0x11               // =17
    645c: 94000000     	bl	0x645c <syna_tcm_erase_mtp_data+0x290>
		000000000000645c:  R_AARCH64_CALL26	_printk
    6460: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c4
    6464: 91000000     	add	x0, x0, #0x0
		0000000000006464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c4
    6468: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d30
    646c: 91000021     	add	x1, x1, #0x0
		000000000000646c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d30
    6470: 2a1503e2     	mov	w2, w21
    6474: 2a1603e3     	mov	w3, w22
    6478: 94000000     	bl	0x6478 <syna_tcm_erase_mtp_data+0x2ac>
		0000000000006478:  R_AARCH64_CALL26	_printk
    647c: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		000000000000647c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7f40
    6480: 91000000     	add	x0, x0, #0x0
		0000000000006480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7f40
    6484: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4974
    6488: 91000021     	add	x1, x1, #0x0
		0000000000006488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4974
    648c: 94000000     	bl	0x648c <syna_tcm_erase_mtp_data+0x2c0>
		000000000000648c:  R_AARCH64_CALL26	_printk
    6490: 17ffffa8     	b	0x6330 <syna_tcm_erase_mtp_data+0x164>
    6494: b9420e77     	ldr	w23, [x19, #0x20c]
    6498: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x54e6
    649c: 91000000     	add	x0, x0, #0x0
		000000000000649c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x54e6
    64a0: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		00000000000064a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a24
    64a4: 91000021     	add	x1, x1, #0x0
		00000000000064a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a24
    64a8: 2a0303f8     	mov	w24, w3
    64ac: 2a1703e2     	mov	w2, w23
    64b0: 94000000     	bl	0x64b0 <syna_tcm_erase_mtp_data+0x2e4>
		00000000000064b0:  R_AARCH64_CALL26	_printk
    64b4: 2a1703e5     	mov	w5, w23
    64b8: 2a1803e3     	mov	w3, w24
    64bc: 17ffff8f     	b	0x62f8 <syna_tcm_erase_mtp_data+0x12c>
    64c0: 94000000     	bl	0x64c0 <syna_tcm_erase_mtp_data+0x2f4>
		00000000000064c0:  R_AARCH64_CALL26	__stack_chk_fail
