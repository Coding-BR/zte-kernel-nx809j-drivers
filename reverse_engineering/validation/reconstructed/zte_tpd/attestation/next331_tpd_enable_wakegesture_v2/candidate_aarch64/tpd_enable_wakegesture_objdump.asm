
/out/tpd_enable_wakegesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_enable_wakegesture>:
       0:      	ldr	x8, [x0, #0xdb8]
       4:      	ldr	w9, [x8, #0x57c]
       8:      	cmp	w9, #0x1
       c:      	b.ne	0x1c <tpd_enable_wakegesture+0x1c>
      10:      	mov	w0, wzr
      14:      	str	w1, [x8, #0x5c4]
      18:      	ret
      1c:      	stp	x29, x30, [sp, #-0x10]!
      20:      	adrp	x0, 0x0 <tpd_enable_wakegesture>
      24:      	adrp	x1, 0x0 <tpd_enable_wakegesture>
      28:      	add	x1, x1, #0x0
      2c:      	ldr	x0, [x0]
      30:      	mov	x29, sp
      34:      	bl	0x34 <tpd_enable_wakegesture+0x34>
      38:      	ldp	x29, x30, [sp], #0x10
      3c:      	mov	w0, wzr
      40:      	ret
