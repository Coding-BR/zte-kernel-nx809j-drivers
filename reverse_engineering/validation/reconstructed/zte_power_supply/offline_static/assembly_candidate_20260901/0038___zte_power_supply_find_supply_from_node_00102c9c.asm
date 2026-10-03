
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002064 <__zte_power_supply_find_supply_from_node>:
    2064: f9404c08     	ldr	x8, [x0, #0x98]
    2068: f9401508     	ldr	x8, [x8, #0x28]
    206c: eb01011f     	cmp	x8, x1
    2070: 1a9f17e0     	cset	w0, eq
    2074: d65f03c0     	ret
