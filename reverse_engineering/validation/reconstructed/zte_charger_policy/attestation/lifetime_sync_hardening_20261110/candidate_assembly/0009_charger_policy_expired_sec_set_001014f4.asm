
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014f8 <charger_policy_expired_sec_set>:
    14f8: d503233f     	paciasp
    14fc: d100c3ff     	sub	sp, sp, #0x30
    1500: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1504: f90013f3     	str	x19, [sp, #0x20]
    1508: 910043fd     	add	x29, sp, #0x10
    150c: d5384108     	mrs	x8, SP_EL0
    1510: f9438908     	ldr	x8, [x8, #0x710]
    1514: f90007e8     	str	x8, [sp, #0x8]
    1518: b90007ff     	str	wzr, [sp, #0x4]
    151c: b5000101     	cbnz	x1, 0x153c <charger_policy_expired_sec_set+0x44>
    1520: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1524: 91000000     	add	x0, x0, #0x0
		0000000000001524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1528: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352
    152c: 91000021     	add	x1, x1, #0x0
		000000000000152c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352
    1530: 94000000     	bl	0x1530 <charger_policy_expired_sec_set+0x38>
		0000000000001530:  R_AARCH64_CALL26	_printk
    1534: 128002a0     	mov	w0, #-0x16              // =-22
    1538: 1400000e     	b	0x1570 <charger_policy_expired_sec_set+0x78>
    153c: aa0103f3     	mov	x19, x1
    1540: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1544: 91000021     	add	x1, x1, #0x0
		0000000000001544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1548: 910013e2     	add	x2, sp, #0x4
    154c: 94000000     	bl	0x154c <charger_policy_expired_sec_set+0x54>
		000000000000154c:  R_AARCH64_CALL26	sscanf
    1550: b94007e2     	ldr	w2, [sp, #0x4]
    1554: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x158>
		0000000000001554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b36
    1558: 91000000     	add	x0, x0, #0x0
		0000000000001558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b36
    155c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x158>
		000000000000155c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352
    1560: 91000021     	add	x1, x1, #0x0
		0000000000001560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352
    1564: b901f662     	str	w2, [x19, #0x1f4]
    1568: 94000000     	bl	0x1568 <charger_policy_expired_sec_set+0x70>
		0000000000001568:  R_AARCH64_CALL26	_printk
    156c: 2a1f03e0     	mov	w0, wzr
    1570: d5384108     	mrs	x8, SP_EL0
    1574: f9438908     	ldr	x8, [x8, #0x710]
    1578: f94007e9     	ldr	x9, [sp, #0x8]
    157c: eb09011f     	cmp	x8, x9
    1580: 540000c1     	b.ne	0x1598 <charger_policy_expired_sec_set+0xa0>
    1584: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1588: f94013f3     	ldr	x19, [sp, #0x20]
    158c: 9100c3ff     	add	sp, sp, #0x30
    1590: d50323bf     	autiasp
    1594: d65f03c0     	ret
    1598: 94000000     	bl	0x1598 <charger_policy_expired_sec_set+0xa0>
		0000000000001598:  R_AARCH64_CALL26	__stack_chk_fail
