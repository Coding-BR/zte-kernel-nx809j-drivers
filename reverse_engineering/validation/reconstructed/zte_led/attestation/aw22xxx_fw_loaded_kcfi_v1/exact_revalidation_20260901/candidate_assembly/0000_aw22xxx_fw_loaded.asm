
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <aw22xxx_fw_loaded>:
       4: d503233f     	paciasp
       8: d102c3ff     	sub	sp, sp, #0xb0
       c: a9057bfd     	stp	x29, x30, [sp, #0x50]
      10: a9066ffc     	stp	x28, x27, [sp, #0x60]
      14: a90767fa     	stp	x26, x25, [sp, #0x70]
      18: a9085ff8     	stp	x24, x23, [sp, #0x80]
      1c: a90957f6     	stp	x22, x21, [sp, #0x90]
      20: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
      24: 910143fd     	add	x29, sp, #0x50
      28: d5384108     	mrs	x8, SP_EL0
      2c: aa0103f3     	mov	x19, x1
      30: aa0003f7     	mov	x23, x0
      34: f9438908     	ldr	x8, [x8, #0x710]
      38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000038:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
      3c: 91000000     	add	x0, x0, #0x0
		000000000000003c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
      40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000040:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
      44: 91000021     	add	x1, x1, #0x0
		0000000000000044:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
      48: f81f83a8     	stur	x8, [x29, #-0x8]
      4c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
      50: a902ffff     	stp	xzr, xzr, [sp, #0x28]
      54: 390073ff     	strb	wzr, [sp, #0x1c]
      58: 94000000     	bl	0x58 <aw22xxx_fw_loaded+0x54>
		0000000000000058:  R_AARCH64_CALL26	_printk
      5c: b5000177     	cbnz	x23, 0x88 <aw22xxx_fw_loaded+0x84>
      60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000060:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x647
      64: 91000000     	add	x0, x0, #0x0
		0000000000000064:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x647
      68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000068:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
      6c: 91000021     	add	x1, x1, #0x0
		000000000000006c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
      70: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000070:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_name
      74: 91000042     	add	x2, x2, #0x0
		0000000000000074:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_name
      78: 94000000     	bl	0x78 <aw22xxx_fw_loaded+0x74>
		0000000000000078:  R_AARCH64_CALL26	_printk
      7c: aa1f03e0     	mov	x0, xzr
      80: 94000000     	bl	0x80 <aw22xxx_fw_loaded+0x7c>
		0000000000000080:  R_AARCH64_CALL26	release_firmware
      84: 140002d0     	b	0xbc4 <aw22xxx_fw_loaded+0xbc0>
      88: f94002e3     	ldr	x3, [x23]
      8c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000008c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x31e
      90: 91000000     	add	x0, x0, #0x0
		0000000000000090:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x31e
      94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000094:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
      98: 91000021     	add	x1, x1, #0x0
		0000000000000098:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
      9c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000009c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_name
      a0: 91000042     	add	x2, x2, #0x0
		00000000000000a0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_name
      a4: 94000000     	bl	0xa4 <aw22xxx_fw_loaded+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	_printk
      a8: a94022e9     	ldp	x9, x8, [x23]
      ac: f1000d2e     	subs	x14, x9, #0x3
      b0: 540001e3     	b.lo	0xec <aw22xxx_fw_loaded+0xe8>
      b4: d100092d     	sub	x13, x9, #0x2
      b8: f10009bf     	cmp	x13, #0x2
      bc: 54000582     	b.hs	0x16c <aw22xxx_fw_loaded+0x168>
      c0: 2a1f03eb     	mov	w11, wzr
      c4: 5280004a     	mov	w10, #0x2               // =2
      c8: 5280004c     	mov	w12, #0x2               // =2
      cc: 1100058c     	add	w12, w12, #0x1
      d0: 386a690d     	ldrb	w13, [x8, x10]
      d4: 93407d8a     	sxtw	x10, w12
      d8: 1100058c     	add	w12, w12, #0x1
      dc: eb0a013f     	cmp	x9, x10
      e0: 0b0d016b     	add	w11, w11, w13
      e4: 54ffff68     	b.hi	0xd0 <aw22xxx_fw_loaded+0xcc>
      e8: 14000002     	b	0xf0 <aw22xxx_fw_loaded+0xec>
      ec: 2a1f03eb     	mov	w11, wzr
      f0: 79400108     	ldrh	w8, [x8]
      f4: 12003d62     	and	w2, w11, #0xffff
      f8: 5ac00908     	rev	w8, w8
      fc: 6b48405f     	cmp	w2, w8, lsr #16
     100: 54000261     	b.ne	0x14c <aw22xxx_fw_loaded+0x148>
     104: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000104:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x964
     108: 91000000     	add	x0, x0, #0x0
		0000000000000108:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x964
     10c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000010c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     110: 91000021     	add	x1, x1, #0x0
		0000000000000110:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     114: 94000000     	bl	0x114 <aw22xxx_fw_loaded+0x110>
		0000000000000114:  R_AARCH64_CALL26	_printk
     118: d503201f     	nop
     11c: f94002e8     	ldr	x8, [x23]
     120: 5281b801     	mov	w1, #0xdc0              // =3520
     124: 91004115     	add	x21, x8, #0x10
     128: aa1503e0     	mov	x0, x21
     12c: 94000000     	bl	0x12c <aw22xxx_fw_loaded+0x128>
		000000000000012c:  R_AARCH64_CALL26	__kmalloc_noprof
     130: aa0003f4     	mov	x20, x0
     134: b50006f4     	cbnz	x20, 0x210 <aw22xxx_fw_loaded+0x20c>
     138: aa1703e0     	mov	x0, x23
     13c: 94000000     	bl	0x13c <aw22xxx_fw_loaded+0x138>
		000000000000013c:  R_AARCH64_CALL26	release_firmware
     140: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000140:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1546
     144: 91000000     	add	x0, x0, #0x0
		0000000000000144:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1546
     148: 1400029c     	b	0xbb8 <aw22xxx_fw_loaded+0xbb4>
     14c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x545
     150: 91000000     	add	x0, x0, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x545
     154: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000154:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     158: 91000021     	add	x1, x1, #0x0
		0000000000000158:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     15c: 94000000     	bl	0x15c <aw22xxx_fw_loaded+0x158>
		000000000000015c:  R_AARCH64_CALL26	_printk
     160: aa1703e0     	mov	x0, x23
     164: 94000000     	bl	0x164 <aw22xxx_fw_loaded+0x160>
		0000000000000164:  R_AARCH64_CALL26	release_firmware
     168: 14000297     	b	0xbc4 <aw22xxx_fw_loaded+0xbc0>
     16c: 529fffaa     	mov	w10, #0xfffd            // =65533
     170: 2a1f03eb     	mov	w11, wzr
     174: 5280004c     	mov	w12, #0x2               // =2
     178: 72afffea     	movk	w10, #0x7fff, lsl #16
     17c: 6b0a01df     	cmp	w14, w10
     180: 5280004a     	mov	w10, #0x2               // =2
     184: 54fffa48     	b.hi	0xcc <aw22xxx_fw_loaded+0xc8>
     188: 321e73ef     	mov	w15, #0x7ffffffc        // =2147483644
     18c: 6b0f01df     	cmp	w14, w15
     190: 54fff9e8     	b.hi	0xcc <aw22xxx_fw_loaded+0xc8>
     194: d360fdce     	lsr	x14, x14, #32
     198: b5fff9ae     	cbnz	x14, 0xcc <aw22xxx_fw_loaded+0xc8>
     19c: 927ff9af     	and	x15, x13, #0xfffffffffffffffe
     1a0: 2a1f03eb     	mov	w11, wzr
     1a4: 91000d10     	add	x16, x8, #0x3
     1a8: 910009ea     	add	x10, x15, #0x2
     1ac: 110009ec     	add	w12, w15, #0x2
     1b0: aa0f03f1     	mov	x17, x15
     1b4: 385ff200     	ldurb	w0, [x16, #-0x1]
     1b8: 38402601     	ldrb	w1, [x16], #0x2
     1bc: f1000a31     	subs	x17, x17, #0x2
     1c0: 0b00016b     	add	w11, w11, w0
     1c4: 0b0101ce     	add	w14, w14, w1
     1c8: 54ffff61     	b.ne	0x1b4 <aw22xxx_fw_loaded+0x1b0>
     1cc: eb0f01bf     	cmp	x13, x15
     1d0: 0b0b01cb     	add	w11, w14, w11
     1d4: 54fff7c1     	b.ne	0xcc <aw22xxx_fw_loaded+0xc8>
     1d8: 17ffffc6     	b	0xf0 <aw22xxx_fw_loaded+0xec>
     1dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_loaded._alloc_tag
     1e0: 91000108     	add	x8, x8, #0x0
		00000000000001e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_loaded._alloc_tag
     1e4: d5384116     	mrs	x22, SP_EL0
     1e8: f9402ad8     	ldr	x24, [x22, #0x50]
     1ec: f9002ac8     	str	x8, [x22, #0x50]
     1f0: 5281b801     	mov	w1, #0xdc0              // =3520
     1f4: f94002e8     	ldr	x8, [x23]
     1f8: 91004115     	add	x21, x8, #0x10
     1fc: aa1503e0     	mov	x0, x21
     200: 94000000     	bl	0x200 <aw22xxx_fw_loaded+0x1fc>
		0000000000000200:  R_AARCH64_CALL26	__kmalloc_noprof
     204: aa0003f4     	mov	x20, x0
     208: f9002ad8     	str	x24, [x22, #0x50]
     20c: b4fff974     	cbz	x20, 0x138 <aw22xxx_fw_loaded+0x134>
     210: f94006e8     	ldr	x8, [x23, #0x8]
     214: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000214:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     218: 910002d6     	add	x22, x22, #0x0
		0000000000000218:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     21c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000021c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xf91
     220: 91000000     	add	x0, x0, #0x0
		0000000000000220:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xf91
     224: aa1603e1     	mov	x1, x22
     228: 39400902     	ldrb	w2, [x8, #0x2]
     22c: 94000000     	bl	0x22c <aw22xxx_fw_loaded+0x228>
		000000000000022c:  R_AARCH64_CALL26	_printk
     230: f94006e8     	ldr	x8, [x23, #0x8]
     234: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000234:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x447
     238: 91000000     	add	x0, x0, #0x0
		0000000000000238:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x447
     23c: 9100a3e2     	add	x2, sp, #0x28
     240: aa1603e1     	mov	x1, x22
     244: f8403109     	ldur	x9, [x8, #0x3]
     248: f840b108     	ldur	x8, [x8, #0xb]
     24c: a902a3e9     	stp	x9, x8, [sp, #0x28]
     250: 94000000     	bl	0x250 <aw22xxx_fw_loaded+0x24c>
		0000000000000250:  R_AARCH64_CALL26	_printk
     254: f94006e8     	ldr	x8, [x23, #0x8]
     258: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1389
     25c: 91000000     	add	x0, x0, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1389
     260: 9100a3e2     	add	x2, sp, #0x28
     264: aa1603e1     	mov	x1, x22
     268: f8413108     	ldur	x8, [x8, #0x13]
     26c: f90017e8     	str	x8, [sp, #0x28]
     270: 94000000     	bl	0x270 <aw22xxx_fw_loaded+0x26c>
		0000000000000270:  R_AARCH64_CALL26	_printk
     274: f10012bf     	cmp	x21, #0x4
     278: 54004dc3     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     27c: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     280: f100111f     	cmp	x8, #0x4
     284: 54004d60     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     288: f94006e8     	ldr	x8, [x23, #0x8]
     28c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000028c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x165f
     290: 91000000     	add	x0, x0, #0x0
		0000000000000290:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x165f
     294: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000294:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     298: 91000021     	add	x1, x1, #0x0
		0000000000000298:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     29c: b841b108     	ldur	w8, [x8, #0x1b]
     2a0: 5ac00902     	rev	w2, w8
     2a4: b9000682     	str	w2, [x20, #0x4]
     2a8: 94000000     	bl	0x2a8 <aw22xxx_fw_loaded+0x2a4>
		00000000000002a8:  R_AARCH64_CALL26	_printk
     2ac: f10022bf     	cmp	x21, #0x8
     2b0: 54004c03     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     2b4: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     2b8: f100211f     	cmp	x8, #0x8
     2bc: 54004ba0     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     2c0: f94006e8     	ldr	x8, [x23, #0x8]
     2c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x12a8
     2c8: 91000000     	add	x0, x0, #0x0
		00000000000002c8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x12a8
     2cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     2d0: 91000021     	add	x1, x1, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     2d4: 79404508     	ldrh	w8, [x8, #0x22]
     2d8: 5ac00502     	rev16	w2, w8
     2dc: b9000a82     	str	w2, [x20, #0x8]
     2e0: 94000000     	bl	0x2e0 <aw22xxx_fw_loaded+0x2dc>
		00000000000002e0:  R_AARCH64_CALL26	_printk
     2e4: f10032bf     	cmp	x21, #0xc
     2e8: 54004a43     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     2ec: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     2f0: f100311f     	cmp	x8, #0xc
     2f4: 540049e0     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     2f8: f94006e8     	ldr	x8, [x23, #0x8]
     2fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1992
     300: 91000000     	add	x0, x0, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1992
     304: aa1603e1     	mov	x1, x22
     308: 39409102     	ldrb	w2, [x8, #0x24]
     30c: b9000e82     	str	w2, [x20, #0xc]
     310: 94000000     	bl	0x310 <aw22xxx_fw_loaded+0x30c>
		0000000000000310:  R_AARCH64_CALL26	_printk
     314: f94006e8     	ldr	x8, [x23, #0x8]
     318: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000318:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x139f
     31c: 91000000     	add	x0, x0, #0x0
		000000000000031c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x139f
     320: aa1603e1     	mov	x1, x22
     324: 79404d08     	ldrh	w8, [x8, #0x26]
     328: 5ac00502     	rev16	w2, w8
     32c: b9000282     	str	w2, [x20]
     330: 94000000     	bl	0x330 <aw22xxx_fw_loaded+0x32c>
		0000000000000330:  R_AARCH64_CALL26	_printk
     334: b9400282     	ldr	w2, [x20]
     338: f10042a8     	subs	x8, x21, #0x10
     33c: 9a8833e1     	csel	x1, xzr, x8, lo
     340: eb02003f     	cmp	x1, x2
     344: 54004783     	b.lo	0xc34 <aw22xxx_fw_loaded+0xc30>
     348: f94006e8     	ldr	x8, [x23, #0x8]
     34c: 91004296     	add	x22, x20, #0x10
     350: aa1603e0     	mov	x0, x22
     354: 9100a101     	add	x1, x8, #0x28
     358: 94000000     	bl	0x358 <aw22xxx_fw_loaded+0x354>
		0000000000000358:  R_AARCH64_CALL26	memcpy
     35c: aa1703e0     	mov	x0, x23
     360: 94000000     	bl	0x360 <aw22xxx_fw_loaded+0x35c>
		0000000000000360:  R_AARCH64_CALL26	release_firmware
     364: aa1303e0     	mov	x0, x19
     368: 52800021     	mov	w1, #0x1                // =1
     36c: 52800aa2     	mov	w2, #0x55               // =85
     370: 94000235     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000370:  R_AARCH64_CALL26	aw22xxx_i2c_write
     374: 5280fa00     	mov	w0, #0x7d0              // =2000
     378: 52817701     	mov	w1, #0xbb8              // =3000
     37c: 52800042     	mov	w2, #0x2                // =2
     380: 94000000     	bl	0x380 <aw22xxx_fw_loaded+0x37c>
		0000000000000380:  R_AARCH64_CALL26	usleep_range_state
     384: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000384:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
     388: 91000000     	add	x0, x0, #0x0
		0000000000000388:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
     38c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
     390: 91000021     	add	x1, x1, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
     394: 52803542     	mov	w2, #0x1aa              // =426
     398: 52800023     	mov	w3, #0x1                // =1
     39c: 94000000     	bl	0x39c <aw22xxx_fw_loaded+0x398>
		000000000000039c:  R_AARCH64_CALL26	_printk
     3a0: 910093e2     	add	x2, sp, #0x24
     3a4: aa1303e0     	mov	x0, x19
     3a8: 52800041     	mov	w1, #0x2                // =2
     3ac: 390093ff     	strb	wzr, [sp, #0x24]
     3b0: 9400026c     	bl	0xd60 <aw22xxx_i2c_read>
		00000000000003b0:  R_AARCH64_CALL26	aw22xxx_i2c_read
     3b4: 394093e8     	ldrb	w8, [sp, #0x24]
     3b8: aa1303e0     	mov	x0, x19
     3bc: 52800041     	mov	w1, #0x2                // =2
     3c0: 32000102     	orr	w2, w8, #0x1
     3c4: 390093e2     	strb	w2, [sp, #0x24]
     3c8: 9400021f     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000003c8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     3cc: 5280fa00     	mov	w0, #0x7d0              // =2000
     3d0: 52817701     	mov	w1, #0xbb8              // =3000
     3d4: 52800042     	mov	w2, #0x2                // =2
     3d8: 94000000     	bl	0x3d8 <aw22xxx_fw_loaded+0x3d4>
		00000000000003d8:  R_AARCH64_CALL26	usleep_range_state
     3dc: 910093e2     	add	x2, sp, #0x24
     3e0: aa1303e0     	mov	x0, x19
     3e4: 52800081     	mov	w1, #0x4                // =4
     3e8: 390093ff     	strb	wzr, [sp, #0x24]
     3ec: 9400025d     	bl	0xd60 <aw22xxx_i2c_read>
		00000000000003ec:  R_AARCH64_CALL26	aw22xxx_i2c_read
     3f0: 394093e8     	ldrb	w8, [sp, #0x24]
     3f4: aa1303e0     	mov	x0, x19
     3f8: 52800081     	mov	w1, #0x4                // =4
     3fc: 32000102     	orr	w2, w8, #0x1
     400: 390093e2     	strb	w2, [sp, #0x24]
     404: 94000210     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000404:  R_AARCH64_CALL26	aw22xxx_i2c_write
     408: b9400288     	ldr	w8, [x20]
     40c: 529fffe9     	mov	w9, #0xffff             // =65535
     410: aa1303e0     	mov	x0, x19
     414: 52800441     	mov	w1, #0x22               // =34
     418: 0b090108     	add	w8, w8, w9
     41c: 53087d02     	lsr	w2, w8, #8
     420: 94000209     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000420:  R_AARCH64_CALL26	aw22xxx_i2c_write
     424: 39400288     	ldrb	w8, [x20]
     428: aa1303e0     	mov	x0, x19
     42c: 52800421     	mov	w1, #0x21               // =33
     430: 51000502     	sub	w2, w8, #0x1
     434: 94000204     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000434:  R_AARCH64_CALL26	aw22xxx_i2c_write
     438: aa1303e0     	mov	x0, x19
     43c: 52800481     	mov	w1, #0x24               // =36
     440: 528000e2     	mov	w2, #0x7                // =7
     444: 94000200     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000444:  R_AARCH64_CALL26	aw22xxx_i2c_write
     448: 52827100     	mov	w0, #0x1388             // =5000
     44c: 52832c81     	mov	w1, #0x1964             // =6500
     450: 52800042     	mov	w2, #0x2                // =2
     454: 94000000     	bl	0x454 <aw22xxx_fw_loaded+0x450>
		0000000000000454:  R_AARCH64_CALL26	usleep_range_state
     458: 910073e2     	add	x2, sp, #0x1c
     45c: aa1303e0     	mov	x0, x19
     460: 52800481     	mov	w1, #0x24               // =36
     464: 9400023f     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000464:  R_AARCH64_CALL26	aw22xxx_i2c_read
     468: 394073e2     	ldrb	w2, [sp, #0x1c]
     46c: 7100145f     	cmp	w2, #0x5
     470: 540004e1     	b.ne	0x50c <aw22xxx_fw_loaded+0x508>
     474: 910073e2     	add	x2, sp, #0x1c
     478: aa1303e0     	mov	x0, x19
     47c: 528004a1     	mov	w1, #0x25               // =37
     480: 94000238     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000480:  R_AARCH64_CALL26	aw22xxx_i2c_read
     484: 394073f7     	ldrb	w23, [sp, #0x1c]
     488: 910073e2     	add	x2, sp, #0x1c
     48c: aa1303e0     	mov	x0, x19
     490: 528004c1     	mov	w1, #0x26               // =38
     494: 94000233     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000494:  R_AARCH64_CALL26	aw22xxx_i2c_read
     498: f10022bf     	cmp	x21, #0x8
     49c: 54003ca3     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     4a0: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     4a4: f100211f     	cmp	x8, #0x8
     4a8: 54003c40     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     4ac: 394073e8     	ldrb	w8, [sp, #0x1c]
     4b0: b9400a82     	ldr	w2, [x20, #0x8]
     4b4: 2a0822e3     	orr	w3, w23, w8, lsl #8
     4b8: 6b02007f     	cmp	w3, w2
     4bc: 540003e1     	b.ne	0x538 <aw22xxx_fw_loaded+0x534>
     4c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x144a
     4c4: 91000000     	add	x0, x0, #0x0
		00000000000004c4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x144a
     4c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004c8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     4cc: 91000021     	add	x1, x1, #0x0
		00000000000004cc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     4d0: 2a0303e2     	mov	w2, w3
     4d4: 94000000     	bl	0x4d4 <aw22xxx_fw_loaded+0x4d0>
		00000000000004d4:  R_AARCH64_CALL26	_printk
     4d8: 394bba68     	ldrb	w8, [x19, #0x2ee]
     4dc: 35003908     	cbnz	w8, 0xbfc <aw22xxx_fw_loaded+0xbf8>
     4e0: aa1403e0     	mov	x0, x20
     4e4: 94000000     	bl	0x4e4 <aw22xxx_fw_loaded+0x4e0>
		00000000000004e4:  R_AARCH64_CALL26	kfree
     4e8: aa1303e0     	mov	x0, x19
     4ec: 52800481     	mov	w1, #0x24               // =36
     4f0: 2a1f03e2     	mov	w2, wzr
     4f4: 940001d4     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000004f4:  R_AARCH64_CALL26	aw22xxx_i2c_write
     4f8: aa1303e0     	mov	x0, x19
     4fc: 94000270     	bl	0xebc <aw22xxx_led_init>
		00000000000004fc:  R_AARCH64_CALL26	aw22xxx_led_init
     500: 52800048     	mov	w8, #0x2                // =2
     504: 390bbe68     	strb	w8, [x19, #0x2ef]
     508: 140001af     	b	0xbc4 <aw22xxx_fw_loaded+0xbc0>
     50c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     510: 910002f7     	add	x23, x23, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     514: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xfac
     518: 91000000     	add	x0, x0, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xfac
     51c: aa1703e1     	mov	x1, x23
     520: 94000000     	bl	0x520 <aw22xxx_fw_loaded+0x51c>
		0000000000000520:  R_AARCH64_CALL26	_printk
     524: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000524:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x13b6
     528: 91000000     	add	x0, x0, #0x0
		0000000000000528:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x13b6
     52c: aa1703e1     	mov	x1, x23
     530: 94000000     	bl	0x530 <aw22xxx_fw_loaded+0x52c>
		0000000000000530:  R_AARCH64_CALL26	_printk
     534: 1400000f     	b	0x570 <aw22xxx_fw_loaded+0x56c>
     538: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x12c0
     53c: 91000000     	add	x0, x0, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x12c0
     540: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000540:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     544: 91000021     	add	x1, x1, #0x0
		0000000000000544:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     548: 94000000     	bl	0x548 <aw22xxx_fw_loaded+0x544>
		0000000000000548:  R_AARCH64_CALL26	_printk
     54c: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     550: f100111f     	cmp	x8, #0x4
     554: 540036e0     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     558: b9400682     	ldr	w2, [x20, #0x4]
     55c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000055c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xdb2
     560: 91000000     	add	x0, x0, #0x0
		0000000000000560:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xdb2
     564: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000564:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     568: 91000021     	add	x1, x1, #0x0
		0000000000000568:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     56c: 94000000     	bl	0x56c <aw22xxx_fw_loaded+0x568>
		000000000000056c:  R_AARCH64_CALL26	_printk
     570: aa1303e0     	mov	x0, x19
     574: 52800481     	mov	w1, #0x24               // =36
     578: 2a1f03e2     	mov	w2, wzr
     57c: 940001b2     	bl	0xc44 <aw22xxx_i2c_write>
		000000000000057c:  R_AARCH64_CALL26	aw22xxx_i2c_write
     580: aa1303e0     	mov	x0, x19
     584: 52801fe1     	mov	w1, #0xff               // =255
     588: 2a1f03e2     	mov	w2, wzr
     58c: 390083ff     	strb	wzr, [sp, #0x20]
     590: 940001ad     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000590:  R_AARCH64_CALL26	aw22xxx_i2c_write
     594: aa1303e0     	mov	x0, x19
     598: 52800021     	mov	w1, #0x1                // =1
     59c: 52800aa2     	mov	w2, #0x55               // =85
     5a0: 940001a9     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000005a0:  R_AARCH64_CALL26	aw22xxx_i2c_write
     5a4: 5280fa00     	mov	w0, #0x7d0              // =2000
     5a8: 52817701     	mov	w1, #0xbb8              // =3000
     5ac: 52800042     	mov	w2, #0x2                // =2
     5b0: 94000000     	bl	0x5b0 <aw22xxx_fw_loaded+0x5ac>
		00000000000005b0:  R_AARCH64_CALL26	usleep_range_state
     5b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
     5b8: 91000000     	add	x0, x0, #0x0
		00000000000005b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
     5bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005bc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
     5c0: 91000021     	add	x1, x1, #0x0
		00000000000005c0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
     5c4: 52803542     	mov	w2, #0x1aa              // =426
     5c8: 52800023     	mov	w3, #0x1                // =1
     5cc: 94000000     	bl	0x5cc <aw22xxx_fw_loaded+0x5c8>
		00000000000005cc:  R_AARCH64_CALL26	_printk
     5d0: 910093e2     	add	x2, sp, #0x24
     5d4: aa1303e0     	mov	x0, x19
     5d8: 52800041     	mov	w1, #0x2                // =2
     5dc: 390093ff     	strb	wzr, [sp, #0x24]
     5e0: 940001e0     	bl	0xd60 <aw22xxx_i2c_read>
		00000000000005e0:  R_AARCH64_CALL26	aw22xxx_i2c_read
     5e4: 394093e8     	ldrb	w8, [sp, #0x24]
     5e8: aa1303e0     	mov	x0, x19
     5ec: 52800041     	mov	w1, #0x2                // =2
     5f0: 32000102     	orr	w2, w8, #0x1
     5f4: 390093e2     	strb	w2, [sp, #0x24]
     5f8: 94000193     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000005f8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     5fc: 5280fa00     	mov	w0, #0x7d0              // =2000
     600: 52817701     	mov	w1, #0xbb8              // =3000
     604: 52800042     	mov	w2, #0x2                // =2
     608: 94000000     	bl	0x608 <aw22xxx_fw_loaded+0x604>
		0000000000000608:  R_AARCH64_CALL26	usleep_range_state
     60c: 910093e2     	add	x2, sp, #0x24
     610: aa1303e0     	mov	x0, x19
     614: 52800081     	mov	w1, #0x4                // =4
     618: 390093ff     	strb	wzr, [sp, #0x24]
     61c: 940001d1     	bl	0xd60 <aw22xxx_i2c_read>
		000000000000061c:  R_AARCH64_CALL26	aw22xxx_i2c_read
     620: 394093e8     	ldrb	w8, [sp, #0x24]
     624: aa1303e0     	mov	x0, x19
     628: 52800081     	mov	w1, #0x4                // =4
     62c: 32000102     	orr	w2, w8, #0x1
     630: 390093e2     	strb	w2, [sp, #0x24]
     634: 94000184     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000634:  R_AARCH64_CALL26	aw22xxx_i2c_write
     638: aa1303e0     	mov	x0, x19
     63c: 52801001     	mov	w1, #0x80               // =128
     640: 52801d82     	mov	w2, #0xec               // =236
     644: 94000180     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000644:  R_AARCH64_CALL26	aw22xxx_i2c_write
     648: aa1303e0     	mov	x0, x19
     64c: 528006a1     	mov	w1, #0x35               // =53
     650: 52800522     	mov	w2, #0x29               // =41
     654: 9400017c     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000654:  R_AARCH64_CALL26	aw22xxx_i2c_write
     658: f10032bf     	cmp	x21, #0xc
     65c: 54002ea3     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     660: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     664: f100311f     	cmp	x8, #0xc
     668: 54002e40     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     66c: b9400e82     	ldr	w2, [x20, #0xc]
     670: aa1303e0     	mov	x0, x19
     674: 52800701     	mov	w1, #0x38               // =56
     678: 94000173     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000678:  R_AARCH64_CALL26	aw22xxx_i2c_write
     67c: aa1303e0     	mov	x0, x19
     680: 52800441     	mov	w1, #0x22               // =34
     684: 2a1f03e2     	mov	w2, wzr
     688: 9400016f     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000688:  R_AARCH64_CALL26	aw22xxx_i2c_write
     68c: aa1303e0     	mov	x0, x19
     690: 52800421     	mov	w1, #0x21               // =33
     694: 2a1f03e2     	mov	w2, wzr
     698: 9400016b     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000698:  R_AARCH64_CALL26	aw22xxx_i2c_write
     69c: aa1303e0     	mov	x0, x19
     6a0: 52800401     	mov	w1, #0x20               // =32
     6a4: 52800062     	mov	w2, #0x3                // =3
     6a8: 94000167     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000006a8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     6ac: aa1303e0     	mov	x0, x19
     6b0: 52800601     	mov	w1, #0x30               // =48
     6b4: 52800062     	mov	w2, #0x3                // =3
     6b8: 94000163     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000006b8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     6bc: aa1303e0     	mov	x0, x19
     6c0: 52800461     	mov	w1, #0x23               // =35
     6c4: 2a1f03e2     	mov	w2, wzr
     6c8: 9400015f     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000006c8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     6cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006cc:  R_AARCH64_ADR_PREL_PG_HI21	g_ver_var
     6d0: b9400108     	ldr	w8, [x8]
		00000000000006d0:  R_AARCH64_LDST32_ABS_LO12_NC	g_ver_var
     6d4: 7100311f     	cmp	w8, #0xc
     6d8: 540000c3     	b.lo	0x6f0 <aw22xxx_fw_loaded+0x6ec>
     6dc: 5281f400     	mov	w0, #0xfa0              // =4000
     6e0: 52823281     	mov	w1, #0x1194             // =4500
     6e4: 52800042     	mov	w2, #0x2                // =2
     6e8: 94000000     	bl	0x6e8 <aw22xxx_fw_loaded+0x6e4>
		00000000000006e8:  R_AARCH64_CALL26	usleep_range_state
     6ec: 14000003     	b	0x6f8 <aw22xxx_fw_loaded+0x6f4>
     6f0: 52800500     	mov	w0, #0x28               // =40
     6f4: 94000000     	bl	0x6f4 <aw22xxx_fw_loaded+0x6f0>
		00000000000006f4:  R_AARCH64_CALL26	msleep
     6f8: aa1303e0     	mov	x0, x19
     6fc: 52800601     	mov	w1, #0x30               // =48
     700: 2a1f03e2     	mov	w2, wzr
     704: 94000150     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000704:  R_AARCH64_CALL26	aw22xxx_i2c_write
     708: aa1303e0     	mov	x0, x19
     70c: 52800441     	mov	w1, #0x22               // =34
     710: 52800802     	mov	w2, #0x40               // =64
     714: 9400014c     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000714:  R_AARCH64_CALL26	aw22xxx_i2c_write
     718: aa1303e0     	mov	x0, x19
     71c: 52800421     	mov	w1, #0x21               // =33
     720: 2a1f03e2     	mov	w2, wzr
     724: 94000148     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000724:  R_AARCH64_CALL26	aw22xxx_i2c_write
     728: aa1303e0     	mov	x0, x19
     72c: 52800601     	mov	w1, #0x30               // =48
     730: 52800042     	mov	w2, #0x2                // =2
     734: 94000144     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000734:  R_AARCH64_CALL26	aw22xxx_i2c_write
     738: aa1303e0     	mov	x0, x19
     73c: 52800461     	mov	w1, #0x23               // =35
     740: 2a1f03e2     	mov	w2, wzr
     744: 52800478     	mov	w24, #0x23              // =35
     748: 9400013f     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000748:  R_AARCH64_CALL26	aw22xxx_i2c_write
     74c: 5282ee00     	mov	w0, #0x1770             // =6000
     750: 52832c81     	mov	w1, #0x1964             // =6500
     754: 52800042     	mov	w2, #0x2                // =2
     758: 94000000     	bl	0x758 <aw22xxx_fw_loaded+0x754>
		0000000000000758:  R_AARCH64_CALL26	usleep_range_state
     75c: aa1303e0     	mov	x0, x19
     760: 52800601     	mov	w1, #0x30               // =48
     764: 2a1f03e2     	mov	w2, wzr
     768: 94000137     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000768:  R_AARCH64_CALL26	aw22xxx_i2c_write
     76c: aa1303e0     	mov	x0, x19
     770: 52800441     	mov	w1, #0x22               // =34
     774: 52800842     	mov	w2, #0x42               // =66
     778: 94000133     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000778:  R_AARCH64_CALL26	aw22xxx_i2c_write
     77c: aa1303e0     	mov	x0, x19
     780: 52800421     	mov	w1, #0x21               // =33
     784: 2a1f03e2     	mov	w2, wzr
     788: 9400012f     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000788:  R_AARCH64_CALL26	aw22xxx_i2c_write
     78c: aa1303e0     	mov	x0, x19
     790: 52800601     	mov	w1, #0x30               // =48
     794: 52800042     	mov	w2, #0x2                // =2
     798: 9400012b     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000798:  R_AARCH64_CALL26	aw22xxx_i2c_write
     79c: aa1303e0     	mov	x0, x19
     7a0: 52800461     	mov	w1, #0x23               // =35
     7a4: 2a1f03e2     	mov	w2, wzr
     7a8: 94000127     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000007a8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     7ac: 5282ee00     	mov	w0, #0x1770             // =6000
     7b0: 52832c81     	mov	w1, #0x1964             // =6500
     7b4: 52800042     	mov	w2, #0x2                // =2
     7b8: 94000000     	bl	0x7b8 <aw22xxx_fw_loaded+0x7b4>
		00000000000007b8:  R_AARCH64_CALL26	usleep_range_state
     7bc: aa1303e0     	mov	x0, x19
     7c0: 52800601     	mov	w1, #0x30               // =48
     7c4: 2a1f03e2     	mov	w2, wzr
     7c8: 9400011f     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000007c8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     7cc: aa1303e0     	mov	x0, x19
     7d0: 52800441     	mov	w1, #0x22               // =34
     7d4: 52800882     	mov	w2, #0x44               // =68
     7d8: 9400011b     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000007d8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     7dc: aa1303e0     	mov	x0, x19
     7e0: 52800421     	mov	w1, #0x21               // =33
     7e4: 2a1f03e2     	mov	w2, wzr
     7e8: 94000117     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000007e8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     7ec: aa1303e0     	mov	x0, x19
     7f0: 52800601     	mov	w1, #0x30               // =48
     7f4: 52800042     	mov	w2, #0x2                // =2
     7f8: 94000113     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000007f8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     7fc: aa1303e0     	mov	x0, x19
     800: 52800461     	mov	w1, #0x23               // =35
     804: 2a1f03e2     	mov	w2, wzr
     808: 9400010f     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000808:  R_AARCH64_CALL26	aw22xxx_i2c_write
     80c: 5282ee00     	mov	w0, #0x1770             // =6000
     810: 52832c81     	mov	w1, #0x1964             // =6500
     814: 52800042     	mov	w2, #0x2                // =2
     818: 94000000     	bl	0x818 <aw22xxx_fw_loaded+0x814>
		0000000000000818:  R_AARCH64_CALL26	usleep_range_state
     81c: aa1303e0     	mov	x0, x19
     820: 52800601     	mov	w1, #0x30               // =48
     824: 2a1f03e2     	mov	w2, wzr
     828: 94000107     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000828:  R_AARCH64_CALL26	aw22xxx_i2c_write
     82c: aa1303e0     	mov	x0, x19
     830: 52800401     	mov	w1, #0x20               // =32
     834: 2a1f03e2     	mov	w2, wzr
     838: 94000103     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000838:  R_AARCH64_CALL26	aw22xxx_i2c_write
     83c: aa1303e0     	mov	x0, x19
     840: 52800401     	mov	w1, #0x20               // =32
     844: 52800062     	mov	w2, #0x3                // =3
     848: 940000ff     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000848:  R_AARCH64_CALL26	aw22xxx_i2c_write
     84c: b9400288     	ldr	w8, [x20]
     850: 35000be8     	cbnz	w8, 0x9cc <aw22xxx_fw_loaded+0x9c8>
     854: aa1303e0     	mov	x0, x19
     858: 52800401     	mov	w1, #0x20               // =32
     85c: 2a1f03e2     	mov	w2, wzr
     860: 940000f9     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000860:  R_AARCH64_CALL26	aw22xxx_i2c_write
     864: aa1303e0     	mov	x0, x19
     868: 52800021     	mov	w1, #0x1                // =1
     86c: 52800aa2     	mov	w2, #0x55               // =85
     870: 940000f5     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000870:  R_AARCH64_CALL26	aw22xxx_i2c_write
     874: 5280fa00     	mov	w0, #0x7d0              // =2000
     878: 52817701     	mov	w1, #0xbb8              // =3000
     87c: 52800042     	mov	w2, #0x2                // =2
     880: 94000000     	bl	0x880 <aw22xxx_fw_loaded+0x87c>
		0000000000000880:  R_AARCH64_CALL26	usleep_range_state
     884: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000884:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x148c
     888: 91000000     	add	x0, x0, #0x0
		0000000000000888:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x148c
     88c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000088c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x181c
     890: 91000021     	add	x1, x1, #0x0
		0000000000000890:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x181c
     894: 52803542     	mov	w2, #0x1aa              // =426
     898: 52800023     	mov	w3, #0x1                // =1
     89c: 94000000     	bl	0x89c <aw22xxx_fw_loaded+0x898>
		000000000000089c:  R_AARCH64_CALL26	_printk
     8a0: 910093e2     	add	x2, sp, #0x24
     8a4: aa1303e0     	mov	x0, x19
     8a8: 52800041     	mov	w1, #0x2                // =2
     8ac: 390093ff     	strb	wzr, [sp, #0x24]
     8b0: 9400012c     	bl	0xd60 <aw22xxx_i2c_read>
		00000000000008b0:  R_AARCH64_CALL26	aw22xxx_i2c_read
     8b4: 394093e8     	ldrb	w8, [sp, #0x24]
     8b8: aa1303e0     	mov	x0, x19
     8bc: 52800041     	mov	w1, #0x2                // =2
     8c0: 32000102     	orr	w2, w8, #0x1
     8c4: 390093e2     	strb	w2, [sp, #0x24]
     8c8: 940000df     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000008c8:  R_AARCH64_CALL26	aw22xxx_i2c_write
     8cc: 5280fa00     	mov	w0, #0x7d0              // =2000
     8d0: 52817701     	mov	w1, #0xbb8              // =3000
     8d4: 52800042     	mov	w2, #0x2                // =2
     8d8: 94000000     	bl	0x8d8 <aw22xxx_fw_loaded+0x8d4>
		00000000000008d8:  R_AARCH64_CALL26	usleep_range_state
     8dc: 910093e2     	add	x2, sp, #0x24
     8e0: aa1303e0     	mov	x0, x19
     8e4: 52800081     	mov	w1, #0x4                // =4
     8e8: 390093ff     	strb	wzr, [sp, #0x24]
     8ec: 9400011d     	bl	0xd60 <aw22xxx_i2c_read>
		00000000000008ec:  R_AARCH64_CALL26	aw22xxx_i2c_read
     8f0: 394093e8     	ldrb	w8, [sp, #0x24]
     8f4: aa1303e0     	mov	x0, x19
     8f8: 52800081     	mov	w1, #0x4                // =4
     8fc: 32000102     	orr	w2, w8, #0x1
     900: 390093e2     	strb	w2, [sp, #0x24]
     904: 940000d0     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000904:  R_AARCH64_CALL26	aw22xxx_i2c_write
     908: b9400288     	ldr	w8, [x20]
     90c: 529fffe9     	mov	w9, #0xffff             // =65535
     910: aa1303e0     	mov	x0, x19
     914: 52800441     	mov	w1, #0x22               // =34
     918: 0b090108     	add	w8, w8, w9
     91c: 53087d02     	lsr	w2, w8, #8
     920: 940000c9     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000920:  R_AARCH64_CALL26	aw22xxx_i2c_write
     924: 39400288     	ldrb	w8, [x20]
     928: aa1303e0     	mov	x0, x19
     92c: 52800421     	mov	w1, #0x21               // =33
     930: 51000502     	sub	w2, w8, #0x1
     934: 940000c4     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000934:  R_AARCH64_CALL26	aw22xxx_i2c_write
     938: aa1303e0     	mov	x0, x19
     93c: 52800481     	mov	w1, #0x24               // =36
     940: 528000e2     	mov	w2, #0x7                // =7
     944: 940000c0     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000944:  R_AARCH64_CALL26	aw22xxx_i2c_write
     948: 52827100     	mov	w0, #0x1388             // =5000
     94c: 52832c81     	mov	w1, #0x1964             // =6500
     950: 52800042     	mov	w2, #0x2                // =2
     954: 94000000     	bl	0x954 <aw22xxx_fw_loaded+0x950>
		0000000000000954:  R_AARCH64_CALL26	usleep_range_state
     958: 910083e2     	add	x2, sp, #0x20
     95c: aa1303e0     	mov	x0, x19
     960: 52800481     	mov	w1, #0x24               // =36
     964: 940000ff     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000964:  R_AARCH64_CALL26	aw22xxx_i2c_read
     968: 394083e2     	ldrb	w2, [sp, #0x20]
     96c: 7100145f     	cmp	w2, #0x5
     970: 54000e61     	b.ne	0xb3c <aw22xxx_fw_loaded+0xb38>
     974: 910083e2     	add	x2, sp, #0x20
     978: aa1303e0     	mov	x0, x19
     97c: 528004a1     	mov	w1, #0x25               // =37
     980: 940000f8     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000980:  R_AARCH64_CALL26	aw22xxx_i2c_read
     984: 394083f6     	ldrb	w22, [sp, #0x20]
     988: 910083e2     	add	x2, sp, #0x20
     98c: aa1303e0     	mov	x0, x19
     990: 528004c1     	mov	w1, #0x26               // =38
     994: 940000f3     	bl	0xd60 <aw22xxx_i2c_read>
		0000000000000994:  R_AARCH64_CALL26	aw22xxx_i2c_read
     998: f10022bf     	cmp	x21, #0x8
     99c: 540014a3     	b.lo	0xc30 <aw22xxx_fw_loaded+0xc2c>
     9a0: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     9a4: f100211f     	cmp	x8, #0x8
     9a8: 54001440     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     9ac: 394083e8     	ldrb	w8, [sp, #0x20]
     9b0: 2a0822c2     	orr	w2, w22, w8, lsl #8
     9b4: b9400a88     	ldr	w8, [x20, #0x8]
     9b8: 6b08005f     	cmp	w2, w8
     9bc: 54000d61     	b.ne	0xb68 <aw22xxx_fw_loaded+0xb64>
     9c0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x144a
     9c4: 91000000     	add	x0, x0, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x144a
     9c8: 1400005f     	b	0xb44 <aw22xxx_fw_loaded+0xb40>
     9cc: 2a1f03f7     	mov	w23, wzr
     9d0: 52801019     	mov	w25, #0x80              // =128
     9d4: d5384108     	mrs	x8, SP_EL0
     9d8: f9000be8     	str	x8, [sp, #0x10]
     9dc: 1400000f     	b	0xa18 <aw22xxx_fw_loaded+0xa14>
     9e0: aa1c03e0     	mov	x0, x28
     9e4: 94000000     	bl	0x9e4 <aw22xxx_fw_loaded+0x9e0>
		00000000000009e4:  R_AARCH64_CALL26	kfree
     9e8: aa1303e0     	mov	x0, x19
     9ec: 52800221     	mov	w1, #0x11               // =17
     9f0: 2a1f03e2     	mov	w2, wzr
     9f4: 94000094     	bl	0xc44 <aw22xxx_i2c_write>
		00000000000009f4:  R_AARCH64_CALL26	aw22xxx_i2c_write
     9f8: aa1303e0     	mov	x0, x19
     9fc: 52800601     	mov	w1, #0x30               // =48
     a00: 2a1f03e2     	mov	w2, wzr
     a04: 94000090     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000a04:  R_AARCH64_CALL26	aw22xxx_i2c_write
     a08: b9400288     	ldr	w8, [x20]
     a0c: 0b170377     	add	w23, w27, w23
     a10: 6b0802ff     	cmp	w23, w8
     a14: 54fff202     	b.hs	0x854 <aw22xxx_fw_loaded+0x850>
     a18: 53087ee2     	lsr	w2, w23, #8
     a1c: aa1303e0     	mov	x0, x19
     a20: 52800441     	mov	w1, #0x22               // =34
     a24: 94000088     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000a24:  R_AARCH64_CALL26	aw22xxx_i2c_write
     a28: aa1303e0     	mov	x0, x19
     a2c: 52800421     	mov	w1, #0x21               // =33
     a30: 2a1703e2     	mov	w2, w23
     a34: 94000084     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000a34:  R_AARCH64_CALL26	aw22xxx_i2c_write
     a38: aa1303e0     	mov	x0, x19
     a3c: 52800221     	mov	w1, #0x11               // =17
     a40: 52800022     	mov	w2, #0x1                // =1
     a44: 94000080     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000a44:  R_AARCH64_CALL26	aw22xxx_i2c_write
     a48: aa1303e0     	mov	x0, x19
     a4c: 52800601     	mov	w1, #0x30               // =48
     a50: 52800082     	mov	w2, #0x4                // =4
     a54: 9400007c     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000a54:  R_AARCH64_CALL26	aw22xxx_i2c_write
     a58: b9400288     	ldr	w8, [x20]
     a5c: 4b170108     	sub	w8, w8, w23
     a60: 7102011f     	cmp	w8, #0x80
     a64: 1a99311b     	csel	w27, w8, w25, lo
     a68: d503201f     	nop
     a6c: 1100077a     	add	w26, w27, #0x1
     a70: 52819801     	mov	w1, #0xcc0              // =3264
     a74: aa1a03e0     	mov	x0, x26
     a78: 94000000     	bl	0xa78 <aw22xxx_fw_loaded+0xa74>
		0000000000000a78:  R_AARCH64_CALL26	__kmalloc_noprof
     a7c: aa0003fc     	mov	x28, x0
     a80: b400053c     	cbz	x28, 0xb24 <aw22xxx_fw_loaded+0xb20>
     a84: d1000741     	sub	x1, x26, #0x1
     a88: aa1c03e0     	mov	x0, x28
     a8c: eb1b003f     	cmp	x1, x27
     a90: 38001418     	strb	w24, [x0], #0x1
     a94: 54000c23     	b.lo	0xc18 <aw22xxx_fw_loaded+0xc14>
     a98: 2a1703e8     	mov	w8, w23
     a9c: 91004109     	add	x9, x8, #0x10
     aa0: eb0902a9     	subs	x9, x21, x9
     aa4: 9a8933e9     	csel	x9, xzr, x9, lo
     aa8: eb1b013f     	cmp	x9, x27
     aac: 54000bc3     	b.lo	0xc24 <aw22xxx_fw_loaded+0xc20>
     ab0: 8b0802c1     	add	x1, x22, x8
     ab4: aa1b03e2     	mov	x2, x27
     ab8: 94000000     	bl	0xab8 <aw22xxx_fw_loaded+0xab4>
		0000000000000ab8:  R_AARCH64_CALL26	memcpy
     abc: f9400260     	ldr	x0, [x19]
     ac0: 11000762     	add	w2, w27, #0x1
     ac4: aa1c03e1     	mov	x1, x28
     ac8: 2a1f03e3     	mov	w3, wzr
     acc: 94000000     	bl	0xacc <aw22xxx_fw_loaded+0xac8>
		0000000000000acc:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
     ad0: 36fff880     	tbz	w0, #0x1f, 0x9e0 <aw22xxx_fw_loaded+0x9dc>
     ad4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x983
     ad8: 91000000     	add	x0, x0, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x983
     adc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000adc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe8b
     ae0: 91000021     	add	x1, x1, #0x0
		0000000000000ae0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe8b
     ae4: 94000000     	bl	0xae4 <aw22xxx_fw_loaded+0xae0>
		0000000000000ae4:  R_AARCH64_CALL26	_printk
     ae8: 17ffffbe     	b	0x9e0 <aw22xxx_fw_loaded+0x9dc>
     aec: f9400be9     	ldr	x9, [sp, #0x10]
     af0: 1100077a     	add	w26, w27, #0x1
     af4: 52819801     	mov	w1, #0xcc0              // =3264
     af8: aa1a03e0     	mov	x0, x26
     afc: f9402928     	ldr	x8, [x9, #0x50]
     b00: f90007e8     	str	x8, [sp, #0x8]
     b04: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b04:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_i2c_writes._alloc_tag
     b08: 91000108     	add	x8, x8, #0x0
		0000000000000b08:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_i2c_writes._alloc_tag
     b0c: f9002928     	str	x8, [x9, #0x50]
     b10: 94000000     	bl	0xb10 <aw22xxx_fw_loaded+0xb0c>
		0000000000000b10:  R_AARCH64_CALL26	__kmalloc_noprof
     b14: a940a7e8     	ldp	x8, x9, [sp, #0x8]
     b18: aa0003fc     	mov	x28, x0
     b1c: f9002928     	str	x8, [x9, #0x50]
     b20: b5fffb3c     	cbnz	x28, 0xa84 <aw22xxx_fw_loaded+0xa80>
     b24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xb45
     b28: 91000000     	add	x0, x0, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xb45
     b2c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b2c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe8b
     b30: 91000021     	add	x1, x1, #0x0
		0000000000000b30:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe8b
     b34: 94000000     	bl	0xb34 <aw22xxx_fw_loaded+0xb30>
		0000000000000b34:  R_AARCH64_CALL26	_printk
     b38: 17ffffac     	b	0x9e8 <aw22xxx_fw_loaded+0x9e4>
     b3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b3c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xfac
     b40: 91000000     	add	x0, x0, #0x0
		0000000000000b40:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xfac
     b44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b44:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x19a9
     b48: 91000021     	add	x1, x1, #0x0
		0000000000000b48:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x19a9
     b4c: 94000000     	bl	0xb4c <aw22xxx_fw_loaded+0xb48>
		0000000000000b4c:  R_AARCH64_CALL26	_printk
     b50: aa1303e0     	mov	x0, x19
     b54: 52800481     	mov	w1, #0x24               // =36
     b58: 2a1f03e2     	mov	w2, wzr
     b5c: 9400003a     	bl	0xc44 <aw22xxx_i2c_write>
		0000000000000b5c:  R_AARCH64_CALL26	aw22xxx_i2c_write
     b60: 52800048     	mov	w8, #0x2                // =2
     b64: 1400000d     	b	0xb98 <aw22xxx_fw_loaded+0xb94>
     b68: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000b68:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x19a9
     b6c: 910002b5     	add	x21, x21, #0x0
		0000000000000b6c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x19a9
     b70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x45e
     b74: 91000000     	add	x0, x0, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x45e
     b78: aa1503e1     	mov	x1, x21
     b7c: 2a0803e2     	mov	w2, w8
     b80: 94000000     	bl	0xb80 <aw22xxx_fw_loaded+0xb7c>
		0000000000000b80:  R_AARCH64_CALL26	_printk
     b84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x13cc
     b88: 91000000     	add	x0, x0, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x13cc
     b8c: aa1503e1     	mov	x1, x21
     b90: 94000000     	bl	0xb90 <aw22xxx_fw_loaded+0xb8c>
		0000000000000b90:  R_AARCH64_CALL26	_printk
     b94: 52800068     	mov	w8, #0x3                // =3
     b98: aa1403e0     	mov	x0, x20
     b9c: 390bbe68     	strb	w8, [x19, #0x2ef]
     ba0: 94000000     	bl	0xba0 <aw22xxx_fw_loaded+0xb9c>
		0000000000000ba0:  R_AARCH64_CALL26	kfree
     ba4: aa1303e0     	mov	x0, x19
     ba8: 390bba7f     	strb	wzr, [x19, #0x2ee]
     bac: 940000c4     	bl	0xebc <aw22xxx_led_init>
		0000000000000bac:  R_AARCH64_CALL26	aw22xxx_led_init
     bb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1565
     bb4: 91000000     	add	x0, x0, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1565
     bb8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bb8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1377
     bbc: 91000021     	add	x1, x1, #0x0
		0000000000000bbc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1377
     bc0: 94000000     	bl	0xbc0 <aw22xxx_fw_loaded+0xbbc>
		0000000000000bc0:  R_AARCH64_CALL26	_printk
     bc4: d5384108     	mrs	x8, SP_EL0
     bc8: f9438908     	ldr	x8, [x8, #0x710]
     bcc: f85f83a9     	ldur	x9, [x29, #-0x8]
     bd0: eb09011f     	cmp	x8, x9
     bd4: 54000341     	b.ne	0xc3c <aw22xxx_fw_loaded+0xc38>
     bd8: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
     bdc: a94957f6     	ldp	x22, x21, [sp, #0x90]
     be0: a9485ff8     	ldp	x24, x23, [sp, #0x80]
     be4: a94767fa     	ldp	x26, x25, [sp, #0x70]
     be8: a9466ffc     	ldp	x28, x27, [sp, #0x60]
     bec: a9457bfd     	ldp	x29, x30, [sp, #0x50]
     bf0: 9102c3ff     	add	sp, sp, #0xb0
     bf4: d50323bf     	autiasp
     bf8: d65f03c0     	ret
     bfc: 927ef6a8     	and	x8, x21, #0xfffffffffffffffc
     c00: f100111f     	cmp	x8, #0x4
     c04: 54000160     	b.eq	0xc30 <aw22xxx_fw_loaded+0xc2c>
     c08: b9400682     	ldr	w2, [x20, #0x4]
     c0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c0c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa22
     c10: 91000000     	add	x0, x0, #0x0
		0000000000000c10:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa22
     c14: 17fffe54     	b	0x564 <aw22xxx_fw_loaded+0x560>
     c18: 52800220     	mov	w0, #0x11               // =17
     c1c: aa1b03e2     	mov	x2, x27
     c20: 94000000     	bl	0xc20 <aw22xxx_fw_loaded+0xc1c>
		0000000000000c20:  R_AARCH64_CALL26	__fortify_panic
     c24: 52800200     	mov	w0, #0x10               // =16
     c28: aa1b03e2     	mov	x2, x27
     c2c: 94000000     	bl	0xc2c <aw22xxx_fw_loaded+0xc28>
		0000000000000c2c:  R_AARCH64_CALL26	__fortify_panic
     c30: d4200020     	brk	#0x1
     c34: 52800220     	mov	w0, #0x11               // =17
     c38: 94000000     	bl	0xc38 <aw22xxx_fw_loaded+0xc34>
		0000000000000c38:  R_AARCH64_CALL26	__fortify_panic
     c3c: 94000000     	bl	0xc3c <aw22xxx_fw_loaded+0xc38>
		0000000000000c3c:  R_AARCH64_CALL26	__stack_chk_fail
