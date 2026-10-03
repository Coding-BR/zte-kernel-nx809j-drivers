
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014254 <syna_sysfs_get_delta_show>:
   14254: d503233f     	paciasp
   14258: d10343ff     	sub	sp, sp, #0xd0
   1425c: a9077bfd     	stp	x29, x30, [sp, #0x70]
   14260: a9086ffc     	stp	x28, x27, [sp, #0x80]
   14264: a90967fa     	stp	x26, x25, [sp, #0x90]
   14268: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   1426c: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   14270: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   14274: 9101c3fd     	add	x29, sp, #0x70
   14278: d5384108     	mrs	x8, SP_EL0
   1427c: aa0203f3     	mov	x19, x2
   14280: 52800241     	mov	w1, #0x12               // =18
   14284: f9438908     	ldr	x8, [x8, #0x710]
   14288: 52800022     	mov	w2, #0x1                // =1
   1428c: 52800143     	mov	w3, #0xa                // =10
   14290: f81f83a8     	stur	x8, [x29, #-0x8]
   14294: f9400c08     	ldr	x8, [x0, #0x18]
   14298: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   1429c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   142a0: f9404d16     	ldr	x22, [x8, #0x98]
   142a4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   142a8: f9001bff     	str	xzr, [sp, #0x30]
   142ac: f94002d4     	ldr	x20, [x22]
   142b0: aa1403e0     	mov	x0, x20
   142b4: 94000000     	bl	0x142b4 <syna_sysfs_get_delta_show+0x60>
		00000000000142b4:  R_AARCH64_CALL26	syna_tcm_enable_report
   142b8: 37f81a00     	tbnz	w0, #0x1f, 0x145f8 <syna_sysfs_get_delta_show+0x3a4>
   142bc: a9004ff6     	stp	x22, x19, [sp]
   142c0: b4001c74     	cbz	x20, 0x1464c <syna_sysfs_get_delta_show+0x3f8>
   142c4: f9402695     	ldr	x21, [x20, #0x48]
   142c8: b4001ef5     	cbz	x21, 0x146a4 <syna_sysfs_get_delta_show+0x450>
   142cc: f9401ea8     	ldr	x8, [x21, #0x38]
   142d0: b40001e8     	cbz	x8, 0x1430c <syna_sysfs_get_delta_show+0xb8>
   142d4: 91014280     	add	x0, x20, #0x50
   142d8: 94000000     	bl	0x142d8 <syna_sysfs_get_delta_show+0x84>
		00000000000142d8:  R_AARCH64_CALL26	mutex_lock
   142dc: f9401ea8     	ldr	x8, [x21, #0x38]
   142e0: aa1503e0     	mov	x0, x21
   142e4: 2a1f03e1     	mov	w1, wzr
   142e8: b85fc110     	ldur	w16, [x8, #-0x4]
   142ec: 728c3631     	movk	w17, #0x61b1
   142f0: 72a685d1     	movk	w17, #0x342e, lsl #16
   142f4: 6b11021f     	cmp	w16, w17
   142f8: 54000040     	b.eq	0x14300 <syna_sysfs_get_delta_show+0xac>
   142fc: d4304500     	brk	#0x8228
   14300: d63f0100     	blr	x8
   14304: 91014280     	add	x0, x20, #0x50
   14308: 94000000     	bl	0x14308 <syna_sysfs_get_delta_show+0xb4>
		0000000000014308:  R_AARCH64_CALL26	mutex_unlock
   1430c: 910083e8     	add	x8, sp, #0x20
   14310: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   14314: 91000021     	add	x1, x1, #0x0
		0000000000014314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   14318: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014318:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95d
   1431c: 91000042     	add	x2, x2, #0x0
		000000000001431c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95d
   14320: 91004100     	add	x0, x8, #0x10
   14324: 390183ff     	strb	wzr, [sp, #0x60]
   14328: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1432c: 94000000     	bl	0x1432c <syna_sysfs_get_delta_show+0xd8>
		000000000001432c:  R_AARCH64_CALL26	__mutex_init
   14330: 2a1f03f3     	mov	w19, wzr
   14334: 2a1f03fa     	mov	w26, wzr
   14338: 90000015     	adrp	x21, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc25f
   1433c: 910002b5     	add	x21, x21, #0x0
		000000000001433c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc25f
   14340: 9000001c     	adrp	x28, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x91b
   14344: 9100039c     	add	x28, x28, #0x0
		0000000000014344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x91b
   14348: 910083e2     	add	x2, sp, #0x20
   1434c: aa1403e0     	mov	x0, x20
   14350: 52800241     	mov	w1, #0x12               // =18
   14354: 52800c83     	mov	w3, #0x64               // =100
   14358: 52807d04     	mov	w4, #0x3e8              // =1000
   1435c: 94000000     	bl	0x1435c <syna_sysfs_get_delta_show+0x108>
		000000000001435c:  R_AARCH64_CALL26	syna_tcm_wait_for_report
   14360: 37f80060     	tbnz	w0, #0x1f, 0x1436c <syna_sysfs_get_delta_show+0x118>
   14364: b9402fe8     	ldr	w8, [sp, #0x2c]
   14368: 350000e8     	cbnz	w8, 0x14384 <syna_sysfs_get_delta_show+0x130>
   1436c: 1100075a     	add	w26, w26, #0x1
   14370: 7100067f     	cmp	w19, #0x1
   14374: 54000ee8     	b.hi	0x14550 <syna_sysfs_get_delta_show+0x2fc>
   14378: 7100175f     	cmp	w26, #0x5
   1437c: 54fffe63     	b.lo	0x14348 <syna_sysfs_get_delta_show+0xf4>
   14380: 14000074     	b	0x14550 <syna_sysfs_get_delta_show+0x2fc>
   14384: 11000673     	add	w19, w19, #0x1
   14388: aa1503e0     	mov	x0, x21
   1438c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001438c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf06
   14390: 91000021     	add	x1, x1, #0x0
		0000000000014390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf06
   14394: 2a1303e2     	mov	w2, w19
   14398: 94000000     	bl	0x14398 <syna_sysfs_get_delta_show+0x144>
		0000000000014398:  R_AARCH64_CALL26	_printk
   1439c: b9401e88     	ldr	w8, [x20, #0x1c]
   143a0: 34fffe88     	cbz	w8, 0x14370 <syna_sysfs_get_delta_show+0x11c>
   143a4: f94013f7     	ldr	x23, [sp, #0x20]
   143a8: b90013f3     	str	w19, [sp, #0x10]
   143ac: 2a1f03f3     	mov	w19, wzr
   143b0: b90017f3     	str	w19, [sp, #0x14]
   143b4: b9402293     	ldr	w19, [x20, #0x20]
   143b8: 94000000     	bl	0x143b8 <syna_sysfs_get_delta_show+0x164>
		00000000000143b8:  R_AARCH64_CALL26	syna_request_managed_device
   143bc: b5000080     	cbnz	x0, 0x143cc <syna_sysfs_get_delta_show+0x178>
   143c0: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000143c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   143c4: 91000000     	add	x0, x0, #0x0
		00000000000143c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   143c8: 14000007     	b	0x143e4 <syna_sysfs_get_delta_show+0x190>
   143cc: 0b130668     	add	w8, w19, w19, lsl #1
   143d0: 531f7916     	lsl	w22, w8, #1
   143d4: 710002df     	cmp	w22, #0x0
   143d8: 5400016c     	b.gt	0x14404 <syna_sysfs_get_delta_show+0x1b0>
   143dc: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000143dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   143e0: 91000000     	add	x0, x0, #0x0
		00000000000143e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   143e4: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000143e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   143e8: 91000021     	add	x1, x1, #0x0
		00000000000143e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   143ec: 94000000     	bl	0x143ec <syna_sysfs_get_delta_show+0x198>
		00000000000143ec:  R_AARCH64_CALL26	_printk
   143f0: aa1f03f6     	mov	x22, xzr
   143f4: aa1f03fb     	mov	x27, xzr
   143f8: b9402288     	ldr	w8, [x20, #0x20]
   143fc: 34000108     	cbz	w8, 0x1441c <syna_sysfs_get_delta_show+0x1c8>
   14400: 14000018     	b	0x14460 <syna_sysfs_get_delta_show+0x20c>
   14404: aa1603e1     	mov	x1, x22
   14408: 5281b802     	mov	w2, #0xdc0              // =3520
   1440c: 94000000     	bl	0x1440c <syna_sysfs_get_delta_show+0x1b8>
		000000000001440c:  R_AARCH64_CALL26	devm_kmalloc
   14410: aa0003fb     	mov	x27, x0
   14414: b9402288     	ldr	w8, [x20, #0x20]
   14418: 35000248     	cbnz	w8, 0x14460 <syna_sysfs_get_delta_show+0x20c>
   1441c: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001441c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52b3
   14420: 91000000     	add	x0, x0, #0x0
		0000000000014420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52b3
   14424: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf06
   14428: 91000021     	add	x1, x1, #0x0
		0000000000014428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf06
   1442c: aa1b03e2     	mov	x2, x27
   14430: 94000000     	bl	0x14430 <syna_sysfs_get_delta_show+0x1dc>
		0000000000014430:  R_AARCH64_CALL26	_printk
   14434: 94000000     	bl	0x14434 <syna_sysfs_get_delta_show+0x1e0>
		0000000000014434:  R_AARCH64_CALL26	syna_request_managed_device
   14438: b4000760     	cbz	x0, 0x14524 <syna_sysfs_get_delta_show+0x2d0>
   1443c: b94017f3     	ldr	w19, [sp, #0x14]
   14440: b400007b     	cbz	x27, 0x1444c <syna_sysfs_get_delta_show+0x1f8>
   14444: aa1b03e1     	mov	x1, x27
   14448: 94000000     	bl	0x14448 <syna_sysfs_get_delta_show+0x1f4>
		0000000000014448:  R_AARCH64_CALL26	devm_kfree
   1444c: b9401e88     	ldr	w8, [x20, #0x1c]
   14450: 11000673     	add	w19, w19, #0x1
   14454: 6b08027f     	cmp	w19, w8
   14458: 54fffac3     	b.lo	0x143b0 <syna_sysfs_get_delta_show+0x15c>
   1445c: 14000039     	b	0x14540 <syna_sysfs_get_delta_show+0x2ec>
   14460: 2a1f03f3     	mov	w19, wzr
   14464: 14000007     	b	0x14480 <syna_sysfs_get_delta_show+0x22c>
   14468: 38356b7f     	strb	wzr, [x27, x21]
   1446c: b9402295     	ldr	w21, [x20, #0x20]
   14470: 11000673     	add	w19, w19, #0x1
   14474: 91000af7     	add	x23, x23, #0x2
   14478: 6b15027f     	cmp	w19, w21
   1447c: 54fffd02     	b.hs	0x1441c <syna_sysfs_get_delta_show+0x1c8>
   14480: 79003bff     	strh	wzr, [sp, #0x1c]
   14484: 910063e0     	add	x0, sp, #0x18
   14488: 528000c1     	mov	w1, #0x6                // =6
   1448c: b9001bff     	str	wzr, [sp, #0x18]
   14490: aa1c03e2     	mov	x2, x28
   14494: 79c002e3     	ldrsh	w3, [x23]
   14498: 94000000     	bl	0x14498 <syna_sysfs_get_delta_show+0x244>
		0000000000014498:  R_AARCH64_CALL26	snprintf
   1449c: b9402295     	ldr	w21, [x20, #0x20]
   144a0: aa1b03e0     	mov	x0, x27
   144a4: 0b1506a8     	add	w8, w21, w21, lsl #1
   144a8: 531f7919     	lsl	w25, w8, #1
   144ac: aa1903e1     	mov	x1, x25
   144b0: 94000000     	bl	0x144b0 <syna_sysfs_get_delta_show+0x25c>
		00000000000144b0:  R_AARCH64_CALL26	strnlen
   144b4: aa0003f8     	mov	x24, x0
   144b8: b100041f     	cmn	x0, #0x1
   144bc: 540010c0     	b.eq	0x146d4 <syna_sysfs_get_delta_show+0x480>
   144c0: 910063e0     	add	x0, sp, #0x18
   144c4: 528000c1     	mov	w1, #0x6                // =6
   144c8: 94000000     	bl	0x144c8 <syna_sysfs_get_delta_show+0x274>
		00000000000144c8:  R_AARCH64_CALL26	strnlen
   144cc: f1001c1f     	cmp	x0, #0x7
   144d0: 540010a2     	b.hs	0x146e4 <syna_sysfs_get_delta_show+0x490>
   144d4: f100181f     	cmp	x0, #0x6
   144d8: 540010e0     	b.eq	0x146f4 <syna_sysfs_get_delta_show+0x4a0>
   144dc: eb19031f     	cmp	x24, x25
   144e0: 54fffc82     	b.hs	0x14470 <syna_sysfs_get_delta_show+0x21c>
   144e4: 8b180008     	add	x8, x0, x24
   144e8: d1000729     	sub	x9, x25, #0x1
   144ec: eb19011f     	cmp	x8, x25
   144f0: 9a893115     	csel	x21, x8, x9, lo
   144f4: b10006bf     	cmn	x21, #0x1
   144f8: 54001060     	b.eq	0x14704 <syna_sysfs_get_delta_show+0x4b0>
   144fc: aa3803e9     	mvn	x9, x24
   14500: eb19011f     	cmp	x8, x25
   14504: 910063e1     	add	x1, sp, #0x18
   14508: 8b190129     	add	x9, x9, x25
   1450c: 9a893002     	csel	x2, x0, x9, lo
   14510: 8b180360     	add	x0, x27, x24
   14514: 94000000     	bl	0x14514 <syna_sysfs_get_delta_show+0x2c0>
		0000000000014514:  R_AARCH64_CALL26	memcpy
   14518: eb1502df     	cmp	x22, x21
   1451c: 54fffa68     	b.hi	0x14468 <syna_sysfs_get_delta_show+0x214>
   14520: 1400007d     	b	0x14714 <syna_sysfs_get_delta_show+0x4c0>
   14524: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   14528: 91000000     	add	x0, x0, #0x0
		0000000000014528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   1452c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001452c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   14530: 91000021     	add	x1, x1, #0x0
		0000000000014530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   14534: 94000000     	bl	0x14534 <syna_sysfs_get_delta_show+0x2e0>
		0000000000014534:  R_AARCH64_CALL26	_printk
   14538: b94017f3     	ldr	w19, [sp, #0x14]
   1453c: 17ffffc4     	b	0x1444c <syna_sysfs_get_delta_show+0x1f8>
   14540: b94013f3     	ldr	w19, [sp, #0x10]
   14544: 90000015     	adrp	x21, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc25f
   14548: 910002b5     	add	x21, x21, #0x0
		0000000000014548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc25f
   1454c: 17ffff89     	b	0x14370 <syna_sysfs_get_delta_show+0x11c>
   14550: f94003e8     	ldr	x8, [sp]
   14554: 52800241     	mov	w1, #0x12               // =18
   14558: 2a1f03e2     	mov	w2, wzr
   1455c: 52800143     	mov	w3, #0xa                // =10
   14560: f9400100     	ldr	x0, [x8]
   14564: 94000000     	bl	0x14564 <syna_sysfs_get_delta_show+0x310>
		0000000000014564:  R_AARCH64_CALL26	syna_tcm_enable_report
   14568: b4000794     	cbz	x20, 0x14658 <syna_sysfs_get_delta_show+0x404>
   1456c: f9402695     	ldr	x21, [x20, #0x48]
   14570: f94007f3     	ldr	x19, [sp, #0x8]
   14574: b4000a55     	cbz	x21, 0x146bc <syna_sysfs_get_delta_show+0x468>
   14578: f9401ea8     	ldr	x8, [x21, #0x38]
   1457c: b40001e8     	cbz	x8, 0x145b8 <syna_sysfs_get_delta_show+0x364>
   14580: 91014280     	add	x0, x20, #0x50
   14584: 94000000     	bl	0x14584 <syna_sysfs_get_delta_show+0x330>
		0000000000014584:  R_AARCH64_CALL26	mutex_lock
   14588: f9401ea8     	ldr	x8, [x21, #0x38]
   1458c: aa1503e0     	mov	x0, x21
   14590: 52800021     	mov	w1, #0x1                // =1
   14594: b85fc110     	ldur	w16, [x8, #-0x4]
   14598: 728c3631     	movk	w17, #0x61b1
   1459c: 72a685d1     	movk	w17, #0x342e, lsl #16
   145a0: 6b11021f     	cmp	w16, w17
   145a4: 54000040     	b.eq	0x145ac <syna_sysfs_get_delta_show+0x358>
   145a8: d4304500     	brk	#0x8228
   145ac: d63f0100     	blr	x8
   145b0: 91014280     	add	x0, x20, #0x50
   145b4: 94000000     	bl	0x145b4 <syna_sysfs_get_delta_show+0x360>
		00000000000145b4:  R_AARCH64_CALL26	mutex_unlock
   145b8: 394183e2     	ldrb	w2, [sp, #0x60]
   145bc: 350005c2     	cbnz	w2, 0x14674 <syna_sysfs_get_delta_show+0x420>
   145c0: f94013f4     	ldr	x20, [sp, #0x20]
   145c4: 94000000     	bl	0x145c4 <syna_sysfs_get_delta_show+0x370>
		00000000000145c4:  R_AARCH64_CALL26	syna_request_managed_device
   145c8: b4000620     	cbz	x0, 0x1468c <syna_sysfs_get_delta_show+0x438>
   145cc: b4000074     	cbz	x20, 0x145d8 <syna_sysfs_get_delta_show+0x384>
   145d0: aa1403e1     	mov	x1, x20
   145d4: 94000000     	bl	0x145d4 <syna_sysfs_get_delta_show+0x380>
		00000000000145d4:  R_AARCH64_CALL26	devm_kfree
   145d8: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000145d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb51e
   145dc: 91000042     	add	x2, x2, #0x0
		00000000000145dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb51e
   145e0: aa1303e0     	mov	x0, x19
   145e4: 52820001     	mov	w1, #0x1000             // =4096
   145e8: f90017ff     	str	xzr, [sp, #0x28]
   145ec: 390183ff     	strb	wzr, [sp, #0x60]
   145f0: 94000000     	bl	0x145f0 <syna_sysfs_get_delta_show+0x39c>
		00000000000145f0:  R_AARCH64_CALL26	scnprintf
   145f4: 14000007     	b	0x14610 <syna_sysfs_get_delta_show+0x3bc>
   145f8: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000145f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x76fe
   145fc: 91000042     	add	x2, x2, #0x0
		00000000000145fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x76fe
   14600: aa1303e0     	mov	x0, x19
   14604: 52820001     	mov	w1, #0x1000             // =4096
   14608: 52800243     	mov	w3, #0x12               // =18
   1460c: 94000000     	bl	0x1460c <syna_sysfs_get_delta_show+0x3b8>
		000000000001460c:  R_AARCH64_CALL26	scnprintf
   14610: d5384108     	mrs	x8, SP_EL0
   14614: f9438908     	ldr	x8, [x8, #0x710]
   14618: f85f83a9     	ldur	x9, [x29, #-0x8]
   1461c: eb09011f     	cmp	x8, x9
   14620: 540007c1     	b.ne	0x14718 <syna_sysfs_get_delta_show+0x4c4>
   14624: 93407c00     	sxtw	x0, w0
   14628: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   1462c: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   14630: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   14634: a94967fa     	ldp	x26, x25, [sp, #0x90]
   14638: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   1463c: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   14640: 910343ff     	add	sp, sp, #0xd0
   14644: d50323bf     	autiasp
   14648: d65f03c0     	ret
   1464c: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001464c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   14650: 91000000     	add	x0, x0, #0x0
		0000000000014650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   14654: 14000016     	b	0x146ac <syna_sysfs_get_delta_show+0x458>
   14658: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1465c: 91000000     	add	x0, x0, #0x0
		000000000001465c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   14660: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   14664: 91000021     	add	x1, x1, #0x0
		0000000000014664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   14668: 94000000     	bl	0x14668 <syna_sysfs_get_delta_show+0x414>
		0000000000014668:  R_AARCH64_CALL26	_printk
   1466c: f94007f3     	ldr	x19, [sp, #0x8]
   14670: 17ffffd2     	b	0x145b8 <syna_sysfs_get_delta_show+0x364>
   14674: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   14678: 91000000     	add	x0, x0, #0x0
		0000000000014678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   1467c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001467c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   14680: 91000021     	add	x1, x1, #0x0
		0000000000014680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   14684: 94000000     	bl	0x14684 <syna_sysfs_get_delta_show+0x430>
		0000000000014684:  R_AARCH64_CALL26	_printk
   14688: 17ffffce     	b	0x145c0 <syna_sysfs_get_delta_show+0x36c>
   1468c: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		000000000001468c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   14690: 91000000     	add	x0, x0, #0x0
		0000000000014690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   14694: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   14698: 91000021     	add	x1, x1, #0x0
		0000000000014698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   1469c: 94000000     	bl	0x1469c <syna_sysfs_get_delta_show+0x448>
		000000000001469c:  R_AARCH64_CALL26	_printk
   146a0: 17ffffce     	b	0x145d8 <syna_sysfs_get_delta_show+0x384>
   146a4: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000146a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   146a8: 91000000     	add	x0, x0, #0x0
		00000000000146a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   146ac: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000146ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   146b0: 91000021     	add	x1, x1, #0x0
		00000000000146b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   146b4: 94000000     	bl	0x146b4 <syna_sysfs_get_delta_show+0x460>
		00000000000146b4:  R_AARCH64_CALL26	_printk
   146b8: 17ffff15     	b	0x1430c <syna_sysfs_get_delta_show+0xb8>
   146bc: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000146bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   146c0: 91000000     	add	x0, x0, #0x0
		00000000000146c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   146c4: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		00000000000146c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf20
   146c8: 91000021     	add	x1, x1, #0x0
		00000000000146c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf20
   146cc: 94000000     	bl	0x146cc <syna_sysfs_get_delta_show+0x478>
		00000000000146cc:  R_AARCH64_CALL26	_printk
   146d0: 17ffffba     	b	0x145b8 <syna_sysfs_get_delta_show+0x364>
   146d4: 91000702     	add	x2, x24, #0x1
   146d8: 52800040     	mov	w0, #0x2                // =2
   146dc: 92800001     	mov	x1, #-0x1               // =-1
   146e0: 94000000     	bl	0x146e0 <syna_sysfs_get_delta_show+0x48c>
		00000000000146e0:  R_AARCH64_CALL26	__fortify_panic
   146e4: 91000402     	add	x2, x0, #0x1
   146e8: 52800040     	mov	w0, #0x2                // =2
   146ec: 528000c1     	mov	w1, #0x6                // =6
   146f0: 94000000     	bl	0x146f0 <syna_sysfs_get_delta_show+0x49c>
		00000000000146f0:  R_AARCH64_CALL26	__fortify_panic
   146f4: 52800080     	mov	w0, #0x4                // =4
   146f8: 528000c1     	mov	w1, #0x6                // =6
   146fc: 528000e2     	mov	w2, #0x7                // =7
   14700: 94000000     	bl	0x14700 <syna_sysfs_get_delta_show+0x4ac>
		0000000000014700:  R_AARCH64_CALL26	__fortify_panic
   14704: 910006a2     	add	x2, x21, #0x1
   14708: 52800120     	mov	w0, #0x9                // =9
   1470c: 92800001     	mov	x1, #-0x1               // =-1
   14710: 94000000     	bl	0x14710 <syna_sysfs_get_delta_show+0x4bc>
		0000000000014710:  R_AARCH64_CALL26	__fortify_panic
   14714: d4200020     	brk	#0x1
   14718: 94000000     	bl	0x14718 <syna_sysfs_get_delta_show+0x4c4>
		0000000000014718:  R_AARCH64_CALL26	__stack_chk_fail
