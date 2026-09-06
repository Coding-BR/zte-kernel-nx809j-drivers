
/out/tpd_get_singleaodgesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_get_singleaodgesture>:
       0:      	stp	x29, x30, [sp, #-0x20]!
       4:      	ldr	x8, [x0, #0xdb8]
       8:      	stp	x20, x19, [sp, #0x10]
       c:      	mov	x19, x0
      10:      	adrp	x20, 0x0 <tpd_get_singleaodgesture>
      14:      	add	x20, x20, #0x0
      18:      	mov	x29, sp
      1c:      	ldr	w2, [x8, #0x5b4]
      20:      	mov	x1, x20
      24:      	str	w2, [x0, #0x450]
      28:      	adrp	x0, 0x0 <tpd_get_singleaodgesture>
      2c:      	ldr	x0, [x0]
      30:      	bl	0x30 <tpd_get_singleaodgesture+0x30>
      34:      	adrp	x0, 0x0 <tpd_get_singleaodgesture>
      38:      	ldr	w2, [x19, #0x450]
      3c:      	mov	x1, x20
      40:      	ldr	x0, [x0]
      44:      	bl	0x44 <tpd_get_singleaodgesture+0x44>
      48:      	ldp	x20, x19, [sp, #0x10]
      4c:      	mov	w0, wzr
      50:      	ldp	x29, x30, [sp], #0x20
      54:      	ret
