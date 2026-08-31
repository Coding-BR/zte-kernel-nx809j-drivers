
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260a8 <tpd_get_frame_data>:
   260a8: f946dc09     	ldr	x9, [x0, #0xdb8]
   260ac: aa0003e8     	mov	x8, x0
   260b0: 2a1f03e0     	mov	w0, wzr
   260b4: b945e129     	ldr	w9, [x9, #0x5e0]
   260b8: b9046109     	str	w9, [x8, #0x460]
   260bc: d65f03c0     	ret
