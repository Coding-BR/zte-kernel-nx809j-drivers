
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fc6c <tpd_get_frame_data>:
   1fc6c: f946dc09     	ldr	x9, [x0, #0xdb8]
   1fc70: aa0003e8     	mov	x8, x0
   1fc74: 2a1f03e0     	mov	w0, wzr
   1fc78: b945e129     	ldr	w9, [x9, #0x5e0]
   1fc7c: b9046109     	str	w9, [x8, #0x460]
   1fc80: d65f03c0     	ret
