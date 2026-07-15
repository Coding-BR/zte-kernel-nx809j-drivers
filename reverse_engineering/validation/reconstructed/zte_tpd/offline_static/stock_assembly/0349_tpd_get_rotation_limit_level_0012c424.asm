
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025b9c <tpd_get_rotation_limit_level>:
   25b9c: f946dc09     	ldr	x9, [x0, #0xdb8]
   25ba0: aa0003e8     	mov	x8, x0
   25ba4: 2a1f03e0     	mov	w0, wzr
   25ba8: b9460d29     	ldr	w9, [x9, #0x60c]
   25bac: b9000d09     	str	w9, [x8, #0xc]
   25bb0: d65f03c0     	ret
