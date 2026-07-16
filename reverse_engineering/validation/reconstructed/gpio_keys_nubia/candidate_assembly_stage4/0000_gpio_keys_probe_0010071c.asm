
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gpio_keys_probe>:
       4: d503233f     	paciasp
       8: d10343ff     	sub	sp, sp, #0xd0
       c: a9077bfd     	stp	x29, x30, [sp, #0x70]
      10: a9086ffc     	stp	x28, x27, [sp, #0x80]
      14: a90967fa     	stp	x26, x25, [sp, #0x90]
      18: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
      1c: a90b57f6     	stp	x22, x21, [sp, #0xb0]
      20: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
      24: 9101c3fd     	add	x29, sp, #0x70
      28: d5384108     	mrs	x8, SP_EL0
      2c: aa0003f5     	mov	x21, x0
      30: 91004017     	add	x23, x0, #0x10
      34: f9438908     	ldr	x8, [x8, #0x710]
      38: f81f83a8     	stur	x8, [x29, #-0x8]
      3c: f940501a     	ldr	x26, [x0, #0xa0]
      40: b400431a     	cbz	x26, 0x8a0 <gpio_keys_probe+0x89c>
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
      78: b4005be0     	cbz	x0, 0xbf4 <gpio_keys_probe+0xbf0>
      7c: b9400b48     	ldr	w8, [x26, #0x8]
      80: aa0003f4     	mov	x20, x0
      84: 37f86c08     	tbnz	w8, #0x1f, 0xe04 <gpio_keys_probe+0xe00>
      88: d37ff901     	lsl	x1, x8, #1
      8c: aa1703e0     	mov	x0, x23
      90: 5281b802     	mov	w2, #0xdc0              // =3520
      94: 94000000     	bl	0x94 <gpio_keys_probe+0x90>
		0000000000000094:  R_AARCH64_CALL26	devm_kmalloc
      98: f9002280     	str	x0, [x20, #0x40]
      9c: b40054e0     	cbz	x0, 0xb38 <gpio_keys_probe+0xb34>
      a0: aa1703e0     	mov	x0, x23
      a4: 94000000     	bl	0xa4 <gpio_keys_probe+0xa0>
		00000000000000a4:  R_AARCH64_CALL26	devm_input_allocate_device
      a8: b4005ac0     	cbz	x0, 0xc00 <gpio_keys_probe+0xbfc>
      ac: 927df268     	and	x8, x19, #0xfffffffffffffff8
      b0: f900029a     	str	x26, [x20]
      b4: f100211f     	cmp	x8, #0x8
      b8: 54006a40     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
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
		0000000000000100:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe60
     104: 91000108     	add	x8, x8, #0x0
		0000000000000104:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe60
     108: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000108:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xf24
     10c: 91000129     	add	x9, x9, #0x0
		000000000000010c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xf24
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
     158: 5400526b     	b.lt	0xba4 <gpio_keys_probe+0xba0>
     15c: f9001ff6     	str	x22, [sp, #0x38]
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
     188: f90003f4     	str	x20, [sp]
     18c: a9015fe8     	stp	x8, x23, [sp, #0x10]
     190: f81e03b3     	stur	x19, [x29, #-0x20]
     194: f94052a8     	ldr	x8, [x21, #0xa0]
     198: f9400353     	ldr	x19, [x26]
     19c: b50000a8     	cbnz	x8, 0x1b0 <gpio_keys_probe+0x1ac>
     1a0: aa1703e0     	mov	x0, x23
     1a4: 94000000     	bl	0x1a4 <gpio_keys_probe+0x1a0>
		00000000000001a4:  R_AARCH64_CALL26	device_get_next_child_node
     1a8: aa0003e1     	mov	x1, x0
     1ac: b40056a0     	cbz	x0, 0xc80 <gpio_keys_probe+0xc7c>
     1b0: f85d83a8     	ldur	x8, [x29, #-0x28]
     1b4: 52800709     	mov	w9, #0x38               // =56
     1b8: b90027f8     	str	w24, [sp, #0x24]
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
     1ec: 540060a4     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     1f0: eb08027f     	cmp	x19, x8
     1f4: 54006063     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     1f8: f85e83aa     	ldur	x10, [x29, #-0x18]
     1fc: f9400be8     	ldr	x8, [sp, #0x10]
     200: 91012149     	add	x9, x10, #0x48
     204: 8b0a0118     	add	x24, x8, x10
     208: f9401fea     	ldr	x10, [sp, #0x38]
     20c: eb090268     	subs	x8, x19, x9
     210: f900070a     	str	x10, [x24, #0x8]
     214: b7f85f69     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     218: 54005f43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     21c: f100211f     	cmp	x8, #0x8
     220: 54005f03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     224: f85e83a8     	ldur	x8, [x29, #-0x18]
     228: f9000319     	str	x25, [x24]
     22c: 91053109     	add	x9, x8, #0x14c
     230: eb090268     	subs	x8, x19, x9
     234: b7f85e69     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     238: 54005e43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     23c: f100111f     	cmp	x8, #0x4
     240: 54005e03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     244: b901071f     	str	wzr, [x24, #0x104]
     248: f90017e1     	str	x1, [sp, #0x28]
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
     278: 37f854c0     	tbnz	w0, #0x1f, 0xd10 <gpio_keys_probe+0xd0c>
     27c: 2a0203e0     	mov	w0, w2
     280: 94000000     	bl	0x280 <gpio_keys_probe+0x27c>
		0000000000000280:  R_AARCH64_CALL26	gpio_to_desc
     284: f85e83a8     	ldur	x8, [x29, #-0x18]
     288: 91016109     	add	x9, x8, #0x58
     28c: eb090268     	subs	x8, x19, x9
     290: b7f85b89     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     294: 54005b63     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     298: f100211f     	cmp	x8, #0x8
     29c: 54005b23     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2a0: f9000b00     	str	x0, [x24, #0x10]
     2a4: b5000500     	cbnz	x0, 0x344 <gpio_keys_probe+0x340>
     2a8: 140002af     	b	0xd64 <gpio_keys_probe+0xd60>
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
     2d0: b7f85988     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     2d4: 54005963     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2d8: f100213f     	cmp	x9, #0x8
     2dc: 54005923     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     2e0: aa0003f4     	mov	x20, x0
     2e4: b13ffc1f     	cmn	x0, #0xfff
     2e8: f9000b00     	str	x0, [x24, #0x10]
     2ec: 540002a3     	b.lo	0x340 <gpio_keys_probe+0x33c>
     2f0: 31000a9f     	cmn	w20, #0x2
     2f4: 54001560     	b.eq	0x5a0 <gpio_keys_probe+0x59c>
     2f8: 3108169f     	cmn	w20, #0x205
     2fc: 54005380     	b.eq	0xd6c <gpio_keys_probe+0xd68>
     300: aa1703e0     	mov	x0, x23
     304: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30b
     308: 91000021     	add	x1, x1, #0x0
		0000000000000308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30b
     30c: 2a1403e2     	mov	w2, w20
     310: 94000000     	bl	0x310 <gpio_keys_probe+0x30c>
		0000000000000310:  R_AARCH64_CALL26	_dev_err
     314: f94017e1     	ldr	x1, [sp, #0x28]
     318: 340029f4     	cbz	w20, 0x854 <gpio_keys_probe+0x850>
     31c: 14000296     	b	0xd74 <gpio_keys_probe+0xd70>
     320: f85e83a8     	ldur	x8, [x29, #-0x18]
     324: 91016109     	add	x9, x8, #0x58
     328: eb090268     	subs	x8, x19, x9
     32c: b7f856a9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     330: 54005683     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     334: f100211f     	cmp	x8, #0x8
     338: 54005643     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     33c: f9400b14     	ldr	x20, [x24, #0x10]
     340: b40013b4     	cbz	x20, 0x5b4 <gpio_keys_probe+0x5b0>
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
     388: 340027c0     	cbz	w0, 0x880 <gpio_keys_probe+0x87c>
     38c: f9417ea0     	ldr	x0, [x21, #0x2f8]
     390: aa1303e1     	mov	x1, x19
     394: 94000000     	bl	0x394 <gpio_keys_probe+0x390>
		0000000000000394:  R_AARCH64_CALL26	of_get_next_child
     398: aa0003f3     	mov	x19, x0
     39c: b5fffde0     	cbnz	x0, 0x358 <gpio_keys_probe+0x354>
     3a0: 2a1f03f4     	mov	w20, wzr
     3a4: f85e83a9     	ldur	x9, [x29, #-0x18]
     3a8: b9402728     	ldr	w8, [x25, #0x24]
     3ac: 91016133     	add	x19, x9, #0x58
     3b0: 34000288     	cbz	w8, 0x400 <gpio_keys_probe+0x3fc>
     3b4: f85e03a9     	ldur	x9, [x29, #-0x20]
     3b8: eb130129     	subs	x9, x9, x19
     3bc: b7f85233     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     3c0: 54005203     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3c4: f100213f     	cmp	x9, #0x8
     3c8: 540051c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3cc: 52807d09     	mov	w9, #0x3e8              // =1000
     3d0: f9400b00     	ldr	x0, [x24, #0x10]
     3d4: 1b097d01     	mul	w1, w8, w9
     3d8: 94000000     	bl	0x3d8 <gpio_keys_probe+0x3d4>
		00000000000003d8:  R_AARCH64_CALL26	gpiod_set_debounce
     3dc: 36f80120     	tbz	w0, #0x1f, 0x400 <gpio_keys_probe+0x3fc>
     3e0: f85e83a8     	ldur	x8, [x29, #-0x18]
     3e4: b1040108     	adds	x8, x8, #0x100
     3e8: 540050c4     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     3ec: f85e03a9     	ldur	x9, [x29, #-0x20]
     3f0: eb08013f     	cmp	x9, x8
     3f4: 54005063     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     3f8: b9402728     	ldr	w8, [x25, #0x24]
     3fc: b900bb08     	str	w8, [x24, #0xb8]
     400: b90033f4     	str	w20, [sp, #0x30]
     404: b9403334     	ldr	w20, [x25, #0x30]
     408: 350001b4     	cbnz	w20, 0x43c <gpio_keys_probe+0x438>
     40c: f85e03a8     	ldur	x8, [x29, #-0x20]
     410: eb130108     	subs	x8, x8, x19
     414: b7f84f73     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     418: 54004f43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     41c: f100211f     	cmp	x8, #0x8
     420: 54004f03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     424: f9400b00     	ldr	x0, [x24, #0x10]
     428: 94000000     	bl	0x428 <gpio_keys_probe+0x424>
		0000000000000428:  R_AARCH64_CALL26	gpiod_to_irq
     42c: 2a0003f4     	mov	w20, w0
     430: 37f847e0     	tbnz	w0, #0x1f, 0xd2c <gpio_keys_probe+0xd28>
     434: 2a1403f7     	mov	w23, w20
     438: 14000002     	b	0x440 <gpio_keys_probe+0x43c>
     43c: 12800017     	mov	w23, #-0x1              // =-1
     440: a97e27a8     	ldp	x8, x9, [x29, #-0x20]
     444: 91041133     	add	x19, x9, #0x104
     448: eb130108     	subs	x8, x8, x19
     44c: b7f84db3     	tbnz	x19, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     450: 54004d83     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     454: f100111f     	cmp	x8, #0x4
     458: 54004d43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     45c: a97e2ba8     	ldp	x8, x10, [x29, #-0x20]
     460: b900bf14     	str	w20, [x24, #0xbc]
     464: 91026149     	add	x9, x10, #0x98
     468: eb090108     	subs	x8, x8, x9
     46c: b7f84ca9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     470: 54004c83     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     474: f100211f     	cmp	x8, #0x8
     478: 54004c43     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     47c: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     480: 91016309     	add	x9, x24, #0x58
     484: f9002b08     	str	x8, [x24, #0x50]
     488: a97e23b4     	ldp	x20, x8, [x29, #-0x20]
     48c: f9002f09     	str	x9, [x24, #0x58]
     490: f9003309     	str	x9, [x24, #0x60]
     494: b102c108     	adds	x8, x8, #0xb0
     498: 54004b44     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     49c: eb08029f     	cmp	x20, x8
     4a0: 54004b03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4a4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004a4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1104
     4a8: 91000108     	add	x8, x8, #0x0
		00000000000004a8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1104
     4ac: 9101c300     	add	x0, x24, #0x70
     4b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004b0:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     4b4: 91000021     	add	x1, x1, #0x0
		00000000000004b4:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     4b8: 52a00402     	mov	w2, #0x200000           // =2097152
     4bc: aa1f03e3     	mov	x3, xzr
     4c0: aa1f03e4     	mov	x4, xzr
     4c4: f9003708     	str	x8, [x24, #0x68]
     4c8: 94000000     	bl	0x4c8 <gpio_keys_probe+0x4c4>
		00000000000004c8:  R_AARCH64_CALL26	init_timer_key
     4cc: eb130288     	subs	x8, x20, x19
     4d0: 54004983     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4d4: f100111f     	cmp	x8, #0x4
     4d8: 54004943     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4dc: f85e83a8     	ldur	x8, [x29, #-0x18]
     4e0: aa1403f3     	mov	x19, x20
     4e4: 91042109     	add	x9, x8, #0x108
     4e8: eb090288     	subs	x8, x20, x9
     4ec: b94033f4     	ldr	w20, [sp, #0x30]
     4f0: b7f84889     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     4f4: 54004863     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     4f8: f100111f     	cmp	x8, #0x4
     4fc: 54004823     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     500: 29578f02     	ldp	w2, w3, [x24, #0xbc]
     504: b9403324     	ldr	w4, [x25, #0x30]
     508: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x687
     50c: 91000000     	add	x0, x0, #0x0
		000000000000050c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x687
     510: 2a1703e1     	mov	w1, w23
     514: 2a1403e5     	mov	w5, w20
     518: 94000000     	bl	0x518 <gpio_keys_probe+0x514>
		0000000000000518:  R_AARCH64_CALL26	_printk
     51c: b9402328     	ldr	w8, [x25, #0x20]
     520: 7100091f     	cmp	w8, #0x2
     524: 540001e0     	b.eq	0x560 <gpio_keys_probe+0x55c>
     528: f9400ff7     	ldr	x23, [sp, #0x18]
     52c: 7100051f     	cmp	w8, #0x1
     530: 54000301     	b.ne	0x590 <gpio_keys_probe+0x58c>
     534: f85e83a8     	ldur	x8, [x29, #-0x18]
     538: 91052109     	add	x9, x8, #0x148
     53c: eb090268     	subs	x8, x19, x9
     540: b7f84609     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     544: 540045e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     548: f100111f     	cmp	x8, #0x4
     54c: 540045a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     550: 7100029f     	cmp	w20, #0x0
     554: 52800028     	mov	w8, #0x1                // =1
     558: 1a880508     	cinc	w8, w8, ne
     55c: 1400000c     	b	0x58c <gpio_keys_probe+0x588>
     560: f85e83a8     	ldur	x8, [x29, #-0x18]
     564: f9400ff7     	ldr	x23, [sp, #0x18]
     568: 91052109     	add	x9, x8, #0x148
     56c: eb090268     	subs	x8, x19, x9
     570: b7f84489     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     574: 54004463     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     578: f100111f     	cmp	x8, #0x4
     57c: 54004423     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     580: 7100029f     	cmp	w20, #0x0
     584: 52800028     	mov	w8, #0x1                // =1
     588: 1a881508     	cinc	w8, w8, eq
     58c: b9010308     	str	w8, [x24, #0x100]
     590: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000590:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1160
     594: 91000108     	add	x8, x8, #0x0
		0000000000000594:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1160
     598: 52800073     	mov	w19, #0x3               // =3
     59c: 14000024     	b	0x62c <gpio_keys_probe+0x628>
     5a0: eb080268     	subs	x8, x19, x8
     5a4: 540042e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5a8: f100211f     	cmp	x8, #0x8
     5ac: 540042a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5b0: f9000b1f     	str	xzr, [x24, #0x10]
     5b4: b9403328     	ldr	w8, [x25, #0x30]
     5b8: 34003728     	cbz	w8, 0xc9c <gpio_keys_probe+0xc98>
     5bc: f85e83a9     	ldur	x9, [x29, #-0x18]
     5c0: 9104112a     	add	x10, x9, #0x104
     5c4: eb0a0269     	subs	x9, x19, x10
     5c8: b7f841ca     	tbnz	x10, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     5cc: 540041a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5d0: f100113f     	cmp	x9, #0x4
     5d4: 54004163     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5d8: b900bf08     	str	w8, [x24, #0xbc]
     5dc: b9401b28     	ldr	w8, [x25, #0x18]
     5e0: 7100091f     	cmp	w8, #0x2
     5e4: 54003622     	b.hs	0xca8 <gpio_keys_probe+0xca4>
     5e8: f85e83a8     	ldur	x8, [x29, #-0x18]
     5ec: b1024108     	adds	x8, x8, #0x90
     5f0: 54004084     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     5f4: eb08027f     	cmp	x19, x8
     5f8: 54004043     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     5fc: b9402728     	ldr	w8, [x25, #0x24]
     600: 91008300     	add	x0, x24, #0x20
     604: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000604:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1210
     608: 91000021     	add	x1, x1, #0x0
		0000000000000608:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1210
     60c: 2a1f03e2     	mov	w2, wzr
     610: aa1f03e3     	mov	x3, xzr
     614: aa1f03e4     	mov	x4, xzr
     618: b9004b08     	str	w8, [x24, #0x48]
     61c: 94000000     	bl	0x61c <gpio_keys_probe+0x618>
		000000000000061c:  R_AARCH64_CALL26	init_timer_key
     620: aa1f03f3     	mov	x19, xzr
     624: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1298
     628: 91000108     	add	x8, x8, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1298
     62c: f9001be8     	str	x8, [sp, #0x30]
     630: f85e83a8     	ldur	x8, [x29, #-0x18]
     634: b1018108     	adds	x8, x8, #0x60
     638: 54003e44     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     63c: f85e03a9     	ldur	x9, [x29, #-0x20]
     640: eb08013f     	cmp	x9, x8
     644: 54003de3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     648: f94003e8     	ldr	x8, [sp]
     64c: f85d83aa     	ldur	x10, [x29, #-0x28]
     650: f9401fe0     	ldr	x0, [sp, #0x38]
     654: f9402108     	ldr	x8, [x8, #0x40]
     658: 8b0a0509     	add	x9, x8, x10, lsl #1
     65c: f9000f09     	str	x9, [x24, #0x18]
     660: b9400329     	ldr	w9, [x25]
     664: 782a7909     	strh	w9, [x8, x10, lsl #1]
     668: b9401b28     	ldr	w8, [x25, #0x18]
     66c: f9400f09     	ldr	x9, [x24, #0x18]
     670: 7100051f     	cmp	w8, #0x1
     674: 79400122     	ldrh	w2, [x9]
     678: 1a9f8501     	csinc	w1, w8, wzr, hi
     67c: 94000000     	bl	0x67c <gpio_keys_probe+0x678>
		000000000000067c:  R_AARCH64_CALL26	input_set_capability
     680: aa1703e0     	mov	x0, x23
     684: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x13b4
     688: 91000021     	add	x1, x1, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x13b4
     68c: aa1803e2     	mov	x2, x24
     690: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c
     694: 91000063     	add	x3, x3, #0x0
		0000000000000694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c
     698: 94000000     	bl	0x698 <gpio_keys_probe+0x694>
		0000000000000698:  R_AARCH64_CALL26	__devm_add_action
     69c: 35002cc0     	cbnz	w0, 0xc34 <gpio_keys_probe+0xc30>
     6a0: 3940a328     	ldrb	w8, [x25, #0x28]
     6a4: b2790269     	orr	x9, x19, #0x80
     6a8: 7100011f     	cmp	w8, #0x0
     6ac: f85e83a8     	ldur	x8, [x29, #-0x18]
     6b0: 9a891263     	csel	x3, x19, x9, ne
     6b4: f85e03b3     	ldur	x19, [x29, #-0x20]
     6b8: 9104110a     	add	x10, x8, #0x104
     6bc: eb0a0268     	subs	x8, x19, x10
     6c0: b7f83a0a     	tbnz	x10, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     6c4: 540039e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     6c8: f100111f     	cmp	x8, #0x4
     6cc: 540039a3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     6d0: b940bf01     	ldr	w1, [x24, #0xbc]
     6d4: f9401be2     	ldr	x2, [sp, #0x30]
     6d8: aa1703e0     	mov	x0, x23
     6dc: f85d03a4     	ldur	x4, [x29, #-0x30]
     6e0: aa1803e5     	mov	x5, x24
     6e4: f90007e3     	str	x3, [sp, #0x8]
     6e8: 94000000     	bl	0x6e8 <gpio_keys_probe+0x6e4>
		00000000000006e8:  R_AARCH64_CALL26	devm_request_any_context_irq
     6ec: 37f82b20     	tbnz	w0, #0x1f, 0xc50 <gpio_keys_probe+0xc4c>
     6f0: f9417ea0     	ldr	x0, [x21, #0x2f8]
     6f4: aa1f03e1     	mov	x1, xzr
     6f8: 94000000     	bl	0x6f8 <gpio_keys_probe+0x6f4>
		00000000000006f8:  R_AARCH64_CALL26	of_get_next_child
     6fc: b40003c0     	cbz	x0, 0x774 <gpio_keys_probe+0x770>
     700: a97e2faa     	ldp	x10, x11, [x29, #-0x20]
     704: aa0003f4     	mov	x20, x0
     708: 91043168     	add	x8, x11, #0x10c
     70c: eb080149     	subs	x9, x10, x8
     710: fa442920     	ccmp	x9, #0x4, #0x0, hs
     714: 91044169     	add	x9, x11, #0x110
     718: fa402908     	ccmp	x8, #0x0, #0x8, hs
     71c: 1a9fa7f3     	cset	w19, lt
     720: f100013f     	cmp	x9, #0x0
     724: fa49a140     	ccmp	x10, x9, #0x0, ge
     728: 1a9f27f7     	cset	w23, lo
     72c: aa1403e0     	mov	x0, x20
     730: aa1c03e1     	mov	x1, x28
     734: 2a1f03e2     	mov	w2, wzr
     738: 94000000     	bl	0x738 <gpio_keys_probe+0x734>
		0000000000000738:  R_AARCH64_CALL26	of_get_named_gpio
     73c: 37003633     	tbnz	w19, #0x0, 0xe00 <gpio_keys_probe+0xdfc>
     740: b900c700     	str	w0, [x24, #0xc4]
     744: aa1403e0     	mov	x0, x20
     748: aa1603e1     	mov	x1, x22
     74c: 2a1f03e2     	mov	w2, wzr
     750: 94000000     	bl	0x750 <gpio_keys_probe+0x74c>
		0000000000000750:  R_AARCH64_CALL26	of_get_named_gpio
     754: 37003577     	tbnz	w23, #0x0, 0xe00 <gpio_keys_probe+0xdfc>
     758: f9417ea8     	ldr	x8, [x21, #0x2f8]
     75c: b900cb00     	str	w0, [x24, #0xc8]
     760: aa1403e1     	mov	x1, x20
     764: aa0803e0     	mov	x0, x8
     768: 94000000     	bl	0x768 <gpio_keys_probe+0x764>
		0000000000000768:  R_AARCH64_CALL26	of_get_next_child
     76c: aa0003f4     	mov	x20, x0
     770: b5fffde0     	cbnz	x0, 0x72c <gpio_keys_probe+0x728>
     774: a97e23b3     	ldp	x19, x8, [x29, #-0x20]
     778: b1044114     	adds	x20, x8, #0x110
     77c: 54003424     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     780: eb14027f     	cmp	x19, x20
     784: 540033e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     788: b940cb00     	ldr	w0, [x24, #0xc8]
     78c: 34000160     	cbz	w0, 0x7b8 <gpio_keys_probe+0x7b4>
     790: 94000000     	bl	0x790 <gpio_keys_probe+0x78c>
		0000000000000790:  R_AARCH64_CALL26	gpio_to_desc
     794: 94000000     	bl	0x794 <gpio_keys_probe+0x790>
		0000000000000794:  R_AARCH64_CALL26	gpiod_to_irq
     798: f85e83a8     	ldur	x8, [x29, #-0x18]
     79c: 91042109     	add	x9, x8, #0x108
     7a0: eb090268     	subs	x8, x19, x9
     7a4: b7f832e9     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     7a8: 540032c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7ac: f100111f     	cmp	x8, #0x4
     7b0: 54003283     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7b4: b900c300     	str	w0, [x24, #0xc0]
     7b8: 91034300     	add	x0, x24, #0xd0
     7bc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x474
     7c0: 91000021     	add	x1, x1, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x474
     7c4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     7c8: 91000042     	add	x2, x2, #0x0
		00000000000007c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     7cc: 94000000     	bl	0x7cc <gpio_keys_probe+0x7c8>
		00000000000007cc:  R_AARCH64_CALL26	__mutex_init
     7d0: f85e83a8     	ldur	x8, [x29, #-0x18]
     7d4: 91043109     	add	x9, x8, #0x10c
     7d8: eb090268     	subs	x8, x19, x9
     7dc: b7f83129     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     7e0: 54003103     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7e4: f100111f     	cmp	x8, #0x4
     7e8: 540030c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7ec: f9400ff7     	ldr	x23, [sp, #0x18]
     7f0: eb14027f     	cmp	x19, x20
     7f4: 54003063     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     7f8: 29588f02     	ldp	w2, w3, [x24, #0xc4]
     7fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
     800: 91000000     	add	x0, x0, #0x0
		0000000000000800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
     804: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000804:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a
     808: 91000021     	add	x1, x1, #0x0
		0000000000000808:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a
     80c: 94000000     	bl	0x80c <gpio_keys_probe+0x808>
		000000000000080c:  R_AARCH64_CALL26	_printk
     810: f85e83a8     	ldur	x8, [x29, #-0x18]
     814: 91042109     	add	x9, x8, #0x108
     818: eb090268     	subs	x8, x19, x9
     81c: b7f82f29     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     820: 54002f03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     824: f100111f     	cmp	x8, #0x4
     828: 54002ec3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     82c: b940c301     	ldr	w1, [x24, #0xc0]
     830: 34000101     	cbz	w1, 0x850 <gpio_keys_probe+0x84c>
     834: f9401be2     	ldr	x2, [sp, #0x30]
     838: f94007e3     	ldr	x3, [sp, #0x8]
     83c: aa1703e0     	mov	x0, x23
     840: f85d03a4     	ldur	x4, [x29, #-0x30]
     844: aa1803e5     	mov	x5, x24
     848: 94000000     	bl	0x848 <gpio_keys_probe+0x844>
		0000000000000848:  R_AARCH64_CALL26	devm_request_any_context_irq
     84c: 37f801e0     	tbnz	w0, #0x1f, 0x888 <gpio_keys_probe+0x884>
     850: f94017e1     	ldr	x1, [sp, #0x28]
     854: b9401f28     	ldr	w8, [x25, #0x1c]
     858: b9800b49     	ldrsw	x9, [x26, #0x8]
     85c: b94027f8     	ldr	w24, [sp, #0x24]
     860: 7100011f     	cmp	w8, #0x0
     864: f85d83a8     	ldur	x8, [x29, #-0x28]
     868: 1a9f0718     	csinc	w24, w24, wzr, eq
     86c: 91000508     	add	x8, x8, #0x1
     870: eb09011f     	cmp	x8, x9
     874: f81d83a8     	stur	x8, [x29, #-0x28]
     878: 54ffc8eb     	b.lt	0x194 <gpio_keys_probe+0x190>
     87c: 140000b1     	b	0xb40 <gpio_keys_probe+0xb3c>
     880: 52800034     	mov	w20, #0x1               // =1
     884: 17fffec8     	b	0x3a4 <gpio_keys_probe+0x3a0>
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
     89c: 17ffffed     	b	0x850 <gpio_keys_probe+0x84c>
     8a0: aa1703e0     	mov	x0, x23
     8a4: 94000000     	bl	0x8a4 <gpio_keys_probe+0x8a0>
		00000000000008a4:  R_AARCH64_CALL26	device_get_child_node_count
     8a8: 340019a0     	cbz	w0, 0xbdc <gpio_keys_probe+0xbd8>
     8ac: 2a0003f3     	mov	w19, w0
     8b0: 52800708     	mov	w8, #0x38               // =56
     8b4: aa1703e0     	mov	x0, x23
     8b8: 9b287e78     	smull	x24, w19, w8
     8bc: 5281b802     	mov	w2, #0xdc0              // =3520
     8c0: 9100c316     	add	x22, x24, #0x30
     8c4: aa1603e1     	mov	x1, x22
     8c8: 94000000     	bl	0x8c8 <gpio_keys_probe+0x8c4>
		00000000000008c8:  R_AARCH64_CALL26	devm_kmalloc
     8cc: b40018e0     	cbz	x0, 0xbe8 <gpio_keys_probe+0xbe4>
     8d0: b4002996     	cbz	x22, 0xe00 <gpio_keys_probe+0xdfc>
     8d4: 9100c008     	add	x8, x0, #0x30
     8d8: aa0003fa     	mov	x26, x0
     8dc: b9000813     	str	w19, [x0, #0x8]
     8e0: f9000008     	str	x8, [x0]
     8e4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5cd
     8e8: 91000021     	add	x1, x1, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5cd
     8ec: aa1703e0     	mov	x0, x23
     8f0: aa1703f3     	mov	x19, x23
     8f4: 94000000     	bl	0x8f4 <gpio_keys_probe+0x8f0>
		00000000000008f4:  R_AARCH64_CALL26	device_property_present
     8f8: f10042df     	cmp	x22, #0x10
     8fc: 54002823     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     900: 39404348     	ldrb	w8, [x26, #0x10]
     904: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     908: 91000021     	add	x1, x1, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     90c: 9100a342     	add	x2, x26, #0x28
     910: 33000008     	bfxil	w8, w0, #0, #1
     914: aa1303e0     	mov	x0, x19
     918: 39004348     	strb	w8, [x26, #0x10]
     91c: 94000000     	bl	0x91c <gpio_keys_probe+0x918>
		000000000000091c:  R_AARCH64_CALL26	device_property_read_string
     920: aa1303e0     	mov	x0, x19
     924: aa1f03e1     	mov	x1, xzr
     928: 94000000     	bl	0x928 <gpio_keys_probe+0x924>
		0000000000000928:  R_AARCH64_CALL26	device_get_next_child_node
     92c: b4001500     	cbz	x0, 0xbcc <gpio_keys_probe+0xbc8>
     930: 52800608     	mov	w8, #0x30               // =48
     934: aa0003f4     	mov	x20, x0
     938: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x229
     93c: 9100039c     	add	x28, x28, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x229
     940: cb180108     	sub	x8, x8, x24
     944: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     948: 9100037b     	add	x27, x27, #0x0
		0000000000000948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     94c: 52800c19     	mov	w25, #0x60              // =96
     950: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     954: 91000318     	add	x24, x24, #0x0
		0000000000000954:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     958: f81e83a8     	stur	x8, [x29, #-0x18]
     95c: 14000007     	b	0x978 <gpio_keys_probe+0x974>
     960: aa1703e0     	mov	x0, x23
     964: aa1403e1     	mov	x1, x20
     968: 94000000     	bl	0x968 <gpio_keys_probe+0x964>
		0000000000000968:  R_AARCH64_CALL26	device_get_next_child_node
     96c: aa0003f4     	mov	x20, x0
     970: 9100e339     	add	x25, x25, #0x38
     974: b40012c0     	cbz	x0, 0xbcc <gpio_keys_probe+0xbc8>
     978: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     97c: 540002c8     	b.hi	0x9d4 <gpio_keys_probe+0x9d0>
     980: f9400688     	ldr	x8, [x20, #0x8]
     984: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000984:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     988: 91000129     	add	x9, x9, #0x0
		0000000000000988:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     98c: eb09011f     	cmp	x8, x9
     990: 54000221     	b.ne	0x9d4 <gpio_keys_probe+0x9d0>
     994: d1006280     	sub	x0, x20, #0x18
     998: 2a1f03e1     	mov	w1, wzr
     99c: 94000000     	bl	0x99c <gpio_keys_probe+0x998>
		000000000000099c:  R_AARCH64_CALL26	irq_of_parse_and_map
     9a0: b7f82319     	tbnz	x25, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     9a4: f85e83a8     	ldur	x8, [x29, #-0x18]
     9a8: 8b190108     	add	x8, x8, x25
     9ac: f101811f     	cmp	x8, #0x60
     9b0: 54002280     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
     9b4: eb1902df     	cmp	x22, x25
     9b8: 54002243     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     9bc: b7f82239     	tbnz	x25, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     9c0: eb1902df     	cmp	x22, x25
     9c4: 540021e3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     9c8: f101811f     	cmp	x8, #0x60
     9cc: 540021a0     	b.eq	0xe00 <gpio_keys_probe+0xdfc>
     9d0: b8396b40     	str	w0, [x26, x25]
     9d4: 8b190348     	add	x8, x26, x25
     9d8: aa1403e0     	mov	x0, x20
     9dc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64b
     9e0: 91000021     	add	x1, x1, #0x0
		00000000000009e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64b
     9e4: d100c102     	sub	x2, x8, #0x30
     9e8: 52800023     	mov	w3, #0x1                // =1
     9ec: 94000000     	bl	0x9ec <gpio_keys_probe+0x9e8>
		00000000000009ec:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     9f0: 35001680     	cbnz	w0, 0xcc0 <gpio_keys_probe+0xcbc>
     9f4: 8b190353     	add	x19, x26, x25
     9f8: aa1403e0     	mov	x0, x20
     9fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x537
     a00: 91000021     	add	x1, x1, #0x0
		0000000000000a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x537
     a04: d1008262     	sub	x2, x19, #0x20
     a08: 94000000     	bl	0xa08 <gpio_keys_probe+0xa04>
		0000000000000a08:  R_AARCH64_CALL26	fwnode_property_read_string
     a0c: d1006273     	sub	x19, x19, #0x18
     a10: aa1403e0     	mov	x0, x20
     a14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x579
     a18: 91000021     	add	x1, x1, #0x0
		0000000000000a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x579
     a1c: aa1303e2     	mov	x2, x19
     a20: 52800023     	mov	w3, #0x1                // =1
     a24: 94000000     	bl	0xa24 <gpio_keys_probe+0xa20>
		0000000000000a24:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     a28: 34000160     	cbz	w0, 0xa54 <gpio_keys_probe+0xa50>
     a2c: f1006328     	subs	x8, x25, #0x18
     a30: 54001e84     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     a34: eb0802df     	cmp	x22, x8
     a38: 54001e49     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     a3c: d1006328     	sub	x8, x25, #0x18
     a40: b7f81e08     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     a44: eb0802df     	cmp	x22, x8
     a48: 54001dc9     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     a4c: 52800028     	mov	w8, #0x1                // =1
     a50: b9000268     	str	w8, [x19]
     a54: aa1403e0     	mov	x0, x20
     a58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x271
     a5c: 91000021     	add	x1, x1, #0x0
		0000000000000a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x271
     a60: 94000000     	bl	0xa60 <gpio_keys_probe+0xa5c>
		0000000000000a60:  R_AARCH64_CALL26	fwnode_property_present
     a64: 36000060     	tbz	w0, #0x0, 0xa70 <gpio_keys_probe+0xa6c>
     a68: 52800020     	mov	w0, #0x1                // =1
     a6c: 14000005     	b	0xa80 <gpio_keys_probe+0xa7c>
     a70: aa1403e0     	mov	x0, x20
     a74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x219
     a78: 91000021     	add	x1, x1, #0x0
		0000000000000a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x219
     a7c: 94000000     	bl	0xa7c <gpio_keys_probe+0xa78>
		0000000000000a7c:  R_AARCH64_CALL26	fwnode_property_present
     a80: f1005328     	subs	x8, x25, #0x14
     a84: 54001be4     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     a88: eb0802df     	cmp	x22, x8
     a8c: 54001ba3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     a90: f1005328     	subs	x8, x25, #0x14
     a94: 54001b64     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     a98: eb0802df     	cmp	x22, x8
     a9c: 54001b23     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     aa0: 8b190349     	add	x9, x26, x25
     aa4: 12000008     	and	w8, w0, #0x1
     aa8: aa1403e0     	mov	x0, x20
     aac: d1004122     	sub	x2, x9, #0x10
     ab0: aa1c03e1     	mov	x1, x28
     ab4: 52800023     	mov	w3, #0x1                // =1
     ab8: b81ec128     	stur	w8, [x9, #-0x14]
     abc: 94000000     	bl	0xabc <gpio_keys_probe+0xab8>
		0000000000000abc:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     ac0: aa1403e0     	mov	x0, x20
     ac4: aa1b03e1     	mov	x1, x27
     ac8: 94000000     	bl	0xac8 <gpio_keys_probe+0xac4>
		0000000000000ac8:  R_AARCH64_CALL26	fwnode_property_present
     acc: f1002328     	subs	x8, x25, #0x8
     ad0: 54001984     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     ad4: eb0802df     	cmp	x22, x8
     ad8: 54001949     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     adc: f1002328     	subs	x8, x25, #0x8
     ae0: 54001904     	b.mi	0xe00 <gpio_keys_probe+0xdfc>
     ae4: eb0802df     	cmp	x22, x8
     ae8: 540018c9     	b.ls	0xe00 <gpio_keys_probe+0xdfc>
     aec: 8b190348     	add	x8, x26, x25
     af0: 12000009     	and	w9, w0, #0x1
     af4: aa1403e0     	mov	x0, x20
     af8: d1003113     	sub	x19, x8, #0xc
     afc: aa1803e1     	mov	x1, x24
     b00: 52800023     	mov	w3, #0x1                // =1
     b04: aa1303e2     	mov	x2, x19
     b08: 381f8109     	sturb	w9, [x8, #-0x8]
     b0c: 94000000     	bl	0xb0c <gpio_keys_probe+0xb08>
		0000000000000b0c:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     b10: 34fff280     	cbz	w0, 0x960 <gpio_keys_probe+0x95c>
     b14: d1003328     	sub	x8, x25, #0xc
     b18: eb0802df     	cmp	x22, x8
     b1c: 54001723     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     b20: b7f81708     	tbnz	x8, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     b24: eb0802df     	cmp	x22, x8
     b28: 540016c3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     b2c: 528000a8     	mov	w8, #0x5                // =5
     b30: b9000268     	str	w8, [x19]
     b34: 17ffff8b     	b	0x960 <gpio_keys_probe+0x95c>
     b38: 12800174     	mov	w20, #-0xc              // =-12
     b3c: 140000a2     	b	0xdc4 <gpio_keys_probe+0xdc0>
     b40: b40001e1     	cbz	x1, 0xb7c <gpio_keys_probe+0xb78>
     b44: b140043f     	cmn	x1, #0x1, lsl #12       // =0x1000
     b48: 540001a8     	b.hi	0xb7c <gpio_keys_probe+0xb78>
     b4c: f9400428     	ldr	x8, [x1, #0x8]
     b50: b4000168     	cbz	x8, 0xb7c <gpio_keys_probe+0xb78>
     b54: f9400508     	ldr	x8, [x8, #0x8]
     b58: b4000128     	cbz	x8, 0xb7c <gpio_keys_probe+0xb78>
     b5c: aa0103e0     	mov	x0, x1
     b60: b85fc110     	ldur	w16, [x8, #-0x4]
     b64: 729f8df1     	movk	w17, #0xfc6f
     b68: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     b6c: 6b11021f     	cmp	w16, w17
     b70: 54000040     	b.eq	0xb78 <gpio_keys_probe+0xb74>
     b74: d4304500     	brk	#0x8228
     b78: d63f0100     	blr	x8
     b7c: f9401fe0     	ldr	x0, [sp, #0x38]
     b80: 94000000     	bl	0xb80 <gpio_keys_probe+0xb7c>
		0000000000000b80:  R_AARCH64_CALL26	input_register_device
     b84: 350004a0     	cbnz	w0, 0xc18 <gpio_keys_probe+0xc14>
     b88: 34000158     	cbz	w24, 0xbb0 <gpio_keys_probe+0xbac>
     b8c: aa1703e0     	mov	x0, x23
     b90: 52800021     	mov	w1, #0x1                // =1
     b94: 94000000     	bl	0xb94 <gpio_keys_probe+0xb90>
		0000000000000b94:  R_AARCH64_CALL26	device_set_wakeup_capable
     b98: aa1703e0     	mov	x0, x23
     b9c: 94000000     	bl	0xb9c <gpio_keys_probe+0xb98>
		0000000000000b9c:  R_AARCH64_CALL26	device_wakeup_enable
     ba0: 14000009     	b	0xbc4 <gpio_keys_probe+0xbc0>
     ba4: aa1603e0     	mov	x0, x22
     ba8: 94000000     	bl	0xba8 <gpio_keys_probe+0xba4>
		0000000000000ba8:  R_AARCH64_CALL26	input_register_device
     bac: 35000360     	cbnz	w0, 0xc18 <gpio_keys_probe+0xc14>
     bb0: aa1703e0     	mov	x0, x23
     bb4: 94000000     	bl	0xbb4 <gpio_keys_probe+0xbb0>
		0000000000000bb4:  R_AARCH64_CALL26	device_wakeup_disable
     bb8: aa1703e0     	mov	x0, x23
     bbc: 2a1f03e1     	mov	w1, wzr
     bc0: 94000000     	bl	0xbc0 <gpio_keys_probe+0xbbc>
		0000000000000bc0:  R_AARCH64_CALL26	device_set_wakeup_capable
     bc4: 2a1f03f4     	mov	w20, wzr
     bc8: 1400007f     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bcc: b13fff5f     	cmn	x26, #0xfff
     bd0: 54ffa3a3     	b.lo	0x44 <gpio_keys_probe+0x40>
     bd4: 2a1a03f4     	mov	w20, w26
     bd8: 1400007b     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bdc: 9280025a     	mov	x26, #-0x13             // =-19
     be0: 2a1a03f4     	mov	w20, w26
     be4: 14000078     	b	0xdc4 <gpio_keys_probe+0xdc0>
     be8: 9280017a     	mov	x26, #-0xc              // =-12
     bec: 2a1a03f4     	mov	w20, w26
     bf0: 14000075     	b	0xdc4 <gpio_keys_probe+0xdc0>
     bf4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3
     bf8: 91000021     	add	x1, x1, #0x0
		0000000000000bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3
     bfc: 14000003     	b	0xc08 <gpio_keys_probe+0xc04>
     c00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb7
     c04: 91000021     	add	x1, x1, #0x0
		0000000000000c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb7
     c08: aa1703e0     	mov	x0, x23
     c0c: 94000000     	bl	0xc0c <gpio_keys_probe+0xc08>
		0000000000000c0c:  R_AARCH64_CALL26	_dev_err
     c10: 12800174     	mov	w20, #-0xc              // =-12
     c14: 1400006c     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c18: 2a0003f4     	mov	w20, w0
     c1c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ed
     c20: 91000021     	add	x1, x1, #0x0
		0000000000000c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ed
     c24: aa1703e0     	mov	x0, x23
     c28: 2a1403e2     	mov	w2, w20
     c2c: 94000000     	bl	0xc2c <gpio_keys_probe+0xc28>
		0000000000000c2c:  R_AARCH64_CALL26	_dev_err
     c30: 14000065     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c34: 2a0003f4     	mov	w20, w0
     c38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d8
     c3c: 91000021     	add	x1, x1, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d8
     c40: aa1703e0     	mov	x0, x23
     c44: 2a1403e2     	mov	w2, w20
     c48: 94000000     	bl	0xc48 <gpio_keys_probe+0xc44>
		0000000000000c48:  R_AARCH64_CALL26	_dev_err
     c4c: 1400003e     	b	0xd44 <gpio_keys_probe+0xd40>
     c50: f85e83a8     	ldur	x8, [x29, #-0x18]
     c54: 91041109     	add	x9, x8, #0x104
     c58: eb090268     	subs	x8, x19, x9
     c5c: b7f80d29     	tbnz	x9, #0x3f, 0xe00 <gpio_keys_probe+0xdfc>
     c60: 54000d03     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     c64: f100111f     	cmp	x8, #0x4
     c68: 54000cc3     	b.lo	0xe00 <gpio_keys_probe+0xdfc>
     c6c: b940bf02     	ldr	w2, [x24, #0xbc]
     c70: 2a0003f4     	mov	w20, w0
     c74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     c78: 91000021     	add	x1, x1, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     c7c: 1400002f     	b	0xd38 <gpio_keys_probe+0xd34>
     c80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cd
     c84: 91000021     	add	x1, x1, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cd
     c88: aa1703e0     	mov	x0, x23
     c8c: f85d83a2     	ldur	x2, [x29, #-0x28]
     c90: 94000000     	bl	0xc90 <gpio_keys_probe+0xc8c>
		0000000000000c90:  R_AARCH64_CALL26	_dev_err
     c94: 128002b4     	mov	w20, #-0x16             // =-22
     c98: 1400004b     	b	0xdc4 <gpio_keys_probe+0xdc0>
     c9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe8
     ca0: 91000021     	add	x1, x1, #0x0
		0000000000000ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe8
     ca4: 14000003     	b	0xcb0 <gpio_keys_probe+0xcac>
     ca8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e
     cac: 91000021     	add	x1, x1, #0x0
		0000000000000cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e
     cb0: aa1703e0     	mov	x0, x23
     cb4: 94000000     	bl	0xcb4 <gpio_keys_probe+0xcb0>
		0000000000000cb4:  R_AARCH64_CALL26	_dev_err
     cb8: 128002b4     	mov	w20, #-0x16             // =-22
     cbc: 14000022     	b	0xd44 <gpio_keys_probe+0xd40>
     cc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d2
     cc4: 91000021     	add	x1, x1, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d2
     cc8: aa1703e0     	mov	x0, x23
     ccc: 94000000     	bl	0xccc <gpio_keys_probe+0xcc8>
		0000000000000ccc:  R_AARCH64_CALL26	_dev_err
     cd0: b140069f     	cmn	x20, #0x1, lsl #12      // =0x1000
     cd4: 540001a8     	b.hi	0xd08 <gpio_keys_probe+0xd04>
     cd8: f9400688     	ldr	x8, [x20, #0x8]
     cdc: b4000168     	cbz	x8, 0xd08 <gpio_keys_probe+0xd04>
     ce0: f9400508     	ldr	x8, [x8, #0x8]
     ce4: b4000128     	cbz	x8, 0xd08 <gpio_keys_probe+0xd04>
     ce8: aa1403e0     	mov	x0, x20
     cec: b85fc110     	ldur	w16, [x8, #-0x4]
     cf0: 729f8df1     	movk	w17, #0xfc6f
     cf4: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     cf8: 6b11021f     	cmp	w16, w17
     cfc: 54000040     	b.eq	0xd04 <gpio_keys_probe+0xd00>
     d00: d4304500     	brk	#0x8228
     d04: d63f0100     	blr	x8
     d08: 928002ba     	mov	x26, #-0x16             // =-22
     d0c: 17ffffb2     	b	0xbd4 <gpio_keys_probe+0xbd0>
     d10: 2a0003f4     	mov	w20, w0
     d14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x179
     d18: 91000021     	add	x1, x1, #0x0
		0000000000000d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x179
     d1c: aa1703e0     	mov	x0, x23
     d20: 2a1403e3     	mov	w3, w20
     d24: 94000000     	bl	0xd24 <gpio_keys_probe+0xd20>
		0000000000000d24:  R_AARCH64_CALL26	_dev_err
     d28: 14000009     	b	0xd4c <gpio_keys_probe+0xd48>
     d2c: b9400722     	ldr	w2, [x25, #0x4]
     d30: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ea
     d34: 91000021     	add	x1, x1, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ea
     d38: aa1703e0     	mov	x0, x23
     d3c: 2a1403e3     	mov	w3, w20
     d40: 94000000     	bl	0xd40 <gpio_keys_probe+0xd3c>
		0000000000000d40:  R_AARCH64_CALL26	_dev_err
     d44: f94017e1     	ldr	x1, [sp, #0x28]
     d48: b5000161     	cbnz	x1, 0xd74 <gpio_keys_probe+0xd70>
     d4c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     d50: 91000000     	add	x0, x0, #0x0
		0000000000000d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     d54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     d58: 91000021     	add	x1, x1, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     d5c: 94000000     	bl	0xd5c <gpio_keys_probe+0xd58>
		0000000000000d5c:  R_AARCH64_CALL26	_printk
     d60: 14000019     	b	0xdc4 <gpio_keys_probe+0xdc0>
     d64: 128002b4     	mov	w20, #-0x16             // =-22
     d68: 17fffff9     	b	0xd4c <gpio_keys_probe+0xd48>
     d6c: f94017e1     	ldr	x1, [sp, #0x28]
     d70: 12804094     	mov	w20, #-0x205            // =-517
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x511
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x511
     d7c: aa0103f3     	mov	x19, x1
     d80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501
     d84: 91000021     	add	x1, x1, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501
     d88: 94000000     	bl	0xd88 <gpio_keys_probe+0xd84>
		0000000000000d88:  R_AARCH64_CALL26	_printk
     d8c: b140067f     	cmn	x19, #0x1, lsl #12      // =0x1000
     d90: 540001a8     	b.hi	0xdc4 <gpio_keys_probe+0xdc0>
     d94: f9400668     	ldr	x8, [x19, #0x8]
     d98: aa1303e0     	mov	x0, x19
     d9c: b4000148     	cbz	x8, 0xdc4 <gpio_keys_probe+0xdc0>
     da0: f9400508     	ldr	x8, [x8, #0x8]
     da4: b4000108     	cbz	x8, 0xdc4 <gpio_keys_probe+0xdc0>
     da8: b85fc110     	ldur	w16, [x8, #-0x4]
     dac: 729f8df1     	movk	w17, #0xfc6f
     db0: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     db4: 6b11021f     	cmp	w16, w17
     db8: 54000040     	b.eq	0xdc0 <gpio_keys_probe+0xdbc>
     dbc: d4304500     	brk	#0x8228
     dc0: d63f0100     	blr	x8
     dc4: d5384108     	mrs	x8, SP_EL0
     dc8: f9438908     	ldr	x8, [x8, #0x710]
     dcc: f85f83a9     	ldur	x9, [x29, #-0x8]
     dd0: eb09011f     	cmp	x8, x9
     dd4: 540001e1     	b.ne	0xe10 <gpio_keys_probe+0xe0c>
     dd8: 2a1403e0     	mov	w0, w20
     ddc: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
     de0: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
     de4: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
     de8: a94967fa     	ldp	x26, x25, [sp, #0x90]
     dec: a9486ffc     	ldp	x28, x27, [sp, #0x80]
     df0: a9477bfd     	ldp	x29, x30, [sp, #0x70]
     df4: 910343ff     	add	sp, sp, #0xd0
     df8: d50323bf     	autiasp
     dfc: d65f03c0     	ret
     e00: d4200020     	brk	#0x1
     e04: f900229f     	str	xzr, [x20, #0x40]
     e08: 12800174     	mov	w20, #-0xc              // =-12
     e0c: 17ffffee     	b	0xdc4 <gpio_keys_probe+0xdc0>
     e10: 94000000     	bl	0xe10 <gpio_keys_probe+0xe0c>
		0000000000000e10:  R_AARCH64_CALL26	__stack_chk_fail
