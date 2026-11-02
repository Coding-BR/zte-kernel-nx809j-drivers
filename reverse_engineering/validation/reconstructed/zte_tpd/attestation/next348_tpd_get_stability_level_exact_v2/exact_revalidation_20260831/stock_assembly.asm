
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025ac0 <tpd_get_stability_level>:
   25ac0: f946dc09     	ldr	x9, [x0, #0xdb8]
   25ac4: aa0003e8     	mov	x8, x0
   25ac8: 2a1f03e0     	mov	w0, wzr
   25acc: b9460529     	ldr	w9, [x9, #0x604]
   25ad0: b9046d09     	str	w9, [x8, #0x46c]
   25ad4: d65f03c0     	ret
