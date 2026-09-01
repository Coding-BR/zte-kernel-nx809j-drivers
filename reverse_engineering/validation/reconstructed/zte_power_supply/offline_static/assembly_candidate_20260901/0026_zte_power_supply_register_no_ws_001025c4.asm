
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000870 <zte_power_supply_register_no_ws>:
     870: d503233f     	paciasp
     874: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     878: 910003fd     	mov	x29, sp
     87c: 2a1f03e3     	mov	w3, wzr
     880: 97ffff43     	bl	0x58c <__zte_power_supply_register>
     884: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     888: d50323bf     	autiasp
     88c: d65f03c0     	ret
