
/out/tpd_set_singleaodgesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_singleaodgesture>:
       0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       4: a9014ff4     	stp	x20, x19, [sp, #0x10]
       8: f946dc14     	ldr	x20, [x0, #0xdb8]
       c: 910003fd     	mov	x29, sp
      10: b9457e88     	ldr	w8, [x20, #0x57c]
      14: 7100051f     	cmp	w8, #0x1
      18: 54000141     	b.ne	0x40 <tpd_set_singleaodgesture+0x40>
      1c: b945ba82     	ldr	w2, [x20, #0x5b8]
      20: b945be88     	ldr	w8, [x20, #0x5bc]
      24: 7100003f     	cmp	w1, #0x0
      28: 1a9fd7e9     	cset	w9, gt
      2c: 2a080048     	orr	w8, w2, w8
      30: b905b689     	str	w9, [x20, #0x5b4]
      34: 2a090108     	orr	w8, w8, w9
      38: b905b288     	str	w8, [x20, #0x5b0]
      3c: 14000007     	b	0x58 <tpd_set_singleaodgesture+0x58>
      40: 90000000     	adrp	x0, 0x0 <tpd_set_singleaodgesture>
      44: 91000000     	add	x0, x0, #0x0
      48: 90000001     	adrp	x1, 0x0 <tpd_set_singleaodgesture>
      4c: 91000021     	add	x1, x1, #0x0
      50: 94000000     	bl	0x50 <tpd_set_singleaodgesture+0x50>
      54: b945ba82     	ldr	w2, [x20, #0x5b8]
      58: 90000013     	adrp	x19, 0x0 <tpd_set_singleaodgesture>
      5c: 91000273     	add	x19, x19, #0x0
      60: 90000000     	adrp	x0, 0x0 <tpd_set_singleaodgesture>
      64: 91000000     	add	x0, x0, #0x0
      68: aa1303e1     	mov	x1, x19
      6c: 94000000     	bl	0x6c <tpd_set_singleaodgesture+0x6c>
      70: b945b682     	ldr	w2, [x20, #0x5b4]
      74: 90000000     	adrp	x0, 0x0 <tpd_set_singleaodgesture>
      78: 91000000     	add	x0, x0, #0x0
      7c: aa1303e1     	mov	x1, x19
      80: 94000000     	bl	0x80 <tpd_set_singleaodgesture+0x80>
      84: b945b282     	ldr	w2, [x20, #0x5b0]
      88: 90000000     	adrp	x0, 0x0 <tpd_set_singleaodgesture>
      8c: 91000000     	add	x0, x0, #0x0
      90: aa1303e1     	mov	x1, x19
      94: 94000000     	bl	0x94 <tpd_set_singleaodgesture+0x94>
      98: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      9c: 2a1f03e0     	mov	w0, wzr
      a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      a4: d65f03c0     	ret
