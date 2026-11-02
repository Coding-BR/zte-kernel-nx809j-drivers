
/out/tpd_set_tp_report_rate.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_tp_report_rate>:
       0: d503233f     	paciasp
       4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
       8: a9014ff4     	stp	x20, x19, [sp, #0x10]
       c: f946dc13     	ldr	x19, [x0, #0xdb8]
      10: 90000000     	adrp	x0, 0x0 <tpd_set_tp_report_rate>
      14: f9400000     	ldr	x0, [x0]
      18: 2a0103f4     	mov	w20, w1
      1c: 90000001     	adrp	x1, 0x0 <tpd_set_tp_report_rate>
      20: 91000021     	add	x1, x1, #0x0
      24: 910003fd     	mov	x29, sp
      28: 94000000     	bl	0x28 <tpd_set_tp_report_rate+0x28>
      2c: b4000133     	cbz	x19, 0x50 <tpd_set_tp_report_rate+0x50>
      30: f9413a68     	ldr	x8, [x19, #0x270]
      34: b940b909     	ldr	w9, [x8, #0xb8]
      38: 34000069     	cbz	w9, 0x44 <tpd_set_tp_report_rate+0x44>
      3c: 3942f108     	ldrb	w8, [x8, #0xbc]
      40: 370000c8     	tbnz	w8, #0x0, 0x58 <tpd_set_tp_report_rate+0x58>
      44: f9400268     	ldr	x8, [x19]
      48: b9420d02     	ldr	w2, [x8, #0x20c]
      4c: 14000004     	b	0x5c <tpd_set_tp_report_rate+0x5c>
      50: 128002a0     	mov	w0, #-0x16              // =-22
      54: 14000015     	b	0xa8 <tpd_set_tp_report_rate+0xa8>
      58: 2a1f03e2     	mov	w2, wzr
      5c: b9457e68     	ldr	w8, [x19, #0x57c]
      60: 7100129f     	cmp	w20, #0x4
      64: 52800089     	mov	w9, #0x4                // =4
      68: 1a89b281     	csel	w1, w20, w9, lt
      6c: 7100051f     	cmp	w8, #0x1
      70: b905fa61     	str	w1, [x19, #0x5f8]
      74: 540000e1     	b.ne	0x90 <tpd_set_tp_report_rate+0x90>
      78: aa1303e0     	mov	x0, x19
      7c: 94000000     	bl	0x7c <tpd_set_tp_report_rate+0x7c>
      80: 36f80120     	tbz	w0, #0x1f, 0xa4 <tpd_set_tp_report_rate+0xa4>
      84: 90000000     	adrp	x0, 0x0 <tpd_set_tp_report_rate>
      88: f9400000     	ldr	x0, [x0]
      8c: 14000003     	b	0x98 <tpd_set_tp_report_rate+0x98>
      90: 90000000     	adrp	x0, 0x0 <tpd_set_tp_report_rate>
      94: f9400000     	ldr	x0, [x0]
      98: 90000001     	adrp	x1, 0x0 <tpd_set_tp_report_rate>
      9c: 91000021     	add	x1, x1, #0x0
      a0: 94000000     	bl	0xa0 <tpd_set_tp_report_rate+0xa0>
      a4: 2a1f03e0     	mov	w0, wzr
      a8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
      ac: a8c27bfd     	ldp	x29, x30, [sp], #0x20
      b0: d50323bf     	autiasp
      b4: d65f03c0     	ret
