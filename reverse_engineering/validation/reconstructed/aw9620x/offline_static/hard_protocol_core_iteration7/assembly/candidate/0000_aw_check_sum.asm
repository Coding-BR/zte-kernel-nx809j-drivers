
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <aw_check_sum>:
       4: d503233f     	paciasp
       8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
       c: a9015ff8     	stp	x24, x23, [sp, #0x10]
      10: a90257f6     	stp	x22, x21, [sp, #0x20]
      14: a9034ff4     	stp	x20, x19, [sp, #0x30]
      18: 910003fd     	mov	x29, sp
      1c: 2a0103f3     	mov	w19, w1
      20: aa0003f5     	mov	x21, x0
      24: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x199c
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x199c
      2c: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		000000000000002c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe74
      30: 91000021     	add	x1, x1, #0x0
		0000000000000030:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe74
      34: 52800cc2     	mov	w2, #0x66               // =102
      38: 94000000     	bl	0x38 <aw_check_sum+0x34>
		0000000000000038:  R_AARCH64_CALL26	_printk
      3c: 7101927f     	cmp	w19, #0x64
      40: 54000b22     	b.hs	0x1a4 <aw_check_sum+0x1a0>
      44: 52800a88     	mov	w8, #0x54               // =84
      48: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000048:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x48f
      4c: 91000000     	add	x0, x0, #0x0
		000000000000004c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x48f
      50: 9ba85674     	umaddl	x20, w19, w8, x21
      54: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		0000000000000054:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe74
      58: 91000021     	add	x1, x1, #0x0
		0000000000000058:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe74
      5c: 52800d62     	mov	w2, #0x6b               // =107
      60: b9405688     	ldr	w8, [x20, #0x54]
      64: b9401689     	ldr	w9, [x20, #0x14]
      68: 4b090117     	sub	w23, w8, w9
      6c: 52841d08     	mov	w8, #0x20e8             // =8424
      70: 8b1702b8     	add	x24, x21, x23
      74: 8b080316     	add	x22, x24, x8
      78: aa1603e3     	mov	x3, x22
      7c: 94000000     	bl	0x7c <aw_check_sum+0x78>
		000000000000007c:  R_AARCH64_CALL26	_printk
      80: b9402a88     	ldr	w8, [x20, #0x28]
      84: b9401689     	ldr	w9, [x20, #0x14]
      88: b960eb14     	ldr	w20, [x24, #0x20e8]
      8c: 0b080128     	add	w8, w9, w8
      90: 7100151f     	cmp	w8, #0x5
      94: 540000e3     	b.lo	0xb0 <aw_check_sum+0xac>
      98: d100110a     	sub	x10, x8, #0x4
      9c: f100095f     	cmp	x10, #0x2
      a0: 540000c2     	b.hs	0xb8 <aw_check_sum+0xb4>
      a4: 2a1f03f6     	mov	w22, wzr
      a8: 52800089     	mov	w9, #0x4                // =4
      ac: 14000012     	b	0xf4 <aw_check_sum+0xf0>
      b0: 2a1f03f6     	mov	w22, wzr
      b4: 14000019     	b	0x118 <aw_check_sum+0x114>
      b8: 927ff94d     	and	x13, x10, #0xfffffffffffffffe
      bc: 2a1f03eb     	mov	w11, wzr
      c0: 2a1f03ec     	mov	w12, wzr
      c4: 910011a9     	add	x9, x13, #0x4
      c8: 910016ce     	add	x14, x22, #0x5
      cc: aa0d03ef     	mov	x15, x13
      d0: 385ff1d0     	ldurb	w16, [x14, #-0x1]
      d4: 384025d1     	ldrb	w17, [x14], #0x2
      d8: f10009ef     	subs	x15, x15, #0x2
      dc: 0b10016b     	add	w11, w11, w16
      e0: 0b11018c     	add	w12, w12, w17
      e4: 54ffff61     	b.ne	0xd0 <aw_check_sum+0xcc>
      e8: eb0d015f     	cmp	x10, x13
      ec: 0b0b0196     	add	w22, w12, w11
      f0: 54000140     	b.eq	0x118 <aw_check_sum+0x114>
      f4: 8b17012a     	add	x10, x9, x23
      f8: 52841d0b     	mov	w11, #0x20e8            // =8424
      fc: cb090108     	sub	x8, x8, x9
     100: 8b15014a     	add	x10, x10, x21
     104: 8b0b014a     	add	x10, x10, x11
     108: 38401549     	ldrb	w9, [x10], #0x1
     10c: f1000508     	subs	x8, x8, #0x1
     110: 0b0902d6     	add	w22, w22, w9
     114: 54ffffa1     	b.ne	0x108 <aw_check_sum+0x104>
     118: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000118:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2f56
     11c: 91000000     	add	x0, x0, #0x0
		000000000000011c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2f56
     120: 90000001     	adrp	x1, 0x0 <aw9620x_text_base>
		0000000000000120:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe74
     124: 91000021     	add	x1, x1, #0x0
		0000000000000124:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe74
     128: 52800ee2     	mov	w2, #0x77               // =119
     12c: 2a1303e3     	mov	w3, w19
     130: 2a1403e4     	mov	w4, w20
     134: 2a1603e5     	mov	w5, w22
     138: 94000000     	bl	0x138 <aw_check_sum+0x134>
		0000000000000138:  R_AARCH64_CALL26	_printk
     13c: 6b1402df     	cmp	w22, w20
     140: 54000101     	b.ne	0x160 <aw_check_sum+0x15c>
     144: 2a1f03e0     	mov	w0, wzr
     148: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     14c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     150: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     154: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     158: d50323bf     	autiasp
     15c: d65f03c0     	ret
     160: 90000015     	adrp	x21, 0x0 <aw9620x_text_base>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe74
     164: 910002b5     	add	x21, x21, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe74
     168: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2435
     16c: 91000000     	add	x0, x0, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2435
     170: aa1503e1     	mov	x1, x21
     174: 52800f42     	mov	w2, #0x7a               // =122
     178: 94000000     	bl	0x178 <aw_check_sum+0x174>
		0000000000000178:  R_AARCH64_CALL26	_printk
     17c: 90000000     	adrp	x0, 0x0 <aw9620x_text_base>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1230
     180: 91000000     	add	x0, x0, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1230
     184: aa1503e1     	mov	x1, x21
     188: 52800f62     	mov	w2, #0x7b               // =123
     18c: 2a1303e3     	mov	w3, w19
     190: 2a1403e4     	mov	w4, w20
     194: 2a1603e5     	mov	w5, w22
     198: 94000000     	bl	0x198 <aw_check_sum+0x194>
		0000000000000198:  R_AARCH64_CALL26	_printk
     19c: 12800040     	mov	w0, #-0x3               // =-3
     1a0: 17ffffea     	b	0x148 <aw_check_sum+0x144>
     1a4: d42aa240     	brk	#0x5512
