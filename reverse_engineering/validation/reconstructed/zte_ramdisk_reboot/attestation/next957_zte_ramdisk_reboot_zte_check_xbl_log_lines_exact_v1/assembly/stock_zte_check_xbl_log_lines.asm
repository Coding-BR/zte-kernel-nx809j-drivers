
/input/zte_ramdisk_reboot.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000009c <zte_check_xbl_log_lines>:
      9c: d503233f     	paciasp
      a0: d10203ff     	sub	sp, sp, #0x80
      a4: a9027bfd     	stp	x29, x30, [sp, #0x20]
      a8: a9036ffc     	stp	x28, x27, [sp, #0x30]
      ac: a90467fa     	stp	x26, x25, [sp, #0x40]
      b0: a9055ff8     	stp	x24, x23, [sp, #0x50]
      b4: a90657f6     	stp	x22, x21, [sp, #0x60]
      b8: a9074ff4     	stp	x20, x19, [sp, #0x70]
      bc: 910083fd     	add	x29, sp, #0x20
      c0: a947dc09     	ldp	x9, x23, [x0, #0x78]
      c4: 52860008     	mov	w8, #0x3000             // =12288
      c8: f9000be4     	str	x4, [sp, #0x10]
      cc: f81f83a0     	stur	x0, [x29, #-0x8]
      d0: f1400d3f     	cmp	x9, #0x3, lsl #12       // =0x3000
      d4: 9a883128     	csel	x8, x9, x8, lo
      d8: f90007e8     	str	x8, [sp, #0x8]
      dc: 8b0802e8     	add	x8, x23, x8
      e0: eb0802ff     	cmp	x23, x8
      e4: 540008a2     	b.hs	0x1f8 <zte_check_xbl_log_lines+0x15c>
      e8: aa0303f5     	mov	x21, x3
      ec: aa0203f6     	mov	x22, x2
      f0: aa0103f8     	mov	x24, x1
      f4: 14000007     	b	0x110 <zte_check_xbl_log_lines+0x74>
      f8: f85f83a8     	ldur	x8, [x29, #-0x8]
      fc: f94007e9     	ldr	x9, [sp, #0x8]
     100: f9404108     	ldr	x8, [x8, #0x80]
     104: 8b090108     	add	x8, x8, x9
     108: eb0802ff     	cmp	x23, x8
     10c: 54000762     	b.hs	0x1f8 <zte_check_xbl_log_lines+0x15c>
     110: cb17011a     	sub	x26, x8, x23
     114: aa1703e0     	mov	x0, x23
     118: 52800141     	mov	w1, #0xa                // =10
     11c: aa1a03e2     	mov	x2, x26
     120: 94000000     	bl	0x120 <zte_check_xbl_log_lines+0x84>
		0000000000000120:  R_AARCH64_CALL26	memchr
     124: b40007e0     	cbz	x0, 0x220 <zte_check_xbl_log_lines+0x184>
     128: cb17001b     	sub	x27, x0, x23
     12c: aa0003fc     	mov	x28, x0
     130: f1000b7f     	cmp	x27, #0x2
     134: 540007e3     	b.lo	0x230 <zte_check_xbl_log_lines+0x194>
     138: b4000576     	cbz	x22, 0x1e4 <zte_check_xbl_log_lines+0x148>
     13c: f9400bf4     	ldr	x20, [sp, #0x10]
     140: aa1f03f9     	mov	x25, xzr
     144: d1000773     	sub	x19, x27, #0x1
     148: 1400000c     	b	0x178 <zte_check_xbl_log_lines+0xdc>
     14c: f85f83a8     	ldur	x8, [x29, #-0x8]
     150: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194
     154: 91000021     	add	x1, x1, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194
     158: aa1903e2     	mov	x2, x25
     15c: aa1a03e3     	mov	x3, x26
     160: f9400100     	ldr	x0, [x8]
     164: 94000000     	bl	0x164 <zte_check_xbl_log_lines+0xc8>
		0000000000000164:  R_AARCH64_CALL26	_dev_info
     168: 91000739     	add	x25, x25, #0x1
     16c: 91020294     	add	x20, x20, #0x80
     170: eb1902df     	cmp	x22, x25
     174: 54000280     	b.eq	0x1c4 <zte_check_xbl_log_lines+0x128>
     178: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
     17c: 7100051f     	cmp	w8, #0x1
     180: 54ffff4b     	b.lt	0x168 <zte_check_xbl_log_lines+0xcc>
     184: f8797b01     	ldr	x1, [x24, x25, lsl #3]
     188: aa1703e0     	mov	x0, x23
     18c: aa1b03e2     	mov	x2, x27
     190: 94000000     	bl	0x190 <zte_check_xbl_log_lines+0xf4>
		0000000000000190:  R_AARCH64_CALL26	strnstr
     194: b4fffea0     	cbz	x0, 0x168 <zte_check_xbl_log_lines+0xcc>
     198: f102037f     	cmp	x27, #0x80
     19c: 54fffd88     	b.hi	0x14c <zte_check_xbl_log_lines+0xb0>
     1a0: aa1403e0     	mov	x0, x20
     1a4: aa1703e1     	mov	x1, x23
     1a8: aa1303e2     	mov	x2, x19
     1ac: 94000000     	bl	0x1ac <zte_check_xbl_log_lines+0x110>
		00000000000001ac:  R_AARCH64_CALL26	memcpy
     1b0: 38336a9f     	strb	wzr, [x20, x19]
     1b4: b8797aa8     	ldr	w8, [x21, x25, lsl #2]
     1b8: 51000508     	sub	w8, w8, #0x1
     1bc: b8397aa8     	str	w8, [x21, x25, lsl #2]
     1c0: 17ffffea     	b	0x168 <zte_check_xbl_log_lines+0xcc>
     1c4: 91000797     	add	x23, x28, #0x1
     1c8: aa1503e8     	mov	x8, x21
     1cc: aa1603e9     	mov	x9, x22
     1d0: b840450a     	ldr	w10, [x8], #0x4
     1d4: 7100015f     	cmp	w10, #0x0
     1d8: 54fff90c     	b.gt	0xf8 <zte_check_xbl_log_lines+0x5c>
     1dc: f1000529     	subs	x9, x9, #0x1
     1e0: 54ffff81     	b.ne	0x1d0 <zte_check_xbl_log_lines+0x134>
     1e4: f85f83a8     	ldur	x8, [x29, #-0x8]
     1e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x210
     1ec: 91000021     	add	x1, x1, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x210
     1f0: f9400100     	ldr	x0, [x8]
     1f4: 94000000     	bl	0x1f4 <zte_check_xbl_log_lines+0x158>
		00000000000001f4:  R_AARCH64_CALL26	_dev_info
     1f8: 2a1f03e0     	mov	w0, wzr
     1fc: a9474ff4     	ldp	x20, x19, [sp, #0x70]
     200: a94657f6     	ldp	x22, x21, [sp, #0x60]
     204: a9455ff8     	ldp	x24, x23, [sp, #0x50]
     208: a94467fa     	ldp	x26, x25, [sp, #0x40]
     20c: a9436ffc     	ldp	x28, x27, [sp, #0x30]
     210: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     214: 910203ff     	add	sp, sp, #0x80
     218: d50323bf     	autiasp
     21c: d65f03c0     	ret
     220: f85f83a8     	ldur	x8, [x29, #-0x8]
     224: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     228: 91000021     	add	x1, x1, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     22c: 17fffff1     	b	0x1f0 <zte_check_xbl_log_lines+0x154>
     230: f85f83a8     	ldur	x8, [x29, #-0x8]
     234: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d6
     238: 91000021     	add	x1, x1, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d6
     23c: aa1b03e2     	mov	x2, x27
     240: aa1a03e3     	mov	x3, x26
     244: f9400100     	ldr	x0, [x8]
     248: 94000000     	bl	0x248 <zte_check_xbl_log_lines+0x1ac>
		0000000000000248:  R_AARCH64_CALL26	_dev_err
     24c: 12800000     	mov	w0, #-0x1               // =-1
     250: 17ffffeb     	b	0x1fc <zte_check_xbl_log_lines+0x160>
