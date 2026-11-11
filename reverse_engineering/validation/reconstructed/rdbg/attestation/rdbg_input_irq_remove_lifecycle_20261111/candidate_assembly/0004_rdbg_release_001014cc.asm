
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
      48: b4000660     	cbz	x0, 0x114 <rdbg_release+0xe8>
      4c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000004c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x98
      50: f94002e8     	ldr	x8, [x23]
		0000000000000050:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      54: b4000608     	cbz	x8, 0x114 <rdbg_release+0xe8>
      58: b9404c08     	ldr	w8, [x0, #0x4c]
      5c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000005c:  R_AARCH64_ADR_PREL_PG_HI21	g_rdbg_instance+0x94
      60: b9400129     	ldr	w9, [x9]
		0000000000000060:  R_AARCH64_LDST32_ABS_LO12_NC	g_rdbg_instance+0x94
      64: 92404d16     	and	x22, x8, #0xfffff
      68: 6b0902df     	cmp	w22, w9
      6c: 540004ca     	b.ge	0x104 <rdbg_release+0xd8>
      70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_file_lifecycle_lock
      74: 91000000     	add	x0, x0, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_file_lifecycle_lock
      78: aa0103f3     	mov	x19, x1
      7c: 94000000     	bl	0x7c <rdbg_release+0x50>
		000000000000007c:  R_AARCH64_CALL26	mutex_lock
      80: f9401274     	ldr	x20, [x19, #0x20]
      84: b4000454     	cbz	x20, 0x10c <rdbg_release+0xe0>
      88: f9400295     	ldr	x21, [x20]
      8c: b4000415     	cbz	x21, 0x10c <rdbg_release+0xe0>
      90: 394182a8     	ldrb	w8, [x21, #0x60]
      94: 7100051f     	cmp	w8, #0x1
      98: 540007a1     	b.ne	0x18c <rdbg_release+0x160>
      9c: 910022a0     	add	x0, x21, #0x8
      a0: 94000000     	bl	0xa0 <rdbg_release+0x74>
		00000000000000a0:  R_AARCH64_CALL26	complete
      a4: b9403a80     	ldr	w0, [x20, #0x38]
      a8: 37f800a0     	tbnz	w0, #0x1f, 0xbc <rdbg_release+0x90>
      ac: aa1503e1     	mov	x1, x21
      b0: 94000000     	bl	0xb0 <rdbg_release+0x84>
		00000000000000b0:  R_AARCH64_CALL26	free_irq
      b4: 12800008     	mov	w8, #-0x1               // =-1
      b8: b9003a88     	str	w8, [x20, #0x38]
      bc: 52803909     	mov	w9, #0x1c8              // =456
      c0: f94002e8     	ldr	x8, [x23]
		00000000000000c0:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
      c4: 32089ff8     	mov	w24, #-0xff0100         // =-16711936
      c8: 9ba922d9     	umaddl	x25, w22, w9, x8
      cc: b940ab29     	ldr	w9, [x25, #0xa8]
      d0: 6b18013f     	cmp	w9, w24
      d4: 54000321     	b.ne	0x138 <rdbg_release+0x10c>
      d8: b84c0328     	ldur	w8, [x25, #0xc0]
      dc: 7100091f     	cmp	w8, #0x2
      e0: 54000240     	b.eq	0x128 <rdbg_release+0xfc>
      e4: 7100051f     	cmp	w8, #0x1
      e8: 54000241     	b.ne	0x130 <rdbg_release+0x104>
      ec: f8480328     	ldur	x8, [x25, #0x80]
      f0: b900011f     	str	wzr, [x8]
      f4: f84b8320     	ldur	x0, [x25, #0xb8]
      f8: 94000000     	bl	0xf8 <rdbg_release+0xcc>
		00000000000000f8:  R_AARCH64_CALL26	kfree
      fc: f80b833f     	stur	xzr, [x25, #0xb8]
     100: 1400000c     	b	0x130 <rdbg_release+0x104>
     104: 12800253     	mov	w19, #-0x13             // =-19
     108: 14000030     	b	0x1c8 <rdbg_release+0x19c>
     10c: 12800253     	mov	w19, #-0x13             // =-19
     110: 1400002b     	b	0x1bc <rdbg_release+0x190>
     114: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86
     118: 91000000     	add	x0, x0, #0x0
		0000000000000118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86
     11c: 94000000     	bl	0x11c <rdbg_release+0xf0>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: 12800253     	mov	w19, #-0x13             // =-19
     124: 14000029     	b	0x1c8 <rdbg_release+0x19c>
     128: f8488328     	ldur	x8, [x25, #0x88]
     12c: b900011f     	str	wzr, [x8]
     130: b80a833f     	stur	wzr, [x25, #0xa8]
     134: f94002e8     	ldr	x8, [x23]
		0000000000000134:  R_AARCH64_LDST64_ABS_LO12_NC	g_rdbg_instance+0x98
     138: 52803909     	mov	w9, #0x1c8              // =456
     13c: 9ba922c8     	umaddl	x8, w22, w9, x8
     140: b940f909     	ldr	w9, [x8, #0xf8]
     144: 6b18013f     	cmp	w9, w24
     148: 54000201     	b.ne	0x188 <rdbg_release+0x15c>
     14c: 91032117     	add	x23, x8, #0xc8
     150: b9404ae8     	ldr	w8, [x23, #0x48]
     154: 7100091f     	cmp	w8, #0x2
     158: 54000120     	b.eq	0x17c <rdbg_release+0x150>
     15c: 7100051f     	cmp	w8, #0x1
     160: 54000121     	b.ne	0x184 <rdbg_release+0x158>
     164: f94006e8     	ldr	x8, [x23, #0x8]
     168: b900011f     	str	wzr, [x8]
     16c: f94022e0     	ldr	x0, [x23, #0x40]
     170: 94000000     	bl	0x170 <rdbg_release+0x144>
		0000000000000170:  R_AARCH64_CALL26	kfree
     174: f90022ff     	str	xzr, [x23, #0x40]
     178: 14000003     	b	0x184 <rdbg_release+0x158>
     17c: f9400ae8     	ldr	x8, [x23, #0x10]
     180: b900011f     	str	wzr, [x8]
     184: b90032ff     	str	wzr, [x23, #0x30]
     188: 390182bf     	strb	wzr, [x21, #0x60]
     18c: 710042df     	cmp	w22, #0x10
     190: 540002c2     	b.hs	0x1e8 <rdbg_release+0x1bc>
     194: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000194:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_active_file_contexts
     198: 91000108     	add	x8, x8, #0x0
		0000000000000198:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_active_file_contexts
     19c: f8765909     	ldr	x9, [x8, w22, uxtw #3]
     1a0: eb14013f     	cmp	x9, x20
     1a4: 54000041     	b.ne	0x1ac <rdbg_release+0x180>
     1a8: f836591f     	str	xzr, [x8, w22, uxtw #3]
     1ac: aa1403e0     	mov	x0, x20
     1b0: f900127f     	str	xzr, [x19, #0x20]
     1b4: 94000000     	bl	0x1b4 <rdbg_release+0x188>
		00000000000001b4:  R_AARCH64_CALL26	kfree
     1b8: 2a1f03f3     	mov	w19, wzr
     1bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001bc:  R_AARCH64_ADR_PREL_PG_HI21	rdbg_file_lifecycle_lock
     1c0: 91000000     	add	x0, x0, #0x0
		00000000000001c0:  R_AARCH64_ADD_ABS_LO12_NC	rdbg_file_lifecycle_lock
     1c4: 94000000     	bl	0x1c4 <rdbg_release+0x198>
		00000000000001c4:  R_AARCH64_CALL26	mutex_unlock
     1c8: 2a1303e0     	mov	w0, w19
     1cc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     1d0: f9400bf9     	ldr	x25, [sp, #0x10]
     1d4: a94357f6     	ldp	x22, x21, [sp, #0x30]
     1d8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     1dc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     1e0: d50323bf     	autiasp
     1e4: d65f03c0     	ret
     1e8: d42aa240     	brk	#0x5512
