
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000171c <zte_power_supply_deferred_register_work>:
    171c: d503233f     	paciasp
    1720: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1724: f9000bf5     	str	x21, [sp, #0x10]
    1728: a9024ff4     	stp	x20, x19, [sp, #0x20]
    172c: 910003fd     	mov	x29, sp
    1730: d10d4015     	sub	x21, x0, #0x350
    1734: aa0003f3     	mov	x19, x0
    1738: f94002a8     	ldr	x8, [x21]
    173c: b4000148     	cbz	x8, 0x1764 <zte_power_supply_deferred_register_work+0x48>
    1740: 91028100     	add	x0, x8, #0xa0
    1744: 94000000     	bl	0x1744 <zte_power_supply_deferred_register_work+0x28>
		0000000000001744:  R_AARCH64_CALL26	mutex_trylock
    1748: 350000e0     	cbnz	w0, 0x1764 <zte_power_supply_deferred_register_work+0x48>
    174c: 3941ba68     	ldrb	w8, [x19, #0x6e]
    1750: 37000308     	tbnz	w8, #0x0, 0x17b0 <zte_power_supply_deferred_register_work+0x94>
    1754: 52800140     	mov	w0, #0xa                // =10
    1758: 94000000     	bl	0x1758 <zte_power_supply_deferred_register_work+0x3c>
		0000000000001758:  R_AARCH64_CALL26	msleep
    175c: f94002a8     	ldr	x8, [x21]
    1760: 17fffff8     	b	0x1740 <zte_power_supply_deferred_register_work+0x24>
    1764: 9101a260     	add	x0, x19, #0x68
    1768: 94000000     	bl	0x1768 <zte_power_supply_deferred_register_work+0x4c>
		0000000000001768:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    176c: aa0003f4     	mov	x20, x0
    1770: 52800028     	mov	w8, #0x1                // =1
    1774: d10ec260     	sub	x0, x19, #0x3b0
    1778: 3901b268     	strb	w8, [x19, #0x6c]
    177c: 94000000     	bl	0x177c <zte_power_supply_deferred_register_work+0x60>
		000000000000177c:  R_AARCH64_CALL26	pm_stay_awake
    1780: 9101a260     	add	x0, x19, #0x68
    1784: aa1403e1     	mov	x1, x20
    1788: 94000000     	bl	0x1788 <zte_power_supply_deferred_register_work+0x6c>
		0000000000001788:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    178c: 90000008     	adrp	x8, 0x1000 <zte_power_supply_powers+0x8>
		000000000000178c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1790: d1008262     	sub	x2, x19, #0x20
    1794: 52800400     	mov	w0, #0x20               // =32
    1798: f9400101     	ldr	x1, [x8]
		0000000000001798:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    179c: 94000000     	bl	0x179c <zte_power_supply_deferred_register_work+0x80>
		000000000000179c:  R_AARCH64_CALL26	queue_work_on
    17a0: f94002a8     	ldr	x8, [x21]
    17a4: b4000068     	cbz	x8, 0x17b0 <zte_power_supply_deferred_register_work+0x94>
    17a8: 91028100     	add	x0, x8, #0xa0
    17ac: 94000000     	bl	0x17ac <zte_power_supply_deferred_register_work+0x90>
		00000000000017ac:  R_AARCH64_CALL26	mutex_unlock
    17b0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    17b4: f9400bf5     	ldr	x21, [sp, #0x10]
    17b8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    17bc: d50323bf     	autiasp
    17c0: d65f03c0     	ret
