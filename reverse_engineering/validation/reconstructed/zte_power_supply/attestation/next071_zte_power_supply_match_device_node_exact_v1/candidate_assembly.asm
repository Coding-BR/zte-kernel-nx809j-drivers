
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c4c <zte_power_supply_match_device_node>:
     c4c: f9403008     	ldr	x8, [x0, #0x60]
     c50: b40000a8     	cbz	x8, 0xc64 <zte_power_supply_match_device_node+0x18>
     c54: f9417508     	ldr	x8, [x8, #0x2e8]
     c58: eb01011f     	cmp	x8, x1
     c5c: 1a9f17e0     	cset	w0, eq
     c60: d65f03c0     	ret
     c64: 2a1f03e0     	mov	w0, wzr
     c68: d65f03c0     	ret
