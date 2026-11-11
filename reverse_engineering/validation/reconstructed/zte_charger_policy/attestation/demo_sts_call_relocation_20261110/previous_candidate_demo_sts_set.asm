
/input/fresh_candidate_unpromoted.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012c4 <charger_policy_demo_sts_set>:
    12c4: d503233f     	paciasp
    12c8: d100c3ff     	sub	sp, sp, #0x30
    12cc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    12d0: f90013f3     	str	x19, [sp, #0x20]
    12d4: 910043fd     	add	x29, sp, #0x10
    12d8: d5384108     	mrs	x8, SP_EL0
    12dc: f9438908     	ldr	x8, [x8, #0x710]
    12e0: f90007e8     	str	x8, [sp, #0x8]
    12e4: b90007ff     	str	wzr, [sp, #0x4]
    12e8: b5000101     	cbnz	x1, 0x1308 <charger_policy_demo_sts_set+0x44>
    12ec: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000012ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    12f0: 91000000     	add	x0, x0, #0x0
		00000000000012f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    12f4: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		00000000000012f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    12f8: 91000021     	add	x1, x1, #0x0
		00000000000012f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    12fc: 94000000     	bl	0x12fc <charger_policy_demo_sts_set+0x38>
		00000000000012fc:  R_AARCH64_CALL26	_printk
    1300: 128002a0     	mov	w0, #-0x16              // =-22
    1304: 14000014     	b	0x1354 <charger_policy_demo_sts_set+0x90>
    1308: aa0103f3     	mov	x19, x1
    130c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000130c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1310: 91000021     	add	x1, x1, #0x0
		0000000000001310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1314: 910013e2     	add	x2, sp, #0x4
    1318: 94000000     	bl	0x1318 <charger_policy_demo_sts_set+0x54>
		0000000000001318:  R_AARCH64_CALL26	sscanf
    131c: b94007e8     	ldr	w8, [sp, #0x4]
    1320: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001320:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1520
    1324: 91000000     	add	x0, x0, #0x0
		0000000000001324:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1520
    1328: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    132c: 91000021     	add	x1, x1, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1330: 7100011f     	cmp	w8, #0x0
    1334: 1a9f07e2     	cset	w2, ne
    1338: b90007e2     	str	w2, [sp, #0x4]
    133c: 94000000     	bl	0x133c <charger_policy_demo_sts_set+0x78>
		000000000000133c:  R_AARCH64_CALL26	_printk
    1340: 39486668     	ldrb	w8, [x19, #0x219]
    1344: b94007e9     	ldr	w9, [sp, #0x4]
    1348: 6b08013f     	cmp	w9, w8
    134c: 54000181     	b.ne	0x137c <charger_policy_demo_sts_set+0xb8>
    1350: 2a1f03e0     	mov	w0, wzr
    1354: d5384108     	mrs	x8, SP_EL0
    1358: f9438908     	ldr	x8, [x8, #0x710]
    135c: f94007e9     	ldr	x9, [sp, #0x8]
    1360: eb09011f     	cmp	x8, x9
    1364: 54000381     	b.ne	0x13d4 <charger_policy_demo_sts_set+0x110>
    1368: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    136c: f94013f3     	ldr	x19, [sp, #0x20]
    1370: 9100c3ff     	add	sp, sp, #0x30
    1374: d50323bf     	autiasp
    1378: d65f03c0     	ret
    137c: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000137c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1788
    1380: 91000000     	add	x0, x0, #0x0
		0000000000001380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1788
    1384: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1388: 91000021     	add	x1, x1, #0x0
		0000000000001388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    138c: 94000000     	bl	0x138c <charger_policy_demo_sts_set+0xc8>
		000000000000138c:  R_AARCH64_CALL26	_printk
    1390: b94007e8     	ldr	w8, [sp, #0x4]
    1394: 7100011f     	cmp	w8, #0x0
    1398: 1a9f07e9     	cset	w9, ne
    139c: 39086669     	strb	w9, [x19, #0x219]
    13a0: 350000e8     	cbnz	w8, 0x13bc <charger_policy_demo_sts_set+0xf8>
    13a4: f940f260     	ldr	x0, [x19, #0x1e0]
    13a8: 94000000     	bl	0x13a8 <charger_policy_demo_sts_set+0xe4>
		00000000000013a8:  R_AARCH64_CALL26	__pm_stay_awake
    13ac: aa1303e0     	mov	x0, x19
    13b0: 9400000a     	bl	0x13d8 <charger_policy_demo_sts_set+0x114>
    13b4: f940f260     	ldr	x0, [x19, #0x1e0]
    13b8: 94000000     	bl	0x13b8 <charger_policy_demo_sts_set+0xf4>
		00000000000013b8:  R_AARCH64_CALL26	__pm_relax
    13bc: f9405261     	ldr	x1, [x19, #0xa0]
    13c0: 9102a262     	add	x2, x19, #0xa8
    13c4: 52800400     	mov	w0, #0x20               // =32
    13c8: 52800323     	mov	w3, #0x19               // =25
    13cc: 94000000     	bl	0x13cc <charger_policy_demo_sts_set+0x108>
		00000000000013cc:  R_AARCH64_CALL26	queue_delayed_work_on
    13d0: 17ffffe0     	b	0x1350 <charger_policy_demo_sts_set+0x8c>
    13d4: 94000000     	bl	0x13d4 <charger_policy_demo_sts_set+0x110>
		00000000000013d4:  R_AARCH64_CALL26	__stack_chk_fail
