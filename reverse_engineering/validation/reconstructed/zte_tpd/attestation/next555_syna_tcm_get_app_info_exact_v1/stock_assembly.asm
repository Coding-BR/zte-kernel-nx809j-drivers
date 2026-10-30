
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c380 <syna_tcm_get_app_info>:
   1c380: d503233f     	paciasp
   1c384: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c388: f9000bf5     	str	x21, [sp, #0x10]
   1c38c: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c390: 910003fd     	mov	x29, sp
   1c394: b4000a40     	cbz	x0, 0x1c4dc <syna_tcm_get_app_info+0x15c>
   1c398: 2a0203f5     	mov	w21, w2
   1c39c: 39402402     	ldrb	w2, [x0, #0x9]
   1c3a0: aa0003f3     	mov	x19, x0
   1c3a4: 7100045f     	cmp	w2, #0x1
   1c3a8: 54000a81     	b.ne	0x1c4f8 <syna_tcm_get_app_info+0x178>
   1c3ac: aa0103f4     	mov	x20, x1
   1c3b0: 350000b5     	cbnz	w21, 0x1c3c4 <syna_tcm_get_app_info+0x44>
   1c3b4: f9402668     	ldr	x8, [x19, #0x48]
   1c3b8: 39405108     	ldrb	w8, [x8, #0x14]
   1c3bc: 36001148     	tbz	w8, #0x0, 0x1c5e4 <syna_tcm_get_app_info+0x264>
   1c3c0: 2a1f03f5     	mov	w21, wzr
   1c3c4: f941ce68     	ldr	x8, [x19, #0x398]
   1c3c8: aa1303e0     	mov	x0, x19
   1c3cc: 52800401     	mov	w1, #0x20               // =32
   1c3d0: aa1f03e2     	mov	x2, xzr
   1c3d4: 2a1f03e3     	mov	w3, wzr
   1c3d8: aa1f03e4     	mov	x4, xzr
   1c3dc: 2a1503e5     	mov	w5, w21
   1c3e0: b85fc110     	ldur	w16, [x8, #-0x4]
   1c3e4: 728751d1     	movk	w17, #0x3a8e
   1c3e8: 72a48411     	movk	w17, #0x2420, lsl #16
   1c3ec: 6b11021f     	cmp	w16, w17
   1c3f0: 54000040     	b.eq	0x1c3f8 <syna_tcm_get_app_info+0x78>
   1c3f4: d4304500     	brk	#0x8228
   1c3f8: d63f0100     	blr	x8
   1c3fc: 37f808c0     	tbnz	w0, #0x1f, 0x1c514 <syna_tcm_get_app_info+0x194>
   1c400: b9415668     	ldr	w8, [x19, #0x154]
   1c404: 39462262     	ldrb	w2, [x19, #0x188]
   1c408: 52800609     	mov	w9, #0x30               // =48
   1c40c: 7100c11f     	cmp	w8, #0x30
   1c410: 1a893115     	csel	w21, w8, w9, lo
   1c414: 35000942     	cbnz	w2, 0x1c53c <syna_tcm_get_app_info+0x1bc>
   1c418: 91056260     	add	x0, x19, #0x158
   1c41c: 94000000     	bl	0x1c41c <syna_tcm_get_app_info+0x9c>
		000000000001c41c:  R_AARCH64_CALL26	mutex_lock
   1c420: 39462268     	ldrb	w8, [x19, #0x188]
   1c424: f940a661     	ldr	x1, [x19, #0x148]
   1c428: 11000508     	add	w8, w8, #0x1
   1c42c: 39062268     	strb	w8, [x19, #0x188]
   1c430: b4000a01     	cbz	x1, 0x1c570 <syna_tcm_get_app_info+0x1f0>
   1c434: b9415262     	ldr	w2, [x19, #0x150]
   1c438: 6b0202bf     	cmp	w21, w2
   1c43c: 540008c8     	b.hi	0x1c554 <syna_tcm_get_app_info+0x1d4>
   1c440: 9102c260     	add	x0, x19, #0xb0
   1c444: aa1503e2     	mov	x2, x21
   1c448: 94000000     	bl	0x1c448 <syna_tcm_get_app_info+0xc8>
		000000000001c448:  R_AARCH64_CALL26	memcpy
   1c44c: 39462262     	ldrb	w2, [x19, #0x188]
   1c450: 7100045f     	cmp	w2, #0x1
   1c454: 54000aa1     	b.ne	0x1c5a8 <syna_tcm_get_app_info+0x228>
   1c458: 2a1f03e8     	mov	w8, wzr
   1c45c: 91056260     	add	x0, x19, #0x158
   1c460: 39062268     	strb	w8, [x19, #0x188]
   1c464: 94000000     	bl	0x1c464 <syna_tcm_get_app_info+0xe4>
		000000000001c464:  R_AARCH64_CALL26	mutex_unlock
   1c468: b40000b4     	cbz	x20, 0x1c47c <syna_tcm_get_app_info+0xfc>
   1c46c: 9102c261     	add	x1, x19, #0xb0
   1c470: aa1403e0     	mov	x0, x20
   1c474: aa1503e2     	mov	x2, x21
   1c478: 94000000     	bl	0x1c478 <syna_tcm_get_app_info+0xf8>
		000000000001c478:  R_AARCH64_CALL26	memcpy
   1c47c: 79416662     	ldrh	w2, [x19, #0xb2]
   1c480: 35000242     	cbnz	w2, 0x1c4c8 <syna_tcm_get_app_info+0x148>
   1c484: 7941a268     	ldrh	w8, [x19, #0xd0]
   1c488: 7941a669     	ldrh	w9, [x19, #0xd2]
   1c48c: 2a1f03e0     	mov	w0, wzr
   1c490: 7941b66b     	ldrh	w11, [x19, #0xda]
   1c494: 29022668     	stp	w8, w9, [x19, #0x10]
   1c498: 7941aa68     	ldrh	w8, [x19, #0xd4]
   1c49c: 7941b269     	ldrh	w9, [x19, #0xd8]
   1c4a0: b9001a68     	str	w8, [x19, #0x18]
   1c4a4: a94c2a68     	ldp	x8, x10, [x19, #0xc0]
   1c4a8: 2903ae69     	stp	w9, w11, [x19, #0x1c]
   1c4ac: f802c26a     	stur	x10, [x19, #0x2c]
   1c4b0: f8024268     	stur	x8, [x19, #0x24]
   1c4b4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c4b8: f9400bf5     	ldr	x21, [sp, #0x10]
   1c4bc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c4c0: d50323bf     	autiasp
   1c4c4: d65f03c0     	ret
   1c4c8: 7103fc5f     	cmp	w2, #0xff
   1c4cc: 540007e1     	b.ne	0x1c5c8 <syna_tcm_get_app_info+0x248>
   1c4d0: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c4d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92de
   1c4d4: 91000000     	add	x0, x0, #0x0
		000000000001c4d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92de
   1c4d8: 1400003e     	b	0x1c5d0 <syna_tcm_get_app_info+0x250>
   1c4dc: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c4dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1c4e0: 91000000     	add	x0, x0, #0x0
		000000000001c4e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1c4e4: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c4e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c4e8: 91000021     	add	x1, x1, #0x0
		000000000001c4e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c4ec: 94000000     	bl	0x1c4ec <syna_tcm_get_app_info+0x16c>
		000000000001c4ec:  R_AARCH64_CALL26	_printk
   1c4f0: 12801e00     	mov	w0, #-0xf1              // =-241
   1c4f4: 17fffff0     	b	0x1c4b4 <syna_tcm_get_app_info+0x134>
   1c4f8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c4f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2831
   1c4fc: 91000000     	add	x0, x0, #0x0
		000000000001c4fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2831
   1c500: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c500:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c504: 91000021     	add	x1, x1, #0x0
		000000000001c504:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c508: 94000000     	bl	0x1c508 <syna_tcm_get_app_info+0x188>
		000000000001c508:  R_AARCH64_CALL26	_printk
   1c50c: 12801e00     	mov	w0, #-0xf1              // =-241
   1c510: 17ffffe9     	b	0x1c4b4 <syna_tcm_get_app_info+0x134>
   1c514: 90000008     	adrp	x8, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1c518: 91000108     	add	x8, x8, #0x0
		000000000001c518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1c51c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c51c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c520: 91000021     	add	x1, x1, #0x0
		000000000001c520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c524: 2a0003f3     	mov	w19, w0
   1c528: aa0803e0     	mov	x0, x8
   1c52c: 52800402     	mov	w2, #0x20               // =32
   1c530: 94000000     	bl	0x1c530 <syna_tcm_get_app_info+0x1b0>
		000000000001c530:  R_AARCH64_CALL26	_printk
   1c534: 2a1303e0     	mov	w0, w19
   1c538: 17ffffdf     	b	0x1c4b4 <syna_tcm_get_app_info+0x134>
   1c53c: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c53c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c540: 91000000     	add	x0, x0, #0x0
		000000000001c540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c544: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   1c548: 91000021     	add	x1, x1, #0x0
		000000000001c548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   1c54c: 94000000     	bl	0x1c54c <syna_tcm_get_app_info+0x1cc>
		000000000001c54c:  R_AARCH64_CALL26	_printk
   1c550: 17ffffb2     	b	0x1c418 <syna_tcm_get_app_info+0x98>
   1c554: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81f1
   1c558: 91000000     	add	x0, x0, #0x0
		000000000001c558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81f1
   1c55c: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c55c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a25
   1c560: 91000021     	add	x1, x1, #0x0
		000000000001c560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a25
   1c564: 52800603     	mov	w3, #0x30               // =48
   1c568: 2a1503e4     	mov	w4, w21
   1c56c: 94000000     	bl	0x1c56c <syna_tcm_get_app_info+0x1ec>
		000000000001c56c:  R_AARCH64_CALL26	_printk
   1c570: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65ec
   1c574: 91000000     	add	x0, x0, #0x0
		000000000001c574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65ec
   1c578: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c57c: 91000021     	add	x1, x1, #0x0
		000000000001c57c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c580: 94000000     	bl	0x1c580 <syna_tcm_get_app_info+0x200>
		000000000001c580:  R_AARCH64_CALL26	_printk
   1c584: 39462262     	ldrb	w2, [x19, #0x188]
   1c588: 7100045f     	cmp	w2, #0x1
   1c58c: 540003a1     	b.ne	0x1c600 <syna_tcm_get_app_info+0x280>
   1c590: 2a1f03e8     	mov	w8, wzr
   1c594: 91056260     	add	x0, x19, #0x158
   1c598: 39062268     	strb	w8, [x19, #0x188]
   1c59c: 94000000     	bl	0x1c59c <syna_tcm_get_app_info+0x21c>
		000000000001c59c:  R_AARCH64_CALL26	mutex_unlock
   1c5a0: 128002a0     	mov	w0, #-0x16              // =-22
   1c5a4: 17ffffc4     	b	0x1c4b4 <syna_tcm_get_app_info+0x134>
   1c5a8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c5ac: 91000000     	add	x0, x0, #0x0
		000000000001c5ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c5b0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1c5b4: 91000021     	add	x1, x1, #0x0
		000000000001c5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1c5b8: 94000000     	bl	0x1c5b8 <syna_tcm_get_app_info+0x238>
		000000000001c5b8:  R_AARCH64_CALL26	_printk
   1c5bc: 39462268     	ldrb	w8, [x19, #0x188]
   1c5c0: 51000508     	sub	w8, w8, #0x1
   1c5c4: 17ffffa6     	b	0x1c45c <syna_tcm_get_app_info+0xdc>
   1c5c8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b2
   1c5cc: 91000000     	add	x0, x0, #0x0
		000000000001c5cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b2
   1c5d0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c5d4: 91000021     	add	x1, x1, #0x0
		000000000001c5d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c5d8: 94000000     	bl	0x1c5d8 <syna_tcm_get_app_info+0x258>
		000000000001c5d8:  R_AARCH64_CALL26	_printk
   1c5dc: 12801e20     	mov	w0, #-0xf2              // =-242
   1c5e0: 17ffffb5     	b	0x1c4b4 <syna_tcm_get_app_info+0x134>
   1c5e4: b9420e75     	ldr	w21, [x19, #0x20c]
   1c5e8: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1c5ec: 91000000     	add	x0, x0, #0x0
		000000000001c5ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1c5f0: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c5f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14d5
   1c5f4: 91000021     	add	x1, x1, #0x0
		000000000001c5f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14d5
   1c5f8: 94000000     	bl	0x1c5f8 <syna_tcm_get_app_info+0x278>
		000000000001c5f8:  R_AARCH64_CALL26	_printk
   1c5fc: 17ffff72     	b	0x1c3c4 <syna_tcm_get_app_info+0x44>
   1c600: 90000000     	adrp	x0, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1c604: 91000000     	add	x0, x0, #0x0
		000000000001c604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   1c608: 90000001     	adrp	x1, 0x1c000 <syna_tcm_switch_fw_mode+0x19c>
		000000000001c608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   1c60c: 91000021     	add	x1, x1, #0x0
		000000000001c60c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   1c610: 94000000     	bl	0x1c610 <syna_tcm_get_app_info+0x290>
		000000000001c610:  R_AARCH64_CALL26	_printk
   1c614: 39462268     	ldrb	w8, [x19, #0x188]
   1c618: 51000508     	sub	w8, w8, #0x1
   1c61c: 17ffffde     	b	0x1c594 <syna_tcm_get_app_info+0x214>
