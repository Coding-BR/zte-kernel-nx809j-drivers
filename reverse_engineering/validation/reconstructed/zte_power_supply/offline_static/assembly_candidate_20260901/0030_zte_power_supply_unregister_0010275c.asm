
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000894 <zte_power_supply_unregister>:
     894: d503233f     	paciasp
     898: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     89c: f9000bf3     	str	x19, [sp, #0x10]
     8a0: 910003fd     	mov	x29, sp
     8a4: aa0003f3     	mov	x19, x0
     8a8: 1400001b     	b	0x914 <zte_power_supply_unregister+0x80>
     8ac: 91116268     	add	x8, x19, #0x458
     8b0: 12800009     	mov	w9, #-0x1               // =-1
     8b4: b8e90108     	ldaddal	w9, w8, [x8]
     8b8: 51000508     	sub	w8, w8, #0x1
     8bc: 350003e8     	cbnz	w8, 0x938 <zte_power_supply_unregister+0xa4>
     8c0: 52800028     	mov	w8, #0x1                // =1
     8c4: 910f2260     	add	x0, x19, #0x3c8
     8c8: 39115a68     	strb	w8, [x19, #0x456]
     8cc: 94000000     	bl	0x8cc <zte_power_supply_unregister+0x38>
		00000000000008cc:  R_AARCH64_CALL26	cancel_work_sync
     8d0: 910fa260     	add	x0, x19, #0x3e8
     8d4: 94000000     	bl	0x8d4 <zte_power_supply_unregister+0x40>
		00000000000008d4:  R_AARCH64_CALL26	cancel_delayed_work_sync
     8d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
     8dc: 91000021     	add	x1, x1, #0x0
		00000000000008dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
     8e0: 9100e260     	add	x0, x19, #0x38
     8e4: 94000000     	bl	0x8e4 <zte_power_supply_unregister+0x50>
		00000000000008e4:  R_AARCH64_CALL26	sysfs_remove_link
     8e8: 9100e260     	add	x0, x19, #0x38
     8ec: 94000000     	bl	0x8ec <zte_power_supply_unregister+0x58>
		00000000000008ec:  R_AARCH64_CALL26	device_wakeup_disable
     8f0: 9100e260     	add	x0, x19, #0x38
     8f4: 2a1f03e1     	mov	w1, wzr
     8f8: 94000000     	bl	0x8f8 <zte_power_supply_unregister+0x64>
		00000000000008f8:  R_AARCH64_CALL26	device_set_wakeup_capable
     8fc: 9100e260     	add	x0, x19, #0x38
     900: 94000000     	bl	0x900 <zte_power_supply_unregister+0x6c>
		0000000000000900:  R_AARCH64_CALL26	device_unregister
     904: f9400bf3     	ldr	x19, [sp, #0x10]
     908: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     90c: d50323bf     	autiasp
     910: d65f03c0     	ret
     914: 91116269     	add	x9, x19, #0x458
     918: 5280002a     	mov	w10, #0x1               // =1
     91c: f9800131     	prfm	pstl1strm, [x9]
     920: 885f7d28     	ldxr	w8, [x9]
     924: 4b0a0108     	sub	w8, w8, w10
     928: 880bfd28     	stlxr	w11, w8, [x9]
     92c: 35ffffab     	cbnz	w11, 0x920 <zte_power_supply_unregister+0x8c>
     930: d5033bbf     	dmb	ish
     934: 34fffc68     	cbz	w8, 0x8c0 <zte_power_supply_unregister+0x2c>
     938: d4210000     	brk	#0x800
     93c: 17ffffe1     	b	0x8c0 <zte_power_supply_unregister+0x2c>
