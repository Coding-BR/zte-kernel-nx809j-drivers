
/out/tpd_set_singlegamegesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_singlegamegesture>:
       0:      	stp	x29, x30, [sp, #-0x20]!
       4:      	stp	x20, x19, [sp, #0x10]
       8:      	ldr	x20, [x0, #0xdb8]
       c:      	mov	x29, sp
      10:      	ldr	w8, [x20, #0x57c]
      14:      	cmp	w8, #0x1
      18:      	b.ne	0x40 <tpd_set_singlegamegesture+0x40>
      1c:      	ldr	w8, [x20, #0x5b4]
      20:      	ldr	w2, [x20, #0x5b8]
      24:      	cmp	w1, #0x0
      28:      	cset	w9, gt
      2c:      	orr	w8, w8, w2
      30:      	str	w9, [x20, #0x5bc]
      34:      	orr	w8, w8, w9
      38:      	str	w8, [x20, #0x5b0]
      3c:      	b	0x58 <tpd_set_singlegamegesture+0x58>
      40:      	adrp	x0, 0x0 <tpd_set_singlegamegesture>
      44:      	adrp	x1, 0x0 <tpd_set_singlegamegesture>
      48:      	add	x1, x1, #0x0
      4c:      	ldr	x0, [x0]
      50:      	bl	0x50 <tpd_set_singlegamegesture+0x50>
      54:      	ldr	w2, [x20, #0x5b8]
      58:      	adrp	x0, 0x0 <tpd_set_singlegamegesture>
      5c:      	adrp	x19, 0x0 <tpd_set_singlegamegesture>
      60:      	add	x19, x19, #0x0
      64:      	ldr	x0, [x0]
      68:      	mov	x1, x19
      6c:      	bl	0x6c <tpd_set_singlegamegesture+0x6c>
      70:      	adrp	x0, 0x0 <tpd_set_singlegamegesture>
      74:      	ldr	w2, [x20, #0x5b4]
      78:      	mov	x1, x19
      7c:      	ldr	x0, [x0]
      80:      	bl	0x80 <tpd_set_singlegamegesture+0x80>
      84:      	adrp	x0, 0x0 <tpd_set_singlegamegesture>
      88:      	ldr	w2, [x20, #0x5bc]
      8c:      	mov	x1, x19
      90:      	ldr	x0, [x0]
      94:      	bl	0x94 <tpd_set_singlegamegesture+0x94>
      98:      	adrp	x0, 0x0 <tpd_set_singlegamegesture>
      9c:      	ldr	w2, [x20, #0x5b0]
      a0:      	mov	x1, x19
      a4:      	ldr	x0, [x0]
      a8:      	bl	0xa8 <tpd_set_singlegamegesture+0xa8>
      ac:      	ldp	x20, x19, [sp, #0x10]
      b0:      	mov	w0, wzr
      b4:      	ldp	x29, x30, [sp], #0x20
      b8:      	ret
