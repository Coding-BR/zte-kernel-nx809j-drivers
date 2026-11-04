
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012b4 <charger_policy_demo_sts_set>:
    12b4: d503233f     	paciasp
    12b8: d100c3ff     	sub	sp, sp, #0x30
    12bc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    12c0: f90013f3     	str	x19, [sp, #0x20]
    12c4: 910043fd     	add	x29, sp, #0x10
    12c8: d5384108     	mrs	x8, SP_EL0
    12cc: f9438908     	ldr	x8, [x8, #0x710]
    12d0: f90007e8     	str	x8, [sp, #0x8]
    12d4: b90007ff     	str	wzr, [sp, #0x4]
    12d8: b5000101     	cbnz	x1, 0x12f8 <charger_policy_demo_sts_set+0x44>
    12dc: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    12e0: 91000000     	add	x0, x0, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    12e4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000012e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    12e8: 91000021     	add	x1, x1, #0x0
		00000000000012e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    12ec: 94000000     	bl	0x12ec <charger_policy_demo_sts_set+0x38>
		00000000000012ec:  R_AARCH64_CALL26	_printk
    12f0: 128002a0     	mov	w0, #-0x16              // =-22
    12f4: 14000014     	b	0x1344 <charger_policy_demo_sts_set+0x90>
    12f8: aa0103f3     	mov	x19, x1
    12fc: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		00000000000012fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1300: 91000021     	add	x1, x1, #0x0
		0000000000001300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1304: 910013e2     	add	x2, sp, #0x4
    1308: 94000000     	bl	0x1308 <charger_policy_demo_sts_set+0x54>
		0000000000001308:  R_AARCH64_CALL26	sscanf
    130c: b94007e8     	ldr	w8, [sp, #0x4]
    1310: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
    1314: 91000000     	add	x0, x0, #0x0
		0000000000001314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
    1318: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    131c: 91000021     	add	x1, x1, #0x0
		000000000000131c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1320: 7100011f     	cmp	w8, #0x0
    1324: 1a9f07e2     	cset	w2, ne
    1328: b90007e2     	str	w2, [sp, #0x4]
    132c: 94000000     	bl	0x132c <charger_policy_demo_sts_set+0x78>
		000000000000132c:  R_AARCH64_CALL26	_printk
    1330: 39486668     	ldrb	w8, [x19, #0x219]
    1334: b94007e9     	ldr	w9, [sp, #0x4]
    1338: 6b08013f     	cmp	w9, w8
    133c: 54000181     	b.ne	0x136c <charger_policy_demo_sts_set+0xb8>
    1340: 2a1f03e0     	mov	w0, wzr
    1344: d5384108     	mrs	x8, SP_EL0
    1348: f9438908     	ldr	x8, [x8, #0x710]
    134c: f94007e9     	ldr	x9, [sp, #0x8]
    1350: eb09011f     	cmp	x8, x9
    1354: 54000381     	b.ne	0x13c4 <charger_policy_demo_sts_set+0x110>
    1358: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    135c: f94013f3     	ldr	x19, [sp, #0x20]
    1360: 9100c3ff     	add	sp, sp, #0x30
    1364: d50323bf     	autiasp
    1368: d65f03c0     	ret
    136c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000136c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1788
    1370: 91000000     	add	x0, x0, #0x0
		0000000000001370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1788
    1374: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1378: 91000021     	add	x1, x1, #0x0
		0000000000001378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    137c: 94000000     	bl	0x137c <charger_policy_demo_sts_set+0xc8>
		000000000000137c:  R_AARCH64_CALL26	_printk
    1380: b94007e8     	ldr	w8, [sp, #0x4]
    1384: 7100011f     	cmp	w8, #0x0
    1388: 1a9f07e9     	cset	w9, ne
    138c: 39086669     	strb	w9, [x19, #0x219]
    1390: 350000e8     	cbnz	w8, 0x13ac <charger_policy_demo_sts_set+0xf8>
    1394: f940f260     	ldr	x0, [x19, #0x1e0]
    1398: 94000000     	bl	0x1398 <charger_policy_demo_sts_set+0xe4>
		0000000000001398:  R_AARCH64_CALL26	__pm_stay_awake
    139c: aa1303e0     	mov	x0, x19
    13a0: 9400000a     	bl	0x13c8 <charger_policy_demo_sts_set+0x114>
    13a4: f940f260     	ldr	x0, [x19, #0x1e0]
    13a8: 94000000     	bl	0x13a8 <charger_policy_demo_sts_set+0xf4>
		00000000000013a8:  R_AARCH64_CALL26	__pm_relax
    13ac: f9405261     	ldr	x1, [x19, #0xa0]
    13b0: 9102a262     	add	x2, x19, #0xa8
    13b4: 52800400     	mov	w0, #0x20               // =32
    13b8: 52800323     	mov	w3, #0x19               // =25
    13bc: 94000000     	bl	0x13bc <charger_policy_demo_sts_set+0x108>
		00000000000013bc:  R_AARCH64_CALL26	queue_delayed_work_on
    13c0: 17ffffe0     	b	0x1340 <charger_policy_demo_sts_set+0x8c>
    13c4: 94000000     	bl	0x13c4 <charger_policy_demo_sts_set+0x110>
		00000000000013c4:  R_AARCH64_CALL26	__stack_chk_fail
