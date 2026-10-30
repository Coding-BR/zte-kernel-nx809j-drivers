
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000000c0 <zte_misc_register_callback>:
      c0: b40007c0     	cbz	x0, 0x1b8 <zte_misc_register_callback+0xf8>
      c4: d503233f     	paciasp
      c8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
      cc: a90167fa     	stp	x26, x25, [sp, #0x10]
      d0: a9025ff8     	stp	x24, x23, [sp, #0x20]
      d4: a90357f6     	stp	x22, x21, [sp, #0x30]
      d8: a9044ff4     	stp	x20, x19, [sp, #0x40]
      dc: 910003fd     	mov	x29, sp
      e0: f9400014     	ldr	x20, [x0]
      e4: b4000834     	cbz	x20, 0x1e8 <zte_misc_register_callback+0x128>
      e8: aa0003fa     	mov	x26, x0
      ec: aa1403e0     	mov	x0, x20
      f0: aa0103f9     	mov	x25, x1
      f4: 94000000     	bl	0xf4 <zte_misc_register_callback+0x34>
		00000000000000f4:  R_AARCH64_CALL26	strlen
      f8: aa0003f5     	mov	x21, x0
      fc: aa1f03f3     	mov	x19, xzr
     100: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list+0x10
     104: 91000318     	add	x24, x24, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list+0x10
     108: 14000005     	b	0x11c <zte_misc_register_callback+0x5c>
     10c: 91000673     	add	x19, x19, #0x1
     110: 9100a318     	add	x24, x24, #0x28
     114: f100927f     	cmp	x19, #0x24
     118: 54000680     	b.eq	0x1e8 <zte_misc_register_callback+0x128>
     11c: f85f0316     	ldur	x22, [x24, #-0x10]
     120: aa1403e1     	mov	x1, x20
     124: aa1503e2     	mov	x2, x21
     128: aa1603e0     	mov	x0, x22
     12c: 94000000     	bl	0x12c <zte_misc_register_callback+0x6c>
		000000000000012c:  R_AARCH64_CALL26	strncmp
     130: 35fffee0     	cbnz	w0, 0x10c <zte_misc_register_callback+0x4c>
     134: aa1603e0     	mov	x0, x22
     138: 94000000     	bl	0x138 <zte_misc_register_callback+0x78>
		0000000000000138:  R_AARCH64_CALL26	strlen
     13c: aa0003f7     	mov	x23, x0
     140: aa1403e0     	mov	x0, x20
     144: 94000000     	bl	0x144 <zte_misc_register_callback+0x84>
		0000000000000144:  R_AARCH64_CALL26	strlen
     148: eb0002ff     	cmp	x23, x0
     14c: 54fffe01     	b.ne	0x10c <zte_misc_register_callback+0x4c>
     150: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fd
     154: 91000000     	add	x0, x0, #0x0
		0000000000000154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fd
     158: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     15c: 91000021     	add	x1, x1, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     160: 2a1303e2     	mov	w2, w19
     164: aa1603e3     	mov	x3, x22
     168: 94000000     	bl	0x168 <zte_misc_register_callback+0xa8>
		0000000000000168:  R_AARCH64_CALL26	_printk
     16c: f9400308     	ldr	x8, [x24]
     170: b5000288     	cbnz	x8, 0x1c0 <zte_misc_register_callback+0x100>
     174: f85f8308     	ldur	x8, [x24, #-0x8]
     178: b5000248     	cbnz	x8, 0x1c0 <zte_misc_register_callback+0x100>
     17c: f9400708     	ldr	x8, [x24, #0x8]
     180: b5000208     	cbnz	x8, 0x1c0 <zte_misc_register_callback+0x100>
     184: f9400b08     	ldr	x8, [x24, #0x10]
     188: b50001c8     	cbnz	x8, 0x1c0 <zte_misc_register_callback+0x100>
     18c: f9400b48     	ldr	x8, [x26, #0x10]
     190: f9000308     	str	x8, [x24]
     194: f9400748     	ldr	x8, [x26, #0x8]
     198: f81f8308     	stur	x8, [x24, #-0x8]
     19c: f9400f48     	ldr	x8, [x26, #0x18]
     1a0: f9000708     	str	x8, [x24, #0x8]
     1a4: b5000059     	cbnz	x25, 0x1ac <zte_misc_register_callback+0xec>
     1a8: f9401359     	ldr	x25, [x26, #0x20]
     1ac: 2a1f03e0     	mov	w0, wzr
     1b0: f9000b19     	str	x25, [x24, #0x10]
     1b4: 1400000b     	b	0x1e0 <zte_misc_register_callback+0x120>
     1b8: 128002a0     	mov	w0, #-0x16              // =-22
     1bc: d65f03c0     	ret
     1c0: f85f0303     	ldur	x3, [x24, #-0x10]
     1c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187
     1c8: 91000000     	add	x0, x0, #0x0
		00000000000001c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187
     1cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     1d0: 91000021     	add	x1, x1, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     1d4: 2a1303e2     	mov	w2, w19
     1d8: 94000000     	bl	0x1d8 <zte_misc_register_callback+0x118>
		00000000000001d8:  R_AARCH64_CALL26	_printk
     1dc: 128001a0     	mov	w0, #-0xe               // =-14
     1e0: 7100927f     	cmp	w19, #0x24
     1e4: 54000043     	b.lo	0x1ec <zte_misc_register_callback+0x12c>
     1e8: 128002a0     	mov	w0, #-0x16              // =-22
     1ec: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     1f0: a94357f6     	ldp	x22, x21, [sp, #0x30]
     1f4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     1f8: a94167fa     	ldp	x26, x25, [sp, #0x10]
     1fc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     200: d50323bf     	autiasp
     204: d65f03c0     	ret
