
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000884 <zte_power_supply_register_no_ws>:
     884: d503233f     	paciasp
     888: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     88c: 910003fd     	mov	x29, sp
     890: 2a1f03e3     	mov	w3, wzr
     894: 97ffff3e     	bl	0x58c <__zte_power_supply_register>
     898: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     89c: d50323bf     	autiasp
     8a0: d65f03c0     	ret
