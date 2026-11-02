
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000104 <count_format_args>:
     104: d503233f     	paciasp
     108: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     10c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     110: a90257f6     	stp	x22, x21, [sp, #0x20]
     114: a9034ff4     	stp	x20, x19, [sp, #0x30]
     118: 910003fd     	mov	x29, sp
     11c: 12800013     	mov	w19, #-0x1              // =-1
     120: b4000561     	cbz	x1, 0x1cc <count_format_args+0xc8>
     124: aa0103f4     	mov	x20, x1
     128: aa0003f5     	mov	x21, x0
     12c: b9000033     	str	w19, [x1]
     130: 2a1f03f3     	mov	w19, wzr
     134: b40004c0     	cbz	x0, 0x1cc <count_format_args+0xc8>
     138: 2a1f03e8     	mov	w8, wzr
     13c: 12800018     	mov	w24, #-0x1              // =-1
     140: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5dd
     144: 910002d6     	add	x22, x22, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5dd
     148: 14000003     	b	0x154 <count_format_args+0x50>
     14c: 2a1f03e8     	mov	w8, wzr
     150: 910006b5     	add	x21, x21, #0x1
     154: 394002b7     	ldrb	w23, [x21]
     158: 710096ff     	cmp	w23, #0x25
     15c: 54000260     	b.eq	0x1a8 <count_format_args+0xa4>
     160: 34000377     	cbz	w23, 0x1cc <count_format_args+0xc8>
     164: 3607ff48     	tbz	w8, #0x0, 0x14c <count_format_args+0x48>
     168: aa1603e0     	mov	x0, x22
     16c: 2a1703e1     	mov	w1, w23
     170: 52800282     	mov	w2, #0x14               // =20
     174: 94000000     	bl	0x174 <count_format_args+0x70>
		0000000000000174:  R_AARCH64_CALL26	memchr
     178: b40001e0     	cbz	x0, 0x1b4 <count_format_args+0xb0>
     17c: 2a1f03e8     	mov	w8, wzr
     180: 7101ceff     	cmp	w23, #0x73
     184: 11000673     	add	w19, w19, #0x1
     188: 54000121     	b.ne	0x1ac <count_format_args+0xa8>
     18c: 3100071f     	cmn	w24, #0x1
     190: 540000e1     	b.ne	0x1ac <count_format_args+0xa8>
     194: 2a1f03e8     	mov	w8, wzr
     198: b9000293     	str	w19, [x20]
     19c: 2a1303f8     	mov	w24, w19
     1a0: 910006b5     	add	x21, x21, #0x1
     1a4: 17ffffec     	b	0x154 <count_format_args+0x50>
     1a8: 52000108     	eor	w8, w8, #0x1
     1ac: 910006b5     	add	x21, x21, #0x1
     1b0: 17ffffe9     	b	0x154 <count_format_args+0x50>
     1b4: 7100aaff     	cmp	w23, #0x2a
     1b8: 54000080     	b.eq	0x1c8 <count_format_args+0xc4>
     1bc: 52800028     	mov	w8, #0x1                // =1
     1c0: 910006b5     	add	x21, x21, #0x1
     1c4: 17ffffe4     	b	0x154 <count_format_args+0x50>
     1c8: 12800013     	mov	w19, #-0x1              // =-1
     1cc: 2a1303e0     	mov	w0, w19
     1d0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     1d4: a94257f6     	ldp	x22, x21, [sp, #0x20]
     1d8: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     1dc: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     1e0: d50323bf     	autiasp
     1e4: d65f03c0     	ret
