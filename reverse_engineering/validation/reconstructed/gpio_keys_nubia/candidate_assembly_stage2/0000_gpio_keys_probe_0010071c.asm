
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <gpio_keys_probe>:
       4: d503233f     	paciasp
       8: d10303ff     	sub	sp, sp, #0xc0
       c: a9067bfd     	stp	x29, x30, [sp, #0x60]
      10: a9076ffc     	stp	x28, x27, [sp, #0x70]
      14: a90867fa     	stp	x26, x25, [sp, #0x80]
      18: a9095ff8     	stp	x24, x23, [sp, #0x90]
      1c: a90a57f6     	stp	x22, x21, [sp, #0xa0]
      20: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
      24: 910183fd     	add	x29, sp, #0x60
      28: f9405014     	ldr	x20, [x0, #0xa0]
      2c: aa0003f5     	mov	x21, x0
      30: 91004017     	add	x23, x0, #0x10
      34: b4003b14     	cbz	x20, 0x794 <gpio_keys_probe+0x790>
      38: b9800a88     	ldrsw	x8, [x20, #0x8]
      3c: 52802209     	mov	w9, #0x110              // =272
      40: aa1703e0     	mov	x0, x23
      44: 5281b802     	mov	w2, #0xdc0              // =3520
      48: 9bc97d09     	umulh	x9, x8, x9
      4c: 8b081108     	add	x8, x8, x8, lsl #4
      50: d37ced08     	lsl	x8, x8, #4
      54: b1012108     	adds	x8, x8, #0x48
      58: da9f3108     	csinv	x8, x8, xzr, lo
      5c: eb0903ff     	cmp	xzr, x9
      60: da9f0118     	csinv	x24, x8, xzr, eq
      64: aa1803e1     	mov	x1, x24
      68: 94000000     	bl	0x68 <gpio_keys_probe+0x64>
		0000000000000068:  R_AARCH64_CALL26	devm_kmalloc
      6c: b4005b20     	cbz	x0, 0xbd0 <gpio_keys_probe+0xbcc>
      70: b9400a88     	ldr	w8, [x20, #0x8]
      74: aa0003f3     	mov	x19, x0
      78: 37f86a48     	tbnz	w8, #0x1f, 0xdc0 <gpio_keys_probe+0xdbc>
      7c: d37ff901     	lsl	x1, x8, #1
      80: aa1703e0     	mov	x0, x23
      84: 5281b802     	mov	w2, #0xdc0              // =3520
      88: 94000000     	bl	0x88 <gpio_keys_probe+0x84>
		0000000000000088:  R_AARCH64_CALL26	devm_kmalloc
      8c: f9002260     	str	x0, [x19, #0x40]
      90: b4005ae0     	cbz	x0, 0xbec <gpio_keys_probe+0xbe8>
      94: aa1703e0     	mov	x0, x23
      98: 94000000     	bl	0x98 <gpio_keys_probe+0x94>
		0000000000000098:  R_AARCH64_CALL26	devm_input_allocate_device
      9c: b4005a00     	cbz	x0, 0xbdc <gpio_keys_probe+0xbd8>
      a0: 927df308     	and	x8, x24, #0xfffffffffffffff8
      a4: f9000274     	str	x20, [x19]
      a8: f100211f     	cmp	x8, #0x8
      ac: 54005380     	b.eq	0xb1c <gpio_keys_probe+0xb18>
      b0: aa0003f6     	mov	x22, x0
      b4: f9000660     	str	x0, [x19, #0x8]
      b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000000b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b3
      bc: 91000021     	add	x1, x1, #0x0
		00000000000000bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b3
      c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000000c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss
      c4: 91000042     	add	x2, x2, #0x0
		00000000000000c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss
      c8: 91004260     	add	x0, x19, #0x10
      cc: 94000000     	bl	0xcc <gpio_keys_probe+0xc8>
		00000000000000cc:  R_AARCH64_CALL26	__mutex_init
      d0: f90056b3     	str	x19, [x21, #0xa8]
      d4: f90166d3     	str	x19, [x22, #0x2c8]
      d8: f9401688     	ldr	x8, [x20, #0x28]
      dc: b5000048     	cbnz	x8, 0xe4 <gpio_keys_probe+0xe0>
      e0: f94002a8     	ldr	x8, [x21]
      e4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000000e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63d
      e8: 91000129     	add	x9, x9, #0x0
		00000000000000e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63d
      ec: f9014ad7     	str	x23, [x22, #0x290]
      f0: a90026c8     	stp	x8, x9, [x22]
      f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000000f4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe14
      f8: 91000108     	add	x8, x8, #0x0
		00000000000000f8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe14
      fc: 90000009     	adrp	x9, 0x0 <.text>
		00000000000000fc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xed8
     100: 91000129     	add	x9, x9, #0x0
		0000000000000100:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xed8
     104: a91ca6c8     	stp	x8, x9, [x22, #0x1c8]
     108: b20083e8     	mov	x8, #0x1000100010001    // =281479271743489
     10c: f2800328     	movk	x8, #0x19
     110: f2e02008     	movk	x8, #0x100, lsl #48
     114: f9000ec8     	str	x8, [x22, #0x18]
     118: f9402268     	ldr	x8, [x19, #0x40]
     11c: f90072c8     	str	x8, [x22, #0xe0]
     120: 52800048     	mov	w8, #0x2                // =2
     124: b900dac8     	str	w8, [x22, #0xd8]
     128: b9400a88     	ldr	w8, [x20, #0x8]
     12c: b900d6c8     	str	w8, [x22, #0xd4]
     130: 39404288     	ldrb	w8, [x20, #0x10]
     134: 36000088     	tbz	w8, #0x0, 0x144 <gpio_keys_probe+0x140>
     138: f94016c8     	ldr	x8, [x22, #0x28]
     13c: b26c0108     	orr	x8, x8, #0x100000
     140: f90016c8     	str	x8, [x22, #0x28]
     144: b9400a88     	ldr	w8, [x20, #0x8]
     148: 7100051f     	cmp	w8, #0x1
     14c: 5400518b     	b.lt	0xb7c <gpio_keys_probe+0xb78>
     150: f81e03b6     	stur	x22, [x29, #-0x20]
     154: 2a1f03f6     	mov	w22, wzr
     158: aa1f03fa     	mov	x26, xzr
     15c: 91012268     	add	x8, x19, #0x48
     160: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x654
     164: 9100037b     	add	x27, x27, #0x0
		0000000000000164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x654
     168: 9000001c     	adrp	x28, 0x0 <.text>
		0000000000000168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x547
     16c: 9100039c     	add	x28, x28, #0x0
		000000000000016c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x547
     170: f81f03bf     	stur	xzr, [x29, #-0x10]
     174: f9000ff3     	str	x19, [sp, #0x18]
     178: f90017e8     	str	x8, [sp, #0x28]
     17c: f81f83b8     	stur	x24, [x29, #-0x8]
     180: f90007f7     	str	x23, [sp, #0x8]
     184: 1400000b     	b	0x1b0 <gpio_keys_probe+0x1ac>
     188: b9401f28     	ldr	w8, [x25, #0x1c]
     18c: b9800a89     	ldrsw	x9, [x20, #0x8]
     190: b85dc3b6     	ldur	w22, [x29, #-0x24]
     194: 7100011f     	cmp	w8, #0x0
     198: a97f63a8     	ldp	x8, x24, [x29, #-0x10]
     19c: 1a9f06d6     	csinc	w22, w22, wzr, eq
     1a0: 91000508     	add	x8, x8, #0x1
     1a4: eb09011f     	cmp	x8, x9
     1a8: f81f03a8     	stur	x8, [x29, #-0x10]
     1ac: 5400536a     	b.ge	0xc18 <gpio_keys_probe+0xc14>
     1b0: f94052a8     	ldr	x8, [x21, #0xa0]
     1b4: f9400293     	ldr	x19, [x20]
     1b8: b50000c8     	cbnz	x8, 0x1d0 <gpio_keys_probe+0x1cc>
     1bc: aa1703e0     	mov	x0, x23
     1c0: aa1a03e1     	mov	x1, x26
     1c4: 94000000     	bl	0x1c4 <gpio_keys_probe+0x1c0>
		00000000000001c4:  R_AARCH64_CALL26	device_get_next_child_node
     1c8: aa0003fa     	mov	x26, x0
     1cc: b4005de0     	cbz	x0, 0xd88 <gpio_keys_probe+0xd84>
     1d0: f85f03a8     	ldur	x8, [x29, #-0x10]
     1d4: 52800709     	mov	w9, #0x38               // =56
     1d8: b81dc3b6     	stur	w22, [x29, #-0x24]
     1dc: 9b094d19     	madd	x25, x8, x9, x19
     1e0: 8b081108     	add	x8, x8, x8, lsl #4
     1e4: d37ced13     	lsl	x19, x8, #4
     1e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
     1ec: 91000108     	add	x8, x8, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
     1f0: f9400b29     	ldr	x9, [x25, #0x10]
     1f4: f100013f     	cmp	x9, #0x0
     1f8: 9a890108     	csel	x8, x8, x9, eq
     1fc: f81e83a8     	stur	x8, [x29, #-0x18]
     200: b1014268     	adds	x8, x19, #0x50
     204: 540048c4     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     208: eb08031f     	cmp	x24, x8
     20c: 54004883     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     210: f94017e8     	ldr	x8, [sp, #0x28]
     214: 91012269     	add	x9, x19, #0x48
     218: f85e03aa     	ldur	x10, [x29, #-0x20]
     21c: 8b130116     	add	x22, x8, x19
     220: eb090308     	subs	x8, x24, x9
     224: f90006ca     	str	x10, [x22, #0x8]
     228: b7f847a9     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     22c: 54004783     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     230: f100211f     	cmp	x8, #0x8
     234: 54004743     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     238: 91053269     	add	x9, x19, #0x14c
     23c: f90002d9     	str	x25, [x22]
     240: eb090308     	subs	x8, x24, x9
     244: b7f846c9     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     248: 540046a3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     24c: f100111f     	cmp	x8, #0x4
     250: 54004663     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     254: 910342c0     	add	x0, x22, #0xd0
     258: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x473
     25c: 91000021     	add	x1, x1, #0x0
		000000000000025c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x473
     260: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000260:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     264: 91000042     	add	x2, x2, #0x0
		0000000000000264:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x8
     268: b90106df     	str	wzr, [x22, #0x104]
     26c: 94000000     	bl	0x26c <gpio_keys_probe+0x268>
		000000000000026c:  R_AARCH64_CALL26	__mutex_init
     270: f9001bfa     	str	x26, [sp, #0x30]
     274: b400035a     	cbz	x26, 0x2dc <gpio_keys_probe+0x2d8>
     278: f85e83a5     	ldur	x5, [x29, #-0x18]
     27c: aa1703e0     	mov	x0, x23
     280: aa1a03e1     	mov	x1, x26
     284: aa1f03e2     	mov	x2, xzr
     288: 2a1f03e3     	mov	w3, wzr
     28c: 52800024     	mov	w4, #0x1                // =1
     290: 94000000     	bl	0x290 <gpio_keys_probe+0x28c>
		0000000000000290:  R_AARCH64_CALL26	devm_fwnode_gpiod_get_index
     294: 91016268     	add	x8, x19, #0x58
     298: eb080309     	subs	x9, x24, x8
     29c: b7f84408     	tbnz	x8, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     2a0: 540043e3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     2a4: f100213f     	cmp	x9, #0x8
     2a8: 540043a3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     2ac: aa0003e1     	mov	x1, x0
     2b0: b13ffc1f     	cmn	x0, #0xfff
     2b4: f9000ac0     	str	x0, [x22, #0x10]
     2b8: 54000503     	b.lo	0x358 <gpio_keys_probe+0x354>
     2bc: 3100083f     	cmn	w1, #0x2
     2c0: 54002240     	b.eq	0x708 <gpio_keys_probe+0x704>
     2c4: aa1703e0     	mov	x0, x23
     2c8: 90000002     	adrp	x2, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x487
     2cc: 91000042     	add	x2, x2, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x487
     2d0: 94000000     	bl	0x2d0 <gpio_keys_probe+0x2cc>
		00000000000002d0:  R_AARCH64_CALL26	dev_err_probe
     2d4: 34fff5a0     	cbz	w0, 0x188 <gpio_keys_probe+0x184>
     2d8: 14000287     	b	0xcf4 <gpio_keys_probe+0xcf0>
     2dc: b9400721     	ldr	w1, [x25, #0x4]
     2e0: 37f802e1     	tbnz	w1, #0x1f, 0x33c <gpio_keys_probe+0x338>
     2e4: b9400b28     	ldr	w8, [x25, #0x8]
     2e8: f85e83a3     	ldur	x3, [x29, #-0x18]
     2ec: aa1703e0     	mov	x0, x23
     2f0: 7100011f     	cmp	w8, #0x0
     2f4: 528000a8     	mov	w8, #0x5                // =5
     2f8: 9a9f1502     	csinc	x2, x8, xzr, ne
     2fc: 94000000     	bl	0x2fc <gpio_keys_probe+0x2f8>
		00000000000002fc:  R_AARCH64_CALL26	devm_gpio_request_one
     300: b9400722     	ldr	w2, [x25, #0x4]
     304: 37f85500     	tbnz	w0, #0x1f, 0xda4 <gpio_keys_probe+0xda0>
     308: 2a0203e0     	mov	w0, w2
     30c: 94000000     	bl	0x30c <gpio_keys_probe+0x308>
		000000000000030c:  R_AARCH64_CALL26	gpio_to_desc
     310: f85f83b8     	ldur	x24, [x29, #-0x8]
     314: 91016269     	add	x9, x19, #0x58
     318: eb090308     	subs	x8, x24, x9
     31c: b7f84009     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     320: 54003fe3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     324: f100211f     	cmp	x8, #0x8
     328: 54003fa3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     32c: aa0003e1     	mov	x1, x0
     330: f9000ac0     	str	x0, [x22, #0x10]
     334: b5000140     	cbnz	x0, 0x35c <gpio_keys_probe+0x358>
     338: 14000271     	b	0xcfc <gpio_keys_probe+0xcf8>
     33c: 91016269     	add	x9, x19, #0x58
     340: eb090308     	subs	x8, x24, x9
     344: b7f83ec9     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     348: 54003ea3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     34c: f100211f     	cmp	x8, #0x8
     350: 54003e63     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     354: f9400ac1     	ldr	x1, [x22, #0x10]
     358: b4001e21     	cbz	x1, 0x71c <gpio_keys_probe+0x718>
     35c: aa0103e0     	mov	x0, x1
     360: 9101627a     	add	x26, x19, #0x58
     364: 94000000     	bl	0x364 <gpio_keys_probe+0x360>
		0000000000000364:  R_AARCH64_CALL26	gpiod_is_active_low
     368: b9402728     	ldr	w8, [x25, #0x24]
     36c: b90023e0     	str	w0, [sp, #0x20]
     370: 34000228     	cbz	w8, 0x3b4 <gpio_keys_probe+0x3b0>
     374: eb1a0309     	subs	x9, x24, x26
     378: b7f83d3a     	tbnz	x26, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     37c: 54003d03     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     380: f100213f     	cmp	x9, #0x8
     384: 54003cc3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     388: 52807d09     	mov	w9, #0x3e8              // =1000
     38c: f9400ac0     	ldr	x0, [x22, #0x10]
     390: 1b097d01     	mul	w1, w8, w9
     394: 94000000     	bl	0x394 <gpio_keys_probe+0x390>
		0000000000000394:  R_AARCH64_CALL26	gpiod_set_debounce
     398: 36f800e0     	tbz	w0, #0x1f, 0x3b4 <gpio_keys_probe+0x3b0>
     39c: b1040268     	adds	x8, x19, #0x100
     3a0: 54003be4     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     3a4: eb08031f     	cmp	x24, x8
     3a8: 54003ba3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     3ac: b9402728     	ldr	w8, [x25, #0x24]
     3b0: b900bac8     	str	w8, [x22, #0xb8]
     3b4: b9403338     	ldr	w24, [x25, #0x30]
     3b8: 35000178     	cbnz	w24, 0x3e4 <gpio_keys_probe+0x3e0>
     3bc: f85f83a8     	ldur	x8, [x29, #-0x8]
     3c0: eb1a0108     	subs	x8, x8, x26
     3c4: b7f83ada     	tbnz	x26, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     3c8: 54003aa3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     3cc: f100211f     	cmp	x8, #0x8
     3d0: 54003a63     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     3d4: f9400ac0     	ldr	x0, [x22, #0x10]
     3d8: 94000000     	bl	0x3d8 <gpio_keys_probe+0x3d4>
		00000000000003d8:  R_AARCH64_CALL26	gpiod_to_irq
     3dc: 2a0003f8     	mov	w24, w0
     3e0: 37f83a00     	tbnz	w0, #0x1f, 0xb20 <gpio_keys_probe+0xb1c>
     3e4: f85f83a8     	ldur	x8, [x29, #-0x8]
     3e8: 91041269     	add	x9, x19, #0x104
     3ec: eb090108     	subs	x8, x8, x9
     3f0: b7f83969     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     3f4: 54003943     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     3f8: f100111f     	cmp	x8, #0x4
     3fc: 54003903     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     400: f85f83a8     	ldur	x8, [x29, #-0x8]
     404: 91026269     	add	x9, x19, #0x98
     408: b900bed8     	str	w24, [x22, #0xbc]
     40c: eb090108     	subs	x8, x8, x9
     410: b7f83869     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     414: 54003843     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     418: f100211f     	cmp	x8, #0x8
     41c: 54003803     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     420: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     424: 910162c9     	add	x9, x22, #0x58
     428: f9002ac8     	str	x8, [x22, #0x50]
     42c: b102c268     	adds	x8, x19, #0xb0
     430: f9002ec9     	str	x9, [x22, #0x58]
     434: f90032c9     	str	x9, [x22, #0x60]
     438: f85f83b8     	ldur	x24, [x29, #-0x8]
     43c: 54003704     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     440: eb08031f     	cmp	x24, x8
     444: 540036c3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     448: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000448:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x10b8
     44c: 91000108     	add	x8, x8, #0x0
		000000000000044c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x10b8
     450: 9101c2c0     	add	x0, x22, #0x70
     454: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000454:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     458: 91000021     	add	x1, x1, #0x0
		0000000000000458:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     45c: 52a00402     	mov	w2, #0x200000           // =2097152
     460: aa1f03e3     	mov	x3, xzr
     464: aa1f03e4     	mov	x4, xzr
     468: f90036c8     	str	x8, [x22, #0x68]
     46c: 94000000     	bl	0x46c <gpio_keys_probe+0x468>
		000000000000046c:  R_AARCH64_CALL26	init_timer_key
     470: b9402328     	ldr	w8, [x25, #0x20]
     474: 7100091f     	cmp	w8, #0x2
     478: 540001c0     	b.eq	0x4b0 <gpio_keys_probe+0x4ac>
     47c: 7100051f     	cmp	w8, #0x1
     480: 540002e1     	b.ne	0x4dc <gpio_keys_probe+0x4d8>
     484: 91052269     	add	x9, x19, #0x148
     488: eb090308     	subs	x8, x24, x9
     48c: b7f83489     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     490: 54003463     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     494: f100111f     	cmp	x8, #0x4
     498: 54003423     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     49c: b94023e8     	ldr	w8, [sp, #0x20]
     4a0: 7100011f     	cmp	w8, #0x0
     4a4: 52800028     	mov	w8, #0x1                // =1
     4a8: 1a880508     	cinc	w8, w8, ne
     4ac: 1400000b     	b	0x4d8 <gpio_keys_probe+0x4d4>
     4b0: 91052269     	add	x9, x19, #0x148
     4b4: eb090308     	subs	x8, x24, x9
     4b8: b7f83329     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     4bc: 54003303     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     4c0: f100111f     	cmp	x8, #0x4
     4c4: 540032c3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     4c8: b94023e8     	ldr	w8, [sp, #0x20]
     4cc: 7100011f     	cmp	w8, #0x0
     4d0: 52800028     	mov	w8, #0x1                // =1
     4d4: 1a881508     	cinc	w8, w8, eq
     4d8: b90102c8     	str	w8, [x22, #0x100]
     4dc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004dc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1114
     4e0: 91000108     	add	x8, x8, #0x0
		00000000000004e0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1114
     4e4: 5280007a     	mov	w26, #0x3               // =3
     4e8: f90013e8     	str	x8, [sp, #0x20]
     4ec: b1018268     	adds	x8, x19, #0x60
     4f0: 54003164     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     4f4: eb08031f     	cmp	x24, x8
     4f8: 54003123     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     4fc: f9400fe8     	ldr	x8, [sp, #0x18]
     500: f85f03aa     	ldur	x10, [x29, #-0x10]
     504: f85e03a0     	ldur	x0, [x29, #-0x20]
     508: f9402108     	ldr	x8, [x8, #0x40]
     50c: 8b0a0509     	add	x9, x8, x10, lsl #1
     510: f9000ec9     	str	x9, [x22, #0x18]
     514: b9400329     	ldr	w9, [x25]
     518: 782a7909     	strh	w9, [x8, x10, lsl #1]
     51c: b9401b28     	ldr	w8, [x25, #0x18]
     520: f9400ec9     	ldr	x9, [x22, #0x18]
     524: 7100051f     	cmp	w8, #0x1
     528: 79400122     	ldrh	w2, [x9]
     52c: 1a9f8501     	csinc	w1, w8, wzr, hi
     530: 94000000     	bl	0x530 <gpio_keys_probe+0x52c>
		0000000000000530:  R_AARCH64_CALL26	input_set_capability
     534: aa1703e0     	mov	x0, x23
     538: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000538:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1368
     53c: 91000021     	add	x1, x1, #0x0
		000000000000053c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1368
     540: aa1603e2     	mov	x2, x22
     544: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44b
     548: 91000063     	add	x3, x3, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44b
     54c: 94000000     	bl	0x54c <gpio_keys_probe+0x548>
		000000000000054c:  R_AARCH64_CALL26	__devm_add_action
     550: 35003960     	cbnz	w0, 0xc7c <gpio_keys_probe+0xc78>
     554: 3940a328     	ldrb	w8, [x25, #0x28]
     558: b2790349     	orr	x9, x26, #0x80
     55c: 9104126a     	add	x10, x19, #0x104
     560: 7100011f     	cmp	w8, #0x0
     564: f85f83a8     	ldur	x8, [x29, #-0x8]
     568: 9a89135a     	csel	x26, x26, x9, ne
     56c: eb0a0108     	subs	x8, x8, x10
     570: b7f82d6a     	tbnz	x10, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     574: 54002d43     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     578: f100111f     	cmp	x8, #0x4
     57c: 54002d03     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     580: b940bec1     	ldr	w1, [x22, #0xbc]
     584: f94013e2     	ldr	x2, [sp, #0x20]
     588: aa1703e0     	mov	x0, x23
     58c: f85e83a4     	ldur	x4, [x29, #-0x18]
     590: aa1a03e3     	mov	x3, x26
     594: aa1603e5     	mov	x5, x22
     598: 94000000     	bl	0x598 <gpio_keys_probe+0x594>
		0000000000000598:  R_AARCH64_CALL26	devm_request_any_context_irq
     59c: 37f837e0     	tbnz	w0, #0x1f, 0xc98 <gpio_keys_probe+0xc94>
     5a0: f9417ea0     	ldr	x0, [x21, #0x2f8]
     5a4: aa1f03e1     	mov	x1, xzr
     5a8: f9000bfa     	str	x26, [sp, #0x10]
     5ac: 94000000     	bl	0x5ac <gpio_keys_probe+0x5a8>
		00000000000005ac:  R_AARCH64_CALL26	of_get_next_child
     5b0: b40003c0     	cbz	x0, 0x628 <gpio_keys_probe+0x624>
     5b4: f85f83aa     	ldur	x10, [x29, #-0x8]
     5b8: 91043268     	add	x8, x19, #0x10c
     5bc: aa0003f8     	mov	x24, x0
     5c0: eb080149     	subs	x9, x10, x8
     5c4: fa442920     	ccmp	x9, #0x4, #0x0, hs
     5c8: 91044269     	add	x9, x19, #0x110
     5cc: fa402908     	ccmp	x8, #0x0, #0x8, hs
     5d0: 1a9fa7fa     	cset	w26, lt
     5d4: f100013f     	cmp	x9, #0x0
     5d8: fa49a140     	ccmp	x10, x9, #0x0, ge
     5dc: 1a9f27f7     	cset	w23, lo
     5e0: aa1803e0     	mov	x0, x24
     5e4: aa1b03e1     	mov	x1, x27
     5e8: 2a1f03e2     	mov	w2, wzr
     5ec: 94000000     	bl	0x5ec <gpio_keys_probe+0x5e8>
		00000000000005ec:  R_AARCH64_CALL26	of_get_named_gpio
     5f0: 3700297a     	tbnz	w26, #0x0, 0xb1c <gpio_keys_probe+0xb18>
     5f4: b900c6c0     	str	w0, [x22, #0xc4]
     5f8: aa1803e0     	mov	x0, x24
     5fc: aa1c03e1     	mov	x1, x28
     600: 2a1f03e2     	mov	w2, wzr
     604: 94000000     	bl	0x604 <gpio_keys_probe+0x600>
		0000000000000604:  R_AARCH64_CALL26	of_get_named_gpio
     608: 370028b7     	tbnz	w23, #0x0, 0xb1c <gpio_keys_probe+0xb18>
     60c: f9417ea8     	ldr	x8, [x21, #0x2f8]
     610: b900cac0     	str	w0, [x22, #0xc8]
     614: aa1803e1     	mov	x1, x24
     618: aa0803e0     	mov	x0, x8
     61c: 94000000     	bl	0x61c <gpio_keys_probe+0x618>
		000000000000061c:  R_AARCH64_CALL26	of_get_next_child
     620: aa0003f8     	mov	x24, x0
     624: b5fffde0     	cbnz	x0, 0x5e0 <gpio_keys_probe+0x5dc>
     628: f85f83b8     	ldur	x24, [x29, #-0x8]
     62c: b1044277     	adds	x23, x19, #0x110
     630: 54002764     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     634: eb17031f     	cmp	x24, x23
     638: 54002723     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     63c: b940cac0     	ldr	w0, [x22, #0xc8]
     640: f9401bfa     	ldr	x26, [sp, #0x30]
     644: 35000060     	cbnz	w0, 0x650 <gpio_keys_probe+0x64c>
     648: 2a1f03e3     	mov	w3, wzr
     64c: 1400000d     	b	0x680 <gpio_keys_probe+0x67c>
     650: 94000000     	bl	0x650 <gpio_keys_probe+0x64c>
		0000000000000650:  R_AARCH64_CALL26	gpio_to_desc
     654: 94000000     	bl	0x654 <gpio_keys_probe+0x650>
		0000000000000654:  R_AARCH64_CALL26	gpiod_to_irq
     658: 91042269     	add	x9, x19, #0x108
     65c: eb090308     	subs	x8, x24, x9
     660: b7f825e9     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     664: 540025c3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     668: f100111f     	cmp	x8, #0x4
     66c: 54002583     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     670: eb17031f     	cmp	x24, x23
     674: b900c2c0     	str	w0, [x22, #0xc0]
     678: 54002523     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     67c: b940cac3     	ldr	w3, [x22, #0xc8]
     680: f94007f7     	ldr	x23, [sp, #0x8]
     684: 91043269     	add	x9, x19, #0x10c
     688: eb090308     	subs	x8, x24, x9
     68c: b7f82489     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     690: 54002463     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     694: f100111f     	cmp	x8, #0x4
     698: 54002423     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     69c: b940c6c2     	ldr	w2, [x22, #0xc4]
     6a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e0
     6a4: 91000000     	add	x0, x0, #0x0
		00000000000006a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e0
     6a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc7
     6ac: 91000021     	add	x1, x1, #0x0
		00000000000006ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc7
     6b0: 94000000     	bl	0x6b0 <gpio_keys_probe+0x6ac>
		00000000000006b0:  R_AARCH64_CALL26	_printk
     6b4: 91042269     	add	x9, x19, #0x108
     6b8: eb090308     	subs	x8, x24, x9
     6bc: b7f82309     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     6c0: 540022e3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     6c4: f100111f     	cmp	x8, #0x4
     6c8: 540022a3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     6cc: b940c2c1     	ldr	w1, [x22, #0xc0]
     6d0: 34ffd5c1     	cbz	w1, 0x188 <gpio_keys_probe+0x184>
     6d4: f94013e2     	ldr	x2, [sp, #0x20]
     6d8: f9400be3     	ldr	x3, [sp, #0x10]
     6dc: aa1703e0     	mov	x0, x23
     6e0: f85e83a4     	ldur	x4, [x29, #-0x18]
     6e4: aa1603e5     	mov	x5, x22
     6e8: 94000000     	bl	0x6e8 <gpio_keys_probe+0x6e4>
		00000000000006e8:  R_AARCH64_CALL26	devm_request_any_context_irq
     6ec: 36ffd4e0     	tbz	w0, #0x1f, 0x188 <gpio_keys_probe+0x184>
     6f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda
     6f4: 91000000     	add	x0, x0, #0x0
		00000000000006f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda
     6f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x629
     6fc: 91000021     	add	x1, x1, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x629
     700: 94000000     	bl	0x700 <gpio_keys_probe+0x6fc>
		0000000000000700:  R_AARCH64_CALL26	_printk
     704: 17fffea1     	b	0x188 <gpio_keys_probe+0x184>
     708: eb080308     	subs	x8, x24, x8
     70c: 54002083     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     710: f100211f     	cmp	x8, #0x8
     714: 54002043     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     718: f9000adf     	str	xzr, [x22, #0x10]
     71c: b9403328     	ldr	w8, [x25, #0x30]
     720: 340031a8     	cbz	w8, 0xd54 <gpio_keys_probe+0xd50>
     724: 9104126a     	add	x10, x19, #0x104
     728: f9401bfa     	ldr	x26, [sp, #0x30]
     72c: eb0a0309     	subs	x9, x24, x10
     730: b7f81f6a     	tbnz	x10, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     734: 54001f43     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     738: f100113f     	cmp	x9, #0x4
     73c: 54001f03     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     740: b900bec8     	str	w8, [x22, #0xbc]
     744: b9401b28     	ldr	w8, [x25, #0x18]
     748: 7100091f     	cmp	w8, #0x2
     74c: 54003122     	b.hs	0xd70 <gpio_keys_probe+0xd6c>
     750: b1024268     	adds	x8, x19, #0x90
     754: 54001e44     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     758: eb08031f     	cmp	x24, x8
     75c: 54001e03     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     760: b9402728     	ldr	w8, [x25, #0x24]
     764: 910082c0     	add	x0, x22, #0x20
     768: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000768:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x11c4
     76c: 91000021     	add	x1, x1, #0x0
		000000000000076c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x11c4
     770: 2a1f03e2     	mov	w2, wzr
     774: aa1f03e3     	mov	x3, xzr
     778: aa1f03e4     	mov	x4, xzr
     77c: b9004ac8     	str	w8, [x22, #0x48]
     780: 94000000     	bl	0x780 <gpio_keys_probe+0x77c>
		0000000000000780:  R_AARCH64_CALL26	init_timer_key
     784: aa1f03fa     	mov	x26, xzr
     788: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x124c
     78c: 91000108     	add	x8, x8, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x124c
     790: 17ffff56     	b	0x4e8 <gpio_keys_probe+0x4e4>
     794: aa1703e0     	mov	x0, x23
     798: 94000000     	bl	0x798 <gpio_keys_probe+0x794>
		0000000000000798:  R_AARCH64_CALL26	device_get_child_node_count
     79c: 340020e0     	cbz	w0, 0xbb8 <gpio_keys_probe+0xbb4>
     7a0: 52800708     	mov	w8, #0x38               // =56
     7a4: 2a0003f3     	mov	w19, w0
     7a8: 5281b802     	mov	w2, #0xdc0              // =3520
     7ac: 9b287c1b     	smull	x27, w0, w8
     7b0: aa1703e0     	mov	x0, x23
     7b4: 9100c376     	add	x22, x27, #0x30
     7b8: aa1603e1     	mov	x1, x22
     7bc: 94000000     	bl	0x7bc <gpio_keys_probe+0x7b8>
		00000000000007bc:  R_AARCH64_CALL26	devm_kmalloc
     7c0: b4002020     	cbz	x0, 0xbc4 <gpio_keys_probe+0xbc0>
     7c4: b4001ad6     	cbz	x22, 0xb1c <gpio_keys_probe+0xb18>
     7c8: 9100c008     	add	x8, x0, #0x30
     7cc: aa0003f4     	mov	x20, x0
     7d0: b9000813     	str	w19, [x0, #0x8]
     7d4: f9000008     	str	x8, [x0]
     7d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57a
     7dc: 91000021     	add	x1, x1, #0x0
		00000000000007dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57a
     7e0: aa1703e0     	mov	x0, x23
     7e4: 94000000     	bl	0x7e4 <gpio_keys_probe+0x7e0>
		00000000000007e4:  R_AARCH64_CALL26	device_property_present
     7e8: f10042df     	cmp	x22, #0x10
     7ec: 54001983     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     7f0: 39404288     	ldrb	w8, [x20, #0x10]
     7f4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4db
     7f8: 91000021     	add	x1, x1, #0x0
		00000000000007f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4db
     7fc: 9100a282     	add	x2, x20, #0x28
     800: 33000008     	bfxil	w8, w0, #0, #1
     804: aa1703e0     	mov	x0, x23
     808: 39004288     	strb	w8, [x20, #0x10]
     80c: 94000000     	bl	0x80c <gpio_keys_probe+0x808>
		000000000000080c:  R_AARCH64_CALL26	device_property_read_string
     810: aa1703e0     	mov	x0, x23
     814: aa1f03e1     	mov	x1, xzr
     818: aa1703fa     	mov	x26, x23
     81c: 94000000     	bl	0x81c <gpio_keys_probe+0x818>
		000000000000081c:  R_AARCH64_CALL26	device_get_next_child_node
     820: b4001c20     	cbz	x0, 0xba4 <gpio_keys_probe+0xba0>
     824: 52800608     	mov	w8, #0x30               // =48
     828: aa0003f7     	mov	x23, x0
     82c: cb1b0108     	sub	x8, x8, x27
     830: 52800c9b     	mov	w27, #0x64              // =100
     834: f81f83a8     	stur	x8, [x29, #-0x8]
     838: 14000009     	b	0x85c <gpio_keys_probe+0x858>
     83c: 528000a8     	mov	w8, #0x5                // =5
     840: b9000268     	str	w8, [x19]
     844: aa1a03e0     	mov	x0, x26
     848: aa1703e1     	mov	x1, x23
     84c: 94000000     	bl	0x84c <gpio_keys_probe+0x848>
		000000000000084c:  R_AARCH64_CALL26	device_get_next_child_node
     850: aa0003f7     	mov	x23, x0
     854: 9100e37b     	add	x27, x27, #0x38
     858: b4001a60     	cbz	x0, 0xba4 <gpio_keys_probe+0xba0>
     85c: b14006ff     	cmn	x23, #0x1, lsl #12      // =0x1000
     860: 54000a08     	b.hi	0x9a0 <gpio_keys_probe+0x99c>
     864: f94006e8     	ldr	x8, [x23, #0x8]
     868: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000868:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     86c: 91000129     	add	x9, x9, #0x0
		000000000000086c:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     870: eb09011f     	cmp	x8, x9
     874: 54000961     	b.ne	0x9a0 <gpio_keys_probe+0x99c>
     878: f85f83a8     	ldur	x8, [x29, #-0x8]
     87c: d10062f3     	sub	x19, x23, #0x18
     880: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x158
     884: 91000021     	add	x1, x1, #0x0
		0000000000000884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x158
     888: aa1303e0     	mov	x0, x19
     88c: 8b1b011c     	add	x28, x8, x27
     890: 94000000     	bl	0x890 <gpio_keys_probe+0x88c>
		0000000000000890:  R_AARCH64_CALL26	of_irq_get_byname
     894: 7100041f     	cmp	w0, #0x1
     898: 540001eb     	b.lt	0x8d4 <gpio_keys_probe+0x8d0>
     89c: f1001368     	subs	x8, x27, #0x4
     8a0: 540013e4     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     8a4: f101939f     	cmp	x28, #0x64
     8a8: 540013a0     	b.eq	0xb1c <gpio_keys_probe+0xb18>
     8ac: eb0802df     	cmp	x22, x8
     8b0: 54001363     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     8b4: f1001368     	subs	x8, x27, #0x4
     8b8: 54001324     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     8bc: eb0802df     	cmp	x22, x8
     8c0: 540012e3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     8c4: f101939f     	cmp	x28, #0x64
     8c8: 540012a0     	b.eq	0xb1c <gpio_keys_probe+0xb18>
     8cc: 8b1b0288     	add	x8, x20, x27
     8d0: b81fc100     	stur	w0, [x8, #-0x4]
     8d4: f94006e8     	ldr	x8, [x23, #0x8]
     8d8: 90000009     	adrp	x9, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     8dc: 91000129     	add	x9, x9, #0x0
		00000000000008dc:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     8e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52f
     8e4: 91000021     	add	x1, x1, #0x0
		00000000000008e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52f
     8e8: eb09011f     	cmp	x8, x9
     8ec: 9a9f0260     	csel	x0, x19, xzr, eq
     8f0: 94000000     	bl	0x8f0 <gpio_keys_probe+0x8ec>
		00000000000008f0:  R_AARCH64_CALL26	of_irq_get_byname
     8f4: 7100041f     	cmp	w0, #0x1
     8f8: 5400010b     	b.lt	0x918 <gpio_keys_probe+0x914>
     8fc: b7f8111b     	tbnz	x27, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     900: eb1b02df     	cmp	x22, x27
     904: 540010c3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     908: b7f810bb     	tbnz	x27, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     90c: eb1b02df     	cmp	x22, x27
     910: 54001063     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     914: b83b6a80     	str	w0, [x20, x27]
     918: f1001378     	subs	x24, x27, #0x4
     91c: 54001004     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     920: f101939f     	cmp	x28, #0x64
     924: 54000fc0     	b.eq	0xb1c <gpio_keys_probe+0xb18>
     928: eb1802df     	cmp	x22, x24
     92c: 54000f83     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     930: b7f80f78     	tbnz	x24, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     934: eb1802df     	cmp	x22, x24
     938: 54000f23     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     93c: f101939f     	cmp	x28, #0x64
     940: 54000ee0     	b.eq	0xb1c <gpio_keys_probe+0xb18>
     944: 8b1b0299     	add	x25, x20, x27
     948: b85fc328     	ldur	w8, [x25, #-0x4]
     94c: 350002a8     	cbnz	w8, 0x9a0 <gpio_keys_probe+0x99c>
     950: b7f80e7b     	tbnz	x27, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     954: eb1b02df     	cmp	x22, x27
     958: 54000e23     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     95c: b7f80e1b     	tbnz	x27, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     960: eb1b02df     	cmp	x22, x27
     964: 54000dc3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     968: b87b6a88     	ldr	w8, [x20, x27]
     96c: 350001a8     	cbnz	w8, 0x9a0 <gpio_keys_probe+0x99c>
     970: f94006e8     	ldr	x8, [x23, #0x8]
     974: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000974:  R_AARCH64_ADR_PREL_PG_HI21	of_fwnode_ops
     978: 91000129     	add	x9, x9, #0x0
		0000000000000978:  R_AARCH64_ADD_ABS_LO12_NC	of_fwnode_ops
     97c: 2a1f03e1     	mov	w1, wzr
     980: eb09011f     	cmp	x8, x9
     984: 9a9f0260     	csel	x0, x19, xzr, eq
     988: 94000000     	bl	0x988 <gpio_keys_probe+0x984>
		0000000000000988:  R_AARCH64_CALL26	irq_of_parse_and_map
     98c: eb1802df     	cmp	x22, x24
     990: 54000c63     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     994: f101939f     	cmp	x28, #0x64
     998: 54000c20     	b.eq	0xb1c <gpio_keys_probe+0xb18>
     99c: b81fc320     	stur	w0, [x25, #-0x4]
     9a0: 8b1b0288     	add	x8, x20, x27
     9a4: aa1703e0     	mov	x0, x23
     9a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
     9ac: 91000021     	add	x1, x1, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
     9b0: d100d102     	sub	x2, x8, #0x34
     9b4: 52800023     	mov	w3, #0x1                // =1
     9b8: 94000000     	bl	0x9b8 <gpio_keys_probe+0x9b4>
		00000000000009b8:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     9bc: 35001a40     	cbnz	w0, 0xd04 <gpio_keys_probe+0xd00>
     9c0: 8b1b0298     	add	x24, x20, x27
     9c4: aa1703e0     	mov	x0, x23
     9c8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4db
     9cc: 91000021     	add	x1, x1, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4db
     9d0: d1009302     	sub	x2, x24, #0x24
     9d4: 94000000     	bl	0x9d4 <gpio_keys_probe+0x9d0>
		00000000000009d4:  R_AARCH64_CALL26	fwnode_property_read_string
     9d8: d1007313     	sub	x19, x24, #0x1c
     9dc: aa1703e0     	mov	x0, x23
     9e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x536
     9e4: 91000021     	add	x1, x1, #0x0
		00000000000009e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x536
     9e8: aa1303e2     	mov	x2, x19
     9ec: 52800023     	mov	w3, #0x1                // =1
     9f0: 94000000     	bl	0x9f0 <gpio_keys_probe+0x9ec>
		00000000000009f0:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     9f4: 34000160     	cbz	w0, 0xa20 <gpio_keys_probe+0xa1c>
     9f8: f1007368     	subs	x8, x27, #0x1c
     9fc: 54000904     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     a00: eb0802df     	cmp	x22, x8
     a04: 540008c9     	b.ls	0xb1c <gpio_keys_probe+0xb18>
     a08: d1007368     	sub	x8, x27, #0x1c
     a0c: b7f80888     	tbnz	x8, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     a10: eb0802df     	cmp	x22, x8
     a14: 54000849     	b.ls	0xb1c <gpio_keys_probe+0xb18>
     a18: 52800028     	mov	w8, #0x1                // =1
     a1c: b9000268     	str	w8, [x19]
     a20: d1002302     	sub	x2, x24, #0x8
     a24: aa1703e0     	mov	x0, x23
     a28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4e1
     a2c: 91000021     	add	x1, x1, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4e1
     a30: 52800023     	mov	w3, #0x1                // =1
     a34: 52800033     	mov	w19, #0x1               // =1
     a38: 94000000     	bl	0xa38 <gpio_keys_probe+0xa34>
		0000000000000a38:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     a3c: aa1703e0     	mov	x0, x23
     a40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27f
     a44: 91000021     	add	x1, x1, #0x0
		0000000000000a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27f
     a48: 94000000     	bl	0xa48 <gpio_keys_probe+0xa44>
		0000000000000a48:  R_AARCH64_CALL26	fwnode_property_present
     a4c: 370000c0     	tbnz	w0, #0x0, 0xa64 <gpio_keys_probe+0xa60>
     a50: aa1703e0     	mov	x0, x23
     a54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x227
     a58: 91000021     	add	x1, x1, #0x0
		0000000000000a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x227
     a5c: 94000000     	bl	0xa5c <gpio_keys_probe+0xa58>
		0000000000000a5c:  R_AARCH64_CALL26	fwnode_property_present
     a60: 2a0003f3     	mov	w19, w0
     a64: f1006368     	subs	x8, x27, #0x18
     a68: 540005a4     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     a6c: eb0802df     	cmp	x22, x8
     a70: 54000563     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     a74: f1006368     	subs	x8, x27, #0x18
     a78: 54000524     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     a7c: eb0802df     	cmp	x22, x8
     a80: 540004e3     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     a84: 8b1b0289     	add	x9, x20, x27
     a88: 12000268     	and	w8, w19, #0x1
     a8c: aa1703e0     	mov	x0, x23
     a90: d1005122     	sub	x2, x9, #0x14
     a94: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x237
     a98: 91000021     	add	x1, x1, #0x0
		0000000000000a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x237
     a9c: 52800023     	mov	w3, #0x1                // =1
     aa0: b81e8128     	stur	w8, [x9, #-0x18]
     aa4: 94000000     	bl	0xaa4 <gpio_keys_probe+0xaa0>
		0000000000000aa4:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     aa8: aa1703e0     	mov	x0, x23
     aac: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     ab0: 91000021     	add	x1, x1, #0x0
		0000000000000ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     ab4: 94000000     	bl	0xab4 <gpio_keys_probe+0xab0>
		0000000000000ab4:  R_AARCH64_CALL26	fwnode_property_present
     ab8: f1003368     	subs	x8, x27, #0xc
     abc: 54000304     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     ac0: eb0802df     	cmp	x22, x8
     ac4: 540002c9     	b.ls	0xb1c <gpio_keys_probe+0xb18>
     ac8: f1003368     	subs	x8, x27, #0xc
     acc: 54000284     	b.mi	0xb1c <gpio_keys_probe+0xb18>
     ad0: eb0802df     	cmp	x22, x8
     ad4: 54000249     	b.ls	0xb1c <gpio_keys_probe+0xb18>
     ad8: 8b1b0288     	add	x8, x20, x27
     adc: 12000009     	and	w9, w0, #0x1
     ae0: aa1703e0     	mov	x0, x23
     ae4: d1004113     	sub	x19, x8, #0x10
     ae8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     aec: 91000021     	add	x1, x1, #0x0
		0000000000000aec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     af0: aa1303e2     	mov	x2, x19
     af4: 52800023     	mov	w3, #0x1                // =1
     af8: 381f4109     	sturb	w9, [x8, #-0xc]
     afc: 94000000     	bl	0xafc <gpio_keys_probe+0xaf8>
		0000000000000afc:  R_AARCH64_CALL26	fwnode_property_read_u32_array
     b00: 34ffea20     	cbz	w0, 0x844 <gpio_keys_probe+0x840>
     b04: d1004368     	sub	x8, x27, #0x10
     b08: eb0802df     	cmp	x22, x8
     b0c: 54000083     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     b10: b7f80068     	tbnz	x8, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     b14: eb0802df     	cmp	x22, x8
     b18: 54ffe922     	b.hs	0x83c <gpio_keys_probe+0x838>
     b1c: d4200020     	brk	#0x1
     b20: b9400723     	ldr	w3, [x25, #0x4]
     b24: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x585
     b28: 91000042     	add	x2, x2, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x585
     b2c: aa1703e0     	mov	x0, x23
     b30: 2a1803e1     	mov	w1, w24
     b34: 94000000     	bl	0xb34 <gpio_keys_probe+0xb30>
		0000000000000b34:  R_AARCH64_CALL26	dev_err_probe
     b38: f9401bfa     	ldr	x26, [sp, #0x30]
     b3c: b40005ba     	cbz	x26, 0xbf0 <gpio_keys_probe+0xbec>
     b40: b140075f     	cmn	x26, #0x1, lsl #12      // =0x1000
     b44: 54000568     	b.hi	0xbf0 <gpio_keys_probe+0xbec>
     b48: f9400748     	ldr	x8, [x26, #0x8]
     b4c: b4000528     	cbz	x8, 0xbf0 <gpio_keys_probe+0xbec>
     b50: f9400508     	ldr	x8, [x8, #0x8]
     b54: b40004e8     	cbz	x8, 0xbf0 <gpio_keys_probe+0xbec>
     b58: aa1a03e0     	mov	x0, x26
     b5c: b85fc110     	ldur	w16, [x8, #-0x4]
     b60: 729f8df1     	movk	w17, #0xfc6f
     b64: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     b68: 6b11021f     	cmp	w16, w17
     b6c: 54000040     	b.eq	0xb74 <gpio_keys_probe+0xb70>
     b70: d4304500     	brk	#0x8228
     b74: d63f0100     	blr	x8
     b78: 1400001e     	b	0xbf0 <gpio_keys_probe+0xbec>
     b7c: aa1603e0     	mov	x0, x22
     b80: 94000000     	bl	0xb80 <gpio_keys_probe+0xb7c>
		0000000000000b80:  R_AARCH64_CALL26	input_register_device
     b84: 35000aa0     	cbnz	w0, 0xcd8 <gpio_keys_probe+0xcd4>
     b88: aa1703e0     	mov	x0, x23
     b8c: 94000000     	bl	0xb8c <gpio_keys_probe+0xb88>
		0000000000000b8c:  R_AARCH64_CALL26	device_wakeup_disable
     b90: aa1703e0     	mov	x0, x23
     b94: 2a1f03e1     	mov	w1, wzr
     b98: 94000000     	bl	0xb98 <gpio_keys_probe+0xb94>
		0000000000000b98:  R_AARCH64_CALL26	device_set_wakeup_capable
     b9c: 2a1f03f8     	mov	w24, wzr
     ba0: 14000014     	b	0xbf0 <gpio_keys_probe+0xbec>
     ba4: b13ffe9f     	cmn	x20, #0xfff
     ba8: aa1a03f7     	mov	x23, x26
     bac: 54ffa463     	b.lo	0x38 <gpio_keys_probe+0x34>
     bb0: 2a1403f8     	mov	w24, w20
     bb4: 1400000f     	b	0xbf0 <gpio_keys_probe+0xbec>
     bb8: 92800254     	mov	x20, #-0x13             // =-19
     bbc: 2a1403f8     	mov	w24, w20
     bc0: 1400000c     	b	0xbf0 <gpio_keys_probe+0xbec>
     bc4: 92800174     	mov	x20, #-0xc              // =-12
     bc8: 2a1403f8     	mov	w24, w20
     bcc: 14000009     	b	0xbf0 <gpio_keys_probe+0xbec>
     bd0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1
     bd4: 91000021     	add	x1, x1, #0x0
		0000000000000bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1
     bd8: 14000003     	b	0xbe4 <gpio_keys_probe+0xbe0>
     bdc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74
     be0: 91000021     	add	x1, x1, #0x0
		0000000000000be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74
     be4: aa1703e0     	mov	x0, x23
     be8: 94000000     	bl	0xbe8 <gpio_keys_probe+0xbe4>
		0000000000000be8:  R_AARCH64_CALL26	_dev_err
     bec: 12800178     	mov	w24, #-0xc              // =-12
     bf0: 2a1803e0     	mov	w0, w24
     bf4: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
     bf8: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
     bfc: a9495ff8     	ldp	x24, x23, [sp, #0x90]
     c00: a94867fa     	ldp	x26, x25, [sp, #0x80]
     c04: a9476ffc     	ldp	x28, x27, [sp, #0x70]
     c08: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     c0c: 910303ff     	add	sp, sp, #0xc0
     c10: d50323bf     	autiasp
     c14: d65f03c0     	ret
     c18: b40001fa     	cbz	x26, 0xc54 <gpio_keys_probe+0xc50>
     c1c: b140075f     	cmn	x26, #0x1, lsl #12      // =0x1000
     c20: 540001a8     	b.hi	0xc54 <gpio_keys_probe+0xc50>
     c24: f9400748     	ldr	x8, [x26, #0x8]
     c28: b4000168     	cbz	x8, 0xc54 <gpio_keys_probe+0xc50>
     c2c: f9400508     	ldr	x8, [x8, #0x8]
     c30: b4000128     	cbz	x8, 0xc54 <gpio_keys_probe+0xc50>
     c34: aa1a03e0     	mov	x0, x26
     c38: b85fc110     	ldur	w16, [x8, #-0x4]
     c3c: 729f8df1     	movk	w17, #0xfc6f
     c40: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     c44: 6b11021f     	cmp	w16, w17
     c48: 54000040     	b.eq	0xc50 <gpio_keys_probe+0xc4c>
     c4c: d4304500     	brk	#0x8228
     c50: d63f0100     	blr	x8
     c54: f85e03a0     	ldur	x0, [x29, #-0x20]
     c58: 94000000     	bl	0xc58 <gpio_keys_probe+0xc54>
		0000000000000c58:  R_AARCH64_CALL26	input_register_device
     c5c: 350003e0     	cbnz	w0, 0xcd8 <gpio_keys_probe+0xcd4>
     c60: 34fff956     	cbz	w22, 0xb88 <gpio_keys_probe+0xb84>
     c64: aa1703e0     	mov	x0, x23
     c68: 52800021     	mov	w1, #0x1                // =1
     c6c: 94000000     	bl	0xc6c <gpio_keys_probe+0xc68>
		0000000000000c6c:  R_AARCH64_CALL26	device_set_wakeup_capable
     c70: aa1703e0     	mov	x0, x23
     c74: 94000000     	bl	0xc74 <gpio_keys_probe+0xc70>
		0000000000000c74:  R_AARCH64_CALL26	device_wakeup_enable
     c78: 17ffffc9     	b	0xb9c <gpio_keys_probe+0xb98>
     c7c: 2a0003f8     	mov	w24, w0
     c80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ab
     c84: 91000021     	add	x1, x1, #0x0
		0000000000000c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ab
     c88: aa1703e0     	mov	x0, x23
     c8c: 2a1803e2     	mov	w2, w24
     c90: 94000000     	bl	0xc90 <gpio_keys_probe+0xc8c>
		0000000000000c90:  R_AARCH64_CALL26	_dev_err
     c94: 17ffffa9     	b	0xb38 <gpio_keys_probe+0xb34>
     c98: f85f83a8     	ldur	x8, [x29, #-0x8]
     c9c: 91041269     	add	x9, x19, #0x104
     ca0: f9401bfa     	ldr	x26, [sp, #0x30]
     ca4: eb090108     	subs	x8, x8, x9
     ca8: b7fff3a9     	tbnz	x9, #0x3f, 0xb1c <gpio_keys_probe+0xb18>
     cac: 54fff383     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     cb0: f100111f     	cmp	x8, #0x4
     cb4: 54fff343     	b.lo	0xb1c <gpio_keys_probe+0xb18>
     cb8: 2a0003f8     	mov	w24, w0
     cbc: b940bec2     	ldr	w2, [x22, #0xbc]
     cc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28d
     cc4: 91000021     	add	x1, x1, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28d
     cc8: aa1703e0     	mov	x0, x23
     ccc: 2a1803e3     	mov	w3, w24
     cd0: 94000000     	bl	0xcd0 <gpio_keys_probe+0xccc>
		0000000000000cd0:  R_AARCH64_CALL26	_dev_err
     cd4: 17ffff9a     	b	0xb3c <gpio_keys_probe+0xb38>
     cd8: 2a0003f8     	mov	w24, w0
     cdc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fb
     ce0: 91000021     	add	x1, x1, #0x0
		0000000000000ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fb
     ce4: aa1703e0     	mov	x0, x23
     ce8: 2a1803e2     	mov	w2, w24
     cec: 94000000     	bl	0xcec <gpio_keys_probe+0xce8>
		0000000000000cec:  R_AARCH64_CALL26	_dev_err
     cf0: 17ffffc0     	b	0xbf0 <gpio_keys_probe+0xbec>
     cf4: 2a0003f8     	mov	w24, w0
     cf8: 17ffff91     	b	0xb3c <gpio_keys_probe+0xb38>
     cfc: 128002b8     	mov	w24, #-0x16             // =-22
     d00: 17ffffbc     	b	0xbf0 <gpio_keys_probe+0xbec>
     d04: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3c8
     d08: 91000021     	add	x1, x1, #0x0
		0000000000000d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3c8
     d0c: aa1a03e0     	mov	x0, x26
     d10: 94000000     	bl	0xd10 <gpio_keys_probe+0xd0c>
		0000000000000d10:  R_AARCH64_CALL26	_dev_err
     d14: b14006ff     	cmn	x23, #0x1, lsl #12      // =0x1000
     d18: 540001a8     	b.hi	0xd4c <gpio_keys_probe+0xd48>
     d1c: f94006e8     	ldr	x8, [x23, #0x8]
     d20: b4000168     	cbz	x8, 0xd4c <gpio_keys_probe+0xd48>
     d24: f9400508     	ldr	x8, [x8, #0x8]
     d28: b4000128     	cbz	x8, 0xd4c <gpio_keys_probe+0xd48>
     d2c: aa1703e0     	mov	x0, x23
     d30: b85fc110     	ldur	w16, [x8, #-0x4]
     d34: 729f8df1     	movk	w17, #0xfc6f
     d38: 72bb34f1     	movk	w17, #0xd9a7, lsl #16
     d3c: 6b11021f     	cmp	w16, w17
     d40: 54000040     	b.eq	0xd48 <gpio_keys_probe+0xd44>
     d44: d4304500     	brk	#0x8228
     d48: d63f0100     	blr	x8
     d4c: 928002b4     	mov	x20, #-0x16             // =-22
     d50: 17ffff98     	b	0xbb0 <gpio_keys_probe+0xbac>
     d54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5
     d58: 91000021     	add	x1, x1, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5
     d5c: aa1703e0     	mov	x0, x23
     d60: 94000000     	bl	0xd60 <gpio_keys_probe+0xd5c>
		0000000000000d60:  R_AARCH64_CALL26	_dev_err
     d64: f9401bfa     	ldr	x26, [sp, #0x30]
     d68: 128002b8     	mov	w24, #-0x16             // =-22
     d6c: 17ffff74     	b	0xb3c <gpio_keys_probe+0xb38>
     d70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15c
     d74: 91000021     	add	x1, x1, #0x0
		0000000000000d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15c
     d78: aa1703e0     	mov	x0, x23
     d7c: 94000000     	bl	0xd7c <gpio_keys_probe+0xd78>
		0000000000000d7c:  R_AARCH64_CALL26	_dev_err
     d80: 128002b8     	mov	w24, #-0x16             // =-22
     d84: 17ffff6e     	b	0xb3c <gpio_keys_probe+0xb38>
     d88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2db
     d8c: 91000021     	add	x1, x1, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2db
     d90: aa1703e0     	mov	x0, x23
     d94: f85f03a2     	ldur	x2, [x29, #-0x10]
     d98: 94000000     	bl	0xd98 <gpio_keys_probe+0xd94>
		0000000000000d98:  R_AARCH64_CALL26	_dev_err
     d9c: 128002b8     	mov	w24, #-0x16             // =-22
     da0: 17ffff94     	b	0xbf0 <gpio_keys_probe+0xbec>
     da4: 2a0003f8     	mov	w24, w0
     da8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187
     dac: 91000021     	add	x1, x1, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187
     db0: aa1703e0     	mov	x0, x23
     db4: 2a1803e3     	mov	w3, w24
     db8: 94000000     	bl	0xdb8 <gpio_keys_probe+0xdb4>
		0000000000000db8:  R_AARCH64_CALL26	_dev_err
     dbc: 17ffff8d     	b	0xbf0 <gpio_keys_probe+0xbec>
     dc0: f900227f     	str	xzr, [x19, #0x40]
     dc4: 17ffff8a     	b	0xbec <gpio_keys_probe+0xbe8>
