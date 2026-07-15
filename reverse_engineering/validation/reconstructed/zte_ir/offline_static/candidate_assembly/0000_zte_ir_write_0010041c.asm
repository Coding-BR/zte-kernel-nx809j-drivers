
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_ir_write>:
       4: d503233f     	paciasp
       8: d10583ff     	sub	sp, sp, #0x160
       c: a9117bfd     	stp	x29, x30, [sp, #0x110]
      10: f90093fc     	str	x28, [sp, #0x120]
      14: a9135ff8     	stp	x24, x23, [sp, #0x130]
      18: a91457f6     	stp	x22, x21, [sp, #0x140]
      1c: a9154ff4     	stp	x20, x19, [sp, #0x150]
      20: 910443fd     	add	x29, sp, #0x110
      24: d5384108     	mrs	x8, SP_EL0
      28: f9438908     	ldr	x8, [x8, #0x710]
      2c: f81f83a8     	stur	x8, [x29, #-0x8]
      30: b40001c0     	cbz	x0, 0x68 <zte_ir_write+0x64>
      34: f9401013     	ldr	x19, [x0, #0x20]
      38: b4000193     	cbz	x19, 0x68 <zte_ir_write+0x64>
      3c: 928002a0     	mov	x0, #-0x16              // =-22
      40: b4000161     	cbz	x1, 0x6c <zte_ir_write+0x68>
      44: b4000142     	cbz	x2, 0x6c <zte_ir_write+0x68>
      48: 92400448     	and	x8, x2, #0x3
      4c: b5000108     	cbnz	x8, 0x6c <zte_ir_write+0x68>
      50: 528e2008     	mov	w8, #0x7100             // =28928
      54: 72a00048     	movk	w8, #0x2, lsl #16
      58: eb08005f     	cmp	x2, x8
      5c: 54000229     	b.ls	0xa0 <zte_ir_write+0x9c>
      60: 928000c0     	mov	x0, #-0x7               // =-7
      64: 14000002     	b	0x6c <zte_ir_write+0x68>
      68: 92800240     	mov	x0, #-0x13              // =-19
      6c: d5384108     	mrs	x8, SP_EL0
      70: f9438908     	ldr	x8, [x8, #0x710]
      74: f85f83a9     	ldur	x9, [x29, #-0x8]
      78: eb09011f     	cmp	x8, x9
      7c: 54000b81     	b.ne	0x1ec <zte_ir_write+0x1e8>
      80: a9554ff4     	ldp	x20, x19, [sp, #0x150]
      84: f94093fc     	ldr	x28, [sp, #0x120]
      88: a95457f6     	ldp	x22, x21, [sp, #0x140]
      8c: a9535ff8     	ldp	x24, x23, [sp, #0x130]
      90: a9517bfd     	ldp	x29, x30, [sp, #0x110]
      94: 910583ff     	add	sp, sp, #0x160
      98: d50323bf     	autiasp
      9c: d65f03c0     	ret
      a0: aa0103e0     	mov	x0, x1
      a4: aa0203e1     	mov	x1, x2
      a8: a90fffff     	stp	xzr, xzr, [sp, #0xf8]
      ac: a90effff     	stp	xzr, xzr, [sp, #0xe8]
      b0: aa0203f6     	mov	x22, x2
      b4: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
      b8: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
      bc: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
      c0: a90affff     	stp	xzr, xzr, [sp, #0xa8]
      c4: a909ffff     	stp	xzr, xzr, [sp, #0x98]
      c8: a908ffff     	stp	xzr, xzr, [sp, #0x88]
      cc: a907ffff     	stp	xzr, xzr, [sp, #0x78]
      d0: a906ffff     	stp	xzr, xzr, [sp, #0x68]
      d4: a905ffff     	stp	xzr, xzr, [sp, #0x58]
      d8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
      dc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      e0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
      e4: a901ffff     	stp	xzr, xzr, [sp, #0x18]
      e8: a900ffff     	stp	xzr, xzr, [sp, #0x8]
      ec: 94000000     	bl	0xec <zte_ir_write+0xe8>
		00000000000000ec:  R_AARCH64_CALL26	memdup_user
      f0: b13ffc1f     	cmn	x0, #0xfff
      f4: 54fffbc2     	b.hs	0x6c <zte_ir_write+0x68>
      f8: 52871517     	mov	w23, #0x38a8            // =14504
      fc: aa0003f4     	mov	x20, x0
     100: 91404e78     	add	x24, x19, #0x13, lsl #12 // =0x13000
     104: 72a00037     	movk	w23, #0x1, lsl #16
     108: 8b170260     	add	x0, x19, x23
     10c: 94000000     	bl	0x10c <zte_ir_write+0x108>
		000000000000010c:  R_AARCH64_CALL26	mutex_lock
     110: 3963b308     	ldrb	w8, [x24, #0x8ec]
     114: 36000068     	tbz	w8, #0x0, 0x120 <zte_ir_write+0x11c>
     118: 92800d76     	mov	x22, #-0x6c             // =-108
     11c: 14000027     	b	0x1b8 <zte_ir_write+0x1b4>
     120: f9444b15     	ldr	x21, [x24, #0x890]
     124: b4000155     	cbz	x21, 0x14c <zte_ir_write+0x148>
     128: d342fec2     	lsr	x2, x22, #2
     12c: b9488b03     	ldr	w3, [x24, #0x888]
     130: 910023e4     	add	x4, sp, #0x8
     134: aa1303e0     	mov	x0, x19
     138: aa1403e1     	mov	x1, x20
     13c: 940000e2     	bl	0x4c4 <zte_ir_encode_pulses>
     140: 340000a0     	cbz	w0, 0x154 <zte_ir_write+0x150>
     144: 93407c16     	sxtw	x22, w0
     148: 1400001c     	b	0x1b8 <zte_ir_write+0x1b4>
     14c: 92800256     	mov	x22, #-0x13             // =-19
     150: 1400001a     	b	0x1b8 <zte_ir_write+0x1b4>
     154: f94007e8     	ldr	x8, [sp, #0x8]
     158: b4000308     	cbz	x8, 0x1b8 <zte_ir_write+0x1b4>
     15c: 531f7908     	lsl	w8, w8, #1
     160: 91001269     	add	x9, x19, #0x4
     164: a90fffff     	stp	xzr, xzr, [sp, #0xf8]
     168: a90effff     	stp	xzr, xzr, [sp, #0xe8]
     16c: 910043e0     	add	x0, sp, #0x10
     170: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
     174: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
     178: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
     17c: a90affff     	stp	xzr, xzr, [sp, #0xa8]
     180: a909ffff     	stp	xzr, xzr, [sp, #0x98]
     184: a908ffff     	stp	xzr, xzr, [sp, #0x88]
     188: f90043e9     	str	x9, [sp, #0x80]
     18c: b90093e8     	str	w8, [sp, #0x90]
     190: b9488b08     	ldr	w8, [x24, #0x888]
     194: b900dbe8     	str	w8, [sp, #0xd8]
     198: 94000128     	bl	0x638 <spi_message_init>
     19c: 910203e0     	add	x0, sp, #0x80
     1a0: 910043e1     	add	x1, sp, #0x10
     1a4: 94000132     	bl	0x66c <spi_message_add_tail>
     1a8: 910043e1     	add	x1, sp, #0x10
     1ac: aa1503e0     	mov	x0, x21
     1b0: 94000000     	bl	0x1b0 <zte_ir_write+0x1ac>
		00000000000001b0:  R_AARCH64_CALL26	spi_sync
     1b4: 350000e0     	cbnz	w0, 0x1d0 <zte_ir_write+0x1cc>
     1b8: 8b170260     	add	x0, x19, x23
     1bc: 94000000     	bl	0x1bc <zte_ir_write+0x1b8>
		00000000000001bc:  R_AARCH64_CALL26	mutex_unlock
     1c0: aa1403e0     	mov	x0, x20
     1c4: 94000000     	bl	0x1c4 <zte_ir_write+0x1c0>
		00000000000001c4:  R_AARCH64_CALL26	kfree
     1c8: aa1603e0     	mov	x0, x22
     1cc: 17ffffa8     	b	0x6c <zte_ir_write+0x68>
     1d0: 2a0003e2     	mov	w2, w0
     1d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e
     1d8: 91000021     	add	x1, x1, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e
     1dc: aa1503e0     	mov	x0, x21
     1e0: 93407c56     	sxtw	x22, w2
     1e4: 94000000     	bl	0x1e4 <zte_ir_write+0x1e0>
		00000000000001e4:  R_AARCH64_CALL26	_dev_err
     1e8: 17fffff4     	b	0x1b8 <zte_ir_write+0x1b4>
     1ec: 94000000     	bl	0x1ec <zte_ir_write+0x1e8>
		00000000000001ec:  R_AARCH64_CALL26	__stack_chk_fail
