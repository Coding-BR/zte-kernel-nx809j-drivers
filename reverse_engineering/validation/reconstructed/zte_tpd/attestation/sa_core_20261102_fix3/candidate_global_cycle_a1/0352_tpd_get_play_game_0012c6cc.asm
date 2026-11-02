
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260e8 <tpd_get_play_game>:
   260e8: f946dc09     	ldr	x9, [x0, #0xdb8]
   260ec: aa0003e8     	mov	x8, x0
   260f0: 2a1f03e0     	mov	w0, wzr
   260f4: b945dd29     	ldr	w9, [x9, #0x5dc]
   260f8: b9045d09     	str	w9, [x8, #0x45c]
   260fc: d65f03c0     	ret
