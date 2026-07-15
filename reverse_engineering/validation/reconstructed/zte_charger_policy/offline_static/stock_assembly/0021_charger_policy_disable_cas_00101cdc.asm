
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012ac <charger_policy_disable_cas>:
    12ac: d503233f     	paciasp
    12b0: d10103ff     	sub	sp, sp, #0x40
    12b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    12b8: f90013f5     	str	x21, [sp, #0x20]
    12bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    12c0: 910043fd     	add	x29, sp, #0x10
    12c4: d5384108     	mrs	x8, SP_EL0
    12c8: 12000034     	and	w20, w1, #0x1
    12cc: aa0003f3     	mov	x19, x0
    12d0: f9438908     	ldr	x8, [x8, #0x710]
    12d4: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000012d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3d
    12d8: 91000000     	add	x0, x0, #0x0
		00000000000012d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3d
    12dc: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d3
    12e0: 91000021     	add	x1, x1, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d3
    12e4: 2a1403e2     	mov	w2, w20
    12e8: f90007e8     	str	x8, [sp, #0x8]
    12ec: 94000000     	bl	0x12ec <charger_policy_disable_cas+0x40>
		00000000000012ec:  R_AARCH64_CALL26	_printk
    12f0: f940ea73     	ldr	x19, [x19, #0x1d0]
    12f4: f90003ff     	str	xzr, [sp]
    12f8: b40002f3     	cbz	x19, 0x1354 <charger_policy_disable_cas+0xa8>
    12fc: aa1303e0     	mov	x0, x19
    1300: 94000000     	bl	0x1300 <charger_policy_disable_cas+0x54>
		0000000000001300:  R_AARCH64_CALL26	power_supply_get_by_name
    1304: b4000360     	cbz	x0, 0x1370 <charger_policy_disable_cas+0xc4>
    1308: 910003e2     	mov	x2, sp
    130c: 528000a1     	mov	w1, #0x5                // =5
    1310: aa0003f5     	mov	x21, x0
    1314: b90003f4     	str	w20, [sp]
    1318: 94000000     	bl	0x1318 <charger_policy_disable_cas+0x6c>
		0000000000001318:  R_AARCH64_CALL26	power_supply_set_property
    131c: 37f803a0     	tbnz	w0, #0x1f, 0x1390 <charger_policy_disable_cas+0xe4>
    1320: aa1503e0     	mov	x0, x21
    1324: 94000000     	bl	0x1324 <charger_policy_disable_cas+0x78>
		0000000000001324:  R_AARCH64_CALL26	power_supply_put
    1328: d5384108     	mrs	x8, SP_EL0
    132c: f9438908     	ldr	x8, [x8, #0x710]
    1330: f94007e9     	ldr	x9, [sp, #0x8]
    1334: eb09011f     	cmp	x8, x9
    1338: 540004e1     	b.ne	0x13d4 <charger_policy_disable_cas+0x128>
    133c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1340: f94013f5     	ldr	x21, [sp, #0x20]
    1344: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1348: 910103ff     	add	sp, sp, #0x40
    134c: d50323bf     	autiasp
    1350: d65f03c0     	ret
    1354: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001354:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1da
    1358: 91000000     	add	x0, x0, #0x0
		0000000000001358:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1da
    135c: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		000000000000135c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
    1360: 91000021     	add	x1, x1, #0x0
		0000000000001360:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
    1364: 94000000     	bl	0x1364 <charger_policy_disable_cas+0xb8>
		0000000000001364:  R_AARCH64_CALL26	_printk
    1368: 128002b3     	mov	w19, #-0x16             // =-22
    136c: 14000013     	b	0x13b8 <charger_policy_disable_cas+0x10c>
    1370: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x152b
    1374: 91000000     	add	x0, x0, #0x0
		0000000000001374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x152b
    1378: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
    137c: 91000021     	add	x1, x1, #0x0
		000000000000137c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
    1380: aa1303e2     	mov	x2, x19
    1384: 94000000     	bl	0x1384 <charger_policy_disable_cas+0xd8>
		0000000000001384:  R_AARCH64_CALL26	_printk
    1388: 128002b3     	mov	w19, #-0x16             // =-22
    138c: 1400000b     	b	0x13b8 <charger_policy_disable_cas+0x10c>
    1390: 90000008     	adrp	x8, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163a
    1394: 91000108     	add	x8, x8, #0x0
		0000000000001394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163a
    1398: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		0000000000001398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fe
    139c: 91000021     	add	x1, x1, #0x0
		000000000000139c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fe
    13a0: 2a0003e4     	mov	w4, w0
    13a4: aa0803e0     	mov	x0, x8
    13a8: aa1303e2     	mov	x2, x19
    13ac: 528000a3     	mov	w3, #0x5                // =5
    13b0: 2a0403f3     	mov	w19, w4
    13b4: 94000000     	bl	0x13b4 <charger_policy_disable_cas+0x108>
		00000000000013b4:  R_AARCH64_CALL26	_printk
    13b8: 90000000     	adrp	x0, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95b
    13bc: 91000000     	add	x0, x0, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95b
    13c0: 90000001     	adrp	x1, 0x1000 <charger_policy_enable_status_set+0x60>
		00000000000013c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d3
    13c4: 91000021     	add	x1, x1, #0x0
		00000000000013c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d3
    13c8: 2a1303e2     	mov	w2, w19
    13cc: 94000000     	bl	0x13cc <charger_policy_disable_cas+0x120>
		00000000000013cc:  R_AARCH64_CALL26	_printk
    13d0: 17ffffd6     	b	0x1328 <charger_policy_disable_cas+0x7c>
    13d4: 94000000     	bl	0x13d4 <charger_policy_disable_cas+0x128>
		00000000000013d4:  R_AARCH64_CALL26	__stack_chk_fail
