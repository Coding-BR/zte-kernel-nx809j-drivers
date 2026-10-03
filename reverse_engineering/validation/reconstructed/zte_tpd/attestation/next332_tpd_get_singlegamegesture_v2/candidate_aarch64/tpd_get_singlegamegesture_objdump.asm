
/out/tpd_get_singlegamegesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_get_singlegamegesture>:
       0:      	stp	x29, x30, [sp, #-0x20]!
       4:      	ldr	x8, [x0, #0xdb8]
       8:      	stp	x20, x19, [sp, #0x10]
       c:      	mov	x19, x0
      10:      	adrp	x20, 0x0 <tpd_get_singlegamegesture>
      14:      	add	x20, x20, #0x0
      18:      	mov	x29, sp
      1c:      	ldr	w9, [x8, #0x5b8]
      20:      	mov	x1, x20
      24:      	str	w9, [x0, #0x454]
      28:      	adrp	x0, 0x0 <tpd_get_singlegamegesture>
      2c:      	ldr	w2, [x8, #0x5bc]
      30:      	ldr	x0, [x0]
      34:      	bl	0x34 <tpd_get_singlegamegesture+0x34>
      38:      	adrp	x0, 0x0 <tpd_get_singlegamegesture>
      3c:      	ldr	w2, [x19, #0x454]
      40:      	mov	x1, x20
      44:      	ldr	x0, [x0]
      48:      	bl	0x48 <tpd_get_singlegamegesture+0x48>
      4c:      	ldp	x20, x19, [sp, #0x10]
      50:      	mov	w0, wzr
      54:      	ldp	x29, x30, [sp], #0x20
      58:      	ret
