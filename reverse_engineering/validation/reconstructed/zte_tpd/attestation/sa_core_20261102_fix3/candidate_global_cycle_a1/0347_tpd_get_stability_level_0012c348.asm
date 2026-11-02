
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c4f8 <tpd_get_stability_level>:
   1c4f8: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c4fc: aa0003e8     	mov	x8, x0
   1c500: 2a1f03e0     	mov	w0, wzr
   1c504: b9460529     	ldr	w9, [x9, #0x604]
   1c508: b9046d09     	str	w9, [x8, #0x46c]
   1c50c: d65f03c0     	ret
