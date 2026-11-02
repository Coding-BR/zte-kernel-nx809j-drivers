
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000261f0 <tpd_get_screen_off_awake>:
   261f0: f946dc09     	ldr	x9, [x0, #0xdb8]
   261f4: aa0003e8     	mov	x8, x0
   261f8: 2a1f03e0     	mov	w0, wzr
   261fc: b945f129     	ldr	w9, [x9, #0x5f0]
   26200: b9048509     	str	w9, [x8, #0x484]
   26204: d65f03c0     	ret
