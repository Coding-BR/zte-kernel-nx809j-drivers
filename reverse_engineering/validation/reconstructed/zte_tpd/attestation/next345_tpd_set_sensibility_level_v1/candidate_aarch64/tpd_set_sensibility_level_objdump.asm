
/out/tpd_set_sensibility_level.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_sensibility_level>:
       0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       4: a9014ff4     	stp	x20, x19, [sp, #0x10]
       8: f946dc13     	ldr	x19, [x0, #0xdb8]
       c: 90000000     	adrp	x0, 0x0 <tpd_set_sensibility_level>
      10: f9400000     	ldr	x0, [x0]
      14: 2a0103f4     	mov	w20, w1
      18: 90000001     	adrp	x1, 0x0 <tpd_set_sensibility_level>
      1c: 91000021     	add	x1, x1, #0x0
      20: 910003fd     	mov	x29, sp
      24: 94000000     	bl	0x24 <tpd_set_sensibility_level+0x24>
      28: b4000133     	cbz	x19, 0x4c <tpd_set_sensibility_level+0x4c>
      2c: f9413a68     	ldr	x8, [x19, #0x270]
      30: b940b909     	ldr	w9, [x8, #0xb8]
      34: 34000069     	cbz	w9, 0x40 <tpd_set_sensibility_level+0x40>
      38: 3942f108     	ldrb	w8, [x8, #0xbc]
      3c: 370000c8     	tbnz	w8, #0x0, 0x54 <tpd_set_sensibility_level+0x54>
      40: f9400268     	ldr	x8, [x19]
      44: b9420d02     	ldr	w2, [x8, #0x20c]
      48: 14000004     	b	0x58 <tpd_set_sensibility_level+0x58>
      4c: 128002a0     	mov	w0, #-0x16              // =-22
      50: 14000016     	b	0xa8 <tpd_set_sensibility_level+0xa8>
      54: 2a1f03e2     	mov	w2, wzr
      58: b9457e68     	ldr	w8, [x19, #0x57c]
      5c: 12001e89     	and	w9, w20, #0xff
      60: 721e169f     	tst	w20, #0xfc
      64: 5280008a     	mov	w10, #0x4               // =4
      68: 1a8a0121     	csel	w1, w9, w10, eq
      6c: 7100051f     	cmp	w8, #0x1
      70: b905fe61     	str	w1, [x19, #0x5fc]
      74: 540000e1     	b.ne	0x90 <tpd_set_sensibility_level+0x90>
      78: aa1303e0     	mov	x0, x19
      7c: 94000000     	bl	0x7c <tpd_set_sensibility_level+0x7c>
      80: 36f80120     	tbz	w0, #0x1f, 0xa4 <tpd_set_sensibility_level+0xa4>
      84: 90000000     	adrp	x0, 0x0 <tpd_set_sensibility_level>
      88: f9400000     	ldr	x0, [x0]
      8c: 14000003     	b	0x98 <tpd_set_sensibility_level+0x98>
      90: 90000000     	adrp	x0, 0x0 <tpd_set_sensibility_level>
      94: f9400000     	ldr	x0, [x0]
      98: 90000001     	adrp	x1, 0x0 <tpd_set_sensibility_level>
      9c: 91000021     	add	x1, x1, #0x0
      a0: 94000000     	bl	0xa0 <tpd_set_sensibility_level+0xa0>
      a4: 2a1f03e0     	mov	w0, wzr
      a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      b0: d65f03c0     	ret
