
/out/tpd_get_singlefpgesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_get_singlefpgesture>:
       0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       4: f946dc08     	ldr	x8, [x0, #0xdb8]
       8: a9014ff4     	stp	x20, x19, [sp, #0x10]
       c: 90000014     	adrp	x20, 0x0 <tpd_get_singlefpgesture>
      10: 91000294     	add	x20, x20, #0x0
      14: aa0003f3     	mov	x19, x0
      18: 910003fd     	mov	x29, sp
      1c: b945b902     	ldr	w2, [x8, #0x5b8]
      20: aa1403e1     	mov	x1, x20
      24: b9044c02     	str	w2, [x0, #0x44c]
      28: 90000000     	adrp	x0, 0x0 <tpd_get_singlefpgesture>
      2c: 91000000     	add	x0, x0, #0x0
      30: 94000000     	bl	0x30 <tpd_get_singlefpgesture+0x30>
      34: b9444e62     	ldr	w2, [x19, #0x44c]
      38: 90000000     	adrp	x0, 0x0 <tpd_get_singlefpgesture>
      3c: 91000000     	add	x0, x0, #0x0
      40: aa1403e1     	mov	x1, x20
      44: 94000000     	bl	0x44 <tpd_get_singlefpgesture+0x44>
      48: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      4c: 2a1f03e0     	mov	w0, wzr
      50: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      54: d65f03c0     	ret
