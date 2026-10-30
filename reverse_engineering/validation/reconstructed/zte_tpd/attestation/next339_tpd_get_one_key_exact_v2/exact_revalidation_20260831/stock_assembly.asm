
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000256d8 <tpd_get_one_key>:
   256d8: f946dc09     	ldr	x9, [x0, #0xdb8]
   256dc: aa0003e8     	mov	x8, x0
   256e0: 2a1f03e0     	mov	w0, wzr
   256e4: b945d529     	ldr	w9, [x9, #0x5d4]
   256e8: b9045909     	str	w9, [x8, #0x458]
   256ec: d65f03c0     	ret
