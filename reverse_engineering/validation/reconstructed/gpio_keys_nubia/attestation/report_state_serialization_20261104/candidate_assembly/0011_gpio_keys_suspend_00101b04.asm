
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gpio_keys_suspend>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: f9000bf7     	str	x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: f9404c14     	ldr	x20, [x0, #0x98]
      20: 79421808     	ldrh	w8, [x0, #0x10c]
      24: f9400693     	ldr	x19, [x20, #0x8]
      28: 360005e8     	tbz	w8, #0x0, 0xe4 <gpio_keys_suspend+0xe0>
      2c: f940a408     	ldr	x8, [x0, #0x148]
      30: b40005a8     	cbz	x8, 0xe4 <gpio_keys_suspend+0xe0>
      34: f9400288     	ldr	x8, [x20]
      38: b9400908     	ldr	w8, [x8, #0x8]
      3c: 7100051f     	cmp	w8, #0x1
      40: 5400076b     	b.lt	0x12c <gpio_keys_suspend+0x128>
      44: aa1f03f5     	mov	x21, xzr
      48: aa1f03f3     	mov	x19, xzr
      4c: 52800036     	mov	w22, #0x1               // =1
      50: 14000008     	b	0x70 <gpio_keys_suspend+0x6c>
      54: f9400288     	ldr	x8, [x20]
      58: 39054af6     	strb	w22, [x23, #0x152]
      5c: 91000673     	add	x19, x19, #0x1
      60: 910442b5     	add	x21, x21, #0x110
      64: b9800908     	ldrsw	x8, [x8, #0x8]
      68: eb08027f     	cmp	x19, x8
      6c: 5400060a     	b.ge	0x12c <gpio_keys_suspend+0x128>
      70: 8b150297     	add	x23, x20, x21
      74: f94026e8     	ldr	x8, [x23, #0x48]
      78: b9401d08     	ldr	w8, [x8, #0x1c]
      7c: 34fffec8     	cbz	w8, 0x54 <gpio_keys_suspend+0x50>
      80: b94106e0     	ldr	w0, [x23, #0x104]
      84: 52800021     	mov	w1, #0x1                // =1
      88: 94000000     	bl	0x88 <gpio_keys_suspend+0x84>
		0000000000000088:  R_AARCH64_CALL26	irq_set_irq_wake
      8c: 350005e0     	cbnz	w0, 0x148 <gpio_keys_suspend+0x144>
      90: 8b150288     	add	x8, x20, x21
      94: b9414901     	ldr	w1, [x8, #0x148]
      98: 34fffde1     	cbz	w1, 0x54 <gpio_keys_suspend+0x50>
      9c: b94106e0     	ldr	w0, [x23, #0x104]
      a0: 94000000     	bl	0xa0 <gpio_keys_suspend+0x9c>
		00000000000000a0:  R_AARCH64_CALL26	irq_set_irq_type
      a4: 34fffd80     	cbz	w0, 0x54 <gpio_keys_suspend+0x50>
      a8: 8b150296     	add	x22, x20, x21
      ac: 2a0003f3     	mov	w19, w0
      b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b
      b4: 91000021     	add	x1, x1, #0x0
		00000000000000b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b
      b8: f9402ac8     	ldr	x8, [x22, #0x50]
      bc: b9414ac2     	ldr	w2, [x22, #0x148]
      c0: b94106c3     	ldr	w3, [x22, #0x104]
      c4: 2a1303e4     	mov	w4, w19
      c8: f9414908     	ldr	x8, [x8, #0x290]
      cc: aa0803e0     	mov	x0, x8
      d0: 94000000     	bl	0xd0 <gpio_keys_suspend+0xcc>
		00000000000000d0:  R_AARCH64_CALL26	_dev_err
      d4: b94106c0     	ldr	w0, [x22, #0x104]
      d8: 2a1f03e1     	mov	w1, wzr
      dc: 94000000     	bl	0xdc <gpio_keys_suspend+0xd8>
		00000000000000dc:  R_AARCH64_CALL26	irq_set_irq_wake
      e0: 14000024     	b	0x170 <gpio_keys_suspend+0x16c>
      e4: 9107e260     	add	x0, x19, #0x1f8
      e8: 94000000     	bl	0xe8 <gpio_keys_suspend+0xe4>
		00000000000000e8:  R_AARCH64_CALL26	mutex_lock
      ec: b9422a68     	ldr	w8, [x19, #0x228]
      f0: 340001a8     	cbz	w8, 0x124 <gpio_keys_suspend+0x120>
      f4: f9416668     	ldr	x8, [x19, #0x2c8]
      f8: f9400108     	ldr	x8, [x8]
      fc: f9401108     	ldr	x8, [x8, #0x20]
     100: b4000128     	cbz	x8, 0x124 <gpio_keys_suspend+0x120>
     104: f9414a60     	ldr	x0, [x19, #0x290]
     108: b85fc110     	ldur	w16, [x8, #-0x4]
     10c: 72971911     	movk	w17, #0xb8c8
     110: 72ad9031     	movk	w17, #0x6c81, lsl #16
     114: 6b11021f     	cmp	w16, w17
     118: 54000040     	b.eq	0x120 <gpio_keys_suspend+0x11c>
     11c: d4304500     	brk	#0x8228
     120: d63f0100     	blr	x8
     124: 9107e260     	add	x0, x19, #0x1f8
     128: 94000000     	bl	0x128 <gpio_keys_suspend+0x124>
		0000000000000128:  R_AARCH64_CALL26	mutex_unlock
     12c: 2a1f03e0     	mov	w0, wzr
     130: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     134: f9400bf7     	ldr	x23, [sp, #0x10]
     138: a94257f6     	ldp	x22, x21, [sp, #0x20]
     13c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     140: d50323bf     	autiasp
     144: d65f03c0     	ret
     148: 8b150289     	add	x9, x20, x21
     14c: 2a0003f3     	mov	w19, w0
     150: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     154: 91000021     	add	x1, x1, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     158: f9402928     	ldr	x8, [x9, #0x50]
     15c: b9410522     	ldr	w2, [x9, #0x104]
     160: 2a1303e3     	mov	w3, w19
     164: f9414908     	ldr	x8, [x8, #0x290]
     168: aa0803e0     	mov	x0, x8
     16c: 94000000     	bl	0x16c <gpio_keys_suspend+0x168>
		000000000000016c:  R_AARCH64_CALL26	_dev_err
     170: 2a1303e0     	mov	w0, w19
     174: b5000195     	cbnz	x21, 0x1a4 <gpio_keys_suspend+0x1a0>
     178: 17ffffee     	b	0x130 <gpio_keys_suspend+0x12c>
     17c: 8b150297     	add	x23, x20, x21
     180: 2a1f03e1     	mov	w1, wzr
     184: b85f42e0     	ldur	w0, [x23, #-0xc]
     188: 94000000     	bl	0x188 <gpio_keys_suspend+0x184>
		0000000000000188:  R_AARCH64_CALL26	irq_set_irq_wake
     18c: 2a0003e3     	mov	w3, w0
     190: 2a1603e0     	mov	w0, w22
     194: 35000303     	cbnz	w3, 0x1f4 <gpio_keys_suspend+0x1f0>
     198: f10442b5     	subs	x21, x21, #0x110
     19c: 39010a7f     	strb	wzr, [x19, #0x42]
     1a0: 54fffc80     	b.eq	0x130 <gpio_keys_suspend+0x12c>
     1a4: 8b150293     	add	x19, x20, x21
     1a8: f8538268     	ldur	x8, [x19, #-0xc8]
     1ac: b9401d08     	ldr	w8, [x8, #0x1c]
     1b0: 34ffff48     	cbz	w8, 0x198 <gpio_keys_suspend+0x194>
     1b4: b9403a68     	ldr	w8, [x19, #0x38]
     1b8: 2a0003f6     	mov	w22, w0
     1bc: 34fffe08     	cbz	w8, 0x17c <gpio_keys_suspend+0x178>
     1c0: 8b150297     	add	x23, x20, x21
     1c4: 52800061     	mov	w1, #0x3                // =3
     1c8: b85f42e0     	ldur	w0, [x23, #-0xc]
     1cc: 94000000     	bl	0x1cc <gpio_keys_suspend+0x1c8>
		00000000000001cc:  R_AARCH64_CALL26	irq_set_irq_type
     1d0: 34fffd60     	cbz	w0, 0x17c <gpio_keys_suspend+0x178>
     1d4: f85402e8     	ldur	x8, [x23, #-0xc0]
     1d8: 2a0003e3     	mov	w3, w0
     1dc: b85f42e2     	ldur	w2, [x23, #-0xc]
     1e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4
     1e4: 91000021     	add	x1, x1, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4
     1e8: f9414900     	ldr	x0, [x8, #0x290]
     1ec: 94000000     	bl	0x1ec <gpio_keys_suspend+0x1e8>
		00000000000001ec:  R_AARCH64_CALL26	_dev_warn
     1f0: 17ffffe3     	b	0x17c <gpio_keys_suspend+0x178>
     1f4: f85402e8     	ldur	x8, [x23, #-0xc0]
     1f8: b85f42e2     	ldur	w2, [x23, #-0xc]
     1fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58b
     200: 91000021     	add	x1, x1, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58b
     204: f9414900     	ldr	x0, [x8, #0x290]
     208: 94000000     	bl	0x208 <gpio_keys_suspend+0x204>
		0000000000000208:  R_AARCH64_CALL26	_dev_warn
     20c: 2a1603e0     	mov	w0, w22
     210: 17ffffe2     	b	0x198 <gpio_keys_suspend+0x194>
