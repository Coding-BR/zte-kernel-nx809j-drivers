
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026104 <tpd_get_frame_data>:
   26104: f946dc09     	ldr	x9, [x0, #0xdb8]
   26108: aa0003e8     	mov	x8, x0
   2610c: 2a1f03e0     	mov	w0, wzr
   26110: b945e129     	ldr	w9, [x9, #0x5e0]
   26114: b9046109     	str	w9, [x8, #0x460]
   26118: d65f03c0     	ret
