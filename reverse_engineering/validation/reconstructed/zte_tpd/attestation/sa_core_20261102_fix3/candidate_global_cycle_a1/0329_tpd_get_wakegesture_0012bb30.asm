
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026094 <tpd_get_wakegesture>:
   26094: f946dc09     	ldr	x9, [x0, #0xdb8]
   26098: aa0003e8     	mov	x8, x0
   2609c: 2a1f03e0     	mov	w0, wzr
   260a0: b945c529     	ldr	w9, [x9, #0x5c4]
   260a4: b9000109     	str	w9, [x8]
   260a8: d65f03c0     	ret
