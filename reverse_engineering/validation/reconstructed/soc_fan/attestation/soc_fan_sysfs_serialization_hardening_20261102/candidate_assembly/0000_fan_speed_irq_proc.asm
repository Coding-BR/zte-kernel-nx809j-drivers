
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000009c4 <fan_speed_irq_proc>:
     9c4: f9400428     	ldr	x8, [x1, #0x8]
     9c8: 14000006     	b	0x9e0 <fan_speed_irq_proc+0x1c>
     9cc: 91001108     	add	x8, x8, #0x4
     9d0: 52800029     	mov	w9, #0x1                // =1
     9d4: b829011f     	stadd	w9, [x8]
     9d8: 52800020     	mov	w0, #0x1                // =1
     9dc: d65f03c0     	ret
     9e0: 91001108     	add	x8, x8, #0x4
     9e4: f9800111     	prfm	pstl1strm, [x8]
     9e8: 885f7d09     	ldxr	w9, [x8]
     9ec: 11000529     	add	w9, w9, #0x1
     9f0: 880a7d09     	stxr	w10, w9, [x8]
     9f4: 35ffffaa     	cbnz	w10, 0x9e8 <fan_speed_irq_proc+0x24>
     9f8: 52800020     	mov	w0, #0x1                // =1
     9fc: d65f03c0     	ret
