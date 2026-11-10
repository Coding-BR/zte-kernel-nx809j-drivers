
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000002c <rdbg_release>:
      2c: d503233f     	paciasp
      30: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
      34: a9015ff8     	stp	x24, x23, [sp, #0x10]
      38: a90257f6     	stp	x22, x21, [sp, #0x20]
      3c: a9034ff4     	stp	x20, x19, [sp, #0x30]
      40: 910003fd     	mov	x29, sp
      44: b4000460     	cbz	x0, 0xd0 <rdbg_release+0xa4>
      48: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      4c: f94002c8     	ldr	x8, [x22]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      50: b4000408     	cbz	x8, 0xd0 <rdbg_release+0xa4>
      54: b9404c09     	ldr	w9, [x0, #0x4c]
      58: aa0103f3     	mov	x19, x1
      5c: 92404d35     	and	x21, x9, #0xfffff
      60: 52803909     	mov	w9, #0x1c8              // =456
      64: 9ba922b4     	umaddl	x20, w21, w9, x8
      68: 39418288     	ldrb	w8, [x20, #0x60]
      6c: 7100051f     	cmp	w8, #0x1
      70: 540006c1     	b.ne	0x148 <rdbg_release+0x11c>
      74: 91002280     	add	x0, x20, #0x8
      78: 32089ff7     	mov	w23, #-0xff0100         // =-16711936
      7c: 94000000     	bl	0x7c <rdbg_release+0x50>
		000000000000007c:  R_AARCH64_CALL26	complete
      80: b9402e80     	ldr	w0, [x20, #0x2c]
      84: aa1403e1     	mov	x1, x20
      88: 94000000     	bl	0x88 <rdbg_release+0x5c>
		0000000000000088:  R_AARCH64_CALL26	free_irq
      8c: 52803909     	mov	w9, #0x1c8              // =456
      90: f94002c8     	ldr	x8, [x22]
		0000000000000090:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      94: 9ba922b8     	umaddl	x24, w21, w9, x8
      98: b940ab09     	ldr	w9, [x24, #0xa8]
      9c: 6b17013f     	cmp	w9, w23
      a0: 540002a1     	b.ne	0xf4 <rdbg_release+0xc8>
      a4: b84c0308     	ldur	w8, [x24, #0xc0]
      a8: 7100091f     	cmp	w8, #0x2
      ac: 540001c0     	b.eq	0xe4 <rdbg_release+0xb8>
      b0: 7100051f     	cmp	w8, #0x1
      b4: 540001c1     	b.ne	0xec <rdbg_release+0xc0>
      b8: f8480308     	ldur	x8, [x24, #0x80]
      bc: b900011f     	str	wzr, [x8]
      c0: f84b8300     	ldur	x0, [x24, #0xb8]
      c4: 94000000     	bl	0xc4 <rdbg_release+0x98>
		00000000000000c4:  R_AARCH64_CALL26	kfree
      c8: f80b831f     	stur	xzr, [x24, #0xb8]
      cc: 14000008     	b	0xec <rdbg_release+0xc0>
      d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
      d4: 91000000     	add	x0, x0, #0x0
		00000000000000d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
      d8: 94000000     	bl	0xd8 <rdbg_release+0xac>
		00000000000000d8:  R_AARCH64_CALL26	_printk
      dc: 12800240     	mov	w0, #-0x13              // =-19
      e0: 1400001c     	b	0x150 <rdbg_release+0x124>
      e4: f8488308     	ldur	x8, [x24, #0x88]
      e8: b900011f     	str	wzr, [x8]
      ec: b80a831f     	stur	wzr, [x24, #0xa8]
      f0: f94002c8     	ldr	x8, [x22]
		00000000000000f0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      f4: 52803909     	mov	w9, #0x1c8              // =456
      f8: 9ba922a8     	umaddl	x8, w21, w9, x8
      fc: b940f909     	ldr	w9, [x8, #0xf8]
     100: 6b17013f     	cmp	w9, w23
     104: 54000201     	b.ne	0x144 <rdbg_release+0x118>
     108: 91032115     	add	x21, x8, #0xc8
     10c: b9404aa8     	ldr	w8, [x21, #0x48]
     110: 7100091f     	cmp	w8, #0x2
     114: 54000120     	b.eq	0x138 <rdbg_release+0x10c>
     118: 7100051f     	cmp	w8, #0x1
     11c: 54000121     	b.ne	0x140 <rdbg_release+0x114>
     120: f94006a8     	ldr	x8, [x21, #0x8]
     124: b900011f     	str	wzr, [x8]
     128: f94022a0     	ldr	x0, [x21, #0x40]
     12c: 94000000     	bl	0x12c <rdbg_release+0x100>
		000000000000012c:  R_AARCH64_CALL26	kfree
     130: f90022bf     	str	xzr, [x21, #0x40]
     134: 14000003     	b	0x140 <rdbg_release+0x114>
     138: f9400aa8     	ldr	x8, [x21, #0x10]
     13c: b900011f     	str	wzr, [x8]
     140: b90032bf     	str	wzr, [x21, #0x30]
     144: 3901829f     	strb	wzr, [x20, #0x60]
     148: 2a1f03e0     	mov	w0, wzr
     14c: f900127f     	str	xzr, [x19, #0x20]
     150: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     154: a94257f6     	ldp	x22, x21, [sp, #0x20]
     158: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     15c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     160: d50323bf     	autiasp
     164: d65f03c0     	ret
