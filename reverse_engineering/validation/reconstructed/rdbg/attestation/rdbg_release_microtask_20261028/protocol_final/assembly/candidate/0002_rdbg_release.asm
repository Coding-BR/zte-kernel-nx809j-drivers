
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000002c <rdbg_release>:
      2c: d503233f     	paciasp
      30: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
      34: f9000bf7     	str	x23, [sp, #0x10]
      38: a90257f6     	stp	x22, x21, [sp, #0x20]
      3c: a9034ff4     	stp	x20, x19, [sp, #0x30]
      40: 910003fd     	mov	x29, sp
      44: b4000420     	cbz	x0, 0xc8 <rdbg_release+0x9c>
      48: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      4c: f94002a8     	ldr	x8, [x21]
		000000000000004c:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      50: b40003c8     	cbz	x8, 0xc8 <rdbg_release+0x9c>
      54: b9404c09     	ldr	w9, [x0, #0x4c]
      58: aa0103f3     	mov	x19, x1
      5c: 92404d34     	and	x20, x9, #0xfffff
      60: 52803909     	mov	w9, #0x1c8              // =456
      64: 9ba92288     	umaddl	x8, w20, w9, x8
      68: 39418109     	ldrb	w9, [x8, #0x60]
      6c: 7100053f     	cmp	w9, #0x1
      70: 54000661     	b.ne	0x13c <rdbg_release+0x110>
      74: 91002100     	add	x0, x8, #0x8
      78: 32089ff6     	mov	w22, #-0xff0100         // =-16711936
      7c: 3901811f     	strb	wzr, [x8, #0x60]
      80: 94000000     	bl	0x80 <rdbg_release+0x54>
		0000000000000080:  R_AARCH64_CALL26	complete
      84: 52803909     	mov	w9, #0x1c8              // =456
      88: f94002a8     	ldr	x8, [x21]
		0000000000000088:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      8c: 9ba92297     	umaddl	x23, w20, w9, x8
      90: b940aae9     	ldr	w9, [x23, #0xa8]
      94: 6b16013f     	cmp	w9, w22
      98: 540002a1     	b.ne	0xec <rdbg_release+0xc0>
      9c: b84c02e8     	ldur	w8, [x23, #0xc0]
      a0: 7100091f     	cmp	w8, #0x2
      a4: 540001c0     	b.eq	0xdc <rdbg_release+0xb0>
      a8: 7100051f     	cmp	w8, #0x1
      ac: 540001c1     	b.ne	0xe4 <rdbg_release+0xb8>
      b0: f84802e8     	ldur	x8, [x23, #0x80]
      b4: b900011f     	str	wzr, [x8]
      b8: f84b82e0     	ldur	x0, [x23, #0xb8]
      bc: 94000000     	bl	0xbc <rdbg_release+0x90>
		00000000000000bc:  R_AARCH64_CALL26	kfree
      c0: f80b82ff     	stur	xzr, [x23, #0xb8]
      c4: 14000008     	b	0xe4 <rdbg_release+0xb8>
      c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      cc: 91000000     	add	x0, x0, #0x0
		00000000000000cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      d0: 94000000     	bl	0xd0 <rdbg_release+0xa4>
		00000000000000d0:  R_AARCH64_CALL26	_printk
      d4: 12800240     	mov	w0, #-0x13              // =-19
      d8: 1400001b     	b	0x144 <rdbg_release+0x118>
      dc: f84882e8     	ldur	x8, [x23, #0x88]
      e0: b900011f     	str	wzr, [x8]
      e4: b80a82ff     	stur	wzr, [x23, #0xa8]
      e8: f94002a8     	ldr	x8, [x21]
		00000000000000e8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      ec: 52803909     	mov	w9, #0x1c8              // =456
      f0: 9ba92288     	umaddl	x8, w20, w9, x8
      f4: b940f909     	ldr	w9, [x8, #0xf8]
      f8: 6b16013f     	cmp	w9, w22
      fc: 54000201     	b.ne	0x13c <rdbg_release+0x110>
     100: 91032114     	add	x20, x8, #0xc8
     104: b9404a88     	ldr	w8, [x20, #0x48]
     108: 7100091f     	cmp	w8, #0x2
     10c: 54000120     	b.eq	0x130 <rdbg_release+0x104>
     110: 7100051f     	cmp	w8, #0x1
     114: 54000121     	b.ne	0x138 <rdbg_release+0x10c>
     118: f9400688     	ldr	x8, [x20, #0x8]
     11c: b900011f     	str	wzr, [x8]
     120: f9402280     	ldr	x0, [x20, #0x40]
     124: 94000000     	bl	0x124 <rdbg_release+0xf8>
		0000000000000124:  R_AARCH64_CALL26	kfree
     128: f900229f     	str	xzr, [x20, #0x40]
     12c: 14000003     	b	0x138 <rdbg_release+0x10c>
     130: f9400a88     	ldr	x8, [x20, #0x10]
     134: b900011f     	str	wzr, [x8]
     138: b900329f     	str	wzr, [x20, #0x30]
     13c: 2a1f03e0     	mov	w0, wzr
     140: f900127f     	str	xzr, [x19, #0x20]
     144: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     148: f9400bf7     	ldr	x23, [sp, #0x10]
     14c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     150: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     154: d50323bf     	autiasp
     158: d65f03c0     	ret
