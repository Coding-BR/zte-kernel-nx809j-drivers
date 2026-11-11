
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000002c <rdbg_release>:
      2c: d503233f     	paciasp
      30: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
      34: f9000bf9     	str	x25, [sp, #0x10]
      38: a9025ff8     	stp	x24, x23, [sp, #0x20]
      3c: a90357f6     	stp	x22, x21, [sp, #0x30]
      40: a9044ff4     	stp	x20, x19, [sp, #0x40]
      44: 910003fd     	mov	x29, sp
      48: b4000480     	cbz	x0, 0xd8 <rdbg_release+0xac>
      4c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      50: f94002e8     	ldr	x8, [x23]
		0000000000000050:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      54: b4000428     	cbz	x8, 0xd8 <rdbg_release+0xac>
      58: b9404c09     	ldr	w9, [x0, #0x4c]
      5c: f9401034     	ldr	x20, [x1, #0x20]
      60: aa0103f3     	mov	x19, x1
      64: 92404d36     	and	x22, x9, #0xfffff
      68: 52803909     	mov	w9, #0x1c8              // =456
      6c: 9ba922d5     	umaddl	x21, w22, w9, x8
      70: 394182a8     	ldrb	w8, [x21, #0x60]
      74: 7100051f     	cmp	w8, #0x1
      78: 540006c1     	b.ne	0x150 <rdbg_release+0x124>
      7c: 910022a0     	add	x0, x21, #0x8
      80: 32089ff8     	mov	w24, #-0xff0100         // =-16711936
      84: 94000000     	bl	0x84 <rdbg_release+0x58>
		0000000000000084:  R_AARCH64_CALL26	complete
      88: b9402ea0     	ldr	w0, [x21, #0x2c]
      8c: aa1503e1     	mov	x1, x21
      90: 94000000     	bl	0x90 <rdbg_release+0x64>
		0000000000000090:  R_AARCH64_CALL26	free_irq
      94: 52803909     	mov	w9, #0x1c8              // =456
      98: f94002e8     	ldr	x8, [x23]
		0000000000000098:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      9c: 9ba922d9     	umaddl	x25, w22, w9, x8
      a0: b940ab29     	ldr	w9, [x25, #0xa8]
      a4: 6b18013f     	cmp	w9, w24
      a8: 540002a1     	b.ne	0xfc <rdbg_release+0xd0>
      ac: b84c0328     	ldur	w8, [x25, #0xc0]
      b0: 7100091f     	cmp	w8, #0x2
      b4: 540001c0     	b.eq	0xec <rdbg_release+0xc0>
      b8: 7100051f     	cmp	w8, #0x1
      bc: 540001c1     	b.ne	0xf4 <rdbg_release+0xc8>
      c0: f8480328     	ldur	x8, [x25, #0x80]
      c4: b900011f     	str	wzr, [x8]
      c8: f84b8320     	ldur	x0, [x25, #0xb8]
      cc: 94000000     	bl	0xcc <rdbg_release+0xa0>
		00000000000000cc:  R_AARCH64_CALL26	kfree
      d0: f80b833f     	stur	xzr, [x25, #0xb8]
      d4: 14000008     	b	0xf4 <rdbg_release+0xc8>
      d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000000d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62
      dc: 91000000     	add	x0, x0, #0x0
		00000000000000dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62
      e0: 94000000     	bl	0xe0 <rdbg_release+0xb4>
		00000000000000e0:  R_AARCH64_CALL26	_printk
      e4: 12800240     	mov	w0, #-0x13              // =-19
      e8: 1400001f     	b	0x164 <rdbg_release+0x138>
      ec: f8488328     	ldur	x8, [x25, #0x88]
      f0: b900011f     	str	wzr, [x8]
      f4: b80a833f     	stur	wzr, [x25, #0xa8]
      f8: f94002e8     	ldr	x8, [x23]
		00000000000000f8:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      fc: 52803909     	mov	w9, #0x1c8              // =456
     100: 9ba922c8     	umaddl	x8, w22, w9, x8
     104: b940f909     	ldr	w9, [x8, #0xf8]
     108: 6b18013f     	cmp	w9, w24
     10c: 54000201     	b.ne	0x14c <rdbg_release+0x120>
     110: 91032116     	add	x22, x8, #0xc8
     114: b9404ac8     	ldr	w8, [x22, #0x48]
     118: 7100091f     	cmp	w8, #0x2
     11c: 54000120     	b.eq	0x140 <rdbg_release+0x114>
     120: 7100051f     	cmp	w8, #0x1
     124: 54000121     	b.ne	0x148 <rdbg_release+0x11c>
     128: f94006c8     	ldr	x8, [x22, #0x8]
     12c: b900011f     	str	wzr, [x8]
     130: f94022c0     	ldr	x0, [x22, #0x40]
     134: 94000000     	bl	0x134 <rdbg_release+0x108>
		0000000000000134:  R_AARCH64_CALL26	kfree
     138: f90022df     	str	xzr, [x22, #0x40]
     13c: 14000003     	b	0x148 <rdbg_release+0x11c>
     140: f9400ac8     	ldr	x8, [x22, #0x10]
     144: b900011f     	str	wzr, [x8]
     148: b90032df     	str	wzr, [x22, #0x30]
     14c: 390182bf     	strb	wzr, [x21, #0x60]
     150: f900127f     	str	xzr, [x19, #0x20]
     154: b4000074     	cbz	x20, 0x160 <rdbg_release+0x134>
     158: aa1403e0     	mov	x0, x20
     15c: 94000000     	bl	0x15c <rdbg_release+0x130>
		000000000000015c:  R_AARCH64_CALL26	kfree
     160: 2a1f03e0     	mov	w0, wzr
     164: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     168: f9400bf9     	ldr	x25, [sp, #0x10]
     16c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     170: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     174: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     178: d50323bf     	autiasp
     17c: d65f03c0     	ret
