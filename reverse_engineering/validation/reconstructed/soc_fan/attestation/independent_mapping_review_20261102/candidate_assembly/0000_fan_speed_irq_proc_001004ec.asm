
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d5c <fan_speed_irq_proc>:
     d5c: f9400428     	ldr	x8, [x1, #0x8]
     d60: 14000006     	b	0xd78 <fan_speed_irq_proc+0x1c>
     d64: 91001108     	add	x8, x8, #0x4
     d68: 52800029     	mov	w9, #0x1                // =1
     d6c: b829011f     	stadd	w9, [x8]
     d70: 52800020     	mov	w0, #0x1                // =1
     d74: d65f03c0     	ret
     d78: 91001108     	add	x8, x8, #0x4
     d7c: f9800111     	prfm	pstl1strm, [x8]
     d80: 885f7d09     	ldxr	w9, [x8]
     d84: 11000529     	add	w9, w9, #0x1
     d88: 880a7d09     	stxr	w10, w9, [x8]
     d8c: 35ffffaa     	cbnz	w10, 0xd80 <fan_speed_irq_proc+0x24>
     d90: 52800020     	mov	w0, #0x1                // =1
     d94: d65f03c0     	ret
