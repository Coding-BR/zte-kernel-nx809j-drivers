
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260b0 <tpd_get_one_key>:
   260b0: f946dc09     	ldr	x9, [x0, #0xdb8]
   260b4: aa0003e8     	mov	x8, x0
   260b8: 2a1f03e0     	mov	w0, wzr
   260bc: b945d529     	ldr	w9, [x9, #0x5d4]
   260c0: b9045909     	str	w9, [x8, #0x458]
   260c4: d65f03c0     	ret
