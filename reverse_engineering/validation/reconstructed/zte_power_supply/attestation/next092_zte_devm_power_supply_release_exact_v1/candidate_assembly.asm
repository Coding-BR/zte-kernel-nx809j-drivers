
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a00 <zte_devm_power_supply_release>:
     a00: d503233f     	paciasp
     a04: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     a08: 910003fd     	mov	x29, sp
     a0c: f9400020     	ldr	x0, [x1]
     a10: 94000000     	bl	0xa10 <zte_devm_power_supply_release+0x10>
		0000000000000a10:  R_AARCH64_CALL26	zte_power_supply_unregister
     a14: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     a18: d50323bf     	autiasp
     a1c: d65f03c0     	ret
