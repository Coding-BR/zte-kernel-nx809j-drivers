
/out/tpd_set_singlefpgesture.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_singlefpgesture>:
       0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       4: a9014ff4     	stp	x20, x19, [sp, #0x10]
       8: f946dc14     	ldr	x20, [x0, #0xdb8]
       c: 910003fd     	mov	x29, sp
      10: b9457e88     	ldr	w8, [x20, #0x57c]
      14: 7100051f     	cmp	w8, #0x1
      18: 54000141     	b.ne	0x40 <tpd_set_singlefpgesture+0x40>
      1c: b945b688     	ldr	w8, [x20, #0x5b4]
      20: b945be89     	ldr	w9, [x20, #0x5bc]
      24: 7100003f     	cmp	w1, #0x0
      28: 1a9fd7e2     	cset	w2, gt
      2c: 2a090108     	orr	w8, w8, w9
      30: b905ba82     	str	w2, [x20, #0x5b8]
      34: 2a020108     	orr	w8, w8, w2
      38: b905b288     	str	w8, [x20, #0x5b0]
      3c: 14000007     	b	0x58 <tpd_set_singlefpgesture+0x58>
      40: 90000000     	adrp	x0, 0x0 <tpd_set_singlefpgesture>
      44: 90000001     	adrp	x1, 0x0 <tpd_set_singlefpgesture>
      48: 91000021     	add	x1, x1, #0x0
      4c: f9400000     	ldr	x0, [x0]
      50: 94000000     	bl	0x50 <tpd_set_singlefpgesture+0x50>
      54: b945ba82     	ldr	w2, [x20, #0x5b8]
      58: 90000000     	adrp	x0, 0x0 <tpd_set_singlefpgesture>
      5c: 90000013     	adrp	x19, 0x0 <tpd_set_singlefpgesture>
      60: 91000273     	add	x19, x19, #0x0
      64: f9400000     	ldr	x0, [x0]
      68: aa1303e1     	mov	x1, x19
      6c: 94000000     	bl	0x6c <tpd_set_singlefpgesture+0x6c>
      70: 90000000     	adrp	x0, 0x0 <tpd_set_singlefpgesture>
      74: b945b682     	ldr	w2, [x20, #0x5b4]
      78: aa1303e1     	mov	x1, x19
      7c: f9400000     	ldr	x0, [x0]
      80: 94000000     	bl	0x80 <tpd_set_singlefpgesture+0x80>
      84: 90000000     	adrp	x0, 0x0 <tpd_set_singlefpgesture>
      88: b945b282     	ldr	w2, [x20, #0x5b0]
      8c: aa1303e1     	mov	x1, x19
      90: f9400000     	ldr	x0, [x0]
      94: 94000000     	bl	0x94 <tpd_set_singlefpgesture+0x94>
      98: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      9c: 2a1f03e0     	mov	w0, wzr
      a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      a4: d65f03c0     	ret
