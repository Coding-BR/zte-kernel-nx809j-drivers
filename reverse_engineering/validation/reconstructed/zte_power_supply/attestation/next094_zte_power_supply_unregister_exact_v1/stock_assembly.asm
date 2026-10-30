
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000152c <zte_power_supply_unregister>:
    152c: d503233f     	paciasp
    1530: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1534: f9000bf3     	str	x19, [sp, #0x10]
    1538: 910003fd     	mov	x29, sp
    153c: aa0003f3     	mov	x19, x0
    1540: 1400001b     	b	0x15ac <zte_power_supply_unregister+0x80>
    1544: 91116268     	add	x8, x19, #0x458
    1548: 12800009     	mov	w9, #-0x1               // =-1
    154c: b8e90108     	ldaddal	w9, w8, [x8]
    1550: 51000508     	sub	w8, w8, #0x1
    1554: 350003e8     	cbnz	w8, 0x15d0 <zte_power_supply_unregister+0xa4>
    1558: 52800028     	mov	w8, #0x1                // =1
    155c: 910f2260     	add	x0, x19, #0x3c8
    1560: 39115a68     	strb	w8, [x19, #0x456]
    1564: 94000000     	bl	0x1564 <zte_power_supply_unregister+0x38>
		0000000000001564:  R_AARCH64_CALL26	cancel_work_sync
    1568: 910fa260     	add	x0, x19, #0x3e8
    156c: 94000000     	bl	0x156c <zte_power_supply_unregister+0x40>
		000000000000156c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1570: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x260
    1574: 91000021     	add	x1, x1, #0x0
		0000000000001574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x260
    1578: 9100e260     	add	x0, x19, #0x38
    157c: 94000000     	bl	0x157c <zte_power_supply_unregister+0x50>
		000000000000157c:  R_AARCH64_CALL26	sysfs_remove_link
    1580: 9100e260     	add	x0, x19, #0x38
    1584: 94000000     	bl	0x1584 <zte_power_supply_unregister+0x58>
		0000000000001584:  R_AARCH64_CALL26	device_wakeup_disable
    1588: 9100e260     	add	x0, x19, #0x38
    158c: 2a1f03e1     	mov	w1, wzr
    1590: 94000000     	bl	0x1590 <zte_power_supply_unregister+0x64>
		0000000000001590:  R_AARCH64_CALL26	device_set_wakeup_capable
    1594: 9100e260     	add	x0, x19, #0x38
    1598: 94000000     	bl	0x1598 <zte_power_supply_unregister+0x6c>
		0000000000001598:  R_AARCH64_CALL26	device_unregister
    159c: f9400bf3     	ldr	x19, [sp, #0x10]
    15a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    15a4: d50323bf     	autiasp
    15a8: d65f03c0     	ret
    15ac: 91116269     	add	x9, x19, #0x458
    15b0: 5280002a     	mov	w10, #0x1               // =1
    15b4: f9800131     	prfm	pstl1strm, [x9]
    15b8: 885f7d28     	ldxr	w8, [x9]
    15bc: 4b0a0108     	sub	w8, w8, w10
    15c0: 880bfd28     	stlxr	w11, w8, [x9]
    15c4: 35ffffab     	cbnz	w11, 0x15b8 <zte_power_supply_unregister+0x8c>
    15c8: d5033bbf     	dmb	ish
    15cc: 34fffc68     	cbz	w8, 0x1558 <zte_power_supply_unregister+0x2c>
    15d0: d4210000     	brk	#0x800
    15d4: 17ffffe1     	b	0x1558 <zte_power_supply_unregister+0x2c>
