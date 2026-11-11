
/input/panel_event_notifier.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <panel_event_notifier_register>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: f9000bf7     	str	x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 51000408     	sub	w8, w0, #0x1
      20: 7100051f     	cmp	w8, #0x1
      24: 54000548     	b.hi	0xcc <panel_event_notifier_register+0xc8>
      28: aa0303f5     	mov	x21, x3
      2c: b4000503     	cbz	x3, 0xcc <panel_event_notifier_register+0xc8>
      30: 2a0103f7     	mov	w23, w1
      34: 7100103f     	cmp	w1, #0x4
      38: 54000502     	b.hs	0xd8 <panel_event_notifier_register+0xd4>
      3c: 2a0003f3     	mov	w19, w0
      40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.data
      44: 91000000     	add	x0, x0, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.data
      48: aa0403f4     	mov	x20, x4
      4c: aa0203f6     	mov	x22, x2
      50: 94000000     	bl	0x50 <panel_event_notifier_register+0x4c>
		0000000000000050:  R_AARCH64_CALL26	mutex_lock
      54: d37b7ee9     	ubfiz	x9, x23, #5, #32
      58: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000058:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      5c: 91000108     	add	x8, x8, #0x0
		000000000000005c:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      60: 8b090108     	add	x8, x8, x9
      64: f940010a     	ldr	x10, [x8]
      68: b40000ca     	cbz	x10, 0x80 <panel_event_notifier_register+0x7c>
      6c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000006c:  R_AARCH64_ADR_PREL_PG_HI21	.data
      70: 91000000     	add	x0, x0, #0x0
		0000000000000070:  R_AARCH64_ADD_ABS_LO12_NC	.data
      74: 94000000     	bl	0x74 <panel_event_notifier_register+0x70>
		0000000000000074:  R_AARCH64_CALL26	mutex_unlock
      78: 92800200     	mov	x0, #-0x11              // =-17
      7c: 1400001b     	b	0xe8 <panel_event_notifier_register+0xe4>
      80: b27c012a     	orr	x10, x9, #0x10
      84: f102015f     	cmp	x10, #0x80
      88: 540003c8     	b.hi	0x100 <panel_event_notifier_register+0xfc>
      8c: b27d012a     	orr	x10, x9, #0x8
      90: f9000916     	str	x22, [x8, #0x10]
      94: f102015f     	cmp	x10, #0x80
      98: f9000115     	str	x21, [x8]
      9c: 54000328     	b.hi	0x100 <panel_event_notifier_register+0xfc>
      a0: b27d0529     	orr	x9, x9, #0x18
      a4: f9000514     	str	x20, [x8, #0x8]
      a8: f102013f     	cmp	x9, #0x80
      ac: 540002a8     	b.hi	0x100 <panel_event_notifier_register+0xfc>
      b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.data
      b4: 91000000     	add	x0, x0, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.data
      b8: b9001913     	str	w19, [x8, #0x18]
      bc: aa0803f3     	mov	x19, x8
      c0: 94000000     	bl	0xc0 <panel_event_notifier_register+0xbc>
		00000000000000c0:  R_AARCH64_CALL26	mutex_unlock
      c4: aa1303e0     	mov	x0, x19
      c8: 14000008     	b	0xe8 <panel_event_notifier_register+0xe4>
      cc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      d0: 91000000     	add	x0, x0, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      d4: 14000003     	b	0xe0 <panel_event_notifier_register+0xdc>
      d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57
      e0: 94000000     	bl	0xe0 <panel_event_notifier_register+0xdc>
		00000000000000e0:  R_AARCH64_CALL26	_printk
      e4: 928002a0     	mov	x0, #-0x16              // =-22
      e8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      ec: f9400bf7     	ldr	x23, [sp, #0x10]
      f0: a94257f6     	ldp	x22, x21, [sp, #0x20]
      f4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
      f8: d50323bf     	autiasp
      fc: d65f03c0     	ret
     100: d4200020     	brk	#0x1
