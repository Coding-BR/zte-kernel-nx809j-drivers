
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025904 <tpd_get_sensibility_level>:
   25904: f946dc09     	ldr	x9, [x0, #0xdb8]
   25908: aa0003e8     	mov	x8, x0
   2590c: 2a1f03e0     	mov	w0, wzr
   25910: b945fd29     	ldr	w9, [x9, #0x5fc]
   25914: 39010109     	strb	w9, [x8, #0x40]
   25918: d65f03c0     	ret
