
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c41c <tpd_get_follow_hand_level>:
   1c41c: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c420: aa0003e8     	mov	x8, x0
   1c424: 2a1f03e0     	mov	w0, wzr
   1c428: b9460129     	ldr	w9, [x9, #0x600]
   1c42c: b9046909     	str	w9, [x8, #0x468]
   1c430: d65f03c0     	ret
