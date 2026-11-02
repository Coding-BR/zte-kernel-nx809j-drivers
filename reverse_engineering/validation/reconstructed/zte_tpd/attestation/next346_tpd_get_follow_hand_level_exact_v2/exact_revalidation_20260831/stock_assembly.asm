
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000259e4 <tpd_get_follow_hand_level>:
   259e4: f946dc09     	ldr	x9, [x0, #0xdb8]
   259e8: aa0003e8     	mov	x8, x0
   259ec: 2a1f03e0     	mov	w0, wzr
   259f0: b9460129     	ldr	w9, [x9, #0x600]
   259f4: b9046909     	str	w9, [x8, #0x468]
   259f8: d65f03c0     	ret
