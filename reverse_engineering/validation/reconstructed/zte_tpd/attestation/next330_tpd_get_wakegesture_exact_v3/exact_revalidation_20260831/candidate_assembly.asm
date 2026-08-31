
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026038 <tpd_get_wakegesture>:
   26038: f946dc09     	ldr	x9, [x0, #0xdb8]
   2603c: aa0003e8     	mov	x8, x0
   26040: 2a1f03e0     	mov	w0, wzr
   26044: b945c529     	ldr	w9, [x9, #0x5c4]
   26048: b9000109     	str	w9, [x8]
   2604c: d65f03c0     	ret
