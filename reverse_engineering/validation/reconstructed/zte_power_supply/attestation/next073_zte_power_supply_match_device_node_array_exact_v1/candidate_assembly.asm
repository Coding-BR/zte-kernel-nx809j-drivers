
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d40 <zte_power_supply_match_device_node_array>:
     d40: f9403008     	ldr	x8, [x0, #0x60]
     d44: b40000a8     	cbz	x8, 0xd58 <zte_power_supply_match_device_node_array+0x18>
     d48: f9417508     	ldr	x8, [x8, #0x2e8]
     d4c: f9400029     	ldr	x9, [x1]
     d50: eb09011f     	cmp	x8, x9
     d54: 54000060     	b.eq	0xd60 <zte_power_supply_match_device_node_array+0x20>
     d58: 2a1f03e0     	mov	w0, wzr
     d5c: d65f03c0     	ret
     d60: a9412029     	ldp	x9, x8, [x1, #0x10]
     d64: eb09011f     	cmp	x8, x9
     d68: 540001ea     	b.ge	0xda4 <zte_power_supply_match_device_node_array+0x64>
     d6c: f9400429     	ldr	x9, [x1, #0x8]
     d70: f9404c0a     	ldr	x10, [x0, #0x98]
     d74: f828792a     	str	x10, [x9, x8, lsl #3]
     d78: f9400c28     	ldr	x8, [x1, #0x18]
     d7c: f8687928     	ldr	x8, [x9, x8, lsl #3]
     d80: 1400000b     	b	0xdac <zte_power_supply_match_device_node_array+0x6c>
     d84: 91116108     	add	x8, x8, #0x458
     d88: 52800029     	mov	w9, #0x1                // =1
     d8c: b829011f     	stadd	w9, [x8]
     d90: f9400c28     	ldr	x8, [x1, #0x18]
     d94: 2a1f03e0     	mov	w0, wzr
     d98: 91000508     	add	x8, x8, #0x1
     d9c: f9000c28     	str	x8, [x1, #0x18]
     da0: d65f03c0     	ret
     da4: 12800940     	mov	w0, #-0x4b              // =-75
     da8: d65f03c0     	ret
     dac: 91116108     	add	x8, x8, #0x458
     db0: f9800111     	prfm	pstl1strm, [x8]
     db4: 885f7d09     	ldxr	w9, [x8]
     db8: 11000529     	add	w9, w9, #0x1
     dbc: 880a7d09     	stxr	w10, w9, [x8]
     dc0: 35ffffaa     	cbnz	w10, 0xdb4 <zte_power_supply_match_device_node_array+0x74>
     dc4: 17fffff3     	b	0xd90 <zte_power_supply_match_device_node_array+0x50>
