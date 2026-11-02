
/out/tpd_test_cmd_store.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_test_cmd_store>:
       0: d503233f     	paciasp
       4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       8: a9014ff4     	stp	x20, x19, [sp, #0x10]
       c: f946dc13     	ldr	x19, [x0, #0xdb8]
      10: 910003fd     	mov	x29, sp
      14: b9457e68     	ldr	w8, [x19, #0x57c]
      18: 7100051f     	cmp	w8, #0x1
      1c: 54000261     	b.ne	0x68 <tpd_test_cmd_store+0x68>
      20: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      24: 90000001     	adrp	x1, 0x0 <tpd_test_cmd_store>
      28: 91000021     	add	x1, x1, #0x0
      2c: f9400000     	ldr	x0, [x0]
      30: 94000000     	bl	0x30 <tpd_test_cmd_store+0x30>
      34: aa1303e0     	mov	x0, x19
      38: 94000000     	bl	0x38 <tpd_test_cmd_store+0x38>
      3c: 37f801e0     	tbnz	w0, #0x1f, 0x78 <tpd_test_cmd_store+0x78>
      40: aa1303e0     	mov	x0, x19
      44: 94000000     	bl	0x44 <tpd_test_cmd_store+0x44>
      48: 37f80200     	tbnz	w0, #0x1f, 0x88 <tpd_test_cmd_store+0x88>
      4c: aa1303e0     	mov	x0, x19
      50: 94000000     	bl	0x50 <tpd_test_cmd_store+0x50>
      54: 2a0003f4     	mov	w20, w0
      58: 36f80240     	tbz	w0, #0x1f, 0xa0 <tpd_test_cmd_store+0xa0>
      5c: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      60: f9400000     	ldr	x0, [x0]
      64: 1400000c     	b	0x94 <tpd_test_cmd_store+0x94>
      68: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      6c: 2a1f03f4     	mov	w20, wzr
      70: f9400000     	ldr	x0, [x0]
      74: 14000008     	b	0x94 <tpd_test_cmd_store+0x94>
      78: 2a0003f4     	mov	w20, w0
      7c: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      80: f9400000     	ldr	x0, [x0]
      84: 14000004     	b	0x94 <tpd_test_cmd_store+0x94>
      88: 2a0003f4     	mov	w20, w0
      8c: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      90: f9400000     	ldr	x0, [x0]
      94: 90000001     	adrp	x1, 0x0 <tpd_test_cmd_store>
      98: 91000021     	add	x1, x1, #0x0
      9c: 94000000     	bl	0x9c <tpd_test_cmd_store+0x9c>
      a0: f9413a60     	ldr	x0, [x19, #0x270]
      a4: 94000000     	bl	0xa4 <tpd_test_cmd_store+0xa4>
      a8: 90000000     	adrp	x0, 0x0 <tpd_test_cmd_store>
      ac: 90000001     	adrp	x1, 0x0 <tpd_test_cmd_store>
      b0: 91000021     	add	x1, x1, #0x0
      b4: f9400000     	ldr	x0, [x0]
      b8: 94000000     	bl	0xb8 <tpd_test_cmd_store+0xb8>
      bc: 2a1403e0     	mov	w0, w20
      c0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      c4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      c8: d50323bf     	autiasp
      cc: d65f03c0     	ret
