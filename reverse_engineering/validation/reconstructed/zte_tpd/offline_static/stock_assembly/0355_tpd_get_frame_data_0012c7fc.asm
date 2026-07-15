
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025f74 <tpd_get_frame_data>:
   25f74: f946dc09     	ldr	x9, [x0, #0xdb8]
   25f78: aa0003e8     	mov	x8, x0
   25f7c: 2a1f03e0     	mov	w0, wzr
   25f80: b945e129     	ldr	w9, [x9, #0x5e0]
   25f84: b9046109     	str	w9, [x8, #0x460]
   25f88: d65f03c0     	ret
