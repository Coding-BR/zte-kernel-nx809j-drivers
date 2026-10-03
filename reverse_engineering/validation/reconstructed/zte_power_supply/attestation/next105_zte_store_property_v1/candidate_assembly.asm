
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014d0 <zte_power_supply_store_property>:
    14d0: d503233f     	paciasp
    14d4: d10143ff     	sub	sp, sp, #0x50
    14d8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    14dc: a90357f6     	stp	x22, x21, [sp, #0x30]
    14e0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    14e4: 910083fd     	add	x29, sp, #0x20
    14e8: d5384108     	mrs	x8, SP_EL0
    14ec: aa0103f5     	mov	x21, x1
    14f0: aa0303f3     	mov	x19, x3
    14f4: f9438908     	ldr	x8, [x8, #0x710]
    14f8: aa0203f6     	mov	x22, x2
    14fc: f81f83a8     	stur	x8, [x29, #-0x8]
    1500: b9402821     	ldr	w1, [x1, #0x28]
    1504: f9404c14     	ldr	x20, [x0, #0x98]
    1508: f9000bff     	str	xzr, [sp, #0x10]
    150c: 7100043f     	cmp	w1, #0x1
    1510: 540000eb     	b.lt	0x152c <zte_power_supply_store_property+0x5c>
    1514: f94012a0     	ldr	x0, [x21, #0x20]
    1518: aa1603e2     	mov	x2, x22
    151c: 94000000     	bl	0x151c <zte_power_supply_store_property+0x4c>
		000000000000151c:  R_AARCH64_CALL26	__sysfs_match_string
    1520: 37f80060     	tbnz	w0, #0x1f, 0x152c <zte_power_supply_store_property+0x5c>
    1524: 2a0003e8     	mov	w8, w0
    1528: 14000008     	b	0x1548 <zte_power_supply_store_property+0x78>
    152c: 910023e2     	add	x2, sp, #0x8
    1530: aa1603e0     	mov	x0, x22
    1534: 52800141     	mov	w1, #0xa                // =10
    1538: f90007ff     	str	xzr, [sp, #0x8]
    153c: 94000000     	bl	0x153c <zte_power_supply_store_property+0x6c>
		000000000000153c:  R_AARCH64_CALL26	kstrtoll
    1540: 37f80240     	tbnz	w0, #0x1f, 0x1588 <zte_power_supply_store_property+0xb8>
    1544: f94007e8     	ldr	x8, [sp, #0x8]
    1548: 90000009     	adrp	x9, 0x1000 <zte_power_supply_find_ocv2cap_table+0x10>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_attrs
    154c: 91000129     	add	x9, x9, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_attrs
    1550: 5291746a     	mov	w10, #0x8ba3            // =35747
    1554: cb0902a9     	sub	x9, x21, x9
    1558: 72b745ca     	movk	w10, #0xba2e, lsl #16
    155c: 910043e2     	add	x2, sp, #0x10
    1560: d100a129     	sub	x9, x9, #0x28
    1564: aa1403e0     	mov	x0, x20
    1568: b90013e8     	str	w8, [sp, #0x10]
    156c: d343fd29     	lsr	x9, x9, #3
    1570: 1b0a7d21     	mul	w1, w9, w10
    1574: 94000000     	bl	0x1574 <zte_power_supply_store_property+0xa4>
		0000000000001574:  R_AARCH64_CALL26	zte_power_supply_set_property
    1578: 93407c08     	sxtw	x8, w0
    157c: 7100001f     	cmp	w0, #0x0
    1580: 9a93b100     	csel	x0, x8, x19, lt
    1584: 14000002     	b	0x158c <zte_power_supply_store_property+0xbc>
    1588: 93407c00     	sxtw	x0, w0
    158c: d5384108     	mrs	x8, SP_EL0
    1590: f9438908     	ldr	x8, [x8, #0x710]
    1594: f85f83a9     	ldur	x9, [x29, #-0x8]
    1598: eb09011f     	cmp	x8, x9
    159c: 540000e1     	b.ne	0x15b8 <zte_power_supply_store_property+0xe8>
    15a0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    15a4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    15a8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    15ac: 910143ff     	add	sp, sp, #0x50
    15b0: d50323bf     	autiasp
    15b4: d65f03c0     	ret
    15b8: 94000000     	bl	0x15b8 <zte_power_supply_store_property+0xe8>
		00000000000015b8:  R_AARCH64_CALL26	__stack_chk_fail
