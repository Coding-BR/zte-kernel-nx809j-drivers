
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014a4 <zte_power_supply_deferred_register_work>:
    14a4: d503233f     	paciasp
    14a8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14ac: f9000bf5     	str	x21, [sp, #0x10]
    14b0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14b4: 910003fd     	mov	x29, sp
    14b8: d10d4015     	sub	x21, x0, #0x350
    14bc: aa0003f3     	mov	x19, x0
    14c0: f94002a8     	ldr	x8, [x21]
    14c4: b4000148     	cbz	x8, 0x14ec <zte_power_supply_deferred_register_work+0x48>
    14c8: 91028100     	add	x0, x8, #0xa0
    14cc: 94000000     	bl	0x14cc <zte_power_supply_deferred_register_work+0x28>
		00000000000014cc:  R_AARCH64_CALL26	mutex_trylock
    14d0: 350000e0     	cbnz	w0, 0x14ec <zte_power_supply_deferred_register_work+0x48>
    14d4: 3941ba68     	ldrb	w8, [x19, #0x6e]
    14d8: 37000308     	tbnz	w8, #0x0, 0x1538 <zte_power_supply_deferred_register_work+0x94>
    14dc: 52800140     	mov	w0, #0xa                // =10
    14e0: 94000000     	bl	0x14e0 <zte_power_supply_deferred_register_work+0x3c>
		00000000000014e0:  R_AARCH64_CALL26	msleep
    14e4: f94002a8     	ldr	x8, [x21]
    14e8: 17fffff8     	b	0x14c8 <zte_power_supply_deferred_register_work+0x24>
    14ec: 9101a260     	add	x0, x19, #0x68
    14f0: 94000000     	bl	0x14f0 <zte_power_supply_deferred_register_work+0x4c>
		00000000000014f0:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    14f4: aa0003f4     	mov	x20, x0
    14f8: 52800028     	mov	w8, #0x1                // =1
    14fc: d10ec260     	sub	x0, x19, #0x3b0
    1500: 3901b268     	strb	w8, [x19, #0x6c]
    1504: 94000000     	bl	0x1504 <zte_power_supply_deferred_register_work+0x60>
		0000000000001504:  R_AARCH64_CALL26	pm_stay_awake
    1508: 9101a260     	add	x0, x19, #0x68
    150c: aa1403e1     	mov	x1, x20
    1510: 94000000     	bl	0x1510 <zte_power_supply_deferred_register_work+0x6c>
		0000000000001510:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1514: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x40>
		0000000000001514:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1518: d1008262     	sub	x2, x19, #0x20
    151c: 52800400     	mov	w0, #0x20               // =32
    1520: f9400101     	ldr	x1, [x8]
		0000000000001520:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1524: 94000000     	bl	0x1524 <zte_power_supply_deferred_register_work+0x80>
		0000000000001524:  R_AARCH64_CALL26	queue_work_on
    1528: f94002a8     	ldr	x8, [x21]
    152c: b4000068     	cbz	x8, 0x1538 <zte_power_supply_deferred_register_work+0x94>
    1530: 91028100     	add	x0, x8, #0xa0
    1534: 94000000     	bl	0x1534 <zte_power_supply_deferred_register_work+0x90>
		0000000000001534:  R_AARCH64_CALL26	mutex_unlock
    1538: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    153c: f9400bf5     	ldr	x21, [sp, #0x10]
    1540: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1544: d50323bf     	autiasp
    1548: d65f03c0     	ret
