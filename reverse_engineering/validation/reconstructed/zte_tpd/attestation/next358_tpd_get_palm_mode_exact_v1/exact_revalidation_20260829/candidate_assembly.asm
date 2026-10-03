
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000260c4 <tpd_get_palm_mode>:
   260c4: f946dc09     	ldr	x9, [x0, #0xdb8]
   260c8: aa0003e8     	mov	x8, x0
   260cc: 2a1f03e0     	mov	w0, wzr
   260d0: b945e529     	ldr	w9, [x9, #0x5e4]
   260d4: b9047909     	str	w9, [x8, #0x478]
   260d8: d65f03c0     	ret
