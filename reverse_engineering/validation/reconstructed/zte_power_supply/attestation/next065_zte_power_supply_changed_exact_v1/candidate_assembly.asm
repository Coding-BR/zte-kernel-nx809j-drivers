
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000508 <zte_power_supply_changed>:
     508: d503233f     	paciasp
     50c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     510: a9014ff4     	stp	x20, x19, [sp, #0x10]
     514: 910003fd     	mov	x29, sp
     518: aa0003f3     	mov	x19, x0
     51c: 91114000     	add	x0, x0, #0x450
     520: 94000000     	bl	0x520 <zte_power_supply_changed+0x18>
		0000000000000520:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
     524: aa0003f4     	mov	x20, x0
     528: 52800028     	mov	w8, #0x1                // =1
     52c: 9100e260     	add	x0, x19, #0x38
     530: 39115268     	strb	w8, [x19, #0x454]
     534: 94000000     	bl	0x534 <zte_power_supply_changed+0x2c>
		0000000000000534:  R_AARCH64_CALL26	pm_stay_awake
     538: 91114260     	add	x0, x19, #0x450
     53c: aa1403e1     	mov	x1, x20
     540: 94000000     	bl	0x540 <zte_power_supply_changed+0x38>
		0000000000000540:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
     544: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
     548: 910f2262     	add	x2, x19, #0x3c8
     54c: 52800400     	mov	w0, #0x20               // =32
     550: f9400101     	ldr	x1, [x8]
		0000000000000550:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
     554: 94000000     	bl	0x554 <zte_power_supply_changed+0x4c>
		0000000000000554:  R_AARCH64_CALL26	queue_work_on
     558: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     55c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     560: d50323bf     	autiasp
     564: d65f03c0     	ret
