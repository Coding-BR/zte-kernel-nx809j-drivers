
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002608c <tpd_get_play_game>:
   2608c: f946dc09     	ldr	x9, [x0, #0xdb8]
   26090: aa0003e8     	mov	x8, x0
   26094: 2a1f03e0     	mov	w0, wzr
   26098: b945dd29     	ldr	w9, [x9, #0x5dc]
   2609c: b9045d09     	str	w9, [x8, #0x45c]
   260a0: d65f03c0     	ret
