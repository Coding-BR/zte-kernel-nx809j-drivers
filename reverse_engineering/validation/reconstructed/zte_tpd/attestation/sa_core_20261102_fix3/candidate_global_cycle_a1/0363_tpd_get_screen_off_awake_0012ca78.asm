
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026158 <tpd_get_screen_off_awake>:
   26158: f946dc09     	ldr	x9, [x0, #0xdb8]
   2615c: aa0003e8     	mov	x8, x0
   26160: 2a1f03e0     	mov	w0, wzr
   26164: b945f129     	ldr	w9, [x9, #0x5f0]
   26168: b9048509     	str	w9, [x8, #0x484]
   2616c: d65f03c0     	ret
