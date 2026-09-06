
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000165c <zte_power_supply_changed_work>:
    165c: d503233f     	paciasp
    1660: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1664: f9000bf5     	str	x21, [sp, #0x10]
    1668: a9024ff4     	stp	x20, x19, [sp, #0x20]
    166c: 910003fd     	mov	x29, sp
    1670: aa0003f3     	mov	x19, x0
    1674: 91022000     	add	x0, x0, #0x88
    1678: 94000000     	bl	0x1678 <zte_power_supply_changed_work+0x1c>
		0000000000001678:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    167c: 39423268     	ldrb	w8, [x19, #0x8c]
    1680: aa0003f4     	mov	x20, x0
    1684: 7100051f     	cmp	w8, #0x1
    1688: 54000321     	b.ne	0x16ec <zte_power_supply_changed_work+0x90>
    168c: 91022260     	add	x0, x19, #0x88
    1690: aa1403e1     	mov	x1, x20
    1694: d10f2275     	sub	x21, x19, #0x3c8
    1698: 3902327f     	strb	wzr, [x19, #0x8c]
    169c: 94000000     	bl	0x169c <zte_power_supply_changed_work+0x40>
		000000000000169c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    16a0: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		00000000000016a0:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    16a4: 90000003     	adrp	x3, 0x1000 <zte_power_supply_powers+0x8>
		00000000000016a4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1974
    16a8: 91000063     	add	x3, x3, #0x0
		00000000000016a8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1974
    16ac: f9400100     	ldr	x0, [x8]
		00000000000016ac:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    16b0: aa1f03e1     	mov	x1, xzr
    16b4: aa1503e2     	mov	x2, x21
    16b8: 94000000     	bl	0x16b8 <zte_power_supply_changed_work+0x5c>
		00000000000016b8:  R_AARCH64_CALL26	class_for_each_device
    16bc: 90000000     	adrp	x0, 0x1000 <zte_power_supply_powers+0x8>
		00000000000016bc:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_notifier
    16c0: 91000000     	add	x0, x0, #0x0
		00000000000016c0:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_notifier
    16c4: aa1f03e1     	mov	x1, xzr
    16c8: aa1503e2     	mov	x2, x21
    16cc: 94000000     	bl	0x16cc <zte_power_supply_changed_work+0x70>
		00000000000016cc:  R_AARCH64_CALL26	atomic_notifier_call_chain
    16d0: d10e4260     	sub	x0, x19, #0x390
    16d4: 52800041     	mov	w1, #0x2                // =2
    16d8: 94000000     	bl	0x16d8 <zte_power_supply_changed_work+0x7c>
		00000000000016d8:  R_AARCH64_CALL26	kobject_uevent
    16dc: 91022260     	add	x0, x19, #0x88
    16e0: 94000000     	bl	0x16e0 <zte_power_supply_changed_work+0x84>
		00000000000016e0:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    16e4: 39423268     	ldrb	w8, [x19, #0x8c]
    16e8: aa0003f4     	mov	x20, x0
    16ec: 37000068     	tbnz	w8, #0x0, 0x16f8 <zte_power_supply_changed_work+0x9c>
    16f0: d10e4260     	sub	x0, x19, #0x390
    16f4: 94000000     	bl	0x16f4 <zte_power_supply_changed_work+0x98>
		00000000000016f4:  R_AARCH64_CALL26	pm_relax
    16f8: 91022260     	add	x0, x19, #0x88
    16fc: aa1403e1     	mov	x1, x20
    1700: 94000000     	bl	0x1700 <zte_power_supply_changed_work+0xa4>
		0000000000001700:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1704: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1708: f9400bf5     	ldr	x21, [sp, #0x10]
    170c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1710: d50323bf     	autiasp
    1714: d65f03c0     	ret
