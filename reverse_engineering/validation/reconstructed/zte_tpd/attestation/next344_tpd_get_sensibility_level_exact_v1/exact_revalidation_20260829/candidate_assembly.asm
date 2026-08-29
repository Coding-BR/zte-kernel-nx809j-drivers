
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c2e0 <tpd_get_sensibility_level>:
   1c2e0: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c2e4: aa0003e8     	mov	x8, x0
   1c2e8: 2a1f03e0     	mov	w0, wzr
   1c2ec: b945fd29     	ldr	w9, [x9, #0x5fc]
   1c2f0: 39010109     	strb	w9, [x8, #0x40]
   1c2f4: d65f03c0     	ret
