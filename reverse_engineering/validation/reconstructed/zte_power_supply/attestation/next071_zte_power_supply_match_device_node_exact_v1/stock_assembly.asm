
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000294 <zte_power_supply_match_device_node>:
     294: f9403008     	ldr	x8, [x0, #0x60]
     298: b40000a8     	cbz	x8, 0x2ac <zte_power_supply_match_device_node+0x18>
     29c: f9417508     	ldr	x8, [x8, #0x2e8]
     2a0: eb01011f     	cmp	x8, x1
     2a4: 1a9f17e0     	cset	w0, eq
     2a8: d65f03c0     	ret
     2ac: 2a1f03e0     	mov	w0, wzr
     2b0: d65f03c0     	ret
