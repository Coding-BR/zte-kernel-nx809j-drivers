
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001bf0 <zte_power_supply_changed_work>:
    1bf0: d503233f     	paciasp
    1bf4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1bf8: f9000bf5     	str	x21, [sp, #0x10]
    1bfc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1c00: 910003fd     	mov	x29, sp
    1c04: aa0003f3     	mov	x19, x0
    1c08: 91022000     	add	x0, x0, #0x88
    1c0c: 94000000     	bl	0x1c0c <zte_power_supply_changed_work+0x1c>
		0000000000001c0c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1c10: 39423268     	ldrb	w8, [x19, #0x8c]
    1c14: aa0003f4     	mov	x20, x0
    1c18: 7100051f     	cmp	w8, #0x1
    1c1c: 54000321     	b.ne	0x1c80 <zte_power_supply_changed_work+0x90>
    1c20: 91022260     	add	x0, x19, #0x88
    1c24: aa1403e1     	mov	x1, x20
    1c28: d10f2275     	sub	x21, x19, #0x3c8
    1c2c: 3902327f     	strb	wzr, [x19, #0x8c]
    1c30: 94000000     	bl	0x1c30 <zte_power_supply_changed_work+0x40>
		0000000000001c30:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1c34: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001c34:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_class
    1c38: 90000003     	adrp	x3, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001c38:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f6c
    1c3c: 91000063     	add	x3, x3, #0x0
		0000000000001c3c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f6c
    1c40: f9400100     	ldr	x0, [x8]
		0000000000001c40:  R_AARCH64_LDST64_ABS_LO12_NC	zte_power_supply_class
    1c44: aa1f03e1     	mov	x1, xzr
    1c48: aa1503e2     	mov	x2, x21
    1c4c: 94000000     	bl	0x1c4c <zte_power_supply_changed_work+0x5c>
		0000000000001c4c:  R_AARCH64_CALL26	class_for_each_device
    1c50: 90000000     	adrp	x0, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001c50:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0xa8
    1c54: 91000000     	add	x0, x0, #0x0
		0000000000001c54:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0xa8
    1c58: aa1f03e1     	mov	x1, xzr
    1c5c: aa1503e2     	mov	x2, x21
    1c60: 94000000     	bl	0x1c60 <zte_power_supply_changed_work+0x70>
		0000000000001c60:  R_AARCH64_CALL26	atomic_notifier_call_chain
    1c64: d10e4260     	sub	x0, x19, #0x390
    1c68: 52800041     	mov	w1, #0x2                // =2
    1c6c: 94000000     	bl	0x1c6c <zte_power_supply_changed_work+0x7c>
		0000000000001c6c:  R_AARCH64_CALL26	kobject_uevent
    1c70: 91022260     	add	x0, x19, #0x88
    1c74: 94000000     	bl	0x1c74 <zte_power_supply_changed_work+0x84>
		0000000000001c74:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1c78: 39423268     	ldrb	w8, [x19, #0x8c]
    1c7c: aa0003f4     	mov	x20, x0
    1c80: 37000068     	tbnz	w8, #0x0, 0x1c8c <zte_power_supply_changed_work+0x9c>
    1c84: d10e4260     	sub	x0, x19, #0x390
    1c88: 94000000     	bl	0x1c88 <zte_power_supply_changed_work+0x98>
		0000000000001c88:  R_AARCH64_CALL26	pm_relax
    1c8c: 91022260     	add	x0, x19, #0x88
    1c90: aa1403e1     	mov	x1, x20
    1c94: 94000000     	bl	0x1c94 <zte_power_supply_changed_work+0xa4>
		0000000000001c94:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1c98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1c9c: f9400bf5     	ldr	x21, [sp, #0x10]
    1ca0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1ca4: d50323bf     	autiasp
    1ca8: d65f03c0     	ret
