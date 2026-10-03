
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c49c <tpd_get_stability_level>:
   1c49c: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c4a0: aa0003e8     	mov	x8, x0
   1c4a4: 2a1f03e0     	mov	w0, wzr
   1c4a8: b9460529     	ldr	w9, [x9, #0x604]
   1c4ac: b9046d09     	str	w9, [x8, #0x46c]
   1c4b0: d65f03c0     	ret
