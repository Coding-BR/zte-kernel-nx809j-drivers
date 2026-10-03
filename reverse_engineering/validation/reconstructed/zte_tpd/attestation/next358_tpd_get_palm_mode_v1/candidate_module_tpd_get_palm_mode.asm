
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001fca4 <tpd_get_palm_mode>:
   1fca4: f946dc09     	ldr	x9, [x0, #0xdb8]
   1fca8: aa0003e8     	mov	x8, x0
   1fcac: 2a1f03e0     	mov	w0, wzr
   1fcb0: b945e529     	ldr	w9, [x9, #0x5e4]
   1fcb4: b9047909     	str	w9, [x8, #0x478]
   1fcb8: d65f03c0     	ret
