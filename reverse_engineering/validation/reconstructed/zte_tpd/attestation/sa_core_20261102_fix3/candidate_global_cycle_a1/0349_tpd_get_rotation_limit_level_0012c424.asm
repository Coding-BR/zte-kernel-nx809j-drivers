
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c5d4 <tpd_get_rotation_limit_level>:
   1c5d4: f946dc09     	ldr	x9, [x0, #0xdb8]
   1c5d8: aa0003e8     	mov	x8, x0
   1c5dc: 2a1f03e0     	mov	w0, wzr
   1c5e0: b9460d29     	ldr	w9, [x9, #0x60c]
   1c5e4: b9000d09     	str	w9, [x8, #0xc]
   1c5e8: d65f03c0     	ret
