
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <fan_speed_irq_proc>:
       4: f9400428     	ldr	x8, [x1, #0x8]
       8: 14000006     	b	0x20 <fan_speed_irq_proc+0x1c>
       c: 91001108     	add	x8, x8, #0x4
      10: 52800029     	mov	w9, #0x1                // =1
      14: b829011f     	stadd	w9, [x8]
      18: 52800020     	mov	w0, #0x1                // =1
      1c: d65f03c0     	ret
      20: 91001108     	add	x8, x8, #0x4
      24: f9800111     	prfm	pstl1strm, [x8]
      28: 885f7d09     	ldxr	w9, [x8]
      2c: 11000529     	add	w9, w9, #0x1
      30: 880a7d09     	stxr	w10, w9, [x8]
      34: 35ffffaa     	cbnz	w10, 0x28 <fan_speed_irq_proc+0x24>
      38: 52800020     	mov	w0, #0x1                // =1
      3c: d65f03c0     	ret
