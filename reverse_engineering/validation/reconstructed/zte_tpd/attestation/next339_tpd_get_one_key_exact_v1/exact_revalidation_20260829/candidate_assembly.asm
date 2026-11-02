
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000026054 <tpd_get_one_key>:
   26054: f946dc09     	ldr	x9, [x0, #0xdb8]
   26058: aa0003e8     	mov	x8, x0
   2605c: 2a1f03e0     	mov	w0, wzr
   26060: b945d529     	ldr	w9, [x9, #0x5d4]
   26064: b9045909     	str	w9, [x8, #0x458]
   26068: d65f03c0     	ret
