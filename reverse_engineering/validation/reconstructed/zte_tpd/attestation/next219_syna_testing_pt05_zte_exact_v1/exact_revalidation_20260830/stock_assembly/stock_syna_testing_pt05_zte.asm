
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014f90 <syna_testing_pt05_zte>:
   14f90: d503233f     	paciasp
   14f94: d10343ff     	sub	sp, sp, #0xd0
   14f98: a9077bfd     	stp	x29, x30, [sp, #0x70]
   14f9c: a9086ffc     	stp	x28, x27, [sp, #0x80]
   14fa0: a90967fa     	stp	x26, x25, [sp, #0x90]
   14fa4: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   14fa8: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   14fac: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   14fb0: 9101c3fd     	add	x29, sp, #0x70
   14fb4: d5384108     	mrs	x8, SP_EL0
   14fb8: aa0003f4     	mov	x20, x0
   14fbc: f9438908     	ldr	x8, [x8, #0x710]
   14fc0: f81f83a8     	stur	x8, [x29, #-0x8]
   14fc4: f9000fff     	str	xzr, [sp, #0x18]
   14fc8: f90007ff     	str	xzr, [sp, #0x8]
   14fcc: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   14fd0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   14fd4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   14fd8: f9001bff     	str	xzr, [sp, #0x30]
   14fdc: d503201f     	nop
   14fe0: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014fe0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   14fe4: 5281b801     	mov	w1, #0xdc0              // =3520
   14fe8: 52820002     	mov	w2, #0x1000             // =4096
   14fec: f9400100     	ldr	x0, [x8]
		0000000000014fec:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   14ff0: 94000000     	bl	0x14ff0 <syna_testing_pt05_zte+0x60>
		0000000000014ff0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   14ff4: aa0003f3     	mov	x19, x0
   14ff8: b40014b3     	cbz	x19, 0x1528c <syna_testing_pt05_zte+0x2fc>
   14ffc: 39560a88     	ldrb	w8, [x20, #0x582]
   15000: 36000c68     	tbz	w8, #0x0, 0x1518c <syna_testing_pt05_zte+0x1fc>
   15004: 94000000     	bl	0x15004 <syna_testing_pt05_zte+0x74>
		0000000000015004:  R_AARCH64_CALL26	syna_tcm_get_testing_0500
   15008: b4000ee0     	cbz	x0, 0x151e4 <syna_testing_pt05_zte+0x254>
   1500c: f9400288     	ldr	x8, [x20]
   15010: 910083f6     	add	x22, sp, #0x20
   15014: aa0003f5     	mov	x21, x0
   15018: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   1501c: 91000021     	add	x1, x1, #0x0
		000000000001501c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   15020: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015020:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   15024: 91000042     	add	x2, x2, #0x0
		0000000000015024:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   15028: b9402108     	ldr	w8, [x8, #0x20]
   1502c: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   15030: b9002408     	str	w8, [x0, #0x24]
   15034: f9400288     	ldr	x8, [x20]
   15038: b9401d08     	ldr	w8, [x8, #0x1c]
   1503c: b9002008     	str	w8, [x0, #0x20]
   15040: 910042c0     	add	x0, x22, #0x10
   15044: 390183ff     	strb	wzr, [sp, #0x60]
   15048: 94000000     	bl	0x15048 <syna_testing_pt05_zte+0xb8>
		0000000000015048:  R_AARCH64_CALL26	__mutex_init
   1504c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001504c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2d08
   15050: 91000108     	add	x8, x8, #0x0
		0000000000015050:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2d08
   15054: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3988
   15058: 91000129     	add	x9, x9, #0x0
		0000000000015058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3988
   1505c: f9000be8     	str	x8, [sp, #0x10]
   15060: 52819008     	mov	w8, #0xc80              // =3200
   15064: b9001be8     	str	w8, [sp, #0x18]
   15068: aa1503e1     	mov	x1, x21
   1506c: 2a1f03e2     	mov	w2, wzr
   15070: f90003e9     	str	x9, [sp]
   15074: 910043e9     	add	x9, sp, #0x10
   15078: b9000be8     	str	w8, [sp, #0x8]
   1507c: 910003e8     	mov	x8, sp
   15080: f9006eb6     	str	x22, [x21, #0xd8]
   15084: a903a2a9     	stp	x9, x8, [x21, #0x38]
   15088: f9400ea8     	ldr	x8, [x21, #0x18]
   1508c: f9400280     	ldr	x0, [x20]
   15090: b85fc110     	ldur	w16, [x8, #-0x4]
   15094: 72895251     	movk	w17, #0x4a92
   15098: 72b03811     	movk	w17, #0x81c0, lsl #16
   1509c: 6b11021f     	cmp	w16, w17
   150a0: 54000040     	b.eq	0x150a8 <syna_testing_pt05_zte+0x118>
   150a4: d4304500     	brk	#0x8228
   150a8: d63f0100     	blr	x8
   150ac: 37f80ac0     	tbnz	w0, #0x1f, 0x15204 <syna_testing_pt05_zte+0x274>
   150b0: 394042a8     	ldrb	w8, [x21, #0x10]
   150b4: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000150b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   150b8: 91000129     	add	x9, x9, #0x0
		00000000000150b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   150bc: 7100011f     	cmp	w8, #0x0
   150c0: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000150c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   150c4: 91000108     	add	x8, x8, #0x0
		00000000000150c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   150c8: 9a891105     	csel	x5, x8, x9, ne
   150cc: f94006a3     	ldr	x3, [x21, #0x8]
   150d0: b94002a4     	ldr	w4, [x21]
   150d4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000150d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   150d8: 91000042     	add	x2, x2, #0x0
		00000000000150d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   150dc: aa1303e0     	mov	x0, x19
   150e0: 52820001     	mov	w1, #0x1000             // =4096
   150e4: 94000000     	bl	0x150e4 <syna_testing_pt05_zte+0x154>
		00000000000150e4:  R_AARCH64_CALL26	scnprintf
   150e8: b9402fe8     	ldr	w8, [sp, #0x2c]
   150ec: 2a0003f6     	mov	w22, w0
   150f0: 340005c8     	cbz	w8, 0x151a8 <syna_testing_pt05_zte+0x218>
   150f4: b94022a8     	ldr	w8, [x21, #0x20]
   150f8: 34000588     	cbz	w8, 0x151a8 <syna_testing_pt05_zte+0x218>
   150fc: f94013fa     	ldr	x26, [sp, #0x20]
   15100: 2a1f03f9     	mov	w25, wzr
   15104: 90000017     	adrp	x23, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   15108: 910002f7     	add	x23, x23, #0x0
		0000000000015108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   1510c: 5282001b     	mov	w27, #0x1000            // =4096
   15110: 90000018     	adrp	x24, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0ee
   15114: 91000318     	add	x24, x24, #0x0
		0000000000015114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0ee
   15118: 1400000b     	b	0x15144 <syna_testing_pt05_zte+0x1b4>
   1511c: 2a1603e8     	mov	w8, w22
   15120: aa1703e2     	mov	x2, x23
   15124: cb080361     	sub	x1, x27, x8
   15128: 8b080260     	add	x0, x19, x8
   1512c: 94000000     	bl	0x1512c <syna_testing_pt05_zte+0x19c>
		000000000001512c:  R_AARCH64_CALL26	scnprintf
   15130: b94022a8     	ldr	w8, [x21, #0x20]
   15134: 11000739     	add	w25, w25, #0x1
   15138: 0b160016     	add	w22, w0, w22
   1513c: 6b08033f     	cmp	w25, w8
   15140: 54000342     	b.hs	0x151a8 <syna_testing_pt05_zte+0x218>
   15144: b94026a8     	ldr	w8, [x21, #0x24]
   15148: 34fffea8     	cbz	w8, 0x1511c <syna_testing_pt05_zte+0x18c>
   1514c: 2a1f03fc     	mov	w28, wzr
   15150: f9400288     	ldr	x8, [x20]
   15154: 2a1603e9     	mov	w9, w22
   15158: aa1803e2     	mov	x2, x24
   1515c: cb090361     	sub	x1, x27, x9
   15160: 8b090260     	add	x0, x19, x9
   15164: b9402108     	ldr	w8, [x8, #0x20]
   15168: 1b087328     	madd	w8, w25, w8, w28
   1516c: 78685b43     	ldrh	w3, [x26, w8, uxtw #1]
   15170: 94000000     	bl	0x15170 <syna_testing_pt05_zte+0x1e0>
		0000000000015170:  R_AARCH64_CALL26	scnprintf
   15174: b94026a8     	ldr	w8, [x21, #0x24]
   15178: 1100079c     	add	w28, w28, #0x1
   1517c: 0b160016     	add	w22, w0, w22
   15180: 6b08039f     	cmp	w28, w8
   15184: 54fffe63     	b.lo	0x15150 <syna_testing_pt05_zte+0x1c0>
   15188: 17ffffe5     	b	0x1511c <syna_testing_pt05_zte+0x18c>
   1518c: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001518c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   15190: 91000042     	add	x2, x2, #0x0
		0000000000015190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   15194: aa1303e0     	mov	x0, x19
   15198: 52820001     	mov	w1, #0x1000             // =4096
   1519c: 94000000     	bl	0x1519c <syna_testing_pt05_zte+0x20c>
		000000000001519c:  R_AARCH64_CALL26	scnprintf
   151a0: 2a0003f6     	mov	w22, w0
   151a4: 14000040     	b	0x152a4 <syna_testing_pt05_zte+0x314>
   151a8: aa1303e0     	mov	x0, x19
   151ac: 94000000     	bl	0x151ac <syna_testing_pt05_zte+0x21c>
		00000000000151ac:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   151b0: 394183e2     	ldrb	w2, [sp, #0x60]
   151b4: 350003a2     	cbnz	w2, 0x15228 <syna_testing_pt05_zte+0x298>
   151b8: f94013f4     	ldr	x20, [sp, #0x20]
   151bc: 94000000     	bl	0x151bc <syna_testing_pt05_zte+0x22c>
		00000000000151bc:  R_AARCH64_CALL26	syna_request_managed_device
   151c0: b4000400     	cbz	x0, 0x15240 <syna_testing_pt05_zte+0x2b0>
   151c4: b4000074     	cbz	x20, 0x151d0 <syna_testing_pt05_zte+0x240>
   151c8: aa1403e1     	mov	x1, x20
   151cc: 94000000     	bl	0x151cc <syna_testing_pt05_zte+0x23c>
		00000000000151cc:  R_AARCH64_CALL26	devm_kfree
   151d0: aa1303e0     	mov	x0, x19
   151d4: f90017ff     	str	xzr, [sp, #0x28]
   151d8: 390183ff     	strb	wzr, [sp, #0x60]
   151dc: 94000000     	bl	0x151dc <syna_testing_pt05_zte+0x24c>
		00000000000151dc:  R_AARCH64_CALL26	kfree
   151e0: 14000031     	b	0x152a4 <syna_testing_pt05_zte+0x314>
   151e4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		00000000000151e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   151e8: 91000042     	add	x2, x2, #0x0
		00000000000151e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   151ec: aa1303e0     	mov	x0, x19
   151f0: 52820001     	mov	w1, #0x1000             // =4096
   151f4: 5280a003     	mov	w3, #0x500              // =1280
   151f8: 94000000     	bl	0x151f8 <syna_testing_pt05_zte+0x268>
		00000000000151f8:  R_AARCH64_CALL26	scnprintf
   151fc: 2a0003f6     	mov	w22, w0
   15200: 14000029     	b	0x152a4 <syna_testing_pt05_zte+0x314>
   15204: f94006a2     	ldr	x2, [x21, #0x8]
   15208: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015208:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   1520c: 91000000     	add	x0, x0, #0x0
		000000000001520c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   15210: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4763
   15214: 91000021     	add	x1, x1, #0x0
		0000000000015214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4763
   15218: 94000000     	bl	0x15218 <syna_testing_pt05_zte+0x288>
		0000000000015218:  R_AARCH64_CALL26	_printk
   1521c: 90000005     	adrp	x5, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001521c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15220: 910000a5     	add	x5, x5, #0x0
		0000000000015220:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15224: 17ffffaa     	b	0x150cc <syna_testing_pt05_zte+0x13c>
   15228: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   1522c: 91000000     	add	x0, x0, #0x0
		000000000001522c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   15230: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15234: 91000021     	add	x1, x1, #0x0
		0000000000015234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15238: 94000000     	bl	0x15238 <syna_testing_pt05_zte+0x2a8>
		0000000000015238:  R_AARCH64_CALL26	_printk
   1523c: 17ffffdf     	b	0x151b8 <syna_testing_pt05_zte+0x228>
   15240: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15244: 91000000     	add	x0, x0, #0x0
		0000000000015244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15248: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   1524c: 91000021     	add	x1, x1, #0x0
		000000000001524c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   15250: 94000000     	bl	0x15250 <syna_testing_pt05_zte+0x2c0>
		0000000000015250:  R_AARCH64_CALL26	_printk
   15254: 17ffffdf     	b	0x151d0 <syna_testing_pt05_zte+0x240>
   15258: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015258:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x230
   1525c: 91000108     	add	x8, x8, #0x0
		000000000001525c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x230
   15260: d5384115     	mrs	x21, SP_EL0
   15264: f9402ab6     	ldr	x22, [x21, #0x50]
   15268: f9002aa8     	str	x8, [x21, #0x50]
   1526c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001526c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   15270: f9400100     	ldr	x0, [x8]
		0000000000015270:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   15274: 5281b801     	mov	w1, #0xdc0              // =3520
   15278: 52820002     	mov	w2, #0x1000             // =4096
   1527c: 94000000     	bl	0x1527c <syna_testing_pt05_zte+0x2ec>
		000000000001527c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   15280: aa0003f3     	mov	x19, x0
   15284: f9002ab6     	str	x22, [x21, #0x50]
   15288: b5ffebb3     	cbnz	x19, 0x14ffc <syna_testing_pt05_zte+0x6c>
   1528c: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		000000000001528c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf34
   15290: 91000000     	add	x0, x0, #0x0
		0000000000015290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf34
   15294: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4763
   15298: 91000021     	add	x1, x1, #0x0
		0000000000015298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4763
   1529c: 94000000     	bl	0x1529c <syna_testing_pt05_zte+0x30c>
		000000000001529c:  R_AARCH64_CALL26	_printk
   152a0: 12800176     	mov	w22, #-0xc              // =-12
   152a4: d5384108     	mrs	x8, SP_EL0
   152a8: f9438908     	ldr	x8, [x8, #0x710]
   152ac: f85f83a9     	ldur	x9, [x29, #-0x8]
   152b0: eb09011f     	cmp	x8, x9
   152b4: 54000161     	b.ne	0x152e0 <syna_testing_pt05_zte+0x350>
   152b8: 2a1603e0     	mov	w0, w22
   152bc: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   152c0: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   152c4: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   152c8: a94967fa     	ldp	x26, x25, [sp, #0x90]
   152cc: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   152d0: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   152d4: 910343ff     	add	sp, sp, #0xd0
   152d8: d50323bf     	autiasp
   152dc: d65f03c0     	ret
   152e0: 94000000     	bl	0x152e0 <syna_testing_pt05_zte+0x350>
		00000000000152e0:  R_AARCH64_CALL26	__stack_chk_fail
