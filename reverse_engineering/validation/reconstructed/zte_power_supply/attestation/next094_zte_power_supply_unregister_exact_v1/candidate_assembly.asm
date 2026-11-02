
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008a8 <zte_power_supply_unregister>:
     8a8: d503233f     	paciasp
     8ac: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     8b0: f9000bf3     	str	x19, [sp, #0x10]
     8b4: 910003fd     	mov	x29, sp
     8b8: aa0003f3     	mov	x19, x0
     8bc: 1400001b     	b	0x928 <zte_power_supply_unregister+0x80>
     8c0: 91116268     	add	x8, x19, #0x458
     8c4: 12800009     	mov	w9, #-0x1               // =-1
     8c8: b8e90108     	ldaddal	w9, w8, [x8]
     8cc: 51000508     	sub	w8, w8, #0x1
     8d0: 350003e8     	cbnz	w8, 0x94c <zte_power_supply_unregister+0xa4>
     8d4: 52800028     	mov	w8, #0x1                // =1
     8d8: 910f2260     	add	x0, x19, #0x3c8
     8dc: 39115a68     	strb	w8, [x19, #0x456]
     8e0: 94000000     	bl	0x8e0 <zte_power_supply_unregister+0x38>
		00000000000008e0:  R_AARCH64_CALL26	cancel_work_sync
     8e4: 910fa260     	add	x0, x19, #0x3e8
     8e8: 94000000     	bl	0x8e8 <zte_power_supply_unregister+0x40>
		00000000000008e8:  R_AARCH64_CALL26	cancel_delayed_work_sync
     8ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x298
     8f0: 91000021     	add	x1, x1, #0x0
		00000000000008f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x298
     8f4: 9100e260     	add	x0, x19, #0x38
     8f8: 94000000     	bl	0x8f8 <zte_power_supply_unregister+0x50>
		00000000000008f8:  R_AARCH64_CALL26	sysfs_remove_link
     8fc: 9100e260     	add	x0, x19, #0x38
     900: 94000000     	bl	0x900 <zte_power_supply_unregister+0x58>
		0000000000000900:  R_AARCH64_CALL26	device_wakeup_disable
     904: 9100e260     	add	x0, x19, #0x38
     908: 2a1f03e1     	mov	w1, wzr
     90c: 94000000     	bl	0x90c <zte_power_supply_unregister+0x64>
		000000000000090c:  R_AARCH64_CALL26	device_set_wakeup_capable
     910: 9100e260     	add	x0, x19, #0x38
     914: 94000000     	bl	0x914 <zte_power_supply_unregister+0x6c>
		0000000000000914:  R_AARCH64_CALL26	device_unregister
     918: f9400bf3     	ldr	x19, [sp, #0x10]
     91c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     920: d50323bf     	autiasp
     924: d65f03c0     	ret
     928: 91116269     	add	x9, x19, #0x458
     92c: 5280002a     	mov	w10, #0x1               // =1
     930: f9800131     	prfm	pstl1strm, [x9]
     934: 885f7d28     	ldxr	w8, [x9]
     938: 4b0a0108     	sub	w8, w8, w10
     93c: 880bfd28     	stlxr	w11, w8, [x9]
     940: 35ffffab     	cbnz	w11, 0x934 <zte_power_supply_unregister+0x8c>
     944: d5033bbf     	dmb	ish
     948: 34fffc68     	cbz	w8, 0x8d4 <zte_power_supply_unregister+0x2c>
     94c: d4210000     	brk	#0x800
     950: 17ffffe1     	b	0x8d4 <zte_power_supply_unregister+0x2c>
