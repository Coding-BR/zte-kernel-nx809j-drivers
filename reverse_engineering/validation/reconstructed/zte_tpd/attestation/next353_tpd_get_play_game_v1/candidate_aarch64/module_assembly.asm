
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fcc0 <tpd_get_play_game>:
   1fcc0: f946dc09     	ldr	x9, [x0, #0xdb8]
   1fcc4: aa0003e8     	mov	x8, x0
   1fcc8: 2a1f03e0     	mov	w0, wzr
   1fccc: b945dd29     	ldr	w9, [x9, #0x5dc]
   1fcd0: b9045d09     	str	w9, [x8, #0x45c]
   1fcd4: d65f03c0     	ret
