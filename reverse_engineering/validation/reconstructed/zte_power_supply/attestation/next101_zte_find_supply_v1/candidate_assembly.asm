
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000056c <__zte_power_supply_find_supply_from_node>:
     56c: f9404c08     	ldr	x8, [x0, #0x98]
     570: f9401508     	ldr	x8, [x8, #0x28]
     574: eb01011f     	cmp	x8, x1
     578: 1a9f17e0     	cset	w0, eq
     57c: d65f03c0     	ret
