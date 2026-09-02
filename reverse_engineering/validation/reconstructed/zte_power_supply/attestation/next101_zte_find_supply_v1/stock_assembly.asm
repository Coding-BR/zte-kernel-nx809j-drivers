
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a6c <__zte_power_supply_find_supply_from_node>:
    1a6c: f9404c08     	ldr	x8, [x0, #0x98]
    1a70: f9401508     	ldr	x8, [x8, #0x28]
    1a74: eb01011f     	cmp	x8, x1
    1a78: 1a9f17e0     	cset	w0, eq
    1a7c: d65f03c0     	ret
