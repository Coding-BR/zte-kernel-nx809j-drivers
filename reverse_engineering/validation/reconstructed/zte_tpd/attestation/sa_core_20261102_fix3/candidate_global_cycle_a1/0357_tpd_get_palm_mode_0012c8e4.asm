
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026120 <tpd_get_palm_mode>:
   26120: f946dc09     	ldr	x9, [x0, #0xdb8]
   26124: aa0003e8     	mov	x8, x0
   26128: 2a1f03e0     	mov	w0, wzr
   2612c: b945e529     	ldr	w9, [x9, #0x5e4]
   26130: b9047909     	str	w9, [x8, #0x478]
   26134: d65f03c0     	ret
