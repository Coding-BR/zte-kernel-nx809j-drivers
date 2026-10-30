
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000252a8 <tpd_get_wakegesture>:
   252a8: f946dc09     	ldr	x9, [x0, #0xdb8]
   252ac: aa0003e8     	mov	x8, x0
   252b0: 2a1f03e0     	mov	w0, wzr
   252b4: b945c529     	ldr	w9, [x9, #0x5c4]
   252b8: b9000109     	str	w9, [x8]
   252bc: d65f03c0     	ret
