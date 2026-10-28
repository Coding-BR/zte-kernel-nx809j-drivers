
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000116c <fan_speed_show>:
    116c: d503233f     	paciasp
    1170: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1174: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1178: a90257f6     	stp	x22, x21, [sp, #0x20]
    117c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1180: 910003fd     	mov	x29, sp
    1184: 90000017     	adrp	x23, 0x1000 <fan_level_store+0x54>
		0000000000001184:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1188: aa0203f3     	mov	x19, x2
    118c: f94002e8     	ldr	x8, [x23]
		000000000000118c:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1190: 91006100     	add	x0, x8, #0x18
    1194: 94000000     	bl	0x1194 <fan_speed_show+0x28>
		0000000000001194:  R_AARCH64_CALL26	mutex_lock
    1198: f94002e8     	ldr	x8, [x23]
		0000000000001198:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    119c: f9400515     	ldr	x21, [x8, #0x8]
    11a0: 394002a8     	ldrb	w8, [x21]
    11a4: 35000068     	cbnz	w8, 0x11b0 <fan_speed_show+0x44>
    11a8: 2a1f03f4     	mov	w20, wzr
    11ac: 14000089     	b	0x13d0 <fan_speed_show+0x264>
    11b0: 52884801     	mov	w1, #0x4240             // =16960
    11b4: 52800028     	mov	w8, #0x1                // =1
    11b8: 9100a2a0     	add	x0, x21, #0x28
    11bc: 72a001e1     	movk	w1, #0xf, lsl #16
    11c0: aa1f03e2     	mov	x2, xzr
    11c4: 52800023     	mov	w3, #0x1                // =1
    11c8: 39000aa8     	strb	w8, [x21, #0x2]
    11cc: 94000000     	bl	0x11cc <fan_speed_show+0x60>
		00000000000011cc:  R_AARCH64_CALL26	hrtimer_start_range_ns
    11d0: 52807d00     	mov	w0, #0x3e8              // =1000
    11d4: 94000000     	bl	0x11d4 <fan_speed_show+0x68>
		00000000000011d4:  R_AARCH64_CALL26	msleep
    11d8: b9400aa8     	ldr	w8, [x21, #0x8]
    11dc: 394002a4     	ldrb	w4, [x21]
    11e0: 0b080908     	add	w8, w8, w8, lsl #2
    11e4: 71000c9f     	cmp	w4, #0x3
    11e8: 531d7114     	lsl	w20, w8, #3
    11ec: 540000e1     	b.ne	0x1208 <fan_speed_show+0x9c>
    11f0: 713e829f     	cmp	w20, #0xfa0
    11f4: 540000a9     	b.ls	0x1208 <fan_speed_show+0x9c>
    11f8: 52865908     	mov	w8, #0x32c8             // =13000
    11fc: b9400aa9     	ldr	w9, [x21, #0x8]
    1200: 0b080136     	add	w22, w9, w8
    1204: 1400000e     	b	0x123c <fan_speed_show+0xd0>
    1208: 7100149f     	cmp	w4, #0x5
    120c: 540000e0     	b.eq	0x1228 <fan_speed_show+0xbc>
    1210: 7100109f     	cmp	w4, #0x4
    1214: 54000121     	b.ne	0x1238 <fan_speed_show+0xcc>
    1218: 713e829f     	cmp	w20, #0xfa0
    121c: 540000e9     	b.ls	0x1238 <fan_speed_show+0xcc>
    1220: 5287d008     	mov	w8, #0x3e80             // =16000
    1224: 17fffff6     	b	0x11fc <fan_speed_show+0x90>
    1228: 713e869f     	cmp	w20, #0xfa1
    122c: 54000063     	b.lo	0x1238 <fan_speed_show+0xcc>
    1230: 52894708     	mov	w8, #0x4a38             // =19000
    1234: 17fffff2     	b	0x11fc <fan_speed_show+0x90>
    1238: 2a1f03f6     	mov	w22, wzr
    123c: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		000000000000123c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ba
    1240: 91000000     	add	x0, x0, #0x0
		0000000000001240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ba
    1244: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1248: 91000021     	add	x1, x1, #0x0
		0000000000001248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    124c: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		000000000000124c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae8
    1250: 91000042     	add	x2, x2, #0x0
		0000000000001250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae8
    1254: 52802503     	mov	w3, #0x128              // =296
    1258: 2a1403e5     	mov	w5, w20
    125c: 2a1603e6     	mov	w6, w22
    1260: 94000000     	bl	0x1260 <fan_speed_show+0xf4>
		0000000000001260:  R_AARCH64_CALL26	_printk
    1264: f94002e9     	ldr	x9, [x23]
		0000000000001264:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1268: 6b1402df     	cmp	w22, w20
    126c: 2a1f03e8     	mov	w8, wzr
    1270: 1a9482d4     	csel	w20, w22, w20, hi
    1274: 90000018     	adrp	x24, 0x1000 <fan_level_store+0x54>
		0000000000001274:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xc
    1278: f9400520     	ldr	x0, [x9, #0x8]
    127c: 39400015     	ldrb	w21, [x0]
    1280: 34000a75     	cbz	w21, 0x13cc <fan_speed_show+0x260>
    1284: 52807d09     	mov	w9, #0x3e8              // =1000
    1288: 1b097ea9     	mul	w9, w21, w9
    128c: 6b14013f     	cmp	w9, w20
    1290: 540009e3     	b.lo	0x13cc <fan_speed_show+0x260>
    1294: b9400308     	ldr	w8, [x24]
		0000000000001294:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    1298: 7100291f     	cmp	w8, #0xa
    129c: 540009ac     	b.gt	0x13d0 <fan_speed_show+0x264>
    12a0: 2a1f03e1     	mov	w1, wzr
    12a4: 94000000     	bl	0x12a4 <fan_speed_show+0x138>
		00000000000012a4:  R_AARCH64_CALL26	.text+0xd1c
    12a8: f94002e8     	ldr	x8, [x23]
		00000000000012a8:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12ac: f9402516     	ldr	x22, [x8, #0x48]
    12b0: b40001f6     	cbz	x22, 0x12ec <fan_speed_show+0x180>
    12b4: aa1603e0     	mov	x0, x22
    12b8: 94000000     	bl	0x12b8 <fan_speed_show+0x14c>
		00000000000012b8:  R_AARCH64_CALL26	regulator_is_enabled
    12bc: 34000180     	cbz	w0, 0x12ec <fan_speed_show+0x180>
    12c0: aa1603e0     	mov	x0, x22
    12c4: 94000000     	bl	0x12c4 <fan_speed_show+0x158>
		00000000000012c4:  R_AARCH64_CALL26	regulator_disable
    12c8: 2a0003e4     	mov	w4, w0
    12cc: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		00000000000012cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    12d0: 91000000     	add	x0, x0, #0x0
		00000000000012d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    12d4: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000012d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    12d8: 91000021     	add	x1, x1, #0x0
		00000000000012d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    12dc: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf4
    12e0: 91000042     	add	x2, x2, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf4
    12e4: 52801ca3     	mov	w3, #0xe5               // =229
    12e8: 94000000     	bl	0x12e8 <fan_speed_show+0x17c>
		00000000000012e8:  R_AARCH64_CALL26	_printk
    12ec: 52800640     	mov	w0, #0x32               // =50
    12f0: 94000000     	bl	0x12f0 <fan_speed_show+0x184>
		00000000000012f0:  R_AARCH64_CALL26	msleep
    12f4: f94002e8     	ldr	x8, [x23]
		00000000000012f4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    12f8: f9402516     	ldr	x22, [x8, #0x48]
    12fc: b4000256     	cbz	x22, 0x1344 <fan_speed_show+0x1d8>
    1300: aa1603e0     	mov	x0, x22
    1304: 94000000     	bl	0x1304 <fan_speed_show+0x198>
		0000000000001304:  R_AARCH64_CALL26	regulator_is_enabled
    1308: 350001e0     	cbnz	w0, 0x1344 <fan_speed_show+0x1d8>
    130c: aa1603e0     	mov	x0, x22
    1310: 94000000     	bl	0x1310 <fan_speed_show+0x1a4>
		0000000000001310:  R_AARCH64_CALL26	regulator_enable
    1314: 2a0003f6     	mov	w22, w0
    1318: 52800140     	mov	w0, #0xa                // =10
    131c: 94000000     	bl	0x131c <fan_speed_show+0x1b0>
		000000000000131c:  R_AARCH64_CALL26	msleep
    1320: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a1
    1324: 91000000     	add	x0, x0, #0x0
		0000000000001324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a1
    1328: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    132c: 91000021     	add	x1, x1, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1330: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf4
    1334: 91000042     	add	x2, x2, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf4
    1338: 52801da3     	mov	w3, #0xed               // =237
    133c: 2a1603e4     	mov	w4, w22
    1340: 94000000     	bl	0x1340 <fan_speed_show+0x1d4>
		0000000000001340:  R_AARCH64_CALL26	_printk
    1344: f94002e8     	ldr	x8, [x23]
		0000000000001344:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1348: 2a1503e1     	mov	w1, w21
    134c: f9400500     	ldr	x0, [x8, #0x8]
    1350: 94000000     	bl	0x1350 <fan_speed_show+0x1e4>
		0000000000001350:  R_AARCH64_CALL26	.text+0xd1c
    1354: f94002e8     	ldr	x8, [x23]
		0000000000001354:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1358: b9400306     	ldr	w6, [x24]
		0000000000001358:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    135c: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcb
    1360: 91000000     	add	x0, x0, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcb
    1364: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001364:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1368: 91000021     	add	x1, x1, #0x0
		0000000000001368:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    136c: f9400508     	ldr	x8, [x8, #0x8]
    1370: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cc
    1374: 91000042     	add	x2, x2, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cc
    1378: 528035a3     	mov	w3, #0x1ad              // =429
    137c: 2a1403e5     	mov	w5, w20
    1380: 39400104     	ldrb	w4, [x8]
    1384: 94000000     	bl	0x1384 <fan_speed_show+0x218>
		0000000000001384:  R_AARCH64_CALL26	_printk
    1388: b9400308     	ldr	w8, [x24]
		0000000000001388:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    138c: 7100291f     	cmp	w8, #0xa
    1390: 540001c1     	b.ne	0x13c8 <fan_speed_show+0x25c>
    1394: f94002e8     	ldr	x8, [x23]
		0000000000001394:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1398: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x614
    139c: 91000000     	add	x0, x0, #0x0
		000000000000139c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x614
    13a0: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000013a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    13a4: 91000021     	add	x1, x1, #0x0
		00000000000013a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    13a8: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		00000000000013a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cc
    13ac: 91000042     	add	x2, x2, #0x0
		00000000000013ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cc
    13b0: f9400508     	ldr	x8, [x8, #0x8]
    13b4: 52803603     	mov	w3, #0x1b0              // =432
    13b8: 2a1403e5     	mov	w5, w20
    13bc: 39400104     	ldrb	w4, [x8]
    13c0: 94000000     	bl	0x13c0 <fan_speed_show+0x254>
		00000000000013c0:  R_AARCH64_CALL26	_printk
    13c4: b9400308     	ldr	w8, [x24]
		00000000000013c4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    13c8: 11000508     	add	w8, w8, #0x1
    13cc: b9000308     	str	w8, [x24]
		00000000000013cc:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0xc
    13d0: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000013d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
    13d4: 91000021     	add	x1, x1, #0x0
		00000000000013d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
    13d8: aa1303e0     	mov	x0, x19
    13dc: 2a1403e2     	mov	w2, w20
    13e0: 94000000     	bl	0x13e0 <fan_speed_show+0x274>
		00000000000013e0:  R_AARCH64_CALL26	sprintf
    13e4: f94002e8     	ldr	x8, [x23]
		00000000000013e4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    13e8: 2a0003f3     	mov	w19, w0
    13ec: 91006100     	add	x0, x8, #0x18
    13f0: 94000000     	bl	0x13f0 <fan_speed_show+0x284>
		00000000000013f0:  R_AARCH64_CALL26	mutex_unlock
    13f4: f94002e8     	ldr	x8, [x23]
		00000000000013f4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    13f8: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		00000000000013f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa23
    13fc: 91000000     	add	x0, x0, #0x0
		00000000000013fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa23
    1400: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1404: 91000021     	add	x1, x1, #0x0
		0000000000001404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1408: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x395
    140c: 91000042     	add	x2, x2, #0x0
		000000000000140c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x395
    1410: f9400508     	ldr	x8, [x8, #0x8]
    1414: 52803883     	mov	w3, #0x1c4              // =452
    1418: 2a1403e5     	mov	w5, w20
    141c: 39400104     	ldrb	w4, [x8]
    1420: 94000000     	bl	0x1420 <fan_speed_show+0x2b4>
		0000000000001420:  R_AARCH64_CALL26	_printk
    1424: 93407e60     	sxtw	x0, w19
    1428: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    142c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1430: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1434: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1438: d50323bf     	autiasp
    143c: d65f03c0     	ret
