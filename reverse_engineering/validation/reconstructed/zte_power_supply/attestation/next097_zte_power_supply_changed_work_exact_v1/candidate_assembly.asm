
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013e4 <zte_power_supply_changed_work>:
    13e4: d503233f     	paciasp
    13e8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    13ec: f9000bf5     	str	x21, [sp, #0x10]
    13f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    13f4: 910003fd     	mov	x29, sp
    13f8: aa0003f3     	mov	x19, x0
    13fc: 91022000     	add	x0, x0, #0x88
    1400: 94000000     	bl	0x1400 <zte_power_supply_changed_work+0x1c>
		0000000000001400:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1404: 39423268     	ldrb	w8, [x19, #0x8c]
    1408: aa0003f4     	mov	x20, x0
    140c: 7100051f     	cmp	w8, #0x1
    1410: 54000321     	b.ne	0x1474 <zte_power_supply_changed_work+0x90>
    1414: 91022260     	add	x0, x19, #0x88
    1418: aa1403e1     	mov	x1, x20
    141c: d10f2275     	sub	x21, x19, #0x3c8
    1420: 3902327f     	strb	wzr, [x19, #0x8c]
    1424: 94000000     	bl	0x1424 <zte_power_supply_changed_work+0x40>
		0000000000001424:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1428: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x40>
		0000000000001428:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    142c: 90000003     	adrp	x3, 0x1000 <zte_power_supply_set_battery_charged+0x40>
		000000000000142c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x173c
    1430: 91000063     	add	x3, x3, #0x0
		0000000000001430:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x173c
    1434: f9400100     	ldr	x0, [x8]
		0000000000001434:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1438: aa1f03e1     	mov	x1, xzr
    143c: aa1503e2     	mov	x2, x21
    1440: 94000000     	bl	0x1440 <zte_power_supply_changed_work+0x5c>
		0000000000001440:  R_AARCH64_CALL26	class_for_each_device
    1444: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x40>
		0000000000001444:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
    1448: 91000000     	add	x0, x0, #0x0
		0000000000001448:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
    144c: aa1f03e1     	mov	x1, xzr
    1450: aa1503e2     	mov	x2, x21
    1454: 94000000     	bl	0x1454 <zte_power_supply_changed_work+0x70>
		0000000000001454:  R_AARCH64_CALL26	atomic_notifier_call_chain
    1458: d10e4260     	sub	x0, x19, #0x390
    145c: 52800041     	mov	w1, #0x2                // =2
    1460: 94000000     	bl	0x1460 <zte_power_supply_changed_work+0x7c>
		0000000000001460:  R_AARCH64_CALL26	kobject_uevent
    1464: 91022260     	add	x0, x19, #0x88
    1468: 94000000     	bl	0x1468 <zte_power_supply_changed_work+0x84>
		0000000000001468:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    146c: 39423268     	ldrb	w8, [x19, #0x8c]
    1470: aa0003f4     	mov	x20, x0
    1474: 37000068     	tbnz	w8, #0x0, 0x1480 <zte_power_supply_changed_work+0x9c>
    1478: d10e4260     	sub	x0, x19, #0x390
    147c: 94000000     	bl	0x147c <zte_power_supply_changed_work+0x98>
		000000000000147c:  R_AARCH64_CALL26	pm_relax
    1480: 91022260     	add	x0, x19, #0x88
    1484: aa1403e1     	mov	x1, x20
    1488: 94000000     	bl	0x1488 <zte_power_supply_changed_work+0xa4>
		0000000000001488:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    148c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1490: f9400bf5     	ldr	x21, [sp, #0x10]
    1494: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1498: d50323bf     	autiasp
    149c: d65f03c0     	ret
