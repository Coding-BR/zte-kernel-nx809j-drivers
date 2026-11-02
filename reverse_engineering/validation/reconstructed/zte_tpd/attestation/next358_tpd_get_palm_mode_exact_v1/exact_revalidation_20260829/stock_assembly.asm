
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000002605c <tpd_get_palm_mode>:
   2605c: f946dc09     	ldr	x9, [x0, #0xdb8]
   26060: aa0003e8     	mov	x8, x0
   26064: 2a1f03e0     	mov	w0, wzr
   26068: b945e529     	ldr	w9, [x9, #0x5e4]
   2606c: b9047909     	str	w9, [x8, #0x478]
   26070: d65f03c0     	ret
