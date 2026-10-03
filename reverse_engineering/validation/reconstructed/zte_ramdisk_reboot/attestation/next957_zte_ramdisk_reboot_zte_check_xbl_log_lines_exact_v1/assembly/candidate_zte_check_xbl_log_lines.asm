
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_check_xbl_log_lines>:
       4: d503233f     	paciasp
       8: d10203ff     	sub	sp, sp, #0x80
       c: a9027bfd     	stp	x29, x30, [sp, #0x20]
      10: a9036ffc     	stp	x28, x27, [sp, #0x30]
      14: a90467fa     	stp	x26, x25, [sp, #0x40]
      18: a9055ff8     	stp	x24, x23, [sp, #0x50]
      1c: a90657f6     	stp	x22, x21, [sp, #0x60]
      20: a9074ff4     	stp	x20, x19, [sp, #0x70]
      24: 910083fd     	add	x29, sp, #0x20
      28: a947dc09     	ldp	x9, x23, [x0, #0x78]
      2c: 52860008     	mov	w8, #0x3000             // =12288
      30: f9000be4     	str	x4, [sp, #0x10]
      34: f81f83a0     	stur	x0, [x29, #-0x8]
      38: f1400d3f     	cmp	x9, #0x3, lsl #12       // =0x3000
      3c: 9a883128     	csel	x8, x9, x8, lo
      40: f90007e8     	str	x8, [sp, #0x8]
      44: 8b0802e8     	add	x8, x23, x8
      48: eb0802ff     	cmp	x23, x8
      4c: 540008a2     	b.hs	0x160 <zte_check_xbl_log_lines+0x15c>
      50: aa0303f5     	mov	x21, x3
      54: aa0203f6     	mov	x22, x2
      58: aa0103f8     	mov	x24, x1
      5c: 14000007     	b	0x78 <zte_check_xbl_log_lines+0x74>
      60: f85f83a8     	ldur	x8, [x29, #-0x8]
      64: f94007e9     	ldr	x9, [sp, #0x8]
      68: f9404108     	ldr	x8, [x8, #0x80]
      6c: 8b090108     	add	x8, x8, x9
      70: eb0802ff     	cmp	x23, x8
      74: 54000762     	b.hs	0x160 <zte_check_xbl_log_lines+0x15c>
      78: cb17011a     	sub	x26, x8, x23
      7c: aa1703e0     	mov	x0, x23
      80: 52800141     	mov	w1, #0xa                // =10
      84: aa1a03e2     	mov	x2, x26
      88: 94000000     	bl	0x88 <zte_check_xbl_log_lines+0x84>
		0000000000000088:  R_AARCH64_CALL26	memchr
      8c: b40007e0     	cbz	x0, 0x188 <zte_check_xbl_log_lines+0x184>
      90: cb17001b     	sub	x27, x0, x23
      94: aa0003fc     	mov	x28, x0
      98: f1000b7f     	cmp	x27, #0x2
      9c: 540007e3     	b.lo	0x198 <zte_check_xbl_log_lines+0x194>
      a0: b4000576     	cbz	x22, 0x14c <zte_check_xbl_log_lines+0x148>
      a4: f9400bf4     	ldr	x20, [sp, #0x10]
      a8: aa1f03f9     	mov	x25, xzr
      ac: d1000773     	sub	x19, x27, #0x1
      b0: 1400000c     	b	0xe0 <zte_check_xbl_log_lines+0xdc>
      b4: f85f83a8     	ldur	x8, [x29, #-0x8]
      b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194
      bc: 91000021     	add	x1, x1, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194
      c0: aa1903e2     	mov	x2, x25
      c4: aa1a03e3     	mov	x3, x26
      c8: f9400100     	ldr	x0, [x8]
      cc: 94000000     	bl	0xcc <zte_check_xbl_log_lines+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	_dev_info
      d0: 91000739     	add	x25, x25, #0x1
      d4: 91020294     	add	x20, x20, #0x80
      d8: eb1902df     	cmp	x22, x25
      dc: 54000280     	b.eq	0x12c <zte_check_xbl_log_lines+0x128>
      e0: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
      e4: 7100051f     	cmp	w8, #0x1
      e8: 54ffff4b     	b.lt	0xd0 <zte_check_xbl_log_lines+0xcc>
      ec: f8797b01     	ldr	x1, [x24, x25, lsl #3]
      f0: aa1703e0     	mov	x0, x23
      f4: aa1b03e2     	mov	x2, x27
      f8: 94000000     	bl	0xf8 <zte_check_xbl_log_lines+0xf4>
		00000000000000f8:  R_AARCH64_CALL26	strnstr
      fc: b4fffea0     	cbz	x0, 0xd0 <zte_check_xbl_log_lines+0xcc>
     100: f102037f     	cmp	x27, #0x80
     104: 54fffd88     	b.hi	0xb4 <zte_check_xbl_log_lines+0xb0>
     108: aa1403e0     	mov	x0, x20
     10c: aa1703e1     	mov	x1, x23
     110: aa1303e2     	mov	x2, x19
     114: 94000000     	bl	0x114 <zte_check_xbl_log_lines+0x110>
		0000000000000114:  R_AARCH64_CALL26	memcpy
     118: 38336a9f     	strb	wzr, [x20, x19]
     11c: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
     120: 51000508     	sub	w8, w8, #0x1
     124: b8397aa8     	str	w8, [x21, x25, lsl #2]
     128: 17ffffea     	b	0xd0 <zte_check_xbl_log_lines+0xcc>
     12c: 91000797     	add	x23, x28, #0x1
     130: aa1503e8     	mov	x8, x21
     134: aa1603e9     	mov	x9, x22
     138: b840450a     	ldr	w10, [x8], #0x4
     13c: 7100015f     	cmp	w10, #0x0
     140: 54fff90c     	b.gt	0x60 <zte_check_xbl_log_lines+0x5c>
     144: f1000529     	subs	x9, x9, #0x1
     148: 54ffff81     	b.ne	0x138 <zte_check_xbl_log_lines+0x134>
     14c: f85f83a8     	ldur	x8, [x29, #-0x8]
     150: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210
     154: 91000021     	add	x1, x1, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210
     158: f9400100     	ldr	x0, [x8]
     15c: 94000000     	bl	0x15c <zte_check_xbl_log_lines+0x158>
		000000000000015c:  R_AARCH64_CALL26	_dev_info
     160: 2a1f03e0     	mov	w0, wzr
     164: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     168: a94657f6     	ldp	x22, x21, [sp, #0x60]
     16c: a9455ff8     	ldp	x24, x23, [sp, #0x50]
     170: a94467fa     	ldp	x26, x25, [sp, #0x40]
     174: a9436ffc     	ldp	x28, x27, [sp, #0x30]
     178: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     17c: 910203ff     	add	sp, sp, #0x80
     180: d50323bf     	autiasp
     184: d65f03c0     	ret
     188: f85f83a8     	ldur	x8, [x29, #-0x8]
     18c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000018c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     190: 91000021     	add	x1, x1, #0x0
		0000000000000190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     194: 17fffff1     	b	0x158 <zte_check_xbl_log_lines+0x154>
     198: f85f83a8     	ldur	x8, [x29, #-0x8]
     19c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     1a0: 91000021     	add	x1, x1, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     1a4: aa1b03e2     	mov	x2, x27
     1a8: aa1a03e3     	mov	x3, x26
     1ac: f9400100     	ldr	x0, [x8]
     1b0: 94000000     	bl	0x1b0 <zte_check_xbl_log_lines+0x1ac>
		00000000000001b0:  R_AARCH64_CALL26	_dev_err
     1b4: 12800000     	mov	w0, #-0x1               // =-1
     1b8: 17ffffeb     	b	0x164 <zte_check_xbl_log_lines+0x160>
