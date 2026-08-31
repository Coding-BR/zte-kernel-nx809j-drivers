
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025e44 <tpd_get_play_game>:
   25e44: f946dc09     	ldr	x9, [x0, #0xdb8]
   25e48: aa0003e8     	mov	x8, x0
   25e4c: 2a1f03e0     	mov	w0, wzr
   25e50: b945dd29     	ldr	w9, [x9, #0x5dc]
   25e54: b9045d09     	str	w9, [x8, #0x45c]
   25e58: d65f03c0     	ret
