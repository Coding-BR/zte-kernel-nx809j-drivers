
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c3c0 <tpd_get_follow_hand_level>:
   1c3c0: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c3c4: aa0003e8     	mov	x8, x0
   1c3c8: 2a1f03e0     	mov	w0, wzr
   1c3cc: b9460129     	ldr	w9, [x9, #0x600]
   1c3d0: b9046909     	str	w9, [x8, #0x468]
   1c3d4: d65f03c0     	ret
