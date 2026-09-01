
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c84 <zte_power_supply_match_device_node>:
     c84: f9403008     	ldr	x8, [x0, #0x60]
     c88: b40000a8     	cbz	x8, 0xc9c <zte_power_supply_match_device_node+0x18>
     c8c: f9417508     	ldr	x8, [x8, #0x2e8]
     c90: eb01011f     	cmp	x8, x1
     c94: 1a9f17e0     	cset	w0, eq
     c98: d65f03c0     	ret
     c9c: 2a1f03e0     	mov	w0, wzr
     ca0: d65f03c0     	ret
