
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c33c <tpd_get_sensibility_level>:
   1c33c: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c340: aa0003e8     	mov	x8, x0
   1c344: 2a1f03e0     	mov	w0, wzr
   1c348: b945fd29     	ldr	w9, [x9, #0x5fc]
   1c34c: 39010109     	strb	w9, [x8, #0x40]
   1c350: d65f03c0     	ret
