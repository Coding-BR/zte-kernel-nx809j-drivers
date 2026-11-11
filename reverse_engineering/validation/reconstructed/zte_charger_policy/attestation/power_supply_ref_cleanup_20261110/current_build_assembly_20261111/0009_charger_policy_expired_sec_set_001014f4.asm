
/input/zte_charger_policy.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001508 <charger_policy_expired_sec_set>:
    1508: d503233f     	paciasp
    150c: d100c3ff     	sub	sp, sp, #0x30
    1510: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1514: f90013f3     	str	x19, [sp, #0x20]
    1518: 910043fd     	add	x29, sp, #0x10
    151c: d5384108     	mrs	x8, SP_EL0
    1520: f9438908     	ldr	x8, [x8, #0x710]
    1524: f90007e8     	str	x8, [sp, #0x8]
    1528: b90007ff     	str	wzr, [sp, #0x4]
    152c: b5000101     	cbnz	x1, 0x154c <charger_policy_expired_sec_set+0x44>
    1530: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf9e
    1534: 91000000     	add	x0, x0, #0x0
		0000000000001534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf9e
    1538: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352
    153c: 91000021     	add	x1, x1, #0x0
		000000000000153c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352
    1540: 94000000     	bl	0x1540 <charger_policy_expired_sec_set+0x38>
		0000000000001540:  R_AARCH64_CALL26	_printk
    1544: 128002a0     	mov	w0, #-0x16              // =-22
    1548: 1400000e     	b	0x1580 <charger_policy_expired_sec_set+0x78>
    154c: aa0103f3     	mov	x19, x1
    1550: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19dc
    1554: 91000021     	add	x1, x1, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19dc
    1558: 910013e2     	add	x2, sp, #0x4
    155c: 94000000     	bl	0x155c <charger_policy_expired_sec_set+0x54>
		000000000000155c:  R_AARCH64_CALL26	sscanf
    1560: b94007e2     	ldr	w2, [sp, #0x4]
    1564: 90000000     	adrp	x0, 0x1000 <charger_policy_status_rundischging+0x148>
		0000000000001564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b36
    1568: 91000000     	add	x0, x0, #0x0
		0000000000001568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b36
    156c: 90000001     	adrp	x1, 0x1000 <charger_policy_status_rundischging+0x148>
		000000000000156c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352
    1570: 91000021     	add	x1, x1, #0x0
		0000000000001570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352
    1574: b901f662     	str	w2, [x19, #0x1f4]
    1578: 94000000     	bl	0x1578 <charger_policy_expired_sec_set+0x70>
		0000000000001578:  R_AARCH64_CALL26	_printk
    157c: 2a1f03e0     	mov	w0, wzr
    1580: d5384108     	mrs	x8, SP_EL0
    1584: f9438908     	ldr	x8, [x8, #0x710]
    1588: f94007e9     	ldr	x9, [sp, #0x8]
    158c: eb09011f     	cmp	x8, x9
    1590: 540000c1     	b.ne	0x15a8 <charger_policy_expired_sec_set+0xa0>
    1594: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1598: f94013f3     	ldr	x19, [sp, #0x20]
    159c: 9100c3ff     	add	sp, sp, #0x30
    15a0: d50323bf     	autiasp
    15a4: d65f03c0     	ret
    15a8: 94000000     	bl	0x15a8 <charger_policy_expired_sec_set+0xa0>
		00000000000015a8:  R_AARCH64_CALL26	__stack_chk_fail
