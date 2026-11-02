
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_power_supply_changed>:
       4: d503233f     	paciasp
       8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       c: a9014ff4     	stp	x20, x19, [sp, #0x10]
      10: 910003fd     	mov	x29, sp
      14: aa0003f3     	mov	x19, x0
      18: 91114000     	add	x0, x0, #0x450
      1c: 94000000     	bl	0x1c <zte_power_supply_changed+0x18>
		000000000000001c:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
      20: aa0003f4     	mov	x20, x0
      24: 52800028     	mov	w8, #0x1                // =1
      28: 9100e260     	add	x0, x19, #0x38
      2c: 39115268     	strb	w8, [x19, #0x454]
      30: 94000000     	bl	0x30 <zte_power_supply_changed+0x2c>
		0000000000000030:  R_AARCH64_CALL26	pm_stay_awake
      34: 91114260     	add	x0, x19, #0x450
      38: aa1403e1     	mov	x1, x20
      3c: 94000000     	bl	0x3c <zte_power_supply_changed+0x38>
		000000000000003c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
      40: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
      44: 910f2262     	add	x2, x19, #0x3c8
      48: 52800400     	mov	w0, #0x20               // =32
      4c: f9400101     	ldr	x1, [x8]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
      50: 94000000     	bl	0x50 <zte_power_supply_changed+0x4c>
		0000000000000050:  R_AARCH64_CALL26	queue_work_on
      54: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      58: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      5c: d50323bf     	autiasp
      60: d65f03c0     	ret
