
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <zte_misc_register_callback>:
       4: b40007c0     	cbz	x0, 0xfc <zte_misc_register_callback+0xf8>
       8: d503233f     	paciasp
       c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
      10: a90167fa     	stp	x26, x25, [sp, #0x10]
      14: a9025ff8     	stp	x24, x23, [sp, #0x20]
      18: a90357f6     	stp	x22, x21, [sp, #0x30]
      1c: a9044ff4     	stp	x20, x19, [sp, #0x40]
      20: 910003fd     	mov	x29, sp
      24: f9400014     	ldr	x20, [x0]
      28: b4000834     	cbz	x20, 0x12c <zte_misc_register_callback+0x128>
      2c: aa0003fa     	mov	x26, x0
      30: aa1403e0     	mov	x0, x20
      34: aa0103f9     	mov	x25, x1
      38: 94000000     	bl	0x38 <zte_misc_register_callback+0x34>
		0000000000000038:  R_AARCH64_CALL26	strlen
      3c: aa0003f5     	mov	x21, x0
      40: aa1f03f3     	mov	x19, xzr
      44: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000044:  R_AARCH64_ADR_PREL_PG_HI21	node_ops_list+0x10
      48: 91000318     	add	x24, x24, #0x0
		0000000000000048:  R_AARCH64_ADD_ABS_LO12_NC	node_ops_list+0x10
      4c: 14000005     	b	0x60 <zte_misc_register_callback+0x5c>
      50: 91000673     	add	x19, x19, #0x1
      54: 9100a318     	add	x24, x24, #0x28
      58: f100927f     	cmp	x19, #0x24
      5c: 54000680     	b.eq	0x12c <zte_misc_register_callback+0x128>
      60: f85f0316     	ldur	x22, [x24, #-0x10]
      64: aa1403e1     	mov	x1, x20
      68: aa1503e2     	mov	x2, x21
      6c: aa1603e0     	mov	x0, x22
      70: 94000000     	bl	0x70 <zte_misc_register_callback+0x6c>
		0000000000000070:  R_AARCH64_CALL26	strncmp
      74: 35fffee0     	cbnz	w0, 0x50 <zte_misc_register_callback+0x4c>
      78: aa1603e0     	mov	x0, x22
      7c: 94000000     	bl	0x7c <zte_misc_register_callback+0x78>
		000000000000007c:  R_AARCH64_CALL26	strlen
      80: aa0003f7     	mov	x23, x0
      84: aa1403e0     	mov	x0, x20
      88: 94000000     	bl	0x88 <zte_misc_register_callback+0x84>
		0000000000000088:  R_AARCH64_CALL26	strlen
      8c: eb0002ff     	cmp	x23, x0
      90: 54fffe01     	b.ne	0x50 <zte_misc_register_callback+0x4c>
      94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fd
      98: 91000000     	add	x0, x0, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fd
      9c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
      a0: 91000021     	add	x1, x1, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
      a4: 2a1303e2     	mov	w2, w19
      a8: aa1603e3     	mov	x3, x22
      ac: 94000000     	bl	0xac <zte_misc_register_callback+0xa8>
		00000000000000ac:  R_AARCH64_CALL26	_printk
      b0: f9400308     	ldr	x8, [x24]
      b4: b5000288     	cbnz	x8, 0x104 <zte_misc_register_callback+0x100>
      b8: f85f8308     	ldur	x8, [x24, #-0x8]
      bc: b5000248     	cbnz	x8, 0x104 <zte_misc_register_callback+0x100>
      c0: f9400708     	ldr	x8, [x24, #0x8]
      c4: b5000208     	cbnz	x8, 0x104 <zte_misc_register_callback+0x100>
      c8: f9400b08     	ldr	x8, [x24, #0x10]
      cc: b50001c8     	cbnz	x8, 0x104 <zte_misc_register_callback+0x100>
      d0: f9400b48     	ldr	x8, [x26, #0x10]
      d4: f9000308     	str	x8, [x24]
      d8: f9400748     	ldr	x8, [x26, #0x8]
      dc: f81f8308     	stur	x8, [x24, #-0x8]
      e0: f9400f48     	ldr	x8, [x26, #0x18]
      e4: f9000708     	str	x8, [x24, #0x8]
      e8: b5000059     	cbnz	x25, 0xf0 <zte_misc_register_callback+0xec>
      ec: f9401359     	ldr	x25, [x26, #0x20]
      f0: 2a1f03e0     	mov	w0, wzr
      f4: f9000b19     	str	x25, [x24, #0x10]
      f8: 1400000b     	b	0x124 <zte_misc_register_callback+0x120>
      fc: 128002a0     	mov	w0, #-0x16              // =-22
     100: d65f03c0     	ret
     104: f85f0303     	ldur	x3, [x24, #-0x10]
     108: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187
     10c: 91000000     	add	x0, x0, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187
     110: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x246
     114: 91000021     	add	x1, x1, #0x0
		0000000000000114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x246
     118: 2a1303e2     	mov	w2, w19
     11c: 94000000     	bl	0x11c <zte_misc_register_callback+0x118>
		000000000000011c:  R_AARCH64_CALL26	_printk
     120: 128001a0     	mov	w0, #-0xe               // =-14
     124: 7100927f     	cmp	w19, #0x24
     128: 54000043     	b.lo	0x130 <zte_misc_register_callback+0x12c>
     12c: 128002a0     	mov	w0, #-0x16              // =-22
     130: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     134: a94357f6     	ldp	x22, x21, [sp, #0x30]
     138: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     13c: a94167fa     	ldp	x26, x25, [sp, #0x10]
     140: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     144: d50323bf     	autiasp
     148: d65f03c0     	ret
