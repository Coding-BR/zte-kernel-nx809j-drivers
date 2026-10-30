
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026178 <tpd_get_fake_sleep>:
   26178: f946dc09     	ldr	x9, [x0, #0xdb8]
   2617c: aa0003e8     	mov	x8, x0
   26180: 2a1f03e0     	mov	w0, wzr
   26184: b945e929     	ldr	w9, [x9, #0x5e8]
   26188: b9048109     	str	w9, [x8, #0x480]
   2618c: d65f03c0     	ret
