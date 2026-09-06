
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000388 <zte_power_supply_match_device_node_array>:
     388: f9403008     	ldr	x8, [x0, #0x60]
     38c: b40000a8     	cbz	x8, 0x3a0 <zte_power_supply_match_device_node_array+0x18>
     390: f9417508     	ldr	x8, [x8, #0x2e8]
     394: f9400029     	ldr	x9, [x1]
     398: eb09011f     	cmp	x8, x9
     39c: 54000060     	b.eq	0x3a8 <zte_power_supply_match_device_node_array+0x20>
     3a0: 2a1f03e0     	mov	w0, wzr
     3a4: d65f03c0     	ret
     3a8: a9412029     	ldp	x9, x8, [x1, #0x10]
     3ac: eb09011f     	cmp	x8, x9
     3b0: 540001ea     	b.ge	0x3ec <zte_power_supply_match_device_node_array+0x64>
     3b4: f9400429     	ldr	x9, [x1, #0x8]
     3b8: f9404c0a     	ldr	x10, [x0, #0x98]
     3bc: f828792a     	str	x10, [x9, x8, lsl #3]
     3c0: f9400c28     	ldr	x8, [x1, #0x18]
     3c4: f8687928     	ldr	x8, [x9, x8, lsl #3]
     3c8: 1400000b     	b	0x3f4 <zte_power_supply_match_device_node_array+0x6c>
     3cc: 91116108     	add	x8, x8, #0x458
     3d0: 52800029     	mov	w9, #0x1                // =1
     3d4: b829011f     	stadd	w9, [x8]
     3d8: f9400c28     	ldr	x8, [x1, #0x18]
     3dc: 2a1f03e0     	mov	w0, wzr
     3e0: 91000508     	add	x8, x8, #0x1
     3e4: f9000c28     	str	x8, [x1, #0x18]
     3e8: d65f03c0     	ret
     3ec: 12800940     	mov	w0, #-0x4b              // =-75
     3f0: d65f03c0     	ret
     3f4: 91116108     	add	x8, x8, #0x458
     3f8: f9800111     	prfm	pstl1strm, [x8]
     3fc: 885f7d09     	ldxr	w9, [x8]
     400: 11000529     	add	w9, w9, #0x1
     404: 880a7d09     	stxr	w10, w9, [x8]
     408: 35ffffaa     	cbnz	w10, 0x3fc <zte_power_supply_match_device_node_array+0x74>
     40c: 17fffff3     	b	0x3d8 <zte_power_supply_match_device_node_array+0x50>
