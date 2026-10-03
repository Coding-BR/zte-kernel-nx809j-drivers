
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d78 <zte_power_supply_match_device_node_array>:
     d78: f9403008     	ldr	x8, [x0, #0x60]
     d7c: b40000a8     	cbz	x8, 0xd90 <zte_power_supply_match_device_node_array+0x18>
     d80: f9417508     	ldr	x8, [x8, #0x2e8]
     d84: f9400029     	ldr	x9, [x1]
     d88: eb09011f     	cmp	x8, x9
     d8c: 54000060     	b.eq	0xd98 <zte_power_supply_match_device_node_array+0x20>
     d90: 2a1f03e0     	mov	w0, wzr
     d94: d65f03c0     	ret
     d98: a9412029     	ldp	x9, x8, [x1, #0x10]
     d9c: eb09011f     	cmp	x8, x9
     da0: 5400020a     	b.ge	0xde0 <zte_power_supply_match_device_node_array+0x68>
     da4: f9400429     	ldr	x9, [x1, #0x8]
     da8: f9404c0a     	ldr	x10, [x0, #0x98]
     dac: f828792a     	str	x10, [x9, x8, lsl #3]
     db0: f9400428     	ldr	x8, [x1, #0x8]
     db4: f9400c29     	ldr	x9, [x1, #0x18]
     db8: f8697908     	ldr	x8, [x8, x9, lsl #3]
     dbc: 1400000b     	b	0xde8 <zte_power_supply_match_device_node_array+0x70>
     dc0: 91116108     	add	x8, x8, #0x458
     dc4: 52800029     	mov	w9, #0x1                // =1
     dc8: b829011f     	stadd	w9, [x8]
     dcc: f9400c28     	ldr	x8, [x1, #0x18]
     dd0: 2a1f03e0     	mov	w0, wzr
     dd4: 91000508     	add	x8, x8, #0x1
     dd8: f9000c28     	str	x8, [x1, #0x18]
     ddc: d65f03c0     	ret
     de0: 12800940     	mov	w0, #-0x4b              // =-75
     de4: d65f03c0     	ret
     de8: 91116108     	add	x8, x8, #0x458
     dec: f9800111     	prfm	pstl1strm, [x8]
     df0: 885f7d09     	ldxr	w9, [x8]
     df4: 11000529     	add	w9, w9, #0x1
     df8: 880a7d09     	stxr	w10, w9, [x8]
     dfc: 35ffffaa     	cbnz	w10, 0xdf0 <zte_power_supply_match_device_node_array+0x78>
     e00: 17fffff3     	b	0xdcc <zte_power_supply_match_device_node_array+0x54>
