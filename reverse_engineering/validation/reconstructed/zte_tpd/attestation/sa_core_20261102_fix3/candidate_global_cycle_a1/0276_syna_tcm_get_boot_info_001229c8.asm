
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013308 <syna_tcm_get_boot_info>:
   13308: d503233f     	paciasp
   1330c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13310: f9000bf5     	str	x21, [sp, #0x10]
   13314: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13318: 910003fd     	mov	x29, sp
   1331c: b4000800     	cbz	x0, 0x1341c <syna_tcm_get_boot_info+0x114>
   13320: 2a0203f5     	mov	w21, w2
   13324: 39402402     	ldrb	w2, [x0, #0x9]
   13328: aa0003f3     	mov	x19, x0
   1332c: 71002c5f     	cmp	w2, #0xb
   13330: 54000841     	b.ne	0x13438 <syna_tcm_get_boot_info+0x130>
   13334: aa0103f4     	mov	x20, x1
   13338: 350000b5     	cbnz	w21, 0x1334c <syna_tcm_get_boot_info+0x44>
   1333c: f9402668     	ldr	x8, [x19, #0x48]
   13340: 39405108     	ldrb	w8, [x8, #0x14]
   13344: 36000e28     	tbz	w8, #0x0, 0x13508 <syna_tcm_get_boot_info+0x200>
   13348: 2a1f03f5     	mov	w21, wzr
   1334c: f941ce68     	ldr	x8, [x19, #0x398]
   13350: aa1303e0     	mov	x0, x19
   13354: 52800201     	mov	w1, #0x10               // =16
   13358: aa1f03e2     	mov	x2, xzr
   1335c: 2a1f03e3     	mov	w3, wzr
   13360: aa1f03e4     	mov	x4, xzr
   13364: 2a1503e5     	mov	w5, w21
   13368: b85fc110     	ldur	w16, [x8, #-0x4]
   1336c: 728751d1     	movk	w17, #0x3a8e
   13370: 72a48411     	movk	w17, #0x2420, lsl #16
   13374: 6b11021f     	cmp	w16, w17
   13378: 54000040     	b.eq	0x13380 <syna_tcm_get_boot_info+0x78>
   1337c: d4304500     	brk	#0x8228
   13380: d63f0100     	blr	x8
   13384: 37f80680     	tbnz	w0, #0x1f, 0x13454 <syna_tcm_get_boot_info+0x14c>
   13388: b9415668     	ldr	w8, [x19, #0x154]
   1338c: 39462262     	ldrb	w2, [x19, #0x188]
   13390: 52800409     	mov	w9, #0x20               // =32
   13394: 7100811f     	cmp	w8, #0x20
   13398: 1a893115     	csel	w21, w8, w9, lo
   1339c: 35000702     	cbnz	w2, 0x1347c <syna_tcm_get_boot_info+0x174>
   133a0: 91056260     	add	x0, x19, #0x158
   133a4: 94000000     	bl	0x133a4 <syna_tcm_get_boot_info+0x9c>
		00000000000133a4:  R_AARCH64_CALL26	mutex_lock
   133a8: 39462268     	ldrb	w8, [x19, #0x188]
   133ac: f940a661     	ldr	x1, [x19, #0x148]
   133b0: 11000508     	add	w8, w8, #0x1
   133b4: 39062268     	strb	w8, [x19, #0x188]
   133b8: b40007c1     	cbz	x1, 0x134b0 <syna_tcm_get_boot_info+0x1a8>
   133bc: b9415262     	ldr	w2, [x19, #0x150]
   133c0: 6b0202bf     	cmp	w21, w2
   133c4: 54000688     	b.hi	0x13494 <syna_tcm_get_boot_info+0x18c>
   133c8: 91038260     	add	x0, x19, #0xe0
   133cc: aa1503e2     	mov	x2, x21
   133d0: 94000000     	bl	0x133d0 <syna_tcm_get_boot_info+0xc8>
		00000000000133d0:  R_AARCH64_CALL26	memcpy
   133d4: 39462262     	ldrb	w2, [x19, #0x188]
   133d8: 7100045f     	cmp	w2, #0x1
   133dc: 54000861     	b.ne	0x134e8 <syna_tcm_get_boot_info+0x1e0>
   133e0: 2a1f03e8     	mov	w8, wzr
   133e4: 91056260     	add	x0, x19, #0x158
   133e8: 39062268     	strb	w8, [x19, #0x188]
   133ec: 94000000     	bl	0x133ec <syna_tcm_get_boot_info+0xe4>
		00000000000133ec:  R_AARCH64_CALL26	mutex_unlock
   133f0: b40000b4     	cbz	x20, 0x13404 <syna_tcm_get_boot_info+0xfc>
   133f4: 91038261     	add	x1, x19, #0xe0
   133f8: aa1403e0     	mov	x0, x20
   133fc: aa1503e2     	mov	x2, x21
   13400: 94000000     	bl	0x13400 <syna_tcm_get_boot_info+0xf8>
		0000000000013400:  R_AARCH64_CALL26	memcpy
   13404: 2a1f03e0     	mov	w0, wzr
   13408: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1340c: f9400bf5     	ldr	x21, [sp, #0x10]
   13410: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13414: d50323bf     	autiasp
   13418: d65f03c0     	ret
   1341c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001341c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13420: 91000000     	add	x0, x0, #0x0
		0000000000013420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13424: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7352
   13428: 91000021     	add	x1, x1, #0x0
		0000000000013428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7352
   1342c: 94000000     	bl	0x1342c <syna_tcm_get_boot_info+0x124>
		000000000001342c:  R_AARCH64_CALL26	_printk
   13430: 12801e00     	mov	w0, #-0xf1              // =-241
   13434: 17fffff5     	b	0x13408 <syna_tcm_get_boot_info+0x100>
   13438: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa498
   1343c: 91000000     	add	x0, x0, #0x0
		000000000001343c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa498
   13440: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7352
   13444: 91000021     	add	x1, x1, #0x0
		0000000000013444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7352
   13448: 94000000     	bl	0x13448 <syna_tcm_get_boot_info+0x140>
		0000000000013448:  R_AARCH64_CALL26	_printk
   1344c: 12801e00     	mov	w0, #-0xf1              // =-241
   13450: 17ffffee     	b	0x13408 <syna_tcm_get_boot_info+0x100>
   13454: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013454:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13458: 91000108     	add	x8, x8, #0x0
		0000000000013458:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   1345c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001345c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7352
   13460: 91000021     	add	x1, x1, #0x0
		0000000000013460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7352
   13464: 2a0003f3     	mov	w19, w0
   13468: aa0803e0     	mov	x0, x8
   1346c: 52800202     	mov	w2, #0x10               // =16
   13470: 94000000     	bl	0x13470 <syna_tcm_get_boot_info+0x168>
		0000000000013470:  R_AARCH64_CALL26	_printk
   13474: 2a1303e0     	mov	w0, w19
   13478: 17ffffe4     	b	0x13408 <syna_tcm_get_boot_info+0x100>
   1347c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001347c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13480: 91000000     	add	x0, x0, #0x0
		0000000000013480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13484: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   13488: 91000021     	add	x1, x1, #0x0
		0000000000013488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   1348c: 94000000     	bl	0x1348c <syna_tcm_get_boot_info+0x184>
		000000000001348c:  R_AARCH64_CALL26	_printk
   13490: 17ffffc4     	b	0x133a0 <syna_tcm_get_boot_info+0x98>
   13494: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   13498: 91000000     	add	x0, x0, #0x0
		0000000000013498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   1349c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001349c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   134a0: 91000021     	add	x1, x1, #0x0
		00000000000134a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   134a4: 52800403     	mov	w3, #0x20               // =32
   134a8: 2a1503e4     	mov	w4, w21
   134ac: 94000000     	bl	0x134ac <syna_tcm_get_boot_info+0x1a4>
		00000000000134ac:  R_AARCH64_CALL26	_printk
   134b0: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000134b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8632
   134b4: 91000000     	add	x0, x0, #0x0
		00000000000134b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8632
   134b8: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000134b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7352
   134bc: 91000021     	add	x1, x1, #0x0
		00000000000134bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7352
   134c0: 94000000     	bl	0x134c0 <syna_tcm_get_boot_info+0x1b8>
		00000000000134c0:  R_AARCH64_CALL26	_printk
   134c4: 39462262     	ldrb	w2, [x19, #0x188]
   134c8: 7100045f     	cmp	w2, #0x1
   134cc: 540002c1     	b.ne	0x13524 <syna_tcm_get_boot_info+0x21c>
   134d0: 2a1f03e8     	mov	w8, wzr
   134d4: 91056260     	add	x0, x19, #0x158
   134d8: 39062268     	strb	w8, [x19, #0x188]
   134dc: 94000000     	bl	0x134dc <syna_tcm_get_boot_info+0x1d4>
		00000000000134dc:  R_AARCH64_CALL26	mutex_unlock
   134e0: 128002a0     	mov	w0, #-0x16              // =-22
   134e4: 17ffffc9     	b	0x13408 <syna_tcm_get_boot_info+0x100>
   134e8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000134e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   134ec: 91000000     	add	x0, x0, #0x0
		00000000000134ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   134f0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		00000000000134f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   134f4: 91000021     	add	x1, x1, #0x0
		00000000000134f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   134f8: 94000000     	bl	0x134f8 <syna_tcm_get_boot_info+0x1f0>
		00000000000134f8:  R_AARCH64_CALL26	_printk
   134fc: 39462268     	ldrb	w8, [x19, #0x188]
   13500: 51000508     	sub	w8, w8, #0x1
   13504: 17ffffb8     	b	0x133e4 <syna_tcm_get_boot_info+0xdc>
   13508: b9420e75     	ldr	w21, [x19, #0x20c]
   1350c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001350c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13510: 91000000     	add	x0, x0, #0x0
		0000000000013510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13514: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7352
   13518: 91000021     	add	x1, x1, #0x0
		0000000000013518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7352
   1351c: 94000000     	bl	0x1351c <syna_tcm_get_boot_info+0x214>
		000000000001351c:  R_AARCH64_CALL26	_printk
   13520: 17ffff8b     	b	0x1334c <syna_tcm_get_boot_info+0x44>
   13524: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13528: 91000000     	add	x0, x0, #0x0
		0000000000013528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   1352c: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		000000000001352c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   13530: 91000021     	add	x1, x1, #0x0
		0000000000013530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13534: 94000000     	bl	0x13534 <syna_tcm_get_boot_info+0x22c>
		0000000000013534:  R_AARCH64_CALL26	_printk
   13538: 39462268     	ldrb	w8, [x19, #0x188]
   1353c: 51000508     	sub	w8, w8, #0x1
   13540: 17ffffe5     	b	0x134d4 <syna_tcm_get_boot_info+0x1cc>
