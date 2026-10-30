
/out/tpd_get_wakegesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_get_wakegesture>:
       0:      	ldr	x9, [x0, #0xdb8]
       4:      	mov	x8, x0
       8:      	mov	w0, wzr
       c:      	ldr	w9, [x9, #0x5c4]
      10:      	str	w9, [x8]
      14:      	ret
