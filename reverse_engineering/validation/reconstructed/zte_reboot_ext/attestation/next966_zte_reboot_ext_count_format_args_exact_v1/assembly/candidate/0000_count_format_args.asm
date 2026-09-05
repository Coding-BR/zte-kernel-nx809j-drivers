
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <count_format_args>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 12800013     	mov	w19, #-0x1              // =-1
      20: b4000561     	cbz	x1, 0xcc <count_format_args+0xc8>
      24: aa0103f4     	mov	x20, x1
      28: aa0003f5     	mov	x21, x0
      2c: b9000033     	str	w19, [x1]
      30: 2a1f03f3     	mov	w19, wzr
      34: b40004c0     	cbz	x0, 0xcc <count_format_args+0xc8>
      38: 2a1f03e8     	mov	w8, wzr
      3c: 12800018     	mov	w24, #-0x1              // =-1
      40: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f8
      44: 910002d6     	add	x22, x22, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f8
      48: 14000003     	b	0x54 <count_format_args+0x50>
      4c: 2a1f03e8     	mov	w8, wzr
      50: 910006b5     	add	x21, x21, #0x1
      54: 394002b7     	ldrb	w23, [x21]
      58: 710096ff     	cmp	w23, #0x25
      5c: 54000260     	b.eq	0xa8 <count_format_args+0xa4>
      60: 34000377     	cbz	w23, 0xcc <count_format_args+0xc8>
      64: 3607ff48     	tbz	w8, #0x0, 0x4c <count_format_args+0x48>
      68: aa1603e0     	mov	x0, x22
      6c: 2a1703e1     	mov	w1, w23
      70: 52800282     	mov	w2, #0x14               // =20
      74: 94000000     	bl	0x74 <count_format_args+0x70>
		0000000000000074:  R_AARCH64_CALL26	memchr
      78: b40001e0     	cbz	x0, 0xb4 <count_format_args+0xb0>
      7c: 2a1f03e8     	mov	w8, wzr
      80: 7101ceff     	cmp	w23, #0x73
      84: 11000673     	add	w19, w19, #0x1
      88: 54000121     	b.ne	0xac <count_format_args+0xa8>
      8c: 3100071f     	cmn	w24, #0x1
      90: 540000e1     	b.ne	0xac <count_format_args+0xa8>
      94: 2a1f03e8     	mov	w8, wzr
      98: b9000293     	str	w19, [x20]
      9c: 2a1303f8     	mov	w24, w19
      a0: 910006b5     	add	x21, x21, #0x1
      a4: 17ffffec     	b	0x54 <count_format_args+0x50>
      a8: 52000108     	eor	w8, w8, #0x1
      ac: 910006b5     	add	x21, x21, #0x1
      b0: 17ffffe9     	b	0x54 <count_format_args+0x50>
      b4: 7100aaff     	cmp	w23, #0x2a
      b8: 54000080     	b.eq	0xc8 <count_format_args+0xc4>
      bc: 52800028     	mov	w8, #0x1                // =1
      c0: 910006b5     	add	x21, x21, #0x1
      c4: 17ffffe4     	b	0x54 <count_format_args+0x50>
      c8: 12800013     	mov	w19, #-0x1              // =-1
      cc: 2a1303e0     	mov	w0, w19
      d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
      d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
      d8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
      dc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
      e0: d50323bf     	autiasp
      e4: d65f03c0     	ret
