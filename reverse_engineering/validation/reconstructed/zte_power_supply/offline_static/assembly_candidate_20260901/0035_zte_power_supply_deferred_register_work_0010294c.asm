
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cb0 <zte_power_supply_deferred_register_work>:
    1cb0: d503233f     	paciasp
    1cb4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1cb8: f9000bf5     	str	x21, [sp, #0x10]
    1cbc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1cc0: 910003fd     	mov	x29, sp
    1cc4: d10d4015     	sub	x21, x0, #0x350
    1cc8: aa0003f3     	mov	x19, x0
    1ccc: f94002a8     	ldr	x8, [x21]
    1cd0: b4000148     	cbz	x8, 0x1cf8 <zte_power_supply_deferred_register_work+0x48>
    1cd4: 91028100     	add	x0, x8, #0xa0
    1cd8: 94000000     	bl	0x1cd8 <zte_power_supply_deferred_register_work+0x28>
		0000000000001cd8:  R_AARCH64_CALL26	mutex_trylock
    1cdc: 350000e0     	cbnz	w0, 0x1cf8 <zte_power_supply_deferred_register_work+0x48>
    1ce0: 3941ba68     	ldrb	w8, [x19, #0x6e]
    1ce4: 37000308     	tbnz	w8, #0x0, 0x1d44 <zte_power_supply_deferred_register_work+0x94>
    1ce8: 52800140     	mov	w0, #0xa                // =10
    1cec: 94000000     	bl	0x1cec <zte_power_supply_deferred_register_work+0x3c>
		0000000000001cec:  R_AARCH64_CALL26	msleep
    1cf0: f94002a8     	ldr	x8, [x21]
    1cf4: 17fffff8     	b	0x1cd4 <zte_power_supply_deferred_register_work+0x24>
    1cf8: 9101a260     	add	x0, x19, #0x68
    1cfc: 94000000     	bl	0x1cfc <zte_power_supply_deferred_register_work+0x4c>
		0000000000001cfc:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1d00: aa0003f4     	mov	x20, x0
    1d04: 52800028     	mov	w8, #0x1                // =1
    1d08: d10ec260     	sub	x0, x19, #0x3b0
    1d0c: 3901b268     	strb	w8, [x19, #0x6c]
    1d10: 94000000     	bl	0x1d10 <zte_power_supply_deferred_register_work+0x60>
		0000000000001d10:  R_AARCH64_CALL26	pm_stay_awake
    1d14: 9101a260     	add	x0, x19, #0x68
    1d18: aa1403e1     	mov	x1, x20
    1d1c: 94000000     	bl	0x1d1c <zte_power_supply_deferred_register_work+0x6c>
		0000000000001d1c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1d20: 90000008     	adrp	x8, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001d20:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1d24: d1008262     	sub	x2, x19, #0x20
    1d28: 52800400     	mov	w0, #0x20               // =32
    1d2c: f9400101     	ldr	x1, [x8]
		0000000000001d2c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1d30: 94000000     	bl	0x1d30 <zte_power_supply_deferred_register_work+0x80>
		0000000000001d30:  R_AARCH64_CALL26	queue_work_on
    1d34: f94002a8     	ldr	x8, [x21]
    1d38: b4000068     	cbz	x8, 0x1d44 <zte_power_supply_deferred_register_work+0x94>
    1d3c: 91028100     	add	x0, x8, #0xa0
    1d40: 94000000     	bl	0x1d40 <zte_power_supply_deferred_register_work+0x90>
		0000000000001d40:  R_AARCH64_CALL26	mutex_unlock
    1d44: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1d48: f9400bf5     	ldr	x21, [sp, #0x10]
    1d4c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1d50: d50323bf     	autiasp
    1d54: d65f03c0     	ret
