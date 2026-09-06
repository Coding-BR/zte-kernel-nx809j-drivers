
/out/tpd_set_play_game.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000000 <tpd_set_play_game>:
       0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
       4: f9000bf5     	str	x21, [sp, #0x10]
       8: 2a0103f5     	mov	w21, w1
       c: 90000001     	adrp	x1, 0x0 <tpd_set_play_game>
		000000000000000c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      10: 91000021     	add	x1, x1, #0x0
		0000000000000010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      14: a9024ff4     	stp	x20, x19, [sp, #0x20]
      18: aa0003f3     	mov	x19, x0
      1c: f946dc14     	ldr	x20, [x0, #0xdb8]
      20: 90000000     	adrp	x0, 0x0 <tpd_set_play_game>
		0000000000000020:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
      24: 91000000     	add	x0, x0, #0x0
		0000000000000024:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
      28: 910003fd     	mov	x29, sp
      2c: 94000000     	bl	0x2c <tpd_set_play_game+0x2c>
		000000000000002c:  R_AARCH64_CALL26	printk
      30: b4000134     	cbz	x20, 0x54 <tpd_set_play_game+0x54>
      34: f9413a88     	ldr	x8, [x20, #0x270]
      38: b940b909     	ldr	w9, [x8, #0xb8]
      3c: 34000069     	cbz	w9, 0x48 <tpd_set_play_game+0x48>
      40: 3942f108     	ldrb	w8, [x8, #0xbc]
      44: 370000c8     	tbnz	w8, #0x0, 0x5c <tpd_set_play_game+0x5c>
      48: f9400288     	ldr	x8, [x20]
      4c: b9420d02     	ldr	w2, [x8, #0x20c]
      50: 14000004     	b	0x60 <tpd_set_play_game+0x60>
      54: 128002a0     	mov	w0, #-0x16              // =-22
      58: 14000011     	b	0x9c <tpd_set_play_game+0x9c>
      5c: 2a1f03e2     	mov	w2, wzr
      60: b9457e88     	ldr	w8, [x20, #0x57c]
      64: 7100051f     	cmp	w8, #0x1
      68: 540000e1     	b.ne	0x84 <tpd_set_play_game+0x84>
      6c: b945de88     	ldr	w8, [x20, #0x5dc]
      70: 6b15011f     	cmp	w8, w21
      74: 540001c1     	b.ne	0xac <tpd_set_play_game+0xac>
      78: 90000000     	adrp	x0, 0x0 <tpd_set_play_game>
		0000000000000078:  R_AARCH64_ADR_PREL_PG_HI21	unk_32D58
      7c: 91000000     	add	x0, x0, #0x0
		000000000000007c:  R_AARCH64_ADD_ABS_LO12_NC	unk_32D58
      80: 14000003     	b	0x8c <tpd_set_play_game+0x8c>
      84: 90000000     	adrp	x0, 0x0 <tpd_set_play_game>
		0000000000000084:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B5E0
      88: 91000000     	add	x0, x0, #0x0
		0000000000000088:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B5E0
      8c: 90000001     	adrp	x1, 0x0 <tpd_set_play_game>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
      90: 91000021     	add	x1, x1, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
      94: 94000000     	bl	0x94 <tpd_set_play_game+0x94>
		0000000000000094:  R_AARCH64_CALL26	printk
      98: b9401260     	ldr	w0, [x19, #0x10]
      9c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
      a0: f9400bf5     	ldr	x21, [sp, #0x10]
      a4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
      a8: d65f03c0     	ret
      ac: aa1403e0     	mov	x0, x20
      b0: 2a1503e1     	mov	w1, w21
      b4: b905de95     	str	w21, [x20, #0x5dc]
      b8: 94000000     	bl	0xb8 <tpd_set_play_game+0xb8>
		00000000000000b8:  R_AARCH64_CALL26	syna_dev_set_play_game
      bc: 36fffee0     	tbz	w0, #0x1f, 0x98 <tpd_set_play_game+0x98>
      c0: 90000000     	adrp	x0, 0x0 <tpd_set_play_game>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34BC7
      c4: 91000000     	add	x0, x0, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34BC7
      c8: 17fffff1     	b	0x8c <tpd_set_play_game+0x8c>
