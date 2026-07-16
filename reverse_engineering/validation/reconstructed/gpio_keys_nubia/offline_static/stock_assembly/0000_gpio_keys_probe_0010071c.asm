
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gpio_keys_probe>:
       4: d503233f     	paciasp
       8: d10383ff     	sub	sp, sp, #0xe0
       c: a9087bfd     	stp	x29, x30, [sp, #0x80]
      10: a9096ffc     	stp	x28, x27, [sp, #0x90]
      14: a90a67fa     	stp	x26, x25, [sp, #0xa0]
      18: a90b5ff8     	stp	x24, x23, [sp, #0xb0]
      1c: a90c57f6     	stp	x22, x21, [sp, #0xc0]
      20: a90d4ff4     	stp	x20, x19, [sp, #0xd0]
      24: 910203fd     	add	x29, sp, #0x80
      28: d5384108     	mrs	x8, SP_EL0
      2c: aa0003fa     	mov	x26, x0
      30: 91004017     	add	x23, x0, #0x10
      34: f9438908     	ldr	x8, [x8, #0x710]
      38: f81f83a8     	stur	x8, [x29, #-0x8]
      3c: f9405018     	ldr	x24, [x0, #0xa0]
      40: b4004318     	cbz	x24, 0x8a0 <gpio_keys_probe+0x89c>
      44: b9800b08     	ldrsw	x8, [x24, #0x8]
      48: 52802209     	mov	w9, #0x110              // =272
      4c: aa1703e0     	mov	x0, x23
      50: 5281b802     	mov	w2, #0xdc0              // =3520
      54: 9bc97d09     	umulh	x9, x8, x9
      58: 8b081108     	add	x8, x8, x8, lsl #4
      5c: d37ced08     	lsl	x8, x8, #4
      60: b1012108     	adds	x8, x8, #0x48
      64: da9f3108     	csinv	x8, x8, xzr, lo
      68: eb0903ff     	cmp	xzr, x9
      6c: da9f0113     	csinv	x19, x8, xzr, eq
      70: aa1303e1     	mov	x1, x19
      74: 94000000     	bl	0x74 <gpio_keys_probe+0x70>
		0000000000000074:  R_AARCH64_CALL26	devm_kmalloc
      78: b4005c60     	cbz	x0, 0xc04 <gpio_keys_probe+0xc00>
      7c: b9400b08     	ldr	w8, [x24, #0x8]
      80: aa0003f4     	mov	x20, x0
      84: 37f86c08     	tbnz	w8, #0x1f, 0xe04 <gpio_keys_probe+0xe00>
      88: d37ff901     	lsl	x1, x8, #1
      8c: aa1703e0     	mov	x0, x23
      90: 5281b802     	mov	w2, #0xdc0              // =3520
      94: 94000000     	bl	0x94 <gpio_keys_probe+0x90>
		0000000000000094:  R_AARCH64_CALL26	devm_kmalloc
      98: f9002280     	str	x0, [x20, #0x40]
      9c: b4005520     	cbz	x0, 0xb40 <gpio_keys_probe+0xb3c>
      a0: aa1703e0     	mov	x0, x23
      a4: 94000000     	bl	0xa4 <gpio_keys_probe+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	devm_input_allocate_device
      a8: b4005b40     	cbz	x0, 0xc10 <gpio_keys_probe+0xc0c>
      ac: 927df268     	and	x8, x19, #0xfffffffffffffff8
      b0: f9000298     	str	x24, [x20]
      b4: f100211f     	cmp	x8, #0x8
      b8: 54006a40     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
      bc: aa0003f5     	mov	x21, x0
      c0: f9000680     	str	x0, [x20, #0x8]
      c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3bd
      c8: 91000021     	add	x1, x1, #0x0
		00000000000000c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3bd
      cc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      d0: 91000042     	add	x2, x2, #0x0
		00000000000000d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      d4: 91004280     	add	x0, x20, #0x10
      d8: 94000000     	bl	0xd8 <gpio_keys_probe+0xd4>
		00000000000000d8:  R_AARCH64_CALL26	__mutex_init
      dc: f9005754     	str	x20, [x26, #0xa8]
      e0: f90166b4     	str	x20, [x21, #0x2c8]
      e4: f9401708     	ldr	x8, [x24, #0x28]
      e8: b5000048     	cbnz	x8, 0xf0 <gpio_keys_probe+0xec>
      ec: f9400348     	ldr	x8, [x26]
      f0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66a
      f4: 91000129     	add	x9, x9, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66a
      f8: f9014ab7     	str	x23, [x21, #0x290]
      fc: a90026a8     	stp	x8, x9, [x21]
     100: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe60
     104: 91000108     	add	x8, x8, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe60
     108: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xf24
     10c: 91000129     	add	x9, x9, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xf24
     110: a91ca6a8     	stp	x8, x9, [x21, #0x1c8]
     114: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
     118: f2800328     	movk	x8, #0x19
     11c: f2e02008     	movk	x8, #0x100, lsl #48
     120: f9000ea8     	str	x8, [x21, #0x18]
     124: f9402288     	ldr	x8, [x20, #0x40]
     128: f90072a8     	str	x8, [x21, #0xe0]
     12c: 52800048     	mov	w8, #0x2                // =2
     130: b900daa8     	str	w8, [x21, #0xd8]
     134: b9400b08     	ldr	w8, [x24, #0x8]
     138: b900d6a8     	str	w8, [x21, #0xd4]
     13c: 39404308     	ldrb	w8, [x24, #0x10]
     140: 36000088     	tbz	w8, #0x0, 0x150 <gpio_keys_probe+0x14c>
     144: f94016a8     	ldr	x8, [x21, #0x28]
     148: b26c0108     	orr	x8, x8, #0x100000
     14c: f90016a8     	str	x8, [x21, #0x28]
     150: b9400b08     	ldr	w8, [x24, #0x8]
     154: 7100051f     	cmp	w8, #0x1
     158: 540052ab     	b.lt	0xbac <gpio_keys_probe+0xba8>
     15c: f81c83b5     	stur	x21, [x29, #-0x38]
     160: 2a1f03f5     	mov	w21, wzr
     164: aa1f03e1     	mov	x1, xzr
     168: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     16c: 9100037b     	add	x27, x27, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     170: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e6
     174: 9100039c     	add	x28, x28, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e6
     178: 91012288     	add	x8, x20, #0x48
     17c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
     180: 910002d6     	add	x22, x22, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
     184: a93dcfbf     	stp	xzr, x19, [x29, #-0x28]
     188: a900d3f7     	stp	x23, x20, [sp, #0x8]
     18c: f90013e8     	str	x8, [sp, #0x20]
     190: f90023fa     	str	x26, [sp, #0x40]
     194: f9405348     	ldr	x8, [x26, #0xa0]
     198: f9400313     	ldr	x19, [x24]
     19c: b50000e8     	cbnz	x8, 0x1b8 <gpio_keys_probe+0x1b4>
     1a0: aa1703e0     	mov	x0, x23
     1a4: 94000000     	bl	0x1a4 <gpio_keys_probe+0x1a0>
		00000000000001a4:  R_AARCH64_CALL26	device_get_next_child_node
     1a8: f85e03b4     	ldur	x20, [x29, #-0x20]
     1ac: aa0003e1     	mov	x1, x0
     1b0: b5000060     	cbnz	x0, 0x1bc <gpio_keys_probe+0x1b8>
     1b4: 140002b7     	b	0xc90 <gpio_keys_probe+0xc8c>
     1b8: f85e03b4     	ldur	x20, [x29, #-0x20]
     1bc: f85d83a8     	ldur	x8, [x29, #-0x28]
     1c0: 52800709     	mov	w9, #0x38               // =56
     1c4: b9002ff5     	str	w21, [sp, #0x2c]
     1c8: 9b094d19     	madd	x25, x8, x9, x19
     1cc: 8b081108     	add	x8, x8, x8, lsl #4
     1d0: d37ced0a     	lsl	x10, x8, #4
     1d4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58a
     1d8: 91000108     	add	x8, x8, #0x0
		00000000000001d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58a
     1dc: f81e83aa     	stur	x10, [x29, #-0x18]
     1e0: f9400b29     	ldr	x9, [x25, #0x10]
     1e4: f100013f     	cmp	x9, #0x0
     1e8: 9a890108     	csel	x8, x8, x9, eq
     1ec: f81d03a8     	stur	x8, [x29, #-0x30]
     1f0: b1014148     	adds	x8, x10, #0x50
     1f4: 54006064     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     1f8: eb08029f     	cmp	x20, x8
     1fc: 54006023     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     200: f85e83aa     	ldur	x10, [x29, #-0x18]
     204: f94013e8     	ldr	x8, [sp, #0x20]
     208: 91012149     	add	x9, x10, #0x48
     20c: 8b0a0115     	add	x21, x8, x10
     210: f85c83aa     	ldur	x10, [x29, #-0x38]
     214: eb090288     	subs	x8, x20, x9
     218: f90006aa     	str	x10, [x21, #0x8]
     21c: b7f85f29     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     220: 54005f03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     224: f100211f     	cmp	x8, #0x8
     228: 54005ec3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     22c: f85e83a8     	ldur	x8, [x29, #-0x18]
     230: f90002b9     	str	x25, [x21]
     234: 91053109     	add	x9, x8, #0x14c
     238: eb090288     	subs	x8, x20, x9
     23c: b7f85e29     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     240: 54005e03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     244: f100111f     	cmp	x8, #0x4
     248: 54005dc3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     24c: b90106bf     	str	wzr, [x21, #0x104]
     250: f9001be1     	str	x1, [sp, #0x30]
     254: b5000301     	cbnz	x1, 0x2b4 <gpio_keys_probe+0x2b0>
     258: b9400721     	ldr	w1, [x25, #0x4]
     25c: 37f80641     	tbnz	w1, #0x1f, 0x324 <gpio_keys_probe+0x320>
     260: b9400b28     	ldr	w8, [x25, #0x8]
     264: f85d03a3     	ldur	x3, [x29, #-0x30]
     268: aa1703e0     	mov	x0, x23
     26c: 7100011f     	cmp	w8, #0x0
     270: 528000a8     	mov	w8, #0x5                // =5
     274: 9a9f1502     	csinc	x2, x8, xzr, ne
     278: 94000000     	bl	0x278 <gpio_keys_probe+0x274>
		0000000000000278:  R_AARCH64_CALL26	devm_gpio_request_one
     27c: b9400722     	ldr	w2, [x25, #0x4]
     280: 37f85520     	tbnz	w0, #0x1f, 0xd24 <gpio_keys_probe+0xd20>
     284: 2a0203e0     	mov	w0, w2
     288: 94000000     	bl	0x288 <gpio_keys_probe+0x284>
		0000000000000288:  R_AARCH64_CALL26	gpio_to_desc
     28c: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
     290: 91016149     	add	x9, x10, #0x58
     294: eb090108     	subs	x8, x8, x9
     298: b7f85b49     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     29c: 54005b23     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2a0: f100211f     	cmp	x8, #0x8
     2a4: 54005ae3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2a8: f9000aa0     	str	x0, [x21, #0x10]
     2ac: b50004e0     	cbnz	x0, 0x348 <gpio_keys_probe+0x344>
     2b0: 140002bf     	b	0xdac <gpio_keys_probe+0xda8>
     2b4: f85d03a5     	ldur	x5, [x29, #-0x30]
     2b8: aa1703e0     	mov	x0, x23
     2bc: aa1f03e2     	mov	x2, xzr
     2c0: 2a1f03e3     	mov	w3, wzr
     2c4: 52800024     	mov	w4, #0x1                // =1
     2c8: 94000000     	bl	0x2c8 <gpio_keys_probe+0x2c4>
		00000000000002c8:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
     2cc: f85e83a8     	ldur	x8, [x29, #-0x18]
     2d0: 91016108     	add	x8, x8, #0x58
     2d4: eb080289     	subs	x9, x20, x8
     2d8: b7f85948     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     2dc: 54005923     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2e0: f100213f     	cmp	x9, #0x8
     2e4: 540058e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2e8: aa0003f4     	mov	x20, x0
     2ec: b13ffc1f     	cmn	x0, #0xfff
     2f0: f9000aa0     	str	x0, [x21, #0x10]
     2f4: 54000283     	b.lo	0x344 <gpio_keys_probe+0x340>
     2f8: 31000a9f     	cmn	w20, #0x2
     2fc: 54001500     	b.eq	0x59c <gpio_keys_probe+0x598>
     300: 3108169f     	cmn	w20, #0x205
     304: 540052a0     	b.eq	0xd58 <gpio_keys_probe+0xd54>
     308: aa1703e0     	mov	x0, x23
     30c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000030c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b
     310: 91000021     	add	x1, x1, #0x0
		0000000000000310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b
     314: 2a1403e2     	mov	w2, w20
     318: 94000000     	bl	0x318 <gpio_keys_probe+0x314>
		0000000000000318:  R_AARCH64_CALL26	_dev_err
     31c: 34002994     	cbz	w20, 0x84c <gpio_keys_probe+0x848>
     320: 1400028e     	b	0xd58 <gpio_keys_probe+0xd54>
     324: f85e83a8     	ldur	x8, [x29, #-0x18]
     328: 91016109     	add	x9, x8, #0x58
     32c: eb090288     	subs	x8, x20, x9
     330: b7f85689     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     334: 54005663     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     338: f100211f     	cmp	x8, #0x8
     33c: 54005623     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     340: f9400ab4     	ldr	x20, [x21, #0x10]
     344: b4001394     	cbz	x20, 0x5b4 <gpio_keys_probe+0x5b0>
     348: f9417f53     	ldr	x19, [x26, #0x2f8]
     34c: aa1f03e1     	mov	x1, xzr
     350: f81f03bf     	stur	xzr, [x29, #-0x10]
     354: aa1303e0     	mov	x0, x19
     358: 94000000     	bl	0x358 <gpio_keys_probe+0x354>
		0000000000000358:  R_AARCH64_CALL26	of_get_next_child
     35c: b4000280     	cbz	x0, 0x3ac <gpio_keys_probe+0x3a8>
     360: aa0003f4     	mov	x20, x0
     364: d10043a2     	sub	x2, x29, #0x10
     368: aa1403e0     	mov	x0, x20
     36c: aa1b03e1     	mov	x1, x27
     370: 94000000     	bl	0x370 <gpio_keys_probe+0x36c>
		0000000000000370:  R_AARCH64_CALL26	of_property_read_string
     374: 37f801c0     	tbnz	w0, #0x1f, 0x3ac <gpio_keys_probe+0x3a8>
     378: aa1403e0     	mov	x0, x20
     37c: aa1c03e1     	mov	x1, x28
     380: 2a1f03e2     	mov	w2, wzr
     384: 94000000     	bl	0x384 <gpio_keys_probe+0x380>
		0000000000000384:  R_AARCH64_CALL26	of_get_named_gpio
     388: f85f03a0     	ldur	x0, [x29, #-0x10]
     38c: f9400b21     	ldr	x1, [x25, #0x10]
     390: 94000000     	bl	0x390 <gpio_keys_probe+0x38c>
		0000000000000390:  R_AARCH64_CALL26	strcmp
     394: 34002740     	cbz	w0, 0x87c <gpio_keys_probe+0x878>
     398: aa1303e0     	mov	x0, x19
     39c: aa1403e1     	mov	x1, x20
     3a0: 94000000     	bl	0x3a0 <gpio_keys_probe+0x39c>
		00000000000003a0:  R_AARCH64_CALL26	of_get_next_child
     3a4: aa0003f4     	mov	x20, x0
     3a8: b5fffde0     	cbnz	x0, 0x364 <gpio_keys_probe+0x360>
     3ac: b9003bff     	str	wzr, [sp, #0x38]
     3b0: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
     3b4: b9402728     	ldr	w8, [x25, #0x24]
     3b8: 91016133     	add	x19, x9, #0x58
     3bc: 34000248     	cbz	w8, 0x404 <gpio_keys_probe+0x400>
     3c0: eb130289     	subs	x9, x20, x19
     3c4: b7f851f3     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     3c8: 540051c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3cc: f100213f     	cmp	x9, #0x8
     3d0: 54005183     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3d4: 52807d09     	mov	w9, #0x3e8              // =1000
     3d8: f9400aa0     	ldr	x0, [x21, #0x10]
     3dc: 1b097d01     	mul	w1, w8, w9
     3e0: 94000000     	bl	0x3e0 <gpio_keys_probe+0x3dc>
		00000000000003e0:  R_AARCH64_CALL26	gpiod_set_debounce
     3e4: 36f80100     	tbz	w0, #0x1f, 0x404 <gpio_keys_probe+0x400>
     3e8: f85e83a8     	ldur	x8, [x29, #-0x18]
     3ec: b1040108     	adds	x8, x8, #0x100
     3f0: 54005084     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     3f4: eb08029f     	cmp	x20, x8
     3f8: 54005043     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3fc: b9402728     	ldr	w8, [x25, #0x24]
     400: b900baa8     	str	w8, [x21, #0xb8]
     404: b9403334     	ldr	w20, [x25, #0x30]
     408: 350001b4     	cbnz	w20, 0x43c <gpio_keys_probe+0x438>
     40c: f85e03a8     	ldur	x8, [x29, #-0x20]
     410: eb130108     	subs	x8, x8, x19
     414: b7f84f73     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     418: 54004f43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     41c: f100211f     	cmp	x8, #0x8
     420: 54004f03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     424: f9400aa0     	ldr	x0, [x21, #0x10]
     428: 94000000     	bl	0x428 <gpio_keys_probe+0x424>
		0000000000000428:  R_AARCH64_CALL26	gpiod_to_irq
     42c: 2a0003f4     	mov	w20, w0
     430: 37f84880     	tbnz	w0, #0x1f, 0xd40 <gpio_keys_probe+0xd3c>
     434: 2a1403fa     	mov	w26, w20
     438: 14000002     	b	0x440 <gpio_keys_probe+0x43c>
     43c: 1280001a     	mov	w26, #-0x1              // =-1
     440: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
     444: 91041133     	add	x19, x9, #0x104
     448: eb130108     	subs	x8, x8, x19
     44c: b7f84db3     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     450: 54004d83     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     454: f100111f     	cmp	x8, #0x4
     458: 54004d43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     45c: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
     460: b900beb4     	str	w20, [x21, #0xbc]
     464: 91026149     	add	x9, x10, #0x98
     468: eb090108     	subs	x8, x8, x9
     46c: b7f84ca9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     470: 54004c83     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     474: f100211f     	cmp	x8, #0x8
     478: 54004c43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     47c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     480: 910162a9     	add	x9, x21, #0x58
     484: f9002aa8     	str	x8, [x21, #0x50]
     488: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
     48c: f9002ea9     	str	x9, [x21, #0x58]
     490: f90032a9     	str	x9, [x21, #0x60]
     494: b102c108     	adds	x8, x8, #0xb0
     498: 54004b44     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     49c: eb08029f     	cmp	x20, x8
     4a0: 54004b03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4a4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1104
     4a8: 91000108     	add	x8, x8, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1104
     4ac: 9101c2a0     	add	x0, x21, #0x70
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     4b8: 52a00402     	mov	w2, #0x200000           // =2097152
     4bc: aa1f03e3     	mov	x3, xzr
     4c0: aa1f03e4     	mov	x4, xzr
     4c4: f90036a8     	str	x8, [x21, #0x68]
     4c8: 94000000     	bl	0x4c8 <gpio_keys_probe+0x4c4>
		00000000000004c8:  R_AARCH64_CALL26	init_timer_key
     4cc: eb130288     	subs	x8, x20, x19
     4d0: 54004983     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4d4: f100111f     	cmp	x8, #0x4
     4d8: 54004943     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4dc: f85e83a8     	ldur	x8, [x29, #-0x18]
     4e0: b9403bf3     	ldr	w19, [sp, #0x38]
     4e4: 91042109     	add	x9, x8, #0x108
     4e8: eb090288     	subs	x8, x20, x9
     4ec: b7f848a9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     4f0: 54004883     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4f4: f100111f     	cmp	x8, #0x4
     4f8: 54004843     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4fc: 29578ea2     	ldp	w2, w3, [x21, #0xbc]
     500: b9403324     	ldr	w4, [x25, #0x30]
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
     50c: 2a1a03e1     	mov	w1, w26
     510: 2a1303e5     	mov	w5, w19
     514: 94000000     	bl	0x514 <gpio_keys_probe+0x510>
		0000000000000514:  R_AARCH64_CALL26	_printk
     518: b9402328     	ldr	w8, [x25, #0x20]
     51c: 7100091f     	cmp	w8, #0x2
     520: 540001e0     	b.eq	0x55c <gpio_keys_probe+0x558>
     524: f94023fa     	ldr	x26, [sp, #0x40]
     528: 7100051f     	cmp	w8, #0x1
     52c: 54000301     	b.ne	0x58c <gpio_keys_probe+0x588>
     530: f85e83a8     	ldur	x8, [x29, #-0x18]
     534: 91052109     	add	x9, x8, #0x148
     538: eb090288     	subs	x8, x20, x9
     53c: b7f84629     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     540: 54004603     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     544: f100111f     	cmp	x8, #0x4
     548: 540045c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     54c: 7100027f     	cmp	w19, #0x0
     550: 52800028     	mov	w8, #0x1                // =1
     554: 1a880508     	cinc	w8, w8, ne
     558: 1400000c     	b	0x588 <gpio_keys_probe+0x584>
     55c: f85e83a8     	ldur	x8, [x29, #-0x18]
     560: f94023fa     	ldr	x26, [sp, #0x40]
     564: 91052109     	add	x9, x8, #0x148
     568: eb090288     	subs	x8, x20, x9
     56c: b7f844a9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     570: 54004483     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     574: f100111f     	cmp	x8, #0x4
     578: 54004443     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     57c: 7100027f     	cmp	w19, #0x0
     580: 52800028     	mov	w8, #0x1                // =1
     584: 1a881508     	cinc	w8, w8, eq
     588: b90102a8     	str	w8, [x21, #0x100]
     58c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1160
     590: 91000108     	add	x8, x8, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1160
     594: 52800073     	mov	w19, #0x3               // =3
     598: 14000025     	b	0x62c <gpio_keys_probe+0x628>
     59c: f85e03a9     	ldur	x9, [x29, #-0x20]
     5a0: eb080128     	subs	x8, x9, x8
     5a4: 540042e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5a8: f100211f     	cmp	x8, #0x8
     5ac: 540042a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5b0: f9000abf     	str	xzr, [x21, #0x10]
     5b4: b9403328     	ldr	w8, [x25, #0x30]
     5b8: 340037a8     	cbz	w8, 0xcac <gpio_keys_probe+0xca8>
     5bc: a97e27b4     	ldp	x20, x9, [x29, #-0x20]
     5c0: 9104112a     	add	x10, x9, #0x104
     5c4: eb0a0289     	subs	x9, x20, x10
     5c8: b7f841ca     	tbnz	x10, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     5cc: 540041a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5d0: f100113f     	cmp	x9, #0x4
     5d4: 54004163     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5d8: b900bea8     	str	w8, [x21, #0xbc]
     5dc: b9401b28     	ldr	w8, [x25, #0x18]
     5e0: 7100091f     	cmp	w8, #0x2
     5e4: 540036a2     	b.hs	0xcb8 <gpio_keys_probe+0xcb4>
     5e8: f85e83a8     	ldur	x8, [x29, #-0x18]
     5ec: b1024108     	adds	x8, x8, #0x90
     5f0: 54004084     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     5f4: eb08029f     	cmp	x20, x8
     5f8: 54004043     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5fc: b9402728     	ldr	w8, [x25, #0x24]
     600: 910082a0     	add	x0, x21, #0x20
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1210
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1210
     60c: 2a1f03e2     	mov	w2, wzr
     610: aa1f03e3     	mov	x3, xzr
     614: aa1f03e4     	mov	x4, xzr
     618: b9004aa8     	str	w8, [x21, #0x48]
     61c: 94000000     	bl	0x61c <gpio_keys_probe+0x618>
		000000000000061c:  R_AARCH64_CALL26	init_timer_key
     620: aa1f03f3     	mov	x19, xzr
     624: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1298
     628: 91000108     	add	x8, x8, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1298
     62c: f9001fe8     	str	x8, [sp, #0x38]
     630: f85e83a8     	ldur	x8, [x29, #-0x18]
     634: b1018108     	adds	x8, x8, #0x60
     638: 54003e44     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     63c: eb08029f     	cmp	x20, x8
     640: 54003e03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     644: f9400be8     	ldr	x8, [sp, #0x10]
     648: f85d83aa     	ldur	x10, [x29, #-0x28]
     64c: f85c83a0     	ldur	x0, [x29, #-0x38]
     650: f9402108     	ldr	x8, [x8, #0x40]
     654: 8b0a0509     	add	x9, x8, x10, lsl #1
     658: f9000ea9     	str	x9, [x21, #0x18]
     65c: b9400329     	ldr	w9, [x25]
     660: 782a7909     	strh	w9, [x8, x10, lsl #1]
     664: b9401b28     	ldr	w8, [x25, #0x18]
     668: f9400ea9     	ldr	x9, [x21, #0x18]
     66c: 7100051f     	cmp	w8, #0x1
     670: 79400122     	ldrh	w2, [x9]
     674: 1a9f8501     	csinc	w1, w8, wzr, hi
     678: 94000000     	bl	0x678 <gpio_keys_probe+0x674>
		0000000000000678:  R_AARCH64_CALL26	input_set_capability
     67c: aa1703e0     	mov	x0, x23
     680: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000680:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13b4
     684: 91000021     	add	x1, x1, #0x0
		0000000000000684:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13b4
     688: aa1503e2     	mov	x2, x21
     68c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c
     690: 91000063     	add	x3, x3, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c
     694: 94000000     	bl	0x694 <gpio_keys_probe+0x690>
		0000000000000694:  R_AARCH64_CALL26	__devm_add_action
     698: 35002d60     	cbnz	w0, 0xc44 <gpio_keys_probe+0xc40>
     69c: 3940a328     	ldrb	w8, [x25, #0x28]
     6a0: b2790269     	orr	x9, x19, #0x80
     6a4: 7100011f     	cmp	w8, #0x0
     6a8: a97e2fa8     	ldp	x8, x11, [x29, #-0x20]
     6ac: 9a891263     	csel	x3, x19, x9, ne
     6b0: 9104116a     	add	x10, x11, #0x104
     6b4: eb0a0108     	subs	x8, x8, x10
     6b8: b7f83a4a     	tbnz	x10, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     6bc: 54003a23     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     6c0: f100111f     	cmp	x8, #0x4
     6c4: 540039e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     6c8: b940bea1     	ldr	w1, [x21, #0xbc]
     6cc: f9401fe2     	ldr	x2, [sp, #0x38]
     6d0: aa1703e0     	mov	x0, x23
     6d4: f85d03a4     	ldur	x4, [x29, #-0x30]
     6d8: aa1503e5     	mov	x5, x21
     6dc: f9000fe3     	str	x3, [sp, #0x18]
     6e0: 94000000     	bl	0x6e0 <gpio_keys_probe+0x6dc>
		00000000000006e0:  R_AARCH64_CALL26	devm_request_any_context_irq
     6e4: 37f82be0     	tbnz	w0, #0x1f, 0xc60 <gpio_keys_probe+0xc5c>
     6e8: f9417f54     	ldr	x20, [x26, #0x2f8]
     6ec: aa1f03e1     	mov	x1, xzr
     6f0: aa1403e0     	mov	x0, x20
     6f4: 94000000     	bl	0x6f4 <gpio_keys_probe+0x6f0>
		00000000000006f4:  R_AARCH64_CALL26	of_get_next_child
     6f8: b40003a0     	cbz	x0, 0x76c <gpio_keys_probe+0x768>
     6fc: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
     700: aa0003f3     	mov	x19, x0
     704: 91043168     	add	x8, x11, #0x10c
     708: eb080149     	subs	x9, x10, x8
     70c: fa442920     	ccmp	x9, #0x4, #0x0, hs
     710: 91044169     	add	x9, x11, #0x110
     714: fa402908     	ccmp	x8, #0x0, #0x8, hs
     718: 1a9fa7fa     	cset	w26, lt
     71c: f100013f     	cmp	x9, #0x0
     720: fa49a140     	ccmp	x10, x9, #0x0, ge
     724: 1a9f27f7     	cset	w23, lo
     728: aa1303e0     	mov	x0, x19
     72c: aa1c03e1     	mov	x1, x28
     730: 2a1f03e2     	mov	w2, wzr
     734: 94000000     	bl	0x734 <gpio_keys_probe+0x730>
		0000000000000734:  R_AARCH64_CALL26	of_get_named_gpio
     738: 3700365a     	tbnz	w26, #0x0, 0xe00 <gpio_keys_probe+0xdfc>
     73c: b900c6a0     	str	w0, [x21, #0xc4]
     740: aa1303e0     	mov	x0, x19
     744: aa1603e1     	mov	x1, x22
     748: 2a1f03e2     	mov	w2, wzr
     74c: 94000000     	bl	0x74c <gpio_keys_probe+0x748>
		000000000000074c:  R_AARCH64_CALL26	of_get_named_gpio
     750: 37003597     	tbnz	w23, #0x0, 0xe00 <gpio_keys_probe+0xdfc>
     754: b900caa0     	str	w0, [x21, #0xc8]
     758: aa1403e0     	mov	x0, x20
     75c: aa1303e1     	mov	x1, x19
     760: 94000000     	bl	0x760 <gpio_keys_probe+0x75c>
		0000000000000760:  R_AARCH64_CALL26	of_get_next_child
     764: aa0003f3     	mov	x19, x0
     768: b5fffe00     	cbnz	x0, 0x728 <gpio_keys_probe+0x724>
     76c: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
     770: b1044113     	adds	x19, x8, #0x110
     774: 54003464     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     778: eb13029f     	cmp	x20, x19
     77c: 54003423     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     780: b940caa0     	ldr	w0, [x21, #0xc8]
     784: 34000160     	cbz	w0, 0x7b0 <gpio_keys_probe+0x7ac>
     788: 94000000     	bl	0x788 <gpio_keys_probe+0x784>
		0000000000000788:  R_AARCH64_CALL26	gpio_to_desc
     78c: 94000000     	bl	0x78c <gpio_keys_probe+0x788>
		000000000000078c:  R_AARCH64_CALL26	gpiod_to_irq
     790: f85e83a8     	ldur	x8, [x29, #-0x18]
     794: 91042109     	add	x9, x8, #0x108
     798: eb090288     	subs	x8, x20, x9
     79c: b7f83329     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     7a0: 54003303     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7a4: f100111f     	cmp	x8, #0x4
     7a8: 540032c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7ac: b900c2a0     	str	w0, [x21, #0xc0]
     7b0: 910342a0     	add	x0, x21, #0xd0
     7b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x474
     7b8: 91000021     	add	x1, x1, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x474
     7bc: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     7c0: 91000042     	add	x2, x2, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     7c4: 94000000     	bl	0x7c4 <gpio_keys_probe+0x7c0>
		00000000000007c4:  R_AARCH64_CALL26	__mutex_init
     7c8: f85e83a8     	ldur	x8, [x29, #-0x18]
     7cc: 91043109     	add	x9, x8, #0x10c
     7d0: eb090288     	subs	x8, x20, x9
     7d4: b7f83169     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     7d8: 54003143     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7dc: f100111f     	cmp	x8, #0x4
     7e0: 54003103     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7e4: f94007f7     	ldr	x23, [sp, #0x8]
     7e8: f94023fa     	ldr	x26, [sp, #0x40]
     7ec: eb13029f     	cmp	x20, x19
     7f0: 54003083     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7f4: 29588ea2     	ldp	w2, w3, [x21, #0xc4]
     7f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     7fc: 91000000     	add	x0, x0, #0x0
		00000000000007fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     800: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a
     804: 91000021     	add	x1, x1, #0x0
		0000000000000804:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a
     808: 94000000     	bl	0x808 <gpio_keys_probe+0x804>
		0000000000000808:  R_AARCH64_CALL26	_printk
     80c: f85e83a8     	ldur	x8, [x29, #-0x18]
     810: 91042109     	add	x9, x8, #0x108
     814: eb090288     	subs	x8, x20, x9
     818: b7f82f49     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     81c: 54002f23     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     820: f100111f     	cmp	x8, #0x4
     824: 54002ee3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     828: b940c2a1     	ldr	w1, [x21, #0xc0]
     82c: 34000101     	cbz	w1, 0x84c <gpio_keys_probe+0x848>
     830: f9401fe2     	ldr	x2, [sp, #0x38]
     834: f9400fe3     	ldr	x3, [sp, #0x18]
     838: aa1703e0     	mov	x0, x23
     83c: f85d03a4     	ldur	x4, [x29, #-0x30]
     840: aa1503e5     	mov	x5, x21
     844: 94000000     	bl	0x844 <gpio_keys_probe+0x840>
		0000000000000844:  R_AARCH64_CALL26	devm_request_any_context_irq
     848: 37f80200     	tbnz	w0, #0x1f, 0x888 <gpio_keys_probe+0x884>
     84c: b9401f28     	ldr	w8, [x25, #0x1c]
     850: b9800b09     	ldrsw	x9, [x24, #0x8]
     854: b9402ff5     	ldr	w21, [sp, #0x2c]
     858: f9401be1     	ldr	x1, [sp, #0x30]
     85c: 7100011f     	cmp	w8, #0x0
     860: f85d83a8     	ldur	x8, [x29, #-0x28]
     864: 1a9f06b5     	csinc	w21, w21, wzr, eq
     868: 91000508     	add	x8, x8, #0x1
     86c: eb09011f     	cmp	x8, x9
     870: f81d83a8     	stur	x8, [x29, #-0x28]
     874: 54ffc90b     	b.lt	0x194 <gpio_keys_probe+0x190>
     878: 140000b4     	b	0xb48 <gpio_keys_probe+0xb44>
     87c: 52800028     	mov	w8, #0x1                // =1
     880: b9003be8     	str	w8, [sp, #0x38]
     884: 17fffecb     	b	0x3b0 <gpio_keys_probe+0x3ac>
     888: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
     88c: 91000000     	add	x0, x0, #0x0
		000000000000088c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
     890: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x656
     894: 91000021     	add	x1, x1, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x656
     898: 94000000     	bl	0x898 <gpio_keys_probe+0x894>
		0000000000000898:  R_AARCH64_CALL26	_printk
     89c: 17ffffec     	b	0x84c <gpio_keys_probe+0x848>
     8a0: aa1703e0     	mov	x0, x23
     8a4: 94000000     	bl	0x8a4 <gpio_keys_probe+0x8a0>
		00000000000008a4:  R_AARCH64_CALL26	device_get_child_node_count
     8a8: 34001a20     	cbz	w0, 0xbec <gpio_keys_probe+0xbe8>
     8ac: 52800708     	mov	w8, #0x38               // =56
     8b0: 2a0003f3     	mov	w19, w0
     8b4: 5281b802     	mov	w2, #0xdc0              // =3520
     8b8: 9b287c16     	smull	x22, w0, w8
     8bc: aa1703e0     	mov	x0, x23
     8c0: 9100c2d5     	add	x21, x22, #0x30
     8c4: aa1503e1     	mov	x1, x21
     8c8: 94000000     	bl	0x8c8 <gpio_keys_probe+0x8c4>
		00000000000008c8:  R_AARCH64_CALL26	devm_kmalloc
     8cc: b4001960     	cbz	x0, 0xbf8 <gpio_keys_probe+0xbf4>
     8d0: f90023fa     	str	x26, [sp, #0x40]
     8d4: b4002975     	cbz	x21, 0xe00 <gpio_keys_probe+0xdfc>
     8d8: 9100c008     	add	x8, x0, #0x30
     8dc: aa0003f8     	mov	x24, x0
     8e0: b9000813     	str	w19, [x0, #0x8]
     8e4: f9000008     	str	x8, [x0]
     8e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cd
     8ec: 91000021     	add	x1, x1, #0x0
		00000000000008ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cd
     8f0: aa1703e0     	mov	x0, x23
     8f4: 94000000     	bl	0x8f4 <gpio_keys_probe+0x8f0>
		00000000000008f4:  R_AARCH64_CALL26	device_property_present
     8f8: f10042bf     	cmp	x21, #0x10
     8fc: 54002823     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     900: 39404308     	ldrb	w8, [x24, #0x10]
     904: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     908: 91000021     	add	x1, x1, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     90c: 9100a302     	add	x2, x24, #0x28
     910: 33000008     	bfxil	w8, w0, #0, #1
     914: aa1703e0     	mov	x0, x23
     918: 39004308     	strb	w8, [x24, #0x10]
     91c: 94000000     	bl	0x91c <gpio_keys_probe+0x918>
		000000000000091c:  R_AARCH64_CALL26	device_property_read_string
     920: aa1703e0     	mov	x0, x23
     924: aa1f03e1     	mov	x1, xzr
     928: aa1703f9     	mov	x25, x23
     92c: 94000000     	bl	0x92c <gpio_keys_probe+0x928>
		000000000000092c:  R_AARCH64_CALL26	device_get_next_child_node
     930: b4001520     	cbz	x0, 0xbd4 <gpio_keys_probe+0xbd0>
     934: 52800608     	mov	w8, #0x30               // =48
     938: aa0003f4     	mov	x20, x0
     93c: 9000001a     	adrp	x26, 0x0 <.text>
		000000000000093c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x271
     940: 9100035a     	add	x26, x26, #0x0
		0000000000000940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x271
     944: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     948: 9100037b     	add	x27, x27, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     94c: cb160108     	sub	x8, x8, x22
     950: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     954: 9100039c     	add	x28, x28, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     958: 52800c17     	mov	w23, #0x60              // =96
     95c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     960: 910002d6     	add	x22, x22, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     964: f81e83a8     	stur	x8, [x29, #-0x18]
     968: 14000007     	b	0x984 <gpio_keys_probe+0x980>
     96c: aa1903e0     	mov	x0, x25
     970: aa1403e1     	mov	x1, x20
     974: 94000000     	bl	0x974 <gpio_keys_probe+0x970>
		0000000000000974:  R_AARCH64_CALL26	device_get_next_child_node
     978: aa0003f4     	mov	x20, x0
     97c: 9100e2f7     	add	x23, x23, #0x38
     980: b40012a0     	cbz	x0, 0xbd4 <gpio_keys_probe+0xbd0>
     984: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     988: 540002c8     	b.hi	0x9e0 <gpio_keys_probe+0x9dc>
     98c: f9400688     	ldr	x8, [x20, #0x8]
     990: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     994: 91000129     	add	x9, x9, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     998: eb09011f     	cmp	x8, x9
     99c: 54000221     	b.ne	0x9e0 <gpio_keys_probe+0x9dc>
     9a0: d1006280     	sub	x0, x20, #0x18
     9a4: 2a1f03e1     	mov	w1, wzr
     9a8: 94000000     	bl	0x9a8 <gpio_keys_probe+0x9a4>
		00000000000009a8:  R_AARCH64_CALL26	irq_of_parse_and_map
     9ac: b7f822b7     	tbnz	x23, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     9b0: f85e83a8     	ldur	x8, [x29, #-0x18]
     9b4: 8b170108     	add	x8, x8, x23
     9b8: f101811f     	cmp	x8, #0x60
     9bc: 54002220     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
     9c0: eb1702bf     	cmp	x21, x23
     9c4: 540021e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     9c8: b7f821d7     	tbnz	x23, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     9cc: eb1702bf     	cmp	x21, x23
     9d0: 54002183     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     9d4: f101811f     	cmp	x8, #0x60
     9d8: 54002140     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
     9dc: b8376b00     	str	w0, [x24, x23]
     9e0: 8b170308     	add	x8, x24, x23
     9e4: aa1403e0     	mov	x0, x20
     9e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64b
     9ec: 91000021     	add	x1, x1, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64b
     9f0: d100c102     	sub	x2, x8, #0x30
     9f4: 52800023     	mov	w3, #0x1                // =1
     9f8: 94000000     	bl	0x9f8 <gpio_keys_probe+0x9f4>
		00000000000009f8:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     9fc: 350016a0     	cbnz	w0, 0xcd0 <gpio_keys_probe+0xccc>
     a00: 8b170313     	add	x19, x24, x23
     a04: aa1403e0     	mov	x0, x20
     a08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     a0c: 91000021     	add	x1, x1, #0x0
		0000000000000a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     a10: d1008262     	sub	x2, x19, #0x20
     a14: 94000000     	bl	0xa14 <gpio_keys_probe+0xa10>
		0000000000000a14:  R_AARCH64_CALL26	fwnode_property_read_string
     a18: d1006273     	sub	x19, x19, #0x18
     a1c: aa1403e0     	mov	x0, x20
     a20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x579
     a24: 91000021     	add	x1, x1, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x579
     a28: aa1303e2     	mov	x2, x19
     a2c: 52800023     	mov	w3, #0x1                // =1
     a30: 94000000     	bl	0xa30 <gpio_keys_probe+0xa2c>
		0000000000000a30:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     a34: 34000160     	cbz	w0, 0xa60 <gpio_keys_probe+0xa5c>
     a38: f10062e8     	subs	x8, x23, #0x18
     a3c: 54001e24     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     a40: eb0802bf     	cmp	x21, x8
     a44: 54001de9     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     a48: d10062e8     	sub	x8, x23, #0x18
     a4c: b7f81da8     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     a50: eb0802bf     	cmp	x21, x8
     a54: 54001d69     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     a58: 52800028     	mov	w8, #0x1                // =1
     a5c: b9000268     	str	w8, [x19]
     a60: aa1403e0     	mov	x0, x20
     a64: aa1a03e1     	mov	x1, x26
     a68: 94000000     	bl	0xa68 <gpio_keys_probe+0xa64>
		0000000000000a68:  R_AARCH64_CALL26	fwnode_property_present
     a6c: 36000060     	tbz	w0, #0x0, 0xa78 <gpio_keys_probe+0xa74>
     a70: 52800020     	mov	w0, #0x1                // =1
     a74: 14000005     	b	0xa88 <gpio_keys_probe+0xa84>
     a78: aa1403e0     	mov	x0, x20
     a7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x219
     a80: 91000021     	add	x1, x1, #0x0
		0000000000000a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x219
     a84: 94000000     	bl	0xa84 <gpio_keys_probe+0xa80>
		0000000000000a84:  R_AARCH64_CALL26	fwnode_property_present
     a88: f10052e8     	subs	x8, x23, #0x14
     a8c: 54001ba4     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     a90: eb0802bf     	cmp	x21, x8
     a94: 54001b63     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     a98: f10052e8     	subs	x8, x23, #0x14
     a9c: 54001b24     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     aa0: eb0802bf     	cmp	x21, x8
     aa4: 54001ae3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     aa8: 8b170309     	add	x9, x24, x23
     aac: 12000008     	and	w8, w0, #0x1
     ab0: aa1403e0     	mov	x0, x20
     ab4: d1004122     	sub	x2, x9, #0x10
     ab8: aa1b03e1     	mov	x1, x27
     abc: 52800023     	mov	w3, #0x1                // =1
     ac0: b81ec128     	stur	w8, [x9, #-0x14]
     ac4: 94000000     	bl	0xac4 <gpio_keys_probe+0xac0>
		0000000000000ac4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     ac8: aa1403e0     	mov	x0, x20
     acc: aa1c03e1     	mov	x1, x28
     ad0: 94000000     	bl	0xad0 <gpio_keys_probe+0xacc>
		0000000000000ad0:  R_AARCH64_CALL26	fwnode_property_present
     ad4: f10022e8     	subs	x8, x23, #0x8
     ad8: 54001944     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     adc: eb0802bf     	cmp	x21, x8
     ae0: 54001909     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     ae4: f10022e8     	subs	x8, x23, #0x8
     ae8: 540018c4     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     aec: eb0802bf     	cmp	x21, x8
     af0: 54001889     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     af4: 8b170308     	add	x8, x24, x23
     af8: 12000009     	and	w9, w0, #0x1
     afc: aa1403e0     	mov	x0, x20
     b00: d1003113     	sub	x19, x8, #0xc
     b04: aa1603e1     	mov	x1, x22
     b08: 52800023     	mov	w3, #0x1                // =1
     b0c: aa1303e2     	mov	x2, x19
     b10: 381f8109     	sturb	w9, [x8, #-0x8]
     b14: 94000000     	bl	0xb14 <gpio_keys_probe+0xb10>
		0000000000000b14:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     b18: 34fff2a0     	cbz	w0, 0x96c <gpio_keys_probe+0x968>
     b1c: d10032e8     	sub	x8, x23, #0xc
     b20: eb0802bf     	cmp	x21, x8
     b24: 540016e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     b28: b7f816c8     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     b2c: eb0802bf     	cmp	x21, x8
     b30: 54001683     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     b34: 528000a8     	mov	w8, #0x5                // =5
     b38: b9000268     	str	w8, [x19]
     b3c: 17ffff8c     	b	0x96c <gpio_keys_probe+0x968>
     b40: 12800174     	mov	w20, #-0xc              // =-12
     b44: 140000a0     	b	0xdc4 <gpio_keys_probe+0xdc0>
     b48: b40001e1     	cbz	x1, 0xb84 <gpio_keys_probe+0xb80>
     b4c: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
     b50: 540001a8     	b.hi	0xb84 <gpio_keys_probe+0xb80>
     b54: f9400428     	ldr	x8, [x1, #0x8]
     b58: b4000168     	cbz	x8, 0xb84 <gpio_keys_probe+0xb80>
     b5c: f9400508     	ldr	x8, [x8, #0x8]
     b60: b4000128     	cbz	x8, 0xb84 <gpio_keys_probe+0xb80>
     b64: aa0103e0     	mov	x0, x1
     b68: b85fc110     	ldur	w16, [x8, #-0x4]
     b6c: 729f8df1     	movk	w17, #0xfc6f
     b70: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     b74: 6b11021f     	cmp	w16, w17
     b78: 54000040     	b.eq	0xb80 <gpio_keys_probe+0xb7c>
     b7c: d4304500     	brk	#0x8228
     b80: d63f0100     	blr	x8
     b84: f85c83a0     	ldur	x0, [x29, #-0x38]
     b88: 94000000     	bl	0xb88 <gpio_keys_probe+0xb84>
		0000000000000b88:  R_AARCH64_CALL26	input_register_device
     b8c: 350004e0     	cbnz	w0, 0xc28 <gpio_keys_probe+0xc24>
     b90: 34000155     	cbz	w21, 0xbb8 <gpio_keys_probe+0xbb4>
     b94: aa1703e0     	mov	x0, x23
     b98: 52800021     	mov	w1, #0x1                // =1
     b9c: 94000000     	bl	0xb9c <gpio_keys_probe+0xb98>
		0000000000000b9c:  R_AARCH64_CALL26	device_set_wakeup_capable
     ba0: aa1703e0     	mov	x0, x23
     ba4: 94000000     	bl	0xba4 <gpio_keys_probe+0xba0>
		0000000000000ba4:  R_AARCH64_CALL26	device_wakeup_enable
     ba8: 14000009     	b	0xbcc <gpio_keys_probe+0xbc8>
     bac: aa1503e0     	mov	x0, x21
     bb0: 94000000     	bl	0xbb0 <gpio_keys_probe+0xbac>
		0000000000000bb0:  R_AARCH64_CALL26	input_register_device
     bb4: 350003a0     	cbnz	w0, 0xc28 <gpio_keys_probe+0xc24>
     bb8: aa1703e0     	mov	x0, x23
     bbc: 94000000     	bl	0xbbc <gpio_keys_probe+0xbb8>
		0000000000000bbc:  R_AARCH64_CALL26	device_wakeup_disable
     bc0: aa1703e0     	mov	x0, x23
     bc4: 2a1f03e1     	mov	w1, wzr
     bc8: 94000000     	bl	0xbc8 <gpio_keys_probe+0xbc4>
		0000000000000bc8:  R_AARCH64_CALL26	device_set_wakeup_capable
     bcc: 2a1f03f4     	mov	w20, wzr
     bd0: 1400007d     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bd4: f94023fa     	ldr	x26, [sp, #0x40]
     bd8: b13fff1f     	cmn	x24, #0xfff
     bdc: aa1903f7     	mov	x23, x25
     be0: 54ffa323     	b.lo	0x44 <gpio_keys_probe+0x40>
     be4: 2a1803f4     	mov	w20, w24
     be8: 14000077     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bec: 92800258     	mov	x24, #-0x13             // =-19
     bf0: 2a1803f4     	mov	w20, w24
     bf4: 14000074     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bf8: 92800178     	mov	x24, #-0xc              // =-12
     bfc: 2a1803f4     	mov	w20, w24
     c00: 14000071     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3
     c08: 91000021     	add	x1, x1, #0x0
		0000000000000c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3
     c0c: 14000003     	b	0xc18 <gpio_keys_probe+0xc14>
     c10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
     c14: 91000021     	add	x1, x1, #0x0
		0000000000000c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
     c18: aa1703e0     	mov	x0, x23
     c1c: 94000000     	bl	0xc1c <gpio_keys_probe+0xc18>
		0000000000000c1c:  R_AARCH64_CALL26	_dev_err
     c20: 12800174     	mov	w20, #-0xc              // =-12
     c24: 14000068     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c28: 2a0003f4     	mov	w20, w0
     c2c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     c30: 91000021     	add	x1, x1, #0x0
		0000000000000c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     c34: aa1703e0     	mov	x0, x23
     c38: 2a1403e2     	mov	w2, w20
     c3c: 94000000     	bl	0xc3c <gpio_keys_probe+0xc38>
		0000000000000c3c:  R_AARCH64_CALL26	_dev_err
     c40: 14000061     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c44: 2a0003f4     	mov	w20, w0
     c48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d8
     c4c: 91000021     	add	x1, x1, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d8
     c50: aa1703e0     	mov	x0, x23
     c54: 2a1403e2     	mov	w2, w20
     c58: 94000000     	bl	0xc58 <gpio_keys_probe+0xc54>
		0000000000000c58:  R_AARCH64_CALL26	_dev_err
     c5c: 1400003f     	b	0xd58 <gpio_keys_probe+0xd54>
     c60: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
     c64: 91041149     	add	x9, x10, #0x104
     c68: eb090108     	subs	x8, x8, x9
     c6c: b7f80ca9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     c70: 54000c83     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     c74: f100111f     	cmp	x8, #0x4
     c78: 54000c43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     c7c: b940bea2     	ldr	w2, [x21, #0xbc]
     c80: 2a0003f4     	mov	w20, w0
     c84: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     c88: 91000021     	add	x1, x1, #0x0
		0000000000000c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     c8c: 14000030     	b	0xd4c <gpio_keys_probe+0xd48>
     c90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cd
     c94: 91000021     	add	x1, x1, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cd
     c98: aa1703e0     	mov	x0, x23
     c9c: f85d83a2     	ldur	x2, [x29, #-0x28]
     ca0: 94000000     	bl	0xca0 <gpio_keys_probe+0xc9c>
		0000000000000ca0:  R_AARCH64_CALL26	_dev_err
     ca4: 128002b4     	mov	w20, #-0x16             // =-22
     ca8: 14000047     	b	0xdc4 <gpio_keys_probe+0xdc0>
     cac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     cb0: 91000021     	add	x1, x1, #0x0
		0000000000000cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     cb4: 14000003     	b	0xcc0 <gpio_keys_probe+0xcbc>
     cb8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
     cbc: 91000021     	add	x1, x1, #0x0
		0000000000000cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
     cc0: aa1703e0     	mov	x0, x23
     cc4: 94000000     	bl	0xcc4 <gpio_keys_probe+0xcc0>
		0000000000000cc4:  R_AARCH64_CALL26	_dev_err
     cc8: 128002b4     	mov	w20, #-0x16             // =-22
     ccc: 14000023     	b	0xd58 <gpio_keys_probe+0xd54>
     cd0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d2
     cd4: 91000021     	add	x1, x1, #0x0
		0000000000000cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d2
     cd8: aa1903e0     	mov	x0, x25
     cdc: 94000000     	bl	0xcdc <gpio_keys_probe+0xcd8>
		0000000000000cdc:  R_AARCH64_CALL26	_dev_err
     ce0: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     ce4: 540001a8     	b.hi	0xd18 <gpio_keys_probe+0xd14>
     ce8: f9400688     	ldr	x8, [x20, #0x8]
     cec: b4000168     	cbz	x8, 0xd18 <gpio_keys_probe+0xd14>
     cf0: f9400508     	ldr	x8, [x8, #0x8]
     cf4: b4000128     	cbz	x8, 0xd18 <gpio_keys_probe+0xd14>
     cf8: aa1403e0     	mov	x0, x20
     cfc: b85fc110     	ldur	w16, [x8, #-0x4]
     d00: 729f8df1     	movk	w17, #0xfc6f
     d04: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     d08: 6b11021f     	cmp	w16, w17
     d0c: 54000040     	b.eq	0xd14 <gpio_keys_probe+0xd10>
     d10: d4304500     	brk	#0x8228
     d14: d63f0100     	blr	x8
     d18: 928002b8     	mov	x24, #-0x16             // =-22
     d1c: 2a1803f4     	mov	w20, w24
     d20: 14000029     	b	0xdc4 <gpio_keys_probe+0xdc0>
     d24: 2a0003f4     	mov	w20, w0
     d28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     d2c: 91000021     	add	x1, x1, #0x0
		0000000000000d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     d30: aa1703e0     	mov	x0, x23
     d34: 2a1403e3     	mov	w3, w20
     d38: 94000000     	bl	0xd38 <gpio_keys_probe+0xd34>
		0000000000000d38:  R_AARCH64_CALL26	_dev_err
     d3c: 1400001d     	b	0xdb0 <gpio_keys_probe+0xdac>
     d40: b9400722     	ldr	w2, [x25, #0x4]
     d44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ea
     d48: 91000021     	add	x1, x1, #0x0
		0000000000000d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ea
     d4c: aa1703e0     	mov	x0, x23
     d50: 2a1403e3     	mov	w3, w20
     d54: 94000000     	bl	0xd54 <gpio_keys_probe+0xd50>
		0000000000000d54:  R_AARCH64_CALL26	_dev_err
     d58: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     d5c: 91000000     	add	x0, x0, #0x0
		0000000000000d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     d60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     d64: 91000021     	add	x1, x1, #0x0
		0000000000000d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     d68: 94000000     	bl	0xd68 <gpio_keys_probe+0xd64>
		0000000000000d68:  R_AARCH64_CALL26	_printk
     d6c: f9401be0     	ldr	x0, [sp, #0x30]
     d70: b40002a0     	cbz	x0, 0xdc4 <gpio_keys_probe+0xdc0>
     d74: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     d78: 54000268     	b.hi	0xdc4 <gpio_keys_probe+0xdc0>
     d7c: f9400408     	ldr	x8, [x0, #0x8]
     d80: b4000228     	cbz	x8, 0xdc4 <gpio_keys_probe+0xdc0>
     d84: f9400508     	ldr	x8, [x8, #0x8]
     d88: b40001e8     	cbz	x8, 0xdc4 <gpio_keys_probe+0xdc0>
     d8c: b85fc110     	ldur	w16, [x8, #-0x4]
     d90: 729f8df1     	movk	w17, #0xfc6f
     d94: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     d98: 6b11021f     	cmp	w16, w17
     d9c: 54000040     	b.eq	0xda4 <gpio_keys_probe+0xda0>
     da0: d4304500     	brk	#0x8228
     da4: d63f0100     	blr	x8
     da8: 14000007     	b	0xdc4 <gpio_keys_probe+0xdc0>
     dac: 128002b4     	mov	w20, #-0x16             // =-22
     db0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     db4: 91000000     	add	x0, x0, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     db8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     dbc: 91000021     	add	x1, x1, #0x0
		0000000000000dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     dc0: 94000000     	bl	0xdc0 <gpio_keys_probe+0xdbc>
		0000000000000dc0:  R_AARCH64_CALL26	_printk
     dc4: d5384108     	mrs	x8, SP_EL0
     dc8: f9438908     	ldr	x8, [x8, #0x710]
     dcc: f85f83a9     	ldur	x9, [x29, #-0x8]
     dd0: eb09011f     	cmp	x8, x9
     dd4: 540001e1     	b.ne	0xe10 <gpio_keys_probe+0xe0c>
     dd8: 2a1403e0     	mov	w0, w20
     ddc: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
     de0: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
     de4: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
     de8: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
     dec: a9496ffc     	ldp	x28, x27, [sp, #0x90]
     df0: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     df4: 910383ff     	add	sp, sp, #0xe0
     df8: d50323bf     	autiasp
     dfc: d65f03c0     	ret
     e00: d4200020     	brk	#0x1
     e04: f900229f     	str	xzr, [x20, #0x40]
     e08: 12800174     	mov	w20, #-0xc              // =-12
     e0c: 17ffffee     	b	0xdc4 <gpio_keys_probe+0xdc0>
     e10: 94000000     	bl	0xe10 <gpio_keys_probe+0xe0c>
		0000000000000e10:  R_AARCH64_CALL26	__stack_chk_fail
