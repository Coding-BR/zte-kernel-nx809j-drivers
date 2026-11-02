
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013548 <syna_tcm_get_app_info>:
   13548: d503233f     	paciasp
   1354c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13550: f9000bf5     	str	x21, [sp, #0x10]
   13554: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13558: 910003fd     	mov	x29, sp
   1355c: b4000a40     	cbz	x0, 0x136a4 <syna_tcm_get_app_info+0x15c>
   13560: 2a0203f5     	mov	w21, w2
   13564: 39402402     	ldrb	w2, [x0, #0x9]
   13568: aa0003f3     	mov	x19, x0
   1356c: 7100045f     	cmp	w2, #0x1
   13570: 54000a81     	b.ne	0x136c0 <syna_tcm_get_app_info+0x178>
   13574: aa0103f4     	mov	x20, x1
   13578: 350000b5     	cbnz	w21, 0x1358c <syna_tcm_get_app_info+0x44>
   1357c: f9402668     	ldr	x8, [x19, #0x48]
   13580: 39405108     	ldrb	w8, [x8, #0x14]
   13584: 36001148     	tbz	w8, #0x0, 0x137ac <syna_tcm_get_app_info+0x264>
   13588: 2a1f03f5     	mov	w21, wzr
   1358c: f941ce68     	ldr	x8, [x19, #0x398]
   13590: aa1303e0     	mov	x0, x19
   13594: 52800401     	mov	w1, #0x20               // =32
   13598: aa1f03e2     	mov	x2, xzr
   1359c: 2a1f03e3     	mov	w3, wzr
   135a0: aa1f03e4     	mov	x4, xzr
   135a4: 2a1503e5     	mov	w5, w21
   135a8: b85fc110     	ldur	w16, [x8, #-0x4]
   135ac: 728751d1     	movk	w17, #0x3a8e
   135b0: 72a48411     	movk	w17, #0x2420, lsl #16
   135b4: 6b11021f     	cmp	w16, w17
   135b8: 54000040     	b.eq	0x135c0 <syna_tcm_get_app_info+0x78>
   135bc: d4304500     	brk	#0x8228
   135c0: d63f0100     	blr	x8
   135c4: 37f808c0     	tbnz	w0, #0x1f, 0x136dc <syna_tcm_get_app_info+0x194>
   135c8: b9415668     	ldr	w8, [x19, #0x154]
   135cc: 39462262     	ldrb	w2, [x19, #0x188]
   135d0: 52800609     	mov	w9, #0x30               // =48
   135d4: 7100c11f     	cmp	w8, #0x30
   135d8: 1a893115     	csel	w21, w8, w9, lo
   135dc: 35000942     	cbnz	w2, 0x13704 <syna_tcm_get_app_info+0x1bc>
   135e0: 91056260     	add	x0, x19, #0x158
   135e4: 94000000     	bl	0x135e4 <syna_tcm_get_app_info+0x9c>
		00000000000135e4:  R_AARCH64_CALL26	mutex_lock
   135e8: 39462268     	ldrb	w8, [x19, #0x188]
   135ec: f940a661     	ldr	x1, [x19, #0x148]
   135f0: 11000508     	add	w8, w8, #0x1
   135f4: 39062268     	strb	w8, [x19, #0x188]
   135f8: b4000a01     	cbz	x1, 0x13738 <syna_tcm_get_app_info+0x1f0>
   135fc: b9415262     	ldr	w2, [x19, #0x150]
   13600: 6b0202bf     	cmp	w21, w2
   13604: 540008c8     	b.hi	0x1371c <syna_tcm_get_app_info+0x1d4>
   13608: 9102c260     	add	x0, x19, #0xb0
   1360c: aa1503e2     	mov	x2, x21
   13610: 94000000     	bl	0x13610 <syna_tcm_get_app_info+0xc8>
		0000000000013610:  R_AARCH64_CALL26	memcpy
   13614: 39462262     	ldrb	w2, [x19, #0x188]
   13618: 7100045f     	cmp	w2, #0x1
   1361c: 54000aa1     	b.ne	0x13770 <syna_tcm_get_app_info+0x228>
   13620: 2a1f03e8     	mov	w8, wzr
   13624: 91056260     	add	x0, x19, #0x158
   13628: 39062268     	strb	w8, [x19, #0x188]
   1362c: 94000000     	bl	0x1362c <syna_tcm_get_app_info+0xe4>
		000000000001362c:  R_AARCH64_CALL26	mutex_unlock
   13630: b40000b4     	cbz	x20, 0x13644 <syna_tcm_get_app_info+0xfc>
   13634: 9102c261     	add	x1, x19, #0xb0
   13638: aa1403e0     	mov	x0, x20
   1363c: aa1503e2     	mov	x2, x21
   13640: 94000000     	bl	0x13640 <syna_tcm_get_app_info+0xf8>
		0000000000013640:  R_AARCH64_CALL26	memcpy
   13644: 79416662     	ldrh	w2, [x19, #0xb2]
   13648: 35000242     	cbnz	w2, 0x13690 <syna_tcm_get_app_info+0x148>
   1364c: 7941a268     	ldrh	w8, [x19, #0xd0]
   13650: 7941a669     	ldrh	w9, [x19, #0xd2]
   13654: 2a1f03e0     	mov	w0, wzr
   13658: 7941b66b     	ldrh	w11, [x19, #0xda]
   1365c: 29022668     	stp	w8, w9, [x19, #0x10]
   13660: 7941aa68     	ldrh	w8, [x19, #0xd4]
   13664: 7941b269     	ldrh	w9, [x19, #0xd8]
   13668: b9001a68     	str	w8, [x19, #0x18]
   1366c: a94c2a68     	ldp	x8, x10, [x19, #0xc0]
   13670: 2903ae69     	stp	w9, w11, [x19, #0x1c]
   13674: f802c26a     	stur	x10, [x19, #0x2c]
   13678: f8024268     	stur	x8, [x19, #0x24]
   1367c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13680: f9400bf5     	ldr	x21, [sp, #0x10]
   13684: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13688: d50323bf     	autiasp
   1368c: d65f03c0     	ret
   13690: 7103fc5f     	cmp	w2, #0xff
   13694: 540007e1     	b.ne	0x13790 <syna_tcm_get_app_info+0x248>
   13698: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9536
   1369c: 91000000     	add	x0, x0, #0x0
		000000000001369c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9536
   136a0: 1400003e     	b	0x13798 <syna_tcm_get_app_info+0x250>
   136a4: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   136a8: 91000000     	add	x0, x0, #0x0
		00000000000136a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   136ac: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   136b0: 91000021     	add	x1, x1, #0x0
		00000000000136b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   136b4: 94000000     	bl	0x136b4 <syna_tcm_get_app_info+0x16c>
		00000000000136b4:  R_AARCH64_CALL26	_printk
   136b8: 12801e00     	mov	w0, #-0xf1              // =-241
   136bc: 17fffff0     	b	0x1367c <syna_tcm_get_app_info+0x134>
   136c0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   136c4: 91000000     	add	x0, x0, #0x0
		00000000000136c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   136c8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   136cc: 91000021     	add	x1, x1, #0x0
		00000000000136cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   136d0: 94000000     	bl	0x136d0 <syna_tcm_get_app_info+0x188>
		00000000000136d0:  R_AARCH64_CALL26	_printk
   136d4: 12801e00     	mov	w0, #-0xf1              // =-241
   136d8: 17ffffe9     	b	0x1367c <syna_tcm_get_app_info+0x134>
   136dc: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   136e0: 91000108     	add	x8, x8, #0x0
		00000000000136e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   136e4: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000136e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   136e8: 91000021     	add	x1, x1, #0x0
		00000000000136e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   136ec: 2a0003f3     	mov	w19, w0
   136f0: aa0803e0     	mov	x0, x8
   136f4: 52800402     	mov	w2, #0x20               // =32
   136f8: 94000000     	bl	0x136f8 <syna_tcm_get_app_info+0x1b0>
		00000000000136f8:  R_AARCH64_CALL26	_printk
   136fc: 2a1303e0     	mov	w0, w19
   13700: 17ffffdf     	b	0x1367c <syna_tcm_get_app_info+0x134>
   13704: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13708: 91000000     	add	x0, x0, #0x0
		0000000000013708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1370c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001370c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   13710: 91000021     	add	x1, x1, #0x0
		0000000000013710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   13714: 94000000     	bl	0x13714 <syna_tcm_get_app_info+0x1cc>
		0000000000013714:  R_AARCH64_CALL26	_printk
   13718: 17ffffb2     	b	0x135e0 <syna_tcm_get_app_info+0x98>
   1371c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001371c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   13720: 91000000     	add	x0, x0, #0x0
		0000000000013720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   13724: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   13728: 91000021     	add	x1, x1, #0x0
		0000000000013728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   1372c: 52800603     	mov	w3, #0x30               // =48
   13730: 2a1503e4     	mov	w4, w21
   13734: 94000000     	bl	0x13734 <syna_tcm_get_app_info+0x1ec>
		0000000000013734:  R_AARCH64_CALL26	_printk
   13738: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6786
   1373c: 91000000     	add	x0, x0, #0x0
		000000000001373c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6786
   13740: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   13744: 91000021     	add	x1, x1, #0x0
		0000000000013744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   13748: 94000000     	bl	0x13748 <syna_tcm_get_app_info+0x200>
		0000000000013748:  R_AARCH64_CALL26	_printk
   1374c: 39462262     	ldrb	w2, [x19, #0x188]
   13750: 7100045f     	cmp	w2, #0x1
   13754: 540003a1     	b.ne	0x137c8 <syna_tcm_get_app_info+0x280>
   13758: 2a1f03e8     	mov	w8, wzr
   1375c: 91056260     	add	x0, x19, #0x158
   13760: 39062268     	strb	w8, [x19, #0x188]
   13764: 94000000     	bl	0x13764 <syna_tcm_get_app_info+0x21c>
		0000000000013764:  R_AARCH64_CALL26	mutex_unlock
   13768: 128002a0     	mov	w0, #-0x16              // =-22
   1376c: 17ffffc4     	b	0x1367c <syna_tcm_get_app_info+0x134>
   13770: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013770:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13774: 91000000     	add	x0, x0, #0x0
		0000000000013774:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13778: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013778:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   1377c: 91000021     	add	x1, x1, #0x0
		000000000001377c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13780: 94000000     	bl	0x13780 <syna_tcm_get_app_info+0x238>
		0000000000013780:  R_AARCH64_CALL26	_printk
   13784: 39462268     	ldrb	w8, [x19, #0x188]
   13788: 51000508     	sub	w8, w8, #0x1
   1378c: 17ffffa6     	b	0x13624 <syna_tcm_get_app_info+0xdc>
   13790: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42a2
   13794: 91000000     	add	x0, x0, #0x0
		0000000000013794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42a2
   13798: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   1379c: 91000021     	add	x1, x1, #0x0
		000000000001379c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   137a0: 94000000     	bl	0x137a0 <syna_tcm_get_app_info+0x258>
		00000000000137a0:  R_AARCH64_CALL26	_printk
   137a4: 12801e20     	mov	w0, #-0xf2              // =-242
   137a8: 17ffffb5     	b	0x1367c <syna_tcm_get_app_info+0x134>
   137ac: b9420e75     	ldr	w21, [x19, #0x20c]
   137b0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000137b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   137b4: 91000000     	add	x0, x0, #0x0
		00000000000137b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   137b8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000137b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
   137bc: 91000021     	add	x1, x1, #0x0
		00000000000137bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
   137c0: 94000000     	bl	0x137c0 <syna_tcm_get_app_info+0x278>
		00000000000137c0:  R_AARCH64_CALL26	_printk
   137c4: 17ffff72     	b	0x1358c <syna_tcm_get_app_info+0x44>
   137c8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000137c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   137cc: 91000000     	add	x0, x0, #0x0
		00000000000137cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   137d0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000137d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   137d4: 91000021     	add	x1, x1, #0x0
		00000000000137d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   137d8: 94000000     	bl	0x137d8 <syna_tcm_get_app_info+0x290>
		00000000000137d8:  R_AARCH64_CALL26	_printk
   137dc: 39462268     	ldrb	w8, [x19, #0x188]
   137e0: 51000508     	sub	w8, w8, #0x1
   137e4: 17ffffde     	b	0x1375c <syna_tcm_get_app_info+0x214>
