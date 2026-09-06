
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009ec <zte_devm_power_supply_release>:
     9ec: d503233f     	paciasp
     9f0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     9f4: 910003fd     	mov	x29, sp
     9f8: f9400020     	ldr	x0, [x1]
     9fc: 94000000     	bl	0x9fc <zte_devm_power_supply_release+0x10>
		00000000000009fc:  R_AARCH64_CALL26	zte_power_supply_unregister
     a00: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     a04: d50323bf     	autiasp
     a08: d65f03c0     	ret
