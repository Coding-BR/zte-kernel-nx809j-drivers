
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
      2c: aa0003f5     	mov	x21, x0
      30: 91004017     	add	x23, x0, #0x10
      34: f9438908     	ldr	x8, [x8, #0x710]
      38: f81f83a8     	stur	x8, [x29, #-0x8]
      3c: f940501a     	ldr	x26, [x0, #0xa0]
      40: b400435a     	cbz	x26, 0x8a8 <gpio_keys_probe+0x8a4>
      44: b9800b48     	ldrsw	x8, [x26, #0x8]
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
      78: b4005c20     	cbz	x0, 0xbfc <gpio_keys_probe+0xbf8>
      7c: b9400b48     	ldr	w8, [x26, #0x8]
      80: aa0003f4     	mov	x20, x0
      84: 37f86c48     	tbnz	w8, #0x1f, 0xe0c <gpio_keys_probe+0xe08>
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
      a8: b4005b00     	cbz	x0, 0xc08 <gpio_keys_probe+0xc04>
      ac: 927df268     	and	x8, x19, #0xfffffffffffffff8
      b0: f900029a     	str	x26, [x20]
      b4: f100211f     	cmp	x8, #0x8
      b8: 54006a80     	b.eq	0xe08 <gpio_keys_probe+0xe04>
      bc: aa0003f6     	mov	x22, x0
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
      dc: f90056b4     	str	x20, [x21, #0xa8]
      e0: f90166d4     	str	x20, [x22, #0x2c8]
      e4: f9401748     	ldr	x8, [x26, #0x28]
      e8: b5000048     	cbnz	x8, 0xf0 <gpio_keys_probe+0xec>
      ec: f94002a8     	ldr	x8, [x21]
      f0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000000f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66a
      f4: 91000129     	add	x9, x9, #0x0
		00000000000000f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66a
      f8: f9014ad7     	str	x23, [x22, #0x290]
      fc: a90026c8     	stp	x8, x9, [x22]
     100: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe68
     104: 91000108     	add	x8, x8, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe68
     108: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xf2c
     10c: 91000129     	add	x9, x9, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xf2c
     110: a91ca6c8     	stp	x8, x9, [x22, #0x1c8]
     114: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
     118: f2800328     	movk	x8, #0x19
     11c: f2e02008     	movk	x8, #0x100, lsl #48
     120: f9000ec8     	str	x8, [x22, #0x18]
     124: f9402288     	ldr	x8, [x20, #0x40]
     128: f90072c8     	str	x8, [x22, #0xe0]
     12c: 52800048     	mov	w8, #0x2                // =2
     130: b900dac8     	str	w8, [x22, #0xd8]
     134: b9400b48     	ldr	w8, [x26, #0x8]
     138: b900d6c8     	str	w8, [x22, #0xd4]
     13c: 39404348     	ldrb	w8, [x26, #0x10]
     140: 36000088     	tbz	w8, #0x0, 0x150 <gpio_keys_probe+0x14c>
     144: f94016c8     	ldr	x8, [x22, #0x28]
     148: b26c0108     	orr	x8, x8, #0x100000
     14c: f90016c8     	str	x8, [x22, #0x28]
     150: b9400b48     	ldr	w8, [x26, #0x8]
     154: 7100051f     	cmp	w8, #0x1
     158: 540052ab     	b.lt	0xbac <gpio_keys_probe+0xba8>
     15c: f81c83b6     	stur	x22, [x29, #-0x38]
     160: 2a1f03f8     	mov	w24, wzr
     164: aa1f03e1     	mov	x1, xzr
     168: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     16c: 9100037b     	add	x27, x27, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     170: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x681
     174: 9100039c     	add	x28, x28, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x681
     178: 91012288     	add	x8, x20, #0x48
     17c: 90000016     	adrp	x22, 0x0 <.text>
		000000000000017c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59a
     180: 910002d6     	add	x22, x22, #0x0
		0000000000000180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59a
     184: f81d83bf     	stur	xzr, [x29, #-0x28]
     188: f9000bf4     	str	x20, [sp, #0x10]
     18c: a9025fe8     	stp	x8, x23, [sp, #0x20]
     190: f81e03b3     	stur	x19, [x29, #-0x20]
     194: f94052a8     	ldr	x8, [x21, #0xa0]
     198: f9400353     	ldr	x19, [x26]
     19c: b50000a8     	cbnz	x8, 0x1b0 <gpio_keys_probe+0x1ac>
     1a0: aa1703e0     	mov	x0, x23
     1a4: 94000000     	bl	0x1a4 <gpio_keys_probe+0x1a0>
		00000000000001a4:  R_AARCH64_CALL26	device_get_next_child_node
     1a8: aa0003e1     	mov	x1, x0
     1ac: b40056e0     	cbz	x0, 0xc88 <gpio_keys_probe+0xc84>
     1b0: f85d83a8     	ldur	x8, [x29, #-0x28]
     1b4: 52800709     	mov	w9, #0x38               // =56
     1b8: b90037f8     	str	w24, [sp, #0x34]
     1bc: 9b094d19     	madd	x25, x8, x9, x19
     1c0: 8b081108     	add	x8, x8, x8, lsl #4
     1c4: f85e03b3     	ldur	x19, [x29, #-0x20]
     1c8: d37ced0a     	lsl	x10, x8, #4
     1cc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58a
     1d0: 91000108     	add	x8, x8, #0x0
		00000000000001d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58a
     1d4: f9400b29     	ldr	x9, [x25, #0x10]
     1d8: a93effaa     	stp	x10, xzr, [x29, #-0x18]
     1dc: f100013f     	cmp	x9, #0x0
     1e0: 9a890108     	csel	x8, x8, x9, eq
     1e4: f81d03a8     	stur	x8, [x29, #-0x30]
     1e8: b1014148     	adds	x8, x10, #0x50
     1ec: 540060e4     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     1f0: eb08027f     	cmp	x19, x8
     1f4: 540060a3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     1f8: f85e83aa     	ldur	x10, [x29, #-0x18]
     1fc: f94013e8     	ldr	x8, [sp, #0x20]
     200: 91012149     	add	x9, x10, #0x48
     204: 8b0a0118     	add	x24, x8, x10
     208: f85c83aa     	ldur	x10, [x29, #-0x38]
     20c: eb090268     	subs	x8, x19, x9
     210: f900070a     	str	x10, [x24, #0x8]
     214: b7f85fa9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     218: 54005f83     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     21c: f100211f     	cmp	x8, #0x8
     220: 54005f43     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     224: f85e83a8     	ldur	x8, [x29, #-0x18]
     228: f9000319     	str	x25, [x24]
     22c: 91053109     	add	x9, x8, #0x14c
     230: eb090268     	subs	x8, x19, x9
     234: b7f85ea9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     238: 54005e83     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     23c: f100111f     	cmp	x8, #0x4
     240: 54005e43     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     244: b901071f     	str	wzr, [x24, #0x104]
     248: f9001fe1     	str	x1, [sp, #0x38]
     24c: b5000301     	cbnz	x1, 0x2ac <gpio_keys_probe+0x2a8>
     250: b9400721     	ldr	w1, [x25, #0x4]
     254: 37f80661     	tbnz	w1, #0x1f, 0x320 <gpio_keys_probe+0x31c>
     258: b9400b28     	ldr	w8, [x25, #0x8]
     25c: f85d03a3     	ldur	x3, [x29, #-0x30]
     260: aa1703e0     	mov	x0, x23
     264: 7100011f     	cmp	w8, #0x0
     268: 528000a8     	mov	w8, #0x5                // =5
     26c: 9a9f1502     	csinc	x2, x8, xzr, ne
     270: 94000000     	bl	0x270 <gpio_keys_probe+0x26c>
		0000000000000270:  R_AARCH64_CALL26	devm_gpio_request_one
     274: b9400722     	ldr	w2, [x25, #0x4]
     278: 37f85500     	tbnz	w0, #0x1f, 0xd18 <gpio_keys_probe+0xd14>
     27c: 2a0203e0     	mov	w0, w2
     280: 94000000     	bl	0x280 <gpio_keys_probe+0x27c>
		0000000000000280:  R_AARCH64_CALL26	gpio_to_desc
     284: f85e83a8     	ldur	x8, [x29, #-0x18]
     288: 91016109     	add	x9, x8, #0x58
     28c: eb090268     	subs	x8, x19, x9
     290: b7f85bc9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     294: 54005ba3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     298: f100211f     	cmp	x8, #0x8
     29c: 54005b63     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     2a0: f9000b00     	str	x0, [x24, #0x10]
     2a4: b5000500     	cbnz	x0, 0x344 <gpio_keys_probe+0x340>
     2a8: 140002b1     	b	0xd6c <gpio_keys_probe+0xd68>
     2ac: f85d03a5     	ldur	x5, [x29, #-0x30]
     2b0: aa1703e0     	mov	x0, x23
     2b4: aa1f03e2     	mov	x2, xzr
     2b8: 2a1f03e3     	mov	w3, wzr
     2bc: 52800024     	mov	w4, #0x1                // =1
     2c0: 94000000     	bl	0x2c0 <gpio_keys_probe+0x2bc>
		00000000000002c0:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
     2c4: f85e83a8     	ldur	x8, [x29, #-0x18]
     2c8: 91016108     	add	x8, x8, #0x58
     2cc: eb080269     	subs	x9, x19, x8
     2d0: b7f859c8     	tbnz	x8, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     2d4: 540059a3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     2d8: f100213f     	cmp	x9, #0x8
     2dc: 54005963     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     2e0: aa0003f4     	mov	x20, x0
     2e4: b13ffc1f     	cmn	x0, #0xfff
     2e8: f9000b00     	str	x0, [x24, #0x10]
     2ec: 540002a3     	b.lo	0x340 <gpio_keys_probe+0x33c>
     2f0: 31000a9f     	cmn	w20, #0x2
     2f4: 54001520     	b.eq	0x598 <gpio_keys_probe+0x594>
     2f8: 3108169f     	cmn	w20, #0x205
     2fc: 540053c0     	b.eq	0xd74 <gpio_keys_probe+0xd70>
     300: aa1703e0     	mov	x0, x23
     304: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b
     308: 91000021     	add	x1, x1, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b
     30c: 2a1403e2     	mov	w2, w20
     310: 94000000     	bl	0x310 <gpio_keys_probe+0x30c>
		0000000000000310:  R_AARCH64_CALL26	_dev_err
     314: f9401fe1     	ldr	x1, [sp, #0x38]
     318: 340029b4     	cbz	w20, 0x84c <gpio_keys_probe+0x848>
     31c: 14000298     	b	0xd7c <gpio_keys_probe+0xd78>
     320: f85e83a8     	ldur	x8, [x29, #-0x18]
     324: 91016109     	add	x9, x8, #0x58
     328: eb090268     	subs	x8, x19, x9
     32c: b7f856e9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     330: 540056c3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     334: f100211f     	cmp	x8, #0x8
     338: 54005683     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     33c: f9400b14     	ldr	x20, [x24, #0x10]
     340: b4001374     	cbz	x20, 0x5ac <gpio_keys_probe+0x5a8>
     344: f9417ea0     	ldr	x0, [x21, #0x2f8]
     348: aa1f03e1     	mov	x1, xzr
     34c: 94000000     	bl	0x34c <gpio_keys_probe+0x348>
		000000000000034c:  R_AARCH64_CALL26	of_get_next_child
     350: b4000280     	cbz	x0, 0x3a0 <gpio_keys_probe+0x39c>
     354: aa0003f3     	mov	x19, x0
     358: d10043a2     	sub	x2, x29, #0x10
     35c: aa1303e0     	mov	x0, x19
     360: aa1b03e1     	mov	x1, x27
     364: 94000000     	bl	0x364 <gpio_keys_probe+0x360>
		0000000000000364:  R_AARCH64_CALL26	of_property_read_string
     368: 37f801c0     	tbnz	w0, #0x1f, 0x3a0 <gpio_keys_probe+0x39c>
     36c: aa1303e0     	mov	x0, x19
     370: aa1c03e1     	mov	x1, x28
     374: 2a1f03e2     	mov	w2, wzr
     378: 94000000     	bl	0x378 <gpio_keys_probe+0x374>
		0000000000000378:  R_AARCH64_CALL26	of_get_named_gpio
     37c: f85f03a0     	ldur	x0, [x29, #-0x10]
     380: f9400b21     	ldr	x1, [x25, #0x10]
     384: 94000000     	bl	0x384 <gpio_keys_probe+0x380>
		0000000000000384:  R_AARCH64_CALL26	strcmp
     388: 34002780     	cbz	w0, 0x878 <gpio_keys_probe+0x874>
     38c: f9417ea0     	ldr	x0, [x21, #0x2f8]
     390: aa1303e1     	mov	x1, x19
     394: 94000000     	bl	0x394 <gpio_keys_probe+0x390>
		0000000000000394:  R_AARCH64_CALL26	of_get_next_child
     398: aa0003f3     	mov	x19, x0
     39c: b5fffde0     	cbnz	x0, 0x358 <gpio_keys_probe+0x354>
     3a0: 52800028     	mov	w8, #0x1                // =1
     3a4: b90043ff     	str	wzr, [sp, #0x40]
     3a8: b9001be8     	str	w8, [sp, #0x18]
     3ac: 52800048     	mov	w8, #0x2                // =2
     3b0: b9000fe8     	str	w8, [sp, #0xc]
     3b4: f85e83a9     	ldur	x9, [x29, #-0x18]
     3b8: b9402728     	ldr	w8, [x25, #0x24]
     3bc: 91016133     	add	x19, x9, #0x58
     3c0: 34000288     	cbz	w8, 0x410 <gpio_keys_probe+0x40c>
     3c4: f85e03a9     	ldur	x9, [x29, #-0x20]
     3c8: eb130129     	subs	x9, x9, x19
     3cc: b7f851f3     	tbnz	x19, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     3d0: 540051c3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     3d4: f100213f     	cmp	x9, #0x8
     3d8: 54005183     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     3dc: 52807d09     	mov	w9, #0x3e8              // =1000
     3e0: f9400b00     	ldr	x0, [x24, #0x10]
     3e4: 1b097d01     	mul	w1, w8, w9
     3e8: 94000000     	bl	0x3e8 <gpio_keys_probe+0x3e4>
		00000000000003e8:  R_AARCH64_CALL26	gpiod_set_debounce
     3ec: 36f80120     	tbz	w0, #0x1f, 0x410 <gpio_keys_probe+0x40c>
     3f0: f85e83a8     	ldur	x8, [x29, #-0x18]
     3f4: b1040108     	adds	x8, x8, #0x100
     3f8: 54005084     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     3fc: f85e03a9     	ldur	x9, [x29, #-0x20]
     400: eb08013f     	cmp	x9, x8
     404: 54005023     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     408: b9402728     	ldr	w8, [x25, #0x24]
     40c: b900bb08     	str	w8, [x24, #0xb8]
     410: b9403334     	ldr	w20, [x25, #0x30]
     414: 350001b4     	cbnz	w20, 0x448 <gpio_keys_probe+0x444>
     418: f85e03a8     	ldur	x8, [x29, #-0x20]
     41c: eb130108     	subs	x8, x8, x19
     420: b7f84f53     	tbnz	x19, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     424: 54004f23     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     428: f100211f     	cmp	x8, #0x8
     42c: 54004ee3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     430: f9400b00     	ldr	x0, [x24, #0x10]
     434: 94000000     	bl	0x434 <gpio_keys_probe+0x430>
		0000000000000434:  R_AARCH64_CALL26	gpiod_to_irq
     438: 2a0003f4     	mov	w20, w0
     43c: 37f847c0     	tbnz	w0, #0x1f, 0xd34 <gpio_keys_probe+0xd30>
     440: 2a1403f7     	mov	w23, w20
     444: 14000002     	b	0x44c <gpio_keys_probe+0x448>
     448: 12800017     	mov	w23, #-0x1              // =-1
     44c: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
     450: 91041133     	add	x19, x9, #0x104
     454: eb130108     	subs	x8, x8, x19
     458: b7f84d93     	tbnz	x19, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     45c: 54004d63     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     460: f100111f     	cmp	x8, #0x4
     464: 54004d23     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     468: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
     46c: b900bf14     	str	w20, [x24, #0xbc]
     470: 91026149     	add	x9, x10, #0x98
     474: eb090108     	subs	x8, x8, x9
     478: b7f84c89     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     47c: 54004c63     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     480: f100211f     	cmp	x8, #0x8
     484: 54004c23     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     488: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     48c: 91016309     	add	x9, x24, #0x58
     490: f9002b08     	str	x8, [x24, #0x50]
     494: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
     498: f9002f09     	str	x9, [x24, #0x58]
     49c: f9003309     	str	x9, [x24, #0x60]
     4a0: b102c108     	adds	x8, x8, #0xb0
     4a4: 54004b24     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     4a8: eb08029f     	cmp	x20, x8
     4ac: 54004ae3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     4b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x110c
     4b4: 91000108     	add	x8, x8, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x110c
     4b8: 9101c300     	add	x0, x24, #0x70
     4bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004bc:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     4c0: 91000021     	add	x1, x1, #0x0
		00000000000004c0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     4c4: 52a00402     	mov	w2, #0x200000           // =2097152
     4c8: aa1f03e3     	mov	x3, xzr
     4cc: aa1f03e4     	mov	x4, xzr
     4d0: f9003708     	str	x8, [x24, #0x68]
     4d4: 94000000     	bl	0x4d4 <gpio_keys_probe+0x4d0>
		00000000000004d4:  R_AARCH64_CALL26	init_timer_key
     4d8: eb130288     	subs	x8, x20, x19
     4dc: 54004963     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     4e0: f100111f     	cmp	x8, #0x4
     4e4: 54004923     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     4e8: f85e83a8     	ldur	x8, [x29, #-0x18]
     4ec: aa1403f3     	mov	x19, x20
     4f0: 91042109     	add	x9, x8, #0x108
     4f4: eb090288     	subs	x8, x20, x9
     4f8: b7f84889     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     4fc: 54004863     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     500: f100111f     	cmp	x8, #0x4
     504: 54004823     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     508: 29578f02     	ldp	w2, w3, [x24, #0xbc]
     50c: b9403324     	ldr	w4, [x25, #0x30]
     510: b94043e5     	ldr	w5, [sp, #0x40]
     514: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x687
     518: 91000000     	add	x0, x0, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x687
     51c: 2a1703e1     	mov	w1, w23
     520: 94000000     	bl	0x520 <gpio_keys_probe+0x51c>
		0000000000000520:  R_AARCH64_CALL26	_printk
     524: b9402328     	ldr	w8, [x25, #0x20]
     528: 7100091f     	cmp	w8, #0x2
     52c: 540001a0     	b.eq	0x560 <gpio_keys_probe+0x55c>
     530: f94017f7     	ldr	x23, [sp, #0x28]
     534: 7100051f     	cmp	w8, #0x1
     538: 54000281     	b.ne	0x588 <gpio_keys_probe+0x584>
     53c: f85e83a8     	ldur	x8, [x29, #-0x18]
     540: 91052109     	add	x9, x8, #0x148
     544: eb090268     	subs	x8, x19, x9
     548: b7f84609     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     54c: 540045e3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     550: f100111f     	cmp	x8, #0x4
     554: 540045a3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     558: b9401be8     	ldr	w8, [sp, #0x18]
     55c: 1400000a     	b	0x584 <gpio_keys_probe+0x580>
     560: f85e83a8     	ldur	x8, [x29, #-0x18]
     564: f94017f7     	ldr	x23, [sp, #0x28]
     568: 91052109     	add	x9, x8, #0x148
     56c: eb090268     	subs	x8, x19, x9
     570: b7f844c9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     574: 540044a3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     578: f100111f     	cmp	x8, #0x4
     57c: 54004463     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     580: b9400fe8     	ldr	w8, [sp, #0xc]
     584: b9010308     	str	w8, [x24, #0x100]
     588: 52800073     	mov	w19, #0x3               // =3
     58c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000058c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1168
     590: 91000108     	add	x8, x8, #0x0
		0000000000000590:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1168
     594: 14000024     	b	0x624 <gpio_keys_probe+0x620>
     598: eb080268     	subs	x8, x19, x8
     59c: 54004363     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     5a0: f100211f     	cmp	x8, #0x8
     5a4: 54004323     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     5a8: f9000b1f     	str	xzr, [x24, #0x10]
     5ac: b9403328     	ldr	w8, [x25, #0x30]
     5b0: 340037a8     	cbz	w8, 0xca4 <gpio_keys_probe+0xca0>
     5b4: f85e83a9     	ldur	x9, [x29, #-0x18]
     5b8: 9104112a     	add	x10, x9, #0x104
     5bc: eb0a0269     	subs	x9, x19, x10
     5c0: b7f8424a     	tbnz	x10, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     5c4: 54004223     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     5c8: f100113f     	cmp	x9, #0x4
     5cc: 540041e3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     5d0: b900bf08     	str	w8, [x24, #0xbc]
     5d4: b9401b28     	ldr	w8, [x25, #0x18]
     5d8: 7100091f     	cmp	w8, #0x2
     5dc: 540036a2     	b.hs	0xcb0 <gpio_keys_probe+0xcac>
     5e0: f85e83a8     	ldur	x8, [x29, #-0x18]
     5e4: b1024108     	adds	x8, x8, #0x90
     5e8: 54004104     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     5ec: eb08027f     	cmp	x19, x8
     5f0: 540040c3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     5f4: b9402728     	ldr	w8, [x25, #0x24]
     5f8: 91008300     	add	x0, x24, #0x20
     5fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000005fc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1218
     600: 91000021     	add	x1, x1, #0x0
		0000000000000600:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1218
     604: 2a1f03e2     	mov	w2, wzr
     608: aa1f03e3     	mov	x3, xzr
     60c: aa1f03e4     	mov	x4, xzr
     610: b9004b08     	str	w8, [x24, #0x48]
     614: 94000000     	bl	0x614 <gpio_keys_probe+0x610>
		0000000000000614:  R_AARCH64_CALL26	init_timer_key
     618: aa1f03f3     	mov	x19, xzr
     61c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000061c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x12a0
     620: 91000108     	add	x8, x8, #0x0
		0000000000000620:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x12a0
     624: f90023e8     	str	x8, [sp, #0x40]
     628: f85e83a8     	ldur	x8, [x29, #-0x18]
     62c: b1018108     	adds	x8, x8, #0x60
     630: 54003ec4     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     634: f85e03a9     	ldur	x9, [x29, #-0x20]
     638: eb08013f     	cmp	x9, x8
     63c: 54003e63     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     640: f9400be8     	ldr	x8, [sp, #0x10]
     644: f85d83aa     	ldur	x10, [x29, #-0x28]
     648: f85c83a0     	ldur	x0, [x29, #-0x38]
     64c: f9402108     	ldr	x8, [x8, #0x40]
     650: 8b0a0509     	add	x9, x8, x10, lsl #1
     654: f9000f09     	str	x9, [x24, #0x18]
     658: b9400329     	ldr	w9, [x25]
     65c: 782a7909     	strh	w9, [x8, x10, lsl #1]
     660: b9401b28     	ldr	w8, [x25, #0x18]
     664: f9400f09     	ldr	x9, [x24, #0x18]
     668: 7100051f     	cmp	w8, #0x1
     66c: 79400122     	ldrh	w2, [x9]
     670: 1a9f8501     	csinc	w1, w8, wzr, hi
     674: 94000000     	bl	0x674 <gpio_keys_probe+0x670>
		0000000000000674:  R_AARCH64_CALL26	input_set_capability
     678: aa1703e0     	mov	x0, x23
     67c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000067c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13bc
     680: 91000021     	add	x1, x1, #0x0
		0000000000000680:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13bc
     684: aa1803e2     	mov	x2, x24
     688: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c
     68c: 91000063     	add	x3, x3, #0x0
		000000000000068c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c
     690: 94000000     	bl	0x690 <gpio_keys_probe+0x68c>
		0000000000000690:  R_AARCH64_CALL26	__devm_add_action
     694: 35002d40     	cbnz	w0, 0xc3c <gpio_keys_probe+0xc38>
     698: 3940a328     	ldrb	w8, [x25, #0x28]
     69c: b2790269     	orr	x9, x19, #0x80
     6a0: 7100011f     	cmp	w8, #0x0
     6a4: f85e83a8     	ldur	x8, [x29, #-0x18]
     6a8: 9a891263     	csel	x3, x19, x9, ne
     6ac: f85e03b3     	ldur	x19, [x29, #-0x20]
     6b0: 9104110a     	add	x10, x8, #0x104
     6b4: eb0a0268     	subs	x8, x19, x10
     6b8: b7f83a8a     	tbnz	x10, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     6bc: 54003a63     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     6c0: f100111f     	cmp	x8, #0x4
     6c4: 54003a23     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     6c8: b940bf01     	ldr	w1, [x24, #0xbc]
     6cc: f94023e2     	ldr	x2, [sp, #0x40]
     6d0: aa1703e0     	mov	x0, x23
     6d4: f85d03a4     	ldur	x4, [x29, #-0x30]
     6d8: aa1803e5     	mov	x5, x24
     6dc: f9000fe3     	str	x3, [sp, #0x18]
     6e0: 94000000     	bl	0x6e0 <gpio_keys_probe+0x6dc>
		00000000000006e0:  R_AARCH64_CALL26	devm_request_any_context_irq
     6e4: 37f82ba0     	tbnz	w0, #0x1f, 0xc58 <gpio_keys_probe+0xc54>
     6e8: f9417ea0     	ldr	x0, [x21, #0x2f8]
     6ec: aa1f03e1     	mov	x1, xzr
     6f0: 94000000     	bl	0x6f0 <gpio_keys_probe+0x6ec>
		00000000000006f0:  R_AARCH64_CALL26	of_get_next_child
     6f4: b40003c0     	cbz	x0, 0x76c <gpio_keys_probe+0x768>
     6f8: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
     6fc: aa0003f4     	mov	x20, x0
     700: 91043168     	add	x8, x11, #0x10c
     704: eb080149     	subs	x9, x10, x8
     708: fa442920     	ccmp	x9, #0x4, #0x0, hs
     70c: 91044169     	add	x9, x11, #0x110
     710: fa402908     	ccmp	x8, #0x0, #0x8, hs
     714: 1a9fa7f3     	cset	w19, lt
     718: f100013f     	cmp	x9, #0x0
     71c: fa49a140     	ccmp	x10, x9, #0x0, ge
     720: 1a9f27f7     	cset	w23, lo
     724: aa1403e0     	mov	x0, x20
     728: aa1c03e1     	mov	x1, x28
     72c: 2a1f03e2     	mov	w2, wzr
     730: 94000000     	bl	0x730 <gpio_keys_probe+0x72c>
		0000000000000730:  R_AARCH64_CALL26	of_get_named_gpio
     734: 370036b3     	tbnz	w19, #0x0, 0xe08 <gpio_keys_probe+0xe04>
     738: b900c700     	str	w0, [x24, #0xc4]
     73c: aa1403e0     	mov	x0, x20
     740: aa1603e1     	mov	x1, x22
     744: 2a1f03e2     	mov	w2, wzr
     748: 94000000     	bl	0x748 <gpio_keys_probe+0x744>
		0000000000000748:  R_AARCH64_CALL26	of_get_named_gpio
     74c: 370035f7     	tbnz	w23, #0x0, 0xe08 <gpio_keys_probe+0xe04>
     750: f9417ea8     	ldr	x8, [x21, #0x2f8]
     754: b900cb00     	str	w0, [x24, #0xc8]
     758: aa1403e1     	mov	x1, x20
     75c: aa0803e0     	mov	x0, x8
     760: 94000000     	bl	0x760 <gpio_keys_probe+0x75c>
		0000000000000760:  R_AARCH64_CALL26	of_get_next_child
     764: aa0003f4     	mov	x20, x0
     768: b5fffde0     	cbnz	x0, 0x724 <gpio_keys_probe+0x720>
     76c: a97e23b3     	ldp	x19, x8, [x29, #-0x20]
     770: b1044114     	adds	x20, x8, #0x110
     774: 540034a4     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     778: eb14027f     	cmp	x19, x20
     77c: 54003463     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     780: b940cb00     	ldr	w0, [x24, #0xc8]
     784: 34000160     	cbz	w0, 0x7b0 <gpio_keys_probe+0x7ac>
     788: 94000000     	bl	0x788 <gpio_keys_probe+0x784>
		0000000000000788:  R_AARCH64_CALL26	gpio_to_desc
     78c: 94000000     	bl	0x78c <gpio_keys_probe+0x788>
		000000000000078c:  R_AARCH64_CALL26	gpiod_to_irq
     790: f85e83a8     	ldur	x8, [x29, #-0x18]
     794: 91042109     	add	x9, x8, #0x108
     798: eb090268     	subs	x8, x19, x9
     79c: b7f83369     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     7a0: 54003343     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     7a4: f100111f     	cmp	x8, #0x4
     7a8: 54003303     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     7ac: b900c300     	str	w0, [x24, #0xc0]
     7b0: 91034300     	add	x0, x24, #0xd0
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
     7d0: eb090268     	subs	x8, x19, x9
     7d4: b7f831a9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     7d8: 54003183     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     7dc: f100111f     	cmp	x8, #0x4
     7e0: 54003143     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     7e4: f94017f7     	ldr	x23, [sp, #0x28]
     7e8: eb14027f     	cmp	x19, x20
     7ec: 540030e3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     7f0: 29588f02     	ldp	w2, w3, [x24, #0xc4]
     7f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     7f8: 91000000     	add	x0, x0, #0x0
		00000000000007f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     7fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a
     800: 91000021     	add	x1, x1, #0x0
		0000000000000800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a
     804: 94000000     	bl	0x804 <gpio_keys_probe+0x800>
		0000000000000804:  R_AARCH64_CALL26	_printk
     808: f85e83a8     	ldur	x8, [x29, #-0x18]
     80c: 91042109     	add	x9, x8, #0x108
     810: eb090268     	subs	x8, x19, x9
     814: b7f82fa9     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     818: 54002f83     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     81c: f100111f     	cmp	x8, #0x4
     820: 54002f43     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     824: b940c301     	ldr	w1, [x24, #0xc0]
     828: 34000101     	cbz	w1, 0x848 <gpio_keys_probe+0x844>
     82c: f94023e2     	ldr	x2, [sp, #0x40]
     830: f9400fe3     	ldr	x3, [sp, #0x18]
     834: aa1703e0     	mov	x0, x23
     838: f85d03a4     	ldur	x4, [x29, #-0x30]
     83c: aa1803e5     	mov	x5, x24
     840: 94000000     	bl	0x840 <gpio_keys_probe+0x83c>
		0000000000000840:  R_AARCH64_CALL26	devm_request_any_context_irq
     844: 37f80260     	tbnz	w0, #0x1f, 0x890 <gpio_keys_probe+0x88c>
     848: f9401fe1     	ldr	x1, [sp, #0x38]
     84c: b9401f28     	ldr	w8, [x25, #0x1c]
     850: b9800b49     	ldrsw	x9, [x26, #0x8]
     854: b94037f8     	ldr	w24, [sp, #0x34]
     858: 7100011f     	cmp	w8, #0x0
     85c: f85d83a8     	ldur	x8, [x29, #-0x28]
     860: 1a9f0718     	csinc	w24, w24, wzr, eq
     864: 91000508     	add	x8, x8, #0x1
     868: eb09011f     	cmp	x8, x9
     86c: f81d83a8     	stur	x8, [x29, #-0x28]
     870: 54ffc92b     	b.lt	0x194 <gpio_keys_probe+0x190>
     874: 140000b5     	b	0xb48 <gpio_keys_probe+0xb44>
     878: 52800048     	mov	w8, #0x2                // =2
     87c: b9001be8     	str	w8, [sp, #0x18]
     880: 52800028     	mov	w8, #0x1                // =1
     884: b9000fe8     	str	w8, [sp, #0xc]
     888: b90043e8     	str	w8, [sp, #0x40]
     88c: 17fffeca     	b	0x3b4 <gpio_keys_probe+0x3b0>
     890: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
     894: 91000000     	add	x0, x0, #0x0
		0000000000000894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
     898: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x656
     89c: 91000021     	add	x1, x1, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x656
     8a0: 94000000     	bl	0x8a0 <gpio_keys_probe+0x89c>
		00000000000008a0:  R_AARCH64_CALL26	_printk
     8a4: 17ffffe9     	b	0x848 <gpio_keys_probe+0x844>
     8a8: aa1703e0     	mov	x0, x23
     8ac: 94000000     	bl	0x8ac <gpio_keys_probe+0x8a8>
		00000000000008ac:  R_AARCH64_CALL26	device_get_child_node_count
     8b0: 340019a0     	cbz	w0, 0xbe4 <gpio_keys_probe+0xbe0>
     8b4: 2a0003f3     	mov	w19, w0
     8b8: 52800708     	mov	w8, #0x38               // =56
     8bc: aa1703e0     	mov	x0, x23
     8c0: 9b287e78     	smull	x24, w19, w8
     8c4: 5281b802     	mov	w2, #0xdc0              // =3520
     8c8: 9100c316     	add	x22, x24, #0x30
     8cc: aa1603e1     	mov	x1, x22
     8d0: 94000000     	bl	0x8d0 <gpio_keys_probe+0x8cc>
		00000000000008d0:  R_AARCH64_CALL26	devm_kmalloc
     8d4: b40018e0     	cbz	x0, 0xbf0 <gpio_keys_probe+0xbec>
     8d8: b4002996     	cbz	x22, 0xe08 <gpio_keys_probe+0xe04>
     8dc: 9100c008     	add	x8, x0, #0x30
     8e0: aa0003fa     	mov	x26, x0
     8e4: b9000813     	str	w19, [x0, #0x8]
     8e8: f9000008     	str	x8, [x0]
     8ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cd
     8f0: 91000021     	add	x1, x1, #0x0
		00000000000008f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cd
     8f4: aa1703e0     	mov	x0, x23
     8f8: aa1703f3     	mov	x19, x23
     8fc: 94000000     	bl	0x8fc <gpio_keys_probe+0x8f8>
		00000000000008fc:  R_AARCH64_CALL26	device_property_present
     900: f10042df     	cmp	x22, #0x10
     904: 54002823     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     908: 39404348     	ldrb	w8, [x26, #0x10]
     90c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     910: 91000021     	add	x1, x1, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     914: 9100a342     	add	x2, x26, #0x28
     918: 33000008     	bfxil	w8, w0, #0, #1
     91c: aa1303e0     	mov	x0, x19
     920: 39004348     	strb	w8, [x26, #0x10]
     924: 94000000     	bl	0x924 <gpio_keys_probe+0x920>
		0000000000000924:  R_AARCH64_CALL26	device_property_read_string
     928: aa1303e0     	mov	x0, x19
     92c: aa1f03e1     	mov	x1, xzr
     930: 94000000     	bl	0x930 <gpio_keys_probe+0x92c>
		0000000000000930:  R_AARCH64_CALL26	device_get_next_child_node
     934: b4001500     	cbz	x0, 0xbd4 <gpio_keys_probe+0xbd0>
     938: 52800608     	mov	w8, #0x30               // =48
     93c: aa0003f4     	mov	x20, x0
     940: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     944: 9100039c     	add	x28, x28, #0x0
		0000000000000944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     948: cb180108     	sub	x8, x8, x24
     94c: 9000001b     	adrp	x27, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     950: 9100037b     	add	x27, x27, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     954: 52800c19     	mov	w25, #0x60              // =96
     958: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     95c: 91000318     	add	x24, x24, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     960: f81e83a8     	stur	x8, [x29, #-0x18]
     964: 14000007     	b	0x980 <gpio_keys_probe+0x97c>
     968: aa1703e0     	mov	x0, x23
     96c: aa1403e1     	mov	x1, x20
     970: 94000000     	bl	0x970 <gpio_keys_probe+0x96c>
		0000000000000970:  R_AARCH64_CALL26	device_get_next_child_node
     974: aa0003f4     	mov	x20, x0
     978: 9100e339     	add	x25, x25, #0x38
     97c: b40012c0     	cbz	x0, 0xbd4 <gpio_keys_probe+0xbd0>
     980: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     984: 540002c8     	b.hi	0x9dc <gpio_keys_probe+0x9d8>
     988: f9400688     	ldr	x8, [x20, #0x8]
     98c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     990: 91000129     	add	x9, x9, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     994: eb09011f     	cmp	x8, x9
     998: 54000221     	b.ne	0x9dc <gpio_keys_probe+0x9d8>
     99c: d1006280     	sub	x0, x20, #0x18
     9a0: 2a1f03e1     	mov	w1, wzr
     9a4: 94000000     	bl	0x9a4 <gpio_keys_probe+0x9a0>
		00000000000009a4:  R_AARCH64_CALL26	irq_of_parse_and_map
     9a8: b7f82319     	tbnz	x25, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     9ac: f85e83a8     	ldur	x8, [x29, #-0x18]
     9b0: 8b190108     	add	x8, x8, x25
     9b4: f101811f     	cmp	x8, #0x60
     9b8: 54002280     	b.eq	0xe08 <gpio_keys_probe+0xe04>
     9bc: eb1902df     	cmp	x22, x25
     9c0: 54002243     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     9c4: b7f82239     	tbnz	x25, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     9c8: eb1902df     	cmp	x22, x25
     9cc: 540021e3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     9d0: f101811f     	cmp	x8, #0x60
     9d4: 540021a0     	b.eq	0xe08 <gpio_keys_probe+0xe04>
     9d8: b8396b40     	str	w0, [x26, x25]
     9dc: 8b190348     	add	x8, x26, x25
     9e0: aa1403e0     	mov	x0, x20
     9e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64b
     9e8: 91000021     	add	x1, x1, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64b
     9ec: d100c102     	sub	x2, x8, #0x30
     9f0: 52800023     	mov	w3, #0x1                // =1
     9f4: 94000000     	bl	0x9f4 <gpio_keys_probe+0x9f0>
		00000000000009f4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     9f8: 35001680     	cbnz	w0, 0xcc8 <gpio_keys_probe+0xcc4>
     9fc: 8b190353     	add	x19, x26, x25
     a00: aa1403e0     	mov	x0, x20
     a04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     a08: 91000021     	add	x1, x1, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     a0c: d1008262     	sub	x2, x19, #0x20
     a10: 94000000     	bl	0xa10 <gpio_keys_probe+0xa0c>
		0000000000000a10:  R_AARCH64_CALL26	fwnode_property_read_string
     a14: d1006273     	sub	x19, x19, #0x18
     a18: aa1403e0     	mov	x0, x20
     a1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x579
     a20: 91000021     	add	x1, x1, #0x0
		0000000000000a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x579
     a24: aa1303e2     	mov	x2, x19
     a28: 52800023     	mov	w3, #0x1                // =1
     a2c: 94000000     	bl	0xa2c <gpio_keys_probe+0xa28>
		0000000000000a2c:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     a30: 34000160     	cbz	w0, 0xa5c <gpio_keys_probe+0xa58>
     a34: f1006328     	subs	x8, x25, #0x18
     a38: 54001e84     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     a3c: eb0802df     	cmp	x22, x8
     a40: 54001e49     	b.ls	0xe08 <gpio_keys_probe+0xe04>
     a44: d1006328     	sub	x8, x25, #0x18
     a48: b7f81e08     	tbnz	x8, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     a4c: eb0802df     	cmp	x22, x8
     a50: 54001dc9     	b.ls	0xe08 <gpio_keys_probe+0xe04>
     a54: 52800028     	mov	w8, #0x1                // =1
     a58: b9000268     	str	w8, [x19]
     a5c: aa1403e0     	mov	x0, x20
     a60: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x271
     a64: 91000021     	add	x1, x1, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x271
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
     a88: f1005328     	subs	x8, x25, #0x14
     a8c: 54001be4     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     a90: eb0802df     	cmp	x22, x8
     a94: 54001ba3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     a98: f1005328     	subs	x8, x25, #0x14
     a9c: 54001b64     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     aa0: eb0802df     	cmp	x22, x8
     aa4: 54001b23     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     aa8: 8b190349     	add	x9, x26, x25
     aac: 12000008     	and	w8, w0, #0x1
     ab0: aa1403e0     	mov	x0, x20
     ab4: d1004122     	sub	x2, x9, #0x10
     ab8: aa1c03e1     	mov	x1, x28
     abc: 52800023     	mov	w3, #0x1                // =1
     ac0: b81ec128     	stur	w8, [x9, #-0x14]
     ac4: 94000000     	bl	0xac4 <gpio_keys_probe+0xac0>
		0000000000000ac4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     ac8: aa1403e0     	mov	x0, x20
     acc: aa1b03e1     	mov	x1, x27
     ad0: 94000000     	bl	0xad0 <gpio_keys_probe+0xacc>
		0000000000000ad0:  R_AARCH64_CALL26	fwnode_property_present
     ad4: f1002328     	subs	x8, x25, #0x8
     ad8: 54001984     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     adc: eb0802df     	cmp	x22, x8
     ae0: 54001949     	b.ls	0xe08 <gpio_keys_probe+0xe04>
     ae4: f1002328     	subs	x8, x25, #0x8
     ae8: 54001904     	b.mi	0xe08 <gpio_keys_probe+0xe04>
     aec: eb0802df     	cmp	x22, x8
     af0: 540018c9     	b.ls	0xe08 <gpio_keys_probe+0xe04>
     af4: 8b190348     	add	x8, x26, x25
     af8: 12000009     	and	w9, w0, #0x1
     afc: aa1403e0     	mov	x0, x20
     b00: d1003113     	sub	x19, x8, #0xc
     b04: aa1803e1     	mov	x1, x24
     b08: 52800023     	mov	w3, #0x1                // =1
     b0c: aa1303e2     	mov	x2, x19
     b10: 381f8109     	sturb	w9, [x8, #-0x8]
     b14: 94000000     	bl	0xb14 <gpio_keys_probe+0xb10>
		0000000000000b14:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     b18: 34fff280     	cbz	w0, 0x968 <gpio_keys_probe+0x964>
     b1c: d1003328     	sub	x8, x25, #0xc
     b20: eb0802df     	cmp	x22, x8
     b24: 54001723     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     b28: b7f81708     	tbnz	x8, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     b2c: eb0802df     	cmp	x22, x8
     b30: 540016c3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     b34: 528000a8     	mov	w8, #0x5                // =5
     b38: b9000268     	str	w8, [x19]
     b3c: 17ffff8b     	b	0x968 <gpio_keys_probe+0x964>
     b40: 12800174     	mov	w20, #-0xc              // =-12
     b44: 140000a2     	b	0xdcc <gpio_keys_probe+0xdc8>
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
     b8c: 350004a0     	cbnz	w0, 0xc20 <gpio_keys_probe+0xc1c>
     b90: 34000158     	cbz	w24, 0xbb8 <gpio_keys_probe+0xbb4>
     b94: aa1703e0     	mov	x0, x23
     b98: 52800021     	mov	w1, #0x1                // =1
     b9c: 94000000     	bl	0xb9c <gpio_keys_probe+0xb98>
		0000000000000b9c:  R_AARCH64_CALL26	device_set_wakeup_capable
     ba0: aa1703e0     	mov	x0, x23
     ba4: 94000000     	bl	0xba4 <gpio_keys_probe+0xba0>
		0000000000000ba4:  R_AARCH64_CALL26	device_wakeup_enable
     ba8: 14000009     	b	0xbcc <gpio_keys_probe+0xbc8>
     bac: aa1603e0     	mov	x0, x22
     bb0: 94000000     	bl	0xbb0 <gpio_keys_probe+0xbac>
		0000000000000bb0:  R_AARCH64_CALL26	input_register_device
     bb4: 35000360     	cbnz	w0, 0xc20 <gpio_keys_probe+0xc1c>
     bb8: aa1703e0     	mov	x0, x23
     bbc: 94000000     	bl	0xbbc <gpio_keys_probe+0xbb8>
		0000000000000bbc:  R_AARCH64_CALL26	device_wakeup_disable
     bc0: aa1703e0     	mov	x0, x23
     bc4: 2a1f03e1     	mov	w1, wzr
     bc8: 94000000     	bl	0xbc8 <gpio_keys_probe+0xbc4>
		0000000000000bc8:  R_AARCH64_CALL26	device_set_wakeup_capable
     bcc: 2a1f03f4     	mov	w20, wzr
     bd0: 1400007f     	b	0xdcc <gpio_keys_probe+0xdc8>
     bd4: b13fff5f     	cmn	x26, #0xfff
     bd8: 54ffa363     	b.lo	0x44 <gpio_keys_probe+0x40>
     bdc: 2a1a03f4     	mov	w20, w26
     be0: 1400007b     	b	0xdcc <gpio_keys_probe+0xdc8>
     be4: 9280025a     	mov	x26, #-0x13             // =-19
     be8: 2a1a03f4     	mov	w20, w26
     bec: 14000078     	b	0xdcc <gpio_keys_probe+0xdc8>
     bf0: 9280017a     	mov	x26, #-0xc              // =-12
     bf4: 2a1a03f4     	mov	w20, w26
     bf8: 14000075     	b	0xdcc <gpio_keys_probe+0xdc8>
     bfc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3
     c00: 91000021     	add	x1, x1, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3
     c04: 14000003     	b	0xc10 <gpio_keys_probe+0xc0c>
     c08: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
     c0c: 91000021     	add	x1, x1, #0x0
		0000000000000c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
     c10: aa1703e0     	mov	x0, x23
     c14: 94000000     	bl	0xc14 <gpio_keys_probe+0xc10>
		0000000000000c14:  R_AARCH64_CALL26	_dev_err
     c18: 12800174     	mov	w20, #-0xc              // =-12
     c1c: 1400006c     	b	0xdcc <gpio_keys_probe+0xdc8>
     c20: 2a0003f4     	mov	w20, w0
     c24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     c28: 91000021     	add	x1, x1, #0x0
		0000000000000c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     c2c: aa1703e0     	mov	x0, x23
     c30: 2a1403e2     	mov	w2, w20
     c34: 94000000     	bl	0xc34 <gpio_keys_probe+0xc30>
		0000000000000c34:  R_AARCH64_CALL26	_dev_err
     c38: 14000065     	b	0xdcc <gpio_keys_probe+0xdc8>
     c3c: 2a0003f4     	mov	w20, w0
     c40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d8
     c44: 91000021     	add	x1, x1, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d8
     c48: aa1703e0     	mov	x0, x23
     c4c: 2a1403e2     	mov	w2, w20
     c50: 94000000     	bl	0xc50 <gpio_keys_probe+0xc4c>
		0000000000000c50:  R_AARCH64_CALL26	_dev_err
     c54: 1400003e     	b	0xd4c <gpio_keys_probe+0xd48>
     c58: f85e83a8     	ldur	x8, [x29, #-0x18]
     c5c: 91041109     	add	x9, x8, #0x104
     c60: eb090268     	subs	x8, x19, x9
     c64: b7f80d29     	tbnz	x9, #0x3f, 0xe08 <gpio_keys_probe+0xe04>
     c68: 54000d03     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     c6c: f100111f     	cmp	x8, #0x4
     c70: 54000cc3     	b.lo	0xe08 <gpio_keys_probe+0xe04>
     c74: b940bf02     	ldr	w2, [x24, #0xbc]
     c78: 2a0003f4     	mov	w20, w0
     c7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     c80: 91000021     	add	x1, x1, #0x0
		0000000000000c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     c84: 1400002f     	b	0xd40 <gpio_keys_probe+0xd3c>
     c88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cd
     c8c: 91000021     	add	x1, x1, #0x0
		0000000000000c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cd
     c90: aa1703e0     	mov	x0, x23
     c94: f85d83a2     	ldur	x2, [x29, #-0x28]
     c98: 94000000     	bl	0xc98 <gpio_keys_probe+0xc94>
		0000000000000c98:  R_AARCH64_CALL26	_dev_err
     c9c: 128002b4     	mov	w20, #-0x16             // =-22
     ca0: 1400004b     	b	0xdcc <gpio_keys_probe+0xdc8>
     ca4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     ca8: 91000021     	add	x1, x1, #0x0
		0000000000000ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     cac: 14000003     	b	0xcb8 <gpio_keys_probe+0xcb4>
     cb0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
     cb4: 91000021     	add	x1, x1, #0x0
		0000000000000cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
     cb8: aa1703e0     	mov	x0, x23
     cbc: 94000000     	bl	0xcbc <gpio_keys_probe+0xcb8>
		0000000000000cbc:  R_AARCH64_CALL26	_dev_err
     cc0: 128002b4     	mov	w20, #-0x16             // =-22
     cc4: 14000022     	b	0xd4c <gpio_keys_probe+0xd48>
     cc8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d2
     ccc: 91000021     	add	x1, x1, #0x0
		0000000000000ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d2
     cd0: aa1703e0     	mov	x0, x23
     cd4: 94000000     	bl	0xcd4 <gpio_keys_probe+0xcd0>
		0000000000000cd4:  R_AARCH64_CALL26	_dev_err
     cd8: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     cdc: 540001a8     	b.hi	0xd10 <gpio_keys_probe+0xd0c>
     ce0: f9400688     	ldr	x8, [x20, #0x8]
     ce4: b4000168     	cbz	x8, 0xd10 <gpio_keys_probe+0xd0c>
     ce8: f9400508     	ldr	x8, [x8, #0x8]
     cec: b4000128     	cbz	x8, 0xd10 <gpio_keys_probe+0xd0c>
     cf0: aa1403e0     	mov	x0, x20
     cf4: b85fc110     	ldur	w16, [x8, #-0x4]
     cf8: 729f8df1     	movk	w17, #0xfc6f
     cfc: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     d00: 6b11021f     	cmp	w16, w17
     d04: 54000040     	b.eq	0xd0c <gpio_keys_probe+0xd08>
     d08: d4304500     	brk	#0x8228
     d0c: d63f0100     	blr	x8
     d10: 928002ba     	mov	x26, #-0x16             // =-22
     d14: 17ffffb2     	b	0xbdc <gpio_keys_probe+0xbd8>
     d18: 2a0003f4     	mov	w20, w0
     d1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     d20: 91000021     	add	x1, x1, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     d24: aa1703e0     	mov	x0, x23
     d28: 2a1403e3     	mov	w3, w20
     d2c: 94000000     	bl	0xd2c <gpio_keys_probe+0xd28>
		0000000000000d2c:  R_AARCH64_CALL26	_dev_err
     d30: 14000009     	b	0xd54 <gpio_keys_probe+0xd50>
     d34: b9400722     	ldr	w2, [x25, #0x4]
     d38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ea
     d3c: 91000021     	add	x1, x1, #0x0
		0000000000000d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ea
     d40: aa1703e0     	mov	x0, x23
     d44: 2a1403e3     	mov	w3, w20
     d48: 94000000     	bl	0xd48 <gpio_keys_probe+0xd44>
		0000000000000d48:  R_AARCH64_CALL26	_dev_err
     d4c: f9401fe1     	ldr	x1, [sp, #0x38]
     d50: b5000161     	cbnz	x1, 0xd7c <gpio_keys_probe+0xd78>
     d54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     d58: 91000000     	add	x0, x0, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     d5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     d60: 91000021     	add	x1, x1, #0x0
		0000000000000d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     d64: 94000000     	bl	0xd64 <gpio_keys_probe+0xd60>
		0000000000000d64:  R_AARCH64_CALL26	_printk
     d68: 14000019     	b	0xdcc <gpio_keys_probe+0xdc8>
     d6c: 128002b4     	mov	w20, #-0x16             // =-22
     d70: 17fffff9     	b	0xd54 <gpio_keys_probe+0xd50>
     d74: f9401fe1     	ldr	x1, [sp, #0x38]
     d78: 12804094     	mov	w20, #-0x205            // =-517
     d7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     d80: 91000000     	add	x0, x0, #0x0
		0000000000000d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     d84: aa0103f3     	mov	x19, x1
     d88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     d8c: 91000021     	add	x1, x1, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     d90: 94000000     	bl	0xd90 <gpio_keys_probe+0xd8c>
		0000000000000d90:  R_AARCH64_CALL26	_printk
     d94: b140067f     	cmn	x19, #0x1, lsl #12      // =0x1000
     d98: 540001a8     	b.hi	0xdcc <gpio_keys_probe+0xdc8>
     d9c: f9400668     	ldr	x8, [x19, #0x8]
     da0: aa1303e0     	mov	x0, x19
     da4: b4000148     	cbz	x8, 0xdcc <gpio_keys_probe+0xdc8>
     da8: f9400508     	ldr	x8, [x8, #0x8]
     dac: b4000108     	cbz	x8, 0xdcc <gpio_keys_probe+0xdc8>
     db0: b85fc110     	ldur	w16, [x8, #-0x4]
     db4: 729f8df1     	movk	w17, #0xfc6f
     db8: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     dbc: 6b11021f     	cmp	w16, w17
     dc0: 54000040     	b.eq	0xdc8 <gpio_keys_probe+0xdc4>
     dc4: d4304500     	brk	#0x8228
     dc8: d63f0100     	blr	x8
     dcc: d5384108     	mrs	x8, SP_EL0
     dd0: f9438908     	ldr	x8, [x8, #0x710]
     dd4: f85f83a9     	ldur	x9, [x29, #-0x8]
     dd8: eb09011f     	cmp	x8, x9
     ddc: 540001e1     	b.ne	0xe18 <gpio_keys_probe+0xe14>
     de0: 2a1403e0     	mov	w0, w20
     de4: a94d4ff4     	ldp	x20, x19, [sp, #0xd0]
     de8: a94c57f6     	ldp	x22, x21, [sp, #0xc0]
     dec: a94b5ff8     	ldp	x24, x23, [sp, #0xb0]
     df0: a94a67fa     	ldp	x26, x25, [sp, #0xa0]
     df4: a9496ffc     	ldp	x28, x27, [sp, #0x90]
     df8: a9487bfd     	ldp	x29, x30, [sp, #0x80]
     dfc: 910383ff     	add	sp, sp, #0xe0
     e00: d50323bf     	autiasp
     e04: d65f03c0     	ret
     e08: d4200020     	brk	#0x1
     e0c: f900229f     	str	xzr, [x20, #0x40]
     e10: 12800174     	mov	w20, #-0xc              // =-12
     e14: 17ffffee     	b	0xdcc <gpio_keys_probe+0xdc8>
     e18: 94000000     	bl	0xe18 <gpio_keys_probe+0xe14>
		0000000000000e18:  R_AARCH64_CALL26	__stack_chk_fail
