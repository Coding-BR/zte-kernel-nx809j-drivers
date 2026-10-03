
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012f8 <zte_devm_power_supply_get_by_phandle>:
    12f8: d503233f     	paciasp
    12fc: d10243ff     	sub	sp, sp, #0x90
    1300: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1304: f9003bf5     	str	x21, [sp, #0x70]
    1308: a9084ff4     	stp	x20, x19, [sp, #0x80]
    130c: 910183fd     	add	x29, sp, #0x60
    1310: d5384108     	mrs	x8, SP_EL0
    1314: f9438908     	ldr	x8, [x8, #0x710]
    1318: f81f83a8     	stur	x8, [x29, #-0x8]
    131c: f9417408     	ldr	x8, [x0, #0x2e8]
    1320: b4000628     	cbz	x8, 0x13e4 <zte_devm_power_supply_get_by_phandle+0xec>
    1324: aa0003f3     	mov	x19, x0
    1328: aa0103f5     	mov	x21, x1
    132c: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x54>
		000000000000132c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1458
    1330: 91000000     	add	x0, x0, #0x0
		0000000000001330:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1458
    1334: 90000004     	adrp	x4, 0x1000 <zte_power_supply_set_battery_charged+0x54>
		0000000000001334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x538
    1338: 91000084     	add	x4, x4, #0x0
		0000000000001338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x538
    133c: 52800101     	mov	w1, #0x8                // =8
    1340: 52819802     	mov	w2, #0xcc0              // =3264
    1344: 12800003     	mov	w3, #-0x1               // =-1
    1348: 94000000     	bl	0x1348 <zte_devm_power_supply_get_by_phandle+0x50>
		0000000000001348:  R_AARCH64_CALL26	__devres_alloc_node
    134c: b4000500     	cbz	x0, 0x13ec <zte_devm_power_supply_get_by_phandle+0xf4>
    1350: aa0003f4     	mov	x20, x0
    1354: f9417660     	ldr	x0, [x19, #0x2e8]
    1358: 910023e5     	add	x5, sp, #0x8
    135c: aa1503e1     	mov	x1, x21
    1360: aa1f03e2     	mov	x2, xzr
    1364: 2a1f03e3     	mov	w3, wzr
    1368: 2a1f03e4     	mov	w4, wzr
    136c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1370: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1374: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1378: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    137c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1380: 94000000     	bl	0x1380 <zte_devm_power_supply_get_by_phandle+0x88>
		0000000000001380:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1384: 92800255     	mov	x21, #-0x13             // =-19
    1388: 35000380     	cbnz	w0, 0x13f8 <zte_devm_power_supply_get_by_phandle+0x100>
    138c: f94007e2     	ldr	x2, [sp, #0x8]
    1390: b4000342     	cbz	x2, 0x13f8 <zte_devm_power_supply_get_by_phandle+0x100>
    1394: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x54>
		0000000000001394:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    1398: 90000003     	adrp	x3, 0x1000 <zte_power_supply_set_battery_charged+0x54>
		0000000000001398:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xc4c
    139c: 91000063     	add	x3, x3, #0x0
		000000000000139c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xc4c
    13a0: f9400100     	ldr	x0, [x8]
		00000000000013a0:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    13a4: aa1f03e1     	mov	x1, xzr
    13a8: 94000000     	bl	0x13a8 <zte_devm_power_supply_get_by_phandle+0xb0>
		00000000000013a8:  R_AARCH64_CALL26	class_find_device
    13ac: b4000240     	cbz	x0, 0x13f4 <zte_devm_power_supply_get_by_phandle+0xfc>
    13b0: f9404c15     	ldr	x21, [x0, #0x98]
    13b4: 14000020     	b	0x1434 <zte_devm_power_supply_get_by_phandle+0x13c>
    13b8: 911162a8     	add	x8, x21, #0x458
    13bc: 52800029     	mov	w9, #0x1                // =1
    13c0: b829011f     	stadd	w9, [x8]
    13c4: b40001b5     	cbz	x21, 0x13f8 <zte_devm_power_supply_get_by_phandle+0x100>
    13c8: b13ffebf     	cmn	x21, #0xfff
    13cc: 54000162     	b.hs	0x13f8 <zte_devm_power_supply_get_by_phandle+0x100>
    13d0: aa1303e0     	mov	x0, x19
    13d4: aa1403e1     	mov	x1, x20
    13d8: f9000295     	str	x21, [x20]
    13dc: 94000000     	bl	0x13dc <zte_devm_power_supply_get_by_phandle+0xe4>
		00000000000013dc:  R_AARCH64_CALL26	devres_add
    13e0: 14000008     	b	0x1400 <zte_devm_power_supply_get_by_phandle+0x108>
    13e4: 92800255     	mov	x21, #-0x13             // =-19
    13e8: 14000006     	b	0x1400 <zte_devm_power_supply_get_by_phandle+0x108>
    13ec: 92800175     	mov	x21, #-0xc              // =-12
    13f0: 14000004     	b	0x1400 <zte_devm_power_supply_get_by_phandle+0x108>
    13f4: aa1f03f5     	mov	x21, xzr
    13f8: aa1403e0     	mov	x0, x20
    13fc: 94000000     	bl	0x13fc <zte_devm_power_supply_get_by_phandle+0x104>
		00000000000013fc:  R_AARCH64_CALL26	devres_free
    1400: d5384108     	mrs	x8, SP_EL0
    1404: f9438908     	ldr	x8, [x8, #0x710]
    1408: f85f83a9     	ldur	x9, [x29, #-0x8]
    140c: eb09011f     	cmp	x8, x9
    1410: 54000101     	b.ne	0x1430 <zte_devm_power_supply_get_by_phandle+0x138>
    1414: aa1503e0     	mov	x0, x21
    1418: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    141c: f9403bf5     	ldr	x21, [sp, #0x70]
    1420: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1424: 910243ff     	add	sp, sp, #0x90
    1428: d50323bf     	autiasp
    142c: d65f03c0     	ret
    1430: 94000000     	bl	0x1430 <zte_devm_power_supply_get_by_phandle+0x138>
		0000000000001430:  R_AARCH64_CALL26	__stack_chk_fail
    1434: 911162a8     	add	x8, x21, #0x458
    1438: f9800111     	prfm	pstl1strm, [x8]
    143c: 885f7d09     	ldxr	w9, [x8]
    1440: 11000529     	add	w9, w9, #0x1
    1444: 880a7d09     	stxr	w10, w9, [x8]
    1448: 35ffffaa     	cbnz	w10, 0x143c <zte_devm_power_supply_get_by_phandle+0x144>
    144c: b5fffbf5     	cbnz	x21, 0x13c8 <zte_devm_power_supply_get_by_phandle+0xd0>
    1450: 17ffffea     	b	0x13f8 <zte_devm_power_supply_get_by_phandle+0x100>
