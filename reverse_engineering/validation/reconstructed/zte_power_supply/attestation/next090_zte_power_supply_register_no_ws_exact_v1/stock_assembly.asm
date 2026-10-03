
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001394 <zte_power_supply_register_no_ws>:
    1394: d503233f     	paciasp
    1398: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    139c: 910003fd     	mov	x29, sp
    13a0: 2a1f03e3     	mov	w3, wzr
    13a4: 97ffff3e     	bl	0x109c <__zte_power_supply_register>
    13a8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    13ac: d50323bf     	autiasp
    13b0: d65f03c0     	ret
